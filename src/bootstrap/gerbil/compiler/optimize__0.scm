(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#current-compile-mutators (make-parameter '#f))
  (define gxc#current-compile-local-type (make-parameter '#f))
  (define gxc#optimizer-info::t
    (make-struct-type
     'gxc#optimizer-info::t
     '#f
     '2
     'optimizer-info
     '()
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args19577_
      (apply make-struct-instance gxc#optimizer-info::t _$args19577_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19575_)
      (struct-instance-init!
       _self19575_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19589 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19589) __obj19589))))))
  (define gxc#optimize!
    (lambda (_ctx19569_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19569_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19569_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19572_
                  (gxc#optimize-source
                   (##structure-ref _ctx19569_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19569_
              _code19572_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19514_)
      (let ((_deps19516_
             (let ((_imports19560_
                    (##structure-ref _ctx19514_ '8 gx#module-context::t '#f)))
               (let ((_$e19562_
                      (gx#core-context-prelude__opt-lambda11357 _ctx19514_)))
                 (if _$e19562_
                     ((lambda (_g1956419566_)
                        (cons _g1956419566_ _imports19560_))
                      _$e19562_)
                     _imports19560_)))))
        ((letrec ((_lp19518_
                   (lambda (_rest19520_)
                     (let ((_rest1952119529_ _rest19520_))
                       (let ((_E1952419533_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1952119529_))))
                         (let ((_else1952319537_ (lambda () '#!void)))
                           (let ((_K1952519548_
                                  (lambda (_rest19540_ _hd19541_)
                                    (if (##structure-instance-of?
                                         _hd19541_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19541_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19543_
                                                       (gx#core-context-prelude__opt-lambda11357
                                                        _hd19541_)))
                                                  (if _$e19543_
                                                      ((lambda (_pre19546_)
                                                         (_lp19518_
                                                          (cons _pre19546_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19541_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19543_)
              (_lp19518_
               (##structure-ref _hd19541_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19541_)))
                                          (_lp19518_ _rest19540_))
                                        (if (##structure-instance-of?
                                             _hd19541_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19541_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19518_
                                                     (##structure-ref
                                                      _hd19541_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19541_)))
                                              (_lp19518_ _rest19540_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19541_
                                                 'gx#module-import::t)
                                                (_lp19518_
                                                 (cons (##direct-structure-ref
                                                        _hd19541_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19540_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19541_
                                                     'gx#module-export::t)
                                                    (_lp19518_
                                                     (cons (##direct-structure-ref
                                                            _hd19541_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19540_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19541_
                                                         'gx#import-set::t)
                                                        (_lp19518_
                                                         (cons (##direct-structure-ref
                                                                _hd19541_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19540_))
                                                        (error '"Unexpected module import"
                                                               _hd19541_)))))))))
                             (if (##pair? _rest1952119529_)
                                 (let ((_hd1952619551_
                                        (##car _rest1952119529_))
                                       (_tl1952719553_
                                        (##cdr _rest1952119529_)))
                                   (let ((_hd19556_ _hd1952619551_))
                                     (let ((_rest19558_ _tl1952719553_))
                                       (_K1952519548_ _rest19558_ _hd19556_))))
                                 (_else1952319537_)))))))))
           _lp19518_)
         _deps19516_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19494_)
      (if (if (##structure-instance-of? _ctx19494_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19494_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19496_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19498_
                   (##structure-ref _ctx19494_ '1 gx#expander-context::t '#f)))
              (let ((_mod19500_ (table-ref _ht19496_ _id19498_ '#f)))
                (let ()
                  (let ((_$e19503_ _mod19500_))
                    (if _$e19503_
                        _$e19503_
                        (let ((_mod19506_
                               (gxc#optimizer-import-ssxi _ctx19494_)))
                          (let ((_val19511_
                                 (let ((_$e19508_ _mod19506_))
                                   (if _$e19508_ _$e19508_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19496_ _id19498_ _val19511_)
                                _val19511_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19471_)
      (let ((_catch-e19473_
             (lambda (_exn19492_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19471_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19492_))
                     '#!void)
                 '#f))))
        (let ((_import-e19474_
               (lambda ()
                 (let ((_str-id19477_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19471_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19485_
                          (let ((_odir1947819480_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1947819480_
                                (let ((_odir19483_ _odir1947819480_))
                                  (path-expand
                                   (string-append _str-id19477_ '".ss")
                                   _odir19483_))
                                '#f))))
                     (let ((_library-path19487_
                            (string->symbol
                             (string-append '":" _str-id19477_))))
                       (let ((_ssxi-path19489_
                              (if (if _artefact-path19485_
                                      (file-exists? _artefact-path19485_)
                                      '#f)
                                  _artefact-path19485_
                                  _library-path19487_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19489_)
                             (gx#import-module__opt-lambda11392
                              _ssxi-path19489_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19471_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19473_ _import-e19474_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19468_
      (apply make-struct-instance gxc#!type::t _$args19468_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19465_
      (apply make-struct-instance gxc#!alias::t _$args19465_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args19462_
      (apply make-struct-instance gxc#!struct-type::t _$args19462_)))
  (define gxc#!struct-type-super
    (make-struct-field-accessor gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields
    (make-struct-field-accessor gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields
    (make-struct-field-accessor gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor
    (make-struct-field-accessor gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist
    (make-struct-field-accessor gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods
    (make-struct-field-accessor gxc#!struct-type::t '5))
  (define gxc#!struct-type-super-set!
    (make-struct-field-mutator gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields-set!
    (make-struct-field-mutator gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields-set!
    (make-struct-field-mutator gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor-set!
    (make-struct-field-mutator gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist-set!
    (make-struct-field-mutator gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods-set!
    (make-struct-field-mutator gxc#!struct-type::t '5))
  (define gxc#!procedure::t
    (make-struct-type 'gxc#!procedure::t gxc#!type::t '0 '!procedure '() '#f))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args19459_
      (apply make-struct-instance gxc#!procedure::t _$args19459_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args19456_
      (apply make-struct-instance gxc#!struct-pred::t _$args19456_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args19453_
      (apply make-struct-instance gxc#!struct-cons::t _$args19453_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '1
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args19450_
      (apply make-struct-instance gxc#!struct-getf::t _$args19450_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '1
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args19447_
      (apply make-struct-instance gxc#!struct-setf::t _$args19447_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args19444_
      (apply make-struct-instance gxc#!lambda::t _$args19444_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-inline (make-struct-field-accessor gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl
    (make-struct-field-accessor gxc#!lambda::t '3))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
  (define gxc#!lambda-inline-set!
    (make-struct-field-mutator gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl-set!
    (make-struct-field-mutator gxc#!lambda::t '3))
  (define gxc#!case-lambda::t
    (make-struct-type
     'gxc#!case-lambda::t
     gxc#!procedure::t
     '1
     '!case-lambda
     '()
     '#f))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args19441_
      (apply make-struct-instance gxc#!case-lambda::t _$args19441_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19433_
             _id19434_
             _super19435_
             _fields19436_
             _xfields19437_
             _ctor19438_
             _plist19439_)
      (struct-instance-init!
       _self19433_
       _id19434_
       _super19435_
       _fields19436_
       _xfields19437_
       _ctor19438_
       _plist19439_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19397
      (lambda (_self19399_
               _id19400_
               _arity19401_
               _dispatch19402_
               _inline19403_
               _typedecl19404_)
        (struct-instance-init!
         _self19399_
         _id19400_
         _arity19401_
         _dispatch19402_
         _inline19403_
         _typedecl19404_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19409_ _id19410_ _arity19411_ _dispatch19412_)
          (let ((_inline19414_ '#f))
            (let ((_typedecl19416_ '#f))
              (struct-instance-init!
               _self19409_
               _id19410_
               _arity19411_
               _dispatch19412_
               _inline19414_
               _typedecl19416_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19418_
                 _id19419_
                 _arity19420_
                 _dispatch19421_
                 _inline19422_)
          (let ((_typedecl19424_ '#f))
            (struct-instance-init!
             _self19418_
             _id19419_
             _arity19420_
             _dispatch19421_
             _inline19422_
             _typedecl19424_))))
      (define gxc#!lambda:::init!
        (lambda _g19597_
          (let ((_g19596_ (length _g19597_)))
            (cond ((fx= _g19596_ 4) (apply gxc#!lambda:::init!__0 _g19597_))
                  ((fx= _g19596_ 5) (apply gxc#!lambda:::init!__1 _g19597_))
                  ((fx= _g19596_ 6) (apply struct-instance-init! _g19597_))
                  (else (error "No clause matching arguments" _g19597_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19391_)
      (let ((_$e19393_
             (##structure-ref _type19391_ '7 gxc#!struct-type::t '#f)))
        (if _$e19393_
            (values _$e19393_)
            (let ((_vtab19396_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19391_
                 _vtab19396_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19396_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19382_ _method19383_)
      (let ((_vtab1938419386_
             (##structure-ref _type19382_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1938419386_
            (let ((_vtab19389_ _vtab1938419386_))
              (table-ref _vtab19389_ _method19383_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19364
      (lambda (_sym19366_ _type19367_ _local?19368_)
        (begin
          (if (##structure-instance-of? _type19367_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19366_
                     _type19367_))
          (gxc#verbose
           '"declare-type "
           _sym19366_
           '" "
           (##vector->list _type19367_))
          (table-set!
           (if _local?19368_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19366_
           _type19367_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19373_ _type19374_)
          (let ((_local?19376_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19364
             _sym19373_
             _type19374_
             _local?19376_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19599_
          (let ((_g19598_ (length _g19599_)))
            (cond ((fx= _g19598_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19599_))
                  ((fx= _g19598_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19364
                          _g19599_))
                  (else (error "No clause matching arguments" _g19599_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19340
      (lambda (_type-t19342_ _method19343_ _sym19344_ _rebind?19345_)
        (let ((_type19347_ (gxc#optimizer-resolve-type _type-t19342_)))
          (if (##structure-instance-of? _type19347_ 'gxc#!struct-type::t)
              (let ((_vtab19349_ (gxc#!struct-type-vtab _type19347_)))
                (if _rebind?19345_
                    (if (hash-key? _vtab19349_ _method19343_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19342_
                         '" "
                         _method19343_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19342_
                         '" "
                         _method19343_))
                    (if (hash-key? _vtab19349_ _method19343_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19342_
                           '" "
                           _method19343_
                           '" => "
                           _sym19344_)
                          (table-set! _vtab19349_ _method19343_ _sym19344_)))))
              (if (not _type19347_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19342_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19342_
                         _type19347_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19354_ _method19355_ _sym19356_)
          (let ((_rebind?19358_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19340
             _type-t19354_
             _method19355_
             _sym19356_
             _rebind?19358_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19601_
          (let ((_g19600_ (length _g19601_)))
            (cond ((fx= _g19600_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19601_))
                  ((fx= _g19600_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19340
                          _g19601_))
                  (else (error "No clause matching arguments" _g19601_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19330_)
      (let ((_$e19338_
             (let ((_ht1933119333_ (gxc#current-compile-local-type)))
               (if _ht1933119333_
                   (let ((_ht19336_ _ht1933119333_))
                     (table-ref _ht19336_ _sym19330_ '#f))
                   '#f))))
        (if _$e19338_
            _$e19338_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19330_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19322_)
      (let ((_type1932319325_ (gxc#optimizer-lookup-type _sym19322_)))
        (if _type1932319325_
            (let ((_type19328_ _type1932319325_))
              (if (##structure-instance-of? _type19328_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19328_ '1 gxc#!type::t '#f))
                  _type19328_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19317_ _method19318_)
      (let ((_type19320_ (gxc#optimizer-resolve-type _type-t19317_)))
        (if (##structure-instance-of? _type19320_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19320_ _method19318_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19313_)
      (begin
        (gxc#apply-collect-mutators _stx19313_)
        (let ((_stx19315_ (gxc#apply-lift-top-lambdas _stx19313_)))
          (begin
            (gxc#apply-collect-type-info _stx19315_)
            (gxc#apply-optimize-call _stx19315_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl19310_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19310_ '%#lambda false)
           (table-set! _tbl19310_ '%#case-lambda false)
           (table-set! _tbl19310_ '%#let-values false)
           (table-set! _tbl19310_ '%#letrec-values false)
           (table-set! _tbl19310_ '%#letrec*-values false)
           (table-set! _tbl19310_ '%#quote false)
           (table-set! _tbl19310_ '%#quote-syntax false)
           (table-set! _tbl19310_ '%#call false)
           (table-set! _tbl19310_ '%#if false)
           (table-set! _tbl19310_ '%#ref false)
           (table-set! _tbl19310_ '%#set! false)
           (table-set! _tbl19310_ '%#struct-instance? false)
           (table-set! _tbl19310_ '%#struct-direct-instance? false)
           (table-set! _tbl19310_ '%#struct-ref false)
           (table-set! _tbl19310_ '%#struct-set! false)
           (table-set! _tbl19310_ '%#struct-direct-ref false)
           (table-set! _tbl19310_ '%#struct-direct-set! false)
           _tbl19310_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19306_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19306_ '%#begin false)
           (table-set! _tbl19306_ '%#begin-syntax false)
           (table-set! _tbl19306_ '%#begin-foreign false)
           (table-set! _tbl19306_ '%#module false)
           (table-set! _tbl19306_ '%#import false)
           (table-set! _tbl19306_ '%#export false)
           (table-set! _tbl19306_ '%#provide false)
           (table-set! _tbl19306_ '%#extern false)
           (table-set! _tbl19306_ '%#define-values false)
           (table-set! _tbl19306_ '%#define-syntax false)
           (table-set! _tbl19306_ '%#define-alias false)
           (table-set! _tbl19306_ '%#declare false)
           _tbl19306_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl19302_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19302_ (force gxc#&false-special-form))
           (hash-copy! _tbl19302_ (force gxc#&false-expression))
           _tbl19302_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19298_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19298_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19298_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19298_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19298_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19298_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19298_ '%#quote gxc#xform-identity)
           (table-set! _tbl19298_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19298_ '%#call gxc#xform-identity)
           (table-set! _tbl19298_ '%#if gxc#xform-identity)
           (table-set! _tbl19298_ '%#ref gxc#xform-identity)
           (table-set! _tbl19298_ '%#set! gxc#xform-identity)
           (table-set! _tbl19298_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19298_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19298_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19298_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl19298_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl19298_ '%#struct-direct-set! gxc#xform-identity)
           _tbl19298_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19294_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19294_ '%#begin gxc#xform-identity)
           (table-set! _tbl19294_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19294_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19294_ '%#module gxc#xform-identity)
           (table-set! _tbl19294_ '%#import gxc#xform-identity)
           (table-set! _tbl19294_ '%#export gxc#xform-identity)
           (table-set! _tbl19294_ '%#provide gxc#xform-identity)
           (table-set! _tbl19294_ '%#extern gxc#xform-identity)
           (table-set! _tbl19294_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19294_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19294_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19294_ '%#declare gxc#xform-identity)
           _tbl19294_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19290_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19290_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19290_ (force gxc#&identity-expression))
           _tbl19290_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19286_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19286_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19286_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19286_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19286_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19286_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19286_ '%#quote gxc#xform-identity)
           (table-set! _tbl19286_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19286_ '%#call gxc#xform-operands)
           (table-set! _tbl19286_ '%#if gxc#xform-operands)
           (table-set! _tbl19286_ '%#ref gxc#xform-identity)
           (table-set! _tbl19286_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19286_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19286_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19286_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19286_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl19286_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl19286_ '%#struct-direct-set! gxc#xform-operands)
           _tbl19286_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19282_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19282_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19282_ (force gxc#&identity))
           (table-set! _tbl19282_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19282_ '%#module gxc#xform-module%)
           (table-set! _tbl19282_ '%#define-values gxc#xform-define-values%)
           _tbl19282_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19278_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19278_ (force gxc#&void))
           (table-set! _tbl19278_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19278_ '%#module gxc#collect-module%)
           (table-set! _tbl19278_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19278_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19278_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19278_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19278_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19278_ '%#call gxc#collect-operands)
           (table-set! _tbl19278_ '%#if gxc#collect-operands)
           (table-set! _tbl19278_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19278_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19278_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19278_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19278_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl19278_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl19278_ '%#struct-direct-set! gxc#collect-operands)
           _tbl19278_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19271_ . _args19273_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19271_ _args19273_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19268_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19268_ (force gxc#&basic-xform))
           (table-set!
            _tbl19268_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19268_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19268_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19268_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19268_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19261_ . _args19263_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19261_ _args19263_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19258_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19258_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19258_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19258_ '%#ref gxc#expression-subst-ref%)
           _tbl19258_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19251_ . _args19253_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19251_ _args19253_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19248_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19248_ (force gxc#&void))
           (table-set! _tbl19248_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19248_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19248_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19248_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19248_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19248_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19248_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19248_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19248_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19248_ '%#if gxc#collect-operands)
           (table-set! _tbl19248_ '%#set! gxc#collect-body-setq%)
           _tbl19248_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19241_ . _args19243_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19241_ _args19243_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19238_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19238_ (force gxc#&false))
           (table-set! _tbl19238_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19238_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19238_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19238_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19238_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19238_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19231_ . _args19233_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19231_ _args19233_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19228_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19228_ (force gxc#&basic-xform))
           (table-set! _tbl19228_ '%#call gxc#optimize-call%)
           _tbl19228_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19221_ . _args19223_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19221_ _args19223_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19218_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19218_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19218_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19218_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19218_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19218_ '%#call gxc#generate-ssxi-call%)
           _tbl19218_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19211_ . _args19213_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19211_ _args19213_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19208_ . _args19209_) _stx19208_))
  (define gxc#xform-wrap-source
    (lambda (_stx19205_ _src-stx19206_)
      (gx#stx-wrap-source _stx19205_ (gx#stx-source _src-stx19206_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19199_)
      (lambda (_g1920019202_)
        (apply gxc#compile-e _g1920019202_ _args19199_))))
  (define gxc#xform-begin%
    (lambda (_stx19158_ . _args19159_)
      (let ((_g1916119171_
             (lambda (_g1916219168_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1916219168_))))
        (let ((_g1916019196_
               (lambda (_g1916219174_)
                 (if (gx#stx-pair? _g1916219174_)
                     (let ((_e1916419176_ (gx#stx-e _g1916219174_)))
                       (let ((_hd1916519179_ (##car _e1916419176_))
                             (_tl1916619181_ (##cdr _e1916419176_)))
                         ((lambda (_L19184_)
                            (let ((_forms19194_
                                   (map (gxc#xform-apply-compile-e _args19159_)
                                        _L19184_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms19194_)
                               _stx19158_)))
                          _tl1916619181_)))
                     (_g1916119171_ _g1916219174_)))))
          (_g1916019196_ _stx19158_)))))
  (define gxc#xform-module%
    (lambda (_stx19095_ . _args19096_)
      (let ((_g1909819112_
             (lambda (_g1909919109_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1909919109_))))
        (let ((_g1909719155_
               (lambda (_g1909919115_)
                 (if (gx#stx-pair? _g1909919115_)
                     (let ((_e1910219117_ (gx#stx-e _g1909919115_)))
                       (let ((_hd1910319120_ (##car _e1910219117_))
                             (_tl1910419122_ (##cdr _e1910219117_)))
                         (if (gx#stx-pair? _tl1910419122_)
                             (let ((_e1910519125_ (gx#stx-e _tl1910419122_)))
                               (let ((_hd1910619128_ (##car _e1910519125_))
                                     (_tl1910719130_ (##cdr _e1910519125_)))
                                 ((lambda (_L19133_ _L19134_)
                                    (let ((_ctx19147_
                                           (gx#syntax-local-e__0 _L19134_)))
                                      (let ((_code19149_
                                             (##structure-ref
                                              _ctx19147_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code19152_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code19149_
                                                         _args19096_))
                                                gx#current-expander-context
                                                _ctx19147_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx19147_
                                               _code19152_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L19134_
                                                           (cons _code19152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx19095_)))))))
                                  _tl1910719130_
                                  _hd1910619128_)))
                             (_g1909819112_ _g1909919115_))))
                     (_g1909819112_ _g1909919115_)))))
          (_g1909719155_ _stx19095_)))))
  (define gxc#xform-define-values%
    (lambda (_stx19025_ . _args19026_)
      (let ((_g1902819045_
             (lambda (_g1902919042_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1902919042_))))
        (let ((_g1902719092_
               (lambda (_g1902919048_)
                 (if (gx#stx-pair? _g1902919048_)
                     (let ((_e1903219050_ (gx#stx-e _g1902919048_)))
                       (let ((_hd1903319053_ (##car _e1903219050_))
                             (_tl1903419055_ (##cdr _e1903219050_)))
                         (if (gx#stx-pair? _tl1903419055_)
                             (let ((_e1903519058_ (gx#stx-e _tl1903419055_)))
                               (let ((_hd1903619061_ (##car _e1903519058_))
                                     (_tl1903719063_ (##cdr _e1903519058_)))
                                 (if (gx#stx-pair? _tl1903719063_)
                                     (let ((_e1903819066_
                                            (gx#stx-e _tl1903719063_)))
                                       (let ((_hd1903919069_
                                              (##car _e1903819066_))
                                             (_tl1904019071_
                                              (##cdr _e1903819066_)))
                                         (if (gx#stx-null? _tl1904019071_)
                                             ((lambda (_L19074_ _L19075_)
                                                (let ((_expr19090_
                                                       (apply gxc#compile-e
                                                              _L19074_
                                                              _args19026_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L19075_
                                                               (cons _expr19090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx19025_)))
                                              _hd1903919069_
                                              _hd1903619061_)
                                             (_g1902819045_ _g1902919048_))))
                                     (_g1902819045_ _g1902919048_))))
                             (_g1902819045_ _g1902919048_))))
                     (_g1902819045_ _g1902919048_)))))
          (_g1902719092_ _stx19025_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18968_ . _args18969_)
      (let ((_g1897118985_
             (lambda (_g1897218982_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1897218982_))))
        (let ((_g1897019022_
               (lambda (_g1897218988_)
                 (if (gx#stx-pair? _g1897218988_)
                     (let ((_e1897518990_ (gx#stx-e _g1897218988_)))
                       (let ((_hd1897618993_ (##car _e1897518990_))
                             (_tl1897718995_ (##cdr _e1897518990_)))
                         (if (gx#stx-pair? _tl1897718995_)
                             (let ((_e1897818998_ (gx#stx-e _tl1897718995_)))
                               (let ((_hd1897919001_ (##car _e1897818998_))
                                     (_tl1898019003_ (##cdr _e1897818998_)))
                                 ((lambda (_L19006_ _L19007_)
                                    (let ((_body19020_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18969_)
                                                _L19006_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L19007_ _body19020_))
                                       _stx18968_)))
                                  _tl1898019003_
                                  _hd1897919001_)))
                             (_g1897118985_ _g1897218988_))))
                     (_g1897118985_ _g1897218988_)))))
          (_g1897019022_ _stx18968_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18881_ . _args18882_)
      (let ((_clause-e18884_
             (lambda (_clause18925_)
               (let ((_g1892718938_
                      (lambda (_g1892818935_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1892818935_))))
                 (let ((_g1892618965_
                        (lambda (_g1892818941_)
                          (if (gx#stx-pair? _g1892818941_)
                              (let ((_e1893118943_ (gx#stx-e _g1892818941_)))
                                (let ((_hd1893218946_ (##car _e1893118943_))
                                      (_tl1893318948_ (##cdr _e1893118943_)))
                                  ((lambda (_L18951_ _L18952_)
                                     (let ((_body18963_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18882_)
                                                 _L18951_)))
                                       (cons _L18952_ _body18963_)))
                                   _tl1893318948_
                                   _hd1893218946_)))
                              (_g1892718938_ _g1892818941_)))))
                   (_g1892618965_ _clause18925_))))))
        (let ((_g1888618896_
               (lambda (_g1888718893_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1888718893_))))
          (let ((_g1888518922_
                 (lambda (_g1888718899_)
                   (if (gx#stx-pair? _g1888718899_)
                       (let ((_e1888918901_ (gx#stx-e _g1888718899_)))
                         (let ((_hd1889018904_ (##car _e1888918901_))
                               (_tl1889118906_ (##cdr _e1888918901_)))
                           ((lambda (_L18909_)
                              (let ((_clauses18920_
                                     (map _clause-e18884_ _L18909_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18920_)
                                 _stx18881_)))
                            _tl1889118906_)))
                       (_g1888618896_ _g1888718899_)))))
            (_g1888518922_ _stx18881_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18675_ . _args18676_)
      (let ((_g1867818711_
             (lambda (_g1867918708_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1867918708_))))
        (let ((_g1867718878_
               (lambda (_g1867918714_)
                 (if (gx#stx-pair? _g1867918714_)
                     (let ((_e1868418716_ (gx#stx-e _g1867918714_)))
                       (let ((_hd1868518719_ (##car _e1868418716_))
                             (_tl1868618721_ (##cdr _e1868418716_)))
                         (if (gx#stx-pair? _tl1868618721_)
                             (let ((_e1868718724_ (gx#stx-e _tl1868618721_)))
                               (let ((_hd1868818727_ (##car _e1868718724_))
                                     (_tl1868918729_ (##cdr _e1868718724_)))
                                 (if (gx#stx-pair/null? _hd1868818727_)
                                     (if (fx>= (gx#stx-length _hd1868818727_)
                                               '0)
                                         (let ((_g19602_
                                                (gx#syntax-split-splice
                                                 _hd1868818727_
                                                 '0)))
                                           (begin
                                             (let ((_g19603_
                                                    (values-count _g19602_)))
                                               (if (not (fx= _g19603_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19603_)))
                                             (let ((_target1869018732_
                                                    (values-ref _g19602_ 0))
                                                   (_tl1869218734_
                                                    (values-ref _g19602_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1869218734_)
                                                   (letrec ((_loop1869318737_
                                                             (lambda (_hd1869118740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1869718742_
                              _hd1869818744_)
                       (if (gx#stx-pair? _hd1869118740_)
                           (let ((_e1869418747_ (gx#stx-e _hd1869118740_)))
                             (let ((_lp-hd1869518750_ (##car _e1869418747_))
                                   (_lp-tl1869618752_ (##cdr _e1869418747_)))
                               (if (gx#stx-pair? _lp-hd1869518750_)
                                   (let ((_e1870118755_
                                          (gx#stx-e _lp-hd1869518750_)))
                                     (let ((_hd1870218758_
                                            (##car _e1870118755_))
                                           (_tl1870318760_
                                            (##cdr _e1870118755_)))
                                       (if (gx#stx-pair? _tl1870318760_)
                                           (let ((_e1870418763_
                                                  (gx#stx-e _tl1870318760_)))
                                             (let ((_hd1870518766_
                                                    (##car _e1870418763_))
                                                   (_tl1870618768_
                                                    (##cdr _e1870418763_)))
                                               (if (gx#stx-null?
                                                    _tl1870618768_)
                                                   (_loop1869318737_
                                                    _lp-tl1869618752_
                                                    (cons _hd1870518766_
                                                          _expr1869718742_)
                                                    (cons _hd1870218758_
                                                          _hd1869818744_))
                                                   (_g1867818711_
                                                    _g1867918714_))))
                                           (_g1867818711_ _g1867918714_))))
                                   (_g1867818711_ _g1867918714_))))
                           (let ((_expr1869918771_ (reverse _expr1869718742_))
                                 (_hd1870018773_ (reverse _hd1869818744_)))
                             ((lambda (_L18776_ _L18777_ _L18778_ _L18779_)
                                (let ((_g1879818814_
                                       (lambda (_g1879918811_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1879918811_))))
                                  (let ((_g1879718868_
                                         (lambda (_g1879918817_)
                                           (if (gx#stx-pair/null?
                                                _g1879918817_)
                                               (if (fx>= (gx#stx-length
                                                          _g1879918817_)
                                                         '0)
                                                   (let ((_g19604_
                                                          (gx#syntax-split-splice
                                                           _g1879918817_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19605_
                                                              (values-count
                                                               _g19604_)))
                                                         (if (not (fx= _g19605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19605_)))
               (let ((_target1880118819_ (values-ref _g19604_ 0))
                     (_tl1880318821_ (values-ref _g19604_ 1)))
                 (if (gx#stx-null? _tl1880318821_)
                     (letrec ((_loop1880418824_
                               (lambda (_hd1880218827_ _expr1880818829_)
                                 (if (gx#stx-pair? _hd1880218827_)
                                     (let ((_e1880518832_
                                            (gx#syntax-e _hd1880218827_)))
                                       (let ((_lp-hd1880618835_
                                              (##car _e1880518832_))
                                             (_lp-tl1880718837_
                                              (##cdr _e1880518832_)))
                                         (_loop1880418824_
                                          _lp-tl1880718837_
                                          (cons _lp-hd1880618835_
                                                _expr1880818829_))))
                                     (let ((_expr1880918840_
                                            (reverse _expr1880818829_)))
                                       ((lambda (_L18843_)
                                          (let ()
                                            (let ((_body18856_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18676_)
                                                        _L18776_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18779_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18843_
                                                              _L18778_)
                                                             (foldr (lambda (_g1885718861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1885818863_
                                     _g1885918865_)
                              (cons (cons _g1885818863_
                                          (cons _g1885718861_ '()))
                                    _g1885918865_))
                            '()
                            _L18843_
                            _L18778_))
                   _body18856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18675_))))
                                        _expr1880918840_))))))
                       (_loop1880418824_ _target1880118819_ '()))
                     (_g1879818814_ _g1879918817_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1879818814_
                                                    _g1879918817_))
                                               (_g1879818814_
                                                _g1879918817_)))))
                                    (_g1879718868_
                                     (map (gxc#xform-apply-compile-e
                                           _args18676_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1887018873_
                                                             _g1887118875_)
                                                      (cons _g1887018873_
                                                            _g1887118875_))
                                                    '()
                                                    _L18777_)))))))
                              _tl1868918729_
                              _expr1869918771_
                              _hd1870018773_
                              _hd1868518719_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1869318737_
                                                      _target1869018732_
                                                      '()
                                                      '()))
                                                   (_g1867818711_
                                                    _g1867918714_)))))
                                         (_g1867818711_ _g1867918714_))
                                     (_g1867818711_ _g1867918714_))))
                             (_g1867818711_ _g1867918714_))))
                     (_g1867818711_ _g1867918714_)))))
          (_g1867718878_ _stx18675_)))))
  (define gxc#xform-operands
    (lambda (_stx18631_ . _args18632_)
      (let ((_g1863418645_
             (lambda (_g1863518642_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1863518642_))))
        (let ((_g1863318672_
               (lambda (_g1863518648_)
                 (if (gx#stx-pair? _g1863518648_)
                     (let ((_e1863818650_ (gx#stx-e _g1863518648_)))
                       (let ((_hd1863918653_ (##car _e1863818650_))
                             (_tl1864018655_ (##cdr _e1863818650_)))
                         ((lambda (_L18658_ _L18659_)
                            (let ((_rands18670_
                                   (map (gxc#xform-apply-compile-e _args18632_)
                                        _L18658_)))
                              (gxc#xform-wrap-source
                               (cons _L18659_ _rands18670_)
                               _stx18631_)))
                          _tl1864018655_
                          _hd1863918653_)))
                     (_g1863418645_ _g1863518648_)))))
          (_g1863318672_ _stx18631_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18561_ . _args18562_)
      (let ((_g1856418581_
             (lambda (_g1856518578_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1856518578_))))
        (let ((_g1856318628_
               (lambda (_g1856518584_)
                 (if (gx#stx-pair? _g1856518584_)
                     (let ((_e1856818586_ (gx#stx-e _g1856518584_)))
                       (let ((_hd1856918589_ (##car _e1856818586_))
                             (_tl1857018591_ (##cdr _e1856818586_)))
                         (if (gx#stx-pair? _tl1857018591_)
                             (let ((_e1857118594_ (gx#stx-e _tl1857018591_)))
                               (let ((_hd1857218597_ (##car _e1857118594_))
                                     (_tl1857318599_ (##cdr _e1857118594_)))
                                 (if (gx#stx-pair? _tl1857318599_)
                                     (let ((_e1857418602_
                                            (gx#stx-e _tl1857318599_)))
                                       (let ((_hd1857518605_
                                              (##car _e1857418602_))
                                             (_tl1857618607_
                                              (##cdr _e1857418602_)))
                                         (if (gx#stx-null? _tl1857618607_)
                                             ((lambda (_L18610_ _L18611_)
                                                (let ((_expr18626_
                                                       (apply gxc#compile-e
                                                              _L18610_
                                                              _args18562_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18611_
                                                               (cons _expr18626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18561_)))
                                              _hd1857518605_
                                              _hd1857218597_)
                                             (_g1856418581_ _g1856518584_))))
                                     (_g1856418581_ _g1856518584_))))
                             (_g1856418581_ _g1856518584_))))
                     (_g1856418581_ _g1856518584_)))))
          (_g1856318628_ _stx18561_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18492_)
      (let ((_g1849418511_
             (lambda (_g1849518508_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1849518508_))))
        (let ((_g1849318558_
               (lambda (_g1849518514_)
                 (if (gx#stx-pair? _g1849518514_)
                     (let ((_e1849818516_ (gx#stx-e _g1849518514_)))
                       (let ((_hd1849918519_ (##car _e1849818516_))
                             (_tl1850018521_ (##cdr _e1849818516_)))
                         (if (gx#stx-pair? _tl1850018521_)
                             (let ((_e1850118524_ (gx#stx-e _tl1850018521_)))
                               (let ((_hd1850218527_ (##car _e1850118524_))
                                     (_tl1850318529_ (##cdr _e1850118524_)))
                                 (if (gx#stx-pair? _tl1850318529_)
                                     (let ((_e1850418532_
                                            (gx#stx-e _tl1850318529_)))
                                       (let ((_hd1850518535_
                                              (##car _e1850418532_))
                                             (_tl1850618537_
                                              (##cdr _e1850418532_)))
                                         (if (gx#stx-null? _tl1850618537_)
                                             ((lambda (_L18540_ _L18541_)
                                                (let ((_sym18556_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18541_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18556_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18556_
                                                     '#t)
                                                    (gxc#compile-e _L18540_))))
                                              _hd1850518535_
                                              _hd1850218527_)
                                             (_g1849418511_ _g1849518514_))))
                                     (_g1849418511_ _g1849518514_))))
                             (_g1849418511_ _g1849518514_))))
                     (_g1849418511_ _g1849518514_)))))
          (_g1849318558_ _stx18492_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17726_)
      (let ((_g1773117888_
             (lambda (_g1773217885_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1773217885_))))
        (let ((_g1773017895_ (lambda (_g1773217891_) ((lambda () '#f)))))
          (let ((_g1772918035_
                 (lambda (_g1773217898_)
                   (if (gx#stx-pair? _g1773217898_)
                       (let ((_e1784817900_ (gx#stx-e _g1773217898_)))
                         (let ((_hd1784917903_ (##car _e1784817900_))
                               (_tl1785017905_ (##cdr _e1784817900_)))
                           (if (gx#stx-pair? _tl1785017905_)
                               (let ((_e1785117908_ (gx#stx-e _tl1785017905_)))
                                 (let ((_hd1785217911_ (##car _e1785117908_))
                                       (_tl1785317913_ (##cdr _e1785117908_)))
                                   (if (gx#stx-pair? _hd1785217911_)
                                       (let ((_e1785417916_
                                              (gx#stx-e _hd1785217911_)))
                                         (let ((_hd1785517919_
                                                (##car _e1785417916_))
                                               (_tl1785617921_
                                                (##cdr _e1785417916_)))
                                           (if (gx#identifier? _hd1785517919_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1785517919_)
                                                   (if (gx#stx-pair?
                                                        _tl1785617921_)
                                                       (let ((_e1785717924_
                                                              (gx#stx-e
                                                               _tl1785617921_)))
                                                         (let ((_hd1785817927_
                                                                (##car _e1785717924_))
                                                               (_tl1785917929_
                                                                (##cdr _e1785717924_)))
                                                           (if (gx#stx-pair?
                                                                _hd1785817927_)
                                                               (let ((_e1786017932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1785817927_)))
                         (let ((_hd1786117935_ (##car _e1786017932_))
                               (_tl1786217937_ (##cdr _e1786017932_)))
                           (if (gx#identifier? _hd1786117935_)
                               (if (gx#stx-eq? '%#ref _hd1786117935_)
                                   (if (gx#stx-pair? _tl1786217937_)
                                       (let ((_e1786317940_
                                              (gx#stx-e _tl1786217937_)))
                                         (let ((_hd1786417943_
                                                (##car _e1786317940_))
                                               (_tl1786517945_
                                                (##cdr _e1786317940_)))
                                           (if (gx#stx-null? _tl1786517945_)
                                               (if (gx#stx-pair?
                                                    _tl1785917929_)
                                                   (let ((_e1786617948_
                                                          (gx#stx-e
                                                           _tl1785917929_)))
                                                     (let ((_hd1786717951_
                                                            (##car _e1786617948_))
                                                           (_tl1786817953_
                                                            (##cdr _e1786617948_)))
                                                       (if (gx#stx-pair?
                                                            _hd1786717951_)
                                                           (let ((_e1786917956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1786717951_)))
                     (let ((_hd1787017959_ (##car _e1786917956_))
                           (_tl1787117961_ (##cdr _e1786917956_)))
                       (if (gx#identifier? _hd1787017959_)
                           (if (gx#stx-eq? '%#ref _hd1787017959_)
                               (if (gx#stx-pair? _tl1787117961_)
                                   (let ((_e1787217964_
                                          (gx#stx-e _tl1787117961_)))
                                     (let ((_hd1787317967_
                                            (##car _e1787217964_))
                                           (_tl1787417969_
                                            (##cdr _e1787217964_)))
                                       (if (gx#stx-null? _tl1787417969_)
                                           (if (gx#stx-pair? _tl1786817953_)
                                               (let ((_e1787517972_
                                                      (gx#stx-e
                                                       _tl1786817953_)))
                                                 (let ((_hd1787617975_
                                                        (##car _e1787517972_))
                                                       (_tl1787717977_
                                                        (##cdr _e1787517972_)))
                                                   (if (gx#stx-pair?
                                                        _hd1787617975_)
                                                       (let ((_e1787817980_
                                                              (gx#stx-e
                                                               _hd1787617975_)))
                                                         (let ((_hd1787917983_
                                                                (##car _e1787817980_))
                                                               (_tl1788017985_
                                                                (##cdr _e1787817980_)))
                                                           (if (gx#identifier?
                                                                _hd1787917983_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1787917983_)
                           (if (gx#stx-pair? _tl1788017985_)
                               (let ((_e1788117988_ (gx#stx-e _tl1788017985_)))
                                 (let ((_hd1788217991_ (##car _e1788117988_))
                                       (_tl1788317993_ (##cdr _e1788117988_)))
                                   (if (gx#stx-null? _tl1788317993_)
                                       (if (gx#stx-null? _tl1787717977_)
                                           (if (gx#stx-null? _tl1785317913_)
                                               ((lambda (_L17996_
                                                         _L17997_
                                                         _L17998_
                                                         _L17999_)
                                                  (if (if (gx#identifier?
                                                           _L17999_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17998_)
                           'apply)
                      (if (gx#free-identifier=? _L17999_ _L17996_)
                          (not (gx#free-identifier=? _L17997_ _L17999_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1773017895_ _g1773217898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1788217991_
                                                _hd1787317967_
                                                _hd1786417943_
                                                _hd1784917903_)
                                               (_g1773017895_ _g1773217898_))
                                           (_g1773017895_ _g1773217898_))
                                       (_g1773017895_ _g1773217898_))))
                               (_g1773017895_ _g1773217898_))
                           (_g1773017895_ _g1773217898_))
                       (_g1773017895_ _g1773217898_))))
               (_g1773017895_ _g1773217898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1773017895_ _g1773217898_))
                                           (_g1773017895_ _g1773217898_))))
                                   (_g1773017895_ _g1773217898_))
                               (_g1773017895_ _g1773217898_))
                           (_g1773017895_ _g1773217898_))))
                   (_g1773017895_ _g1773217898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773017895_
                                                    _g1773217898_))
                                               (_g1773017895_ _g1773217898_))))
                                       (_g1773017895_ _g1773217898_))
                                   (_g1773017895_ _g1773217898_))
                               (_g1773017895_ _g1773217898_))))
                       (_g1773017895_ _g1773217898_))))
               (_g1773017895_ _g1773217898_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1773017895_
                                                    _g1773217898_))
                                               (_g1773017895_ _g1773217898_))))
                                       (_g1773017895_ _g1773217898_))))
                               (_g1773017895_ _g1773217898_))))
                       (_g1773017895_ _g1773217898_)))))
            (let ((_g1772818295_
                   (lambda (_g1773218038_)
                     (if (gx#stx-pair? _g1773218038_)
                         (let ((_e1778418040_ (gx#stx-e _g1773218038_)))
                           (let ((_hd1778518043_ (##car _e1778418040_))
                                 (_tl1778618045_ (##cdr _e1778418040_)))
                             (if (gx#stx-pair/null? _hd1778518043_)
                                 (if (fx>= (gx#stx-length _hd1778518043_) '0)
                                     (let ((_g19606_
                                            (gx#syntax-split-splice
                                             _hd1778518043_
                                             '0)))
                                       (begin
                                         (let ((_g19607_
                                                (values-count _g19606_)))
                                           (if (not (fx= _g19607_ 2))
                                               (error "Context expects 2 values"
                                                      _g19607_)))
                                         (let ((_target1778718048_
                                                (values-ref _g19606_ 0))
                                               (_tl1778918050_
                                                (values-ref _g19606_ 1)))
                                           (letrec ((_loop1779018053_
                                                     (lambda (_hd1778818056_
                                                              _arg1779418058_)
                                                       (if (gx#stx-pair?
                                                            _hd1778818056_)
                                                           (let ((_e1779118061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1778818056_)))
                     (let ((_lp-hd1779218064_ (##car _e1779118061_))
                           (_lp-tl1779318066_ (##cdr _e1779118061_)))
                       (_loop1779018053_
                        _lp-tl1779318066_
                        (cons _lp-hd1779218064_ _arg1779418058_))))
                   (let ((_arg1779518069_ (reverse _arg1779418058_)))
                     (if (gx#stx-pair? _tl1778618045_)
                         (let ((_e1779618072_ (gx#stx-e _tl1778618045_)))
                           (let ((_hd1779718075_ (##car _e1779618072_))
                                 (_tl1779818077_ (##cdr _e1779618072_)))
                             (if (gx#stx-pair? _hd1779718075_)
                                 (let ((_e1779918080_
                                        (gx#stx-e _hd1779718075_)))
                                   (let ((_hd1780018083_ (##car _e1779918080_))
                                         (_tl1780118085_
                                          (##cdr _e1779918080_)))
                                     (if (gx#identifier? _hd1780018083_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1780018083_)
                                             (if (gx#stx-pair? _tl1780118085_)
                                                 (let ((_e1780218088_
                                                        (gx#stx-e
                                                         _tl1780118085_)))
                                                   (let ((_hd1780318091_
                                                          (##car _e1780218088_))
                                                         (_tl1780418093_
                                                          (##cdr _e1780218088_)))
                                                     (if (gx#stx-pair?
                                                          _hd1780318091_)
                                                         (let ((_e1780518096_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1780318091_)))
                   (let ((_hd1780618099_ (##car _e1780518096_))
                         (_tl1780718101_ (##cdr _e1780518096_)))
                     (if (gx#identifier? _hd1780618099_)
                         (if (gx#stx-eq? '%#ref _hd1780618099_)
                             (if (gx#stx-pair? _tl1780718101_)
                                 (let ((_e1780818104_
                                        (gx#stx-e _tl1780718101_)))
                                   (let ((_hd1780918107_ (##car _e1780818104_))
                                         (_tl1781018109_
                                          (##cdr _e1780818104_)))
                                     (if (gx#stx-null? _tl1781018109_)
                                         (if (gx#stx-pair? _tl1780418093_)
                                             (let ((_e1781118112_
                                                    (gx#stx-e _tl1780418093_)))
                                               (let ((_hd1781218115_
                                                      (##car _e1781118112_))
                                                     (_tl1781318117_
                                                      (##cdr _e1781118112_)))
                                                 (if (gx#stx-pair?
                                                      _hd1781218115_)
                                                     (let ((_e1781418120_
                                                            (gx#stx-e
                                                             _hd1781218115_)))
                                                       (let ((_hd1781518123_
                                                              (##car _e1781418120_))
                                                             (_tl1781618125_
                                                              (##cdr _e1781418120_)))
                                                         (if (gx#identifier?
                                                              _hd1781518123_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1781518123_)
                         (if (gx#stx-pair? _tl1781618125_)
                             (let ((_e1781718128_ (gx#stx-e _tl1781618125_)))
                               (let ((_hd1781818131_ (##car _e1781718128_))
                                     (_tl1781918133_ (##cdr _e1781718128_)))
                                 (if (gx#stx-null? _tl1781918133_)
                                     (if (gx#stx-pair/null? _tl1781318117_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1781318117_)
                                                   '1)
                                             (let ((_g19608_
                                                    (gx#syntax-split-splice
                                                     _tl1781318117_
                                                     '1)))
                                               (begin
                                                 (let ((_g19609_
                                                        (values-count
                                                         _g19608_)))
                                                   (if (not (fx= _g19609_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19609_)))
                                                 (let ((_target1782018136_
                                                        (values-ref
                                                         _g19608_
                                                         0))
                                                       (_tl1782218138_
                                                        (values-ref
                                                         _g19608_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1782218138_)
                                                       (let ((_e1782918141_
                                                              (gx#stx-e
                                                               _tl1782218138_)))
                                                         (let ((_hd1783018144_
                                                                (##car _e1782918141_))
                                                               (_tl1783118146_
                                                                (##cdr _e1782918141_)))
                                                           (if (gx#stx-pair?
                                                                _hd1783018144_)
                                                               (let ((_e1783218149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1783018144_)))
                         (let ((_hd1783318152_ (##car _e1783218149_))
                               (_tl1783418154_ (##cdr _e1783218149_)))
                           (if (gx#identifier? _hd1783318152_)
                               (if (gx#stx-eq? '%#ref _hd1783318152_)
                                   (if (gx#stx-pair? _tl1783418154_)
                                       (let ((_e1783518157_
                                              (gx#stx-e _tl1783418154_)))
                                         (let ((_hd1783618160_
                                                (##car _e1783518157_))
                                               (_tl1783718162_
                                                (##cdr _e1783518157_)))
                                           (if (gx#stx-null? _tl1783718162_)
                                               (if (gx#stx-null?
                                                    _tl1783118146_)
                                                   (letrec ((_loop1782318165_
                                                             (lambda (_hd1782118168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1782718170_)
                       (if (gx#stx-pair? _hd1782118168_)
                           (let ((_e1782418173_ (gx#stx-e _hd1782118168_)))
                             (let ((_lp-hd1782518176_ (##car _e1782418173_))
                                   (_lp-tl1782618178_ (##cdr _e1782418173_)))
                               (if (gx#stx-pair? _lp-hd1782518176_)
                                   (let ((_e1783818181_
                                          (gx#stx-e _lp-hd1782518176_)))
                                     (let ((_hd1783918184_
                                            (##car _e1783818181_))
                                           (_tl1784018186_
                                            (##cdr _e1783818181_)))
                                       (if (gx#identifier? _hd1783918184_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1783918184_)
                                               (if (gx#stx-pair?
                                                    _tl1784018186_)
                                                   (let ((_e1784118189_
                                                          (gx#stx-e
                                                           _tl1784018186_)))
                                                     (let ((_hd1784218192_
                                                            (##car _e1784118189_))
                                                           (_tl1784318194_
                                                            (##cdr _e1784118189_)))
                                                       (if (gx#stx-null?
                                                            _tl1784318194_)
                                                           (_loop1782318165_
                                                            _lp-tl1782618178_
                                                            (cons _hd1784218192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1782718170_))
                   (_g1772918035_ _g1773218038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1772918035_
                                                    _g1773218038_))
                                               (_g1772918035_ _g1773218038_))
                                           (_g1772918035_ _g1773218038_))))
                                   (_g1772918035_ _g1773218038_))))
                           (let ((_xarg1782818197_ (reverse _xarg1782718170_)))
                             (if (gx#stx-null? _tl1779818077_)
                                 ((lambda (_L18200_
                                           _L18201_
                                           _L18202_
                                           _L18203_
                                           _L18204_
                                           _L18205_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1824818251_
                                                                _g1824918253_)
                                                         (cons _g1824818251_
                                                               _g1824918253_))
                                                       '()
                                                       _L18205_)))
                                            (if (gx#identifier? _L18204_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L18203_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1825518258_ _g1825618260_)
                                         (cons _g1825518258_ _g1825618260_))
                                       '()
                                       _L18205_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1826218265_ _g1826318267_)
                                         (cons _g1826218265_ _g1826318267_))
                                       '()
                                       _L18201_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1826918272_ _g1827018274_)
                                        (cons _g1826918272_ _g1827018274_))
                                      '()
                                      _L18205_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1827618279_ _g1827718281_)
                                        (cons _g1827618279_ _g1827718281_))
                                      '()
                                      _L18201_)))
                    (if (gx#free-identifier=? _L18204_ _L18200_)
                        (not (find (lambda (_g1828318285_)
                                     (gx#free-identifier=?
                                      _g1828318285_
                                      _L18202_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1828718290_
                                                      _g1828818292_)
                                               (cons _g1828718290_
                                                     _g1828818292_))
                                             (cons _L18204_ '())
                                             _L18205_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1772918035_ _g1773218038_)))
                                  _hd1783618160_
                                  _xarg1782818197_
                                  _hd1781818131_
                                  _hd1780918107_
                                  _tl1778918050_
                                  _arg1779518069_)
                                 (_g1772918035_ _g1773218038_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1782318165_
                                                      _target1782018136_
                                                      '()))
                                                   (_g1772918035_
                                                    _g1773218038_))
                                               (_g1772918035_ _g1773218038_))))
                                       (_g1772918035_ _g1773218038_))
                                   (_g1772918035_ _g1773218038_))
                               (_g1772918035_ _g1773218038_))))
                       (_g1772918035_ _g1773218038_))))
               (_g1772918035_ _g1773218038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1772918035_ _g1773218038_))
                                         (_g1772918035_ _g1773218038_))
                                     (_g1772918035_ _g1773218038_))))
                             (_g1772918035_ _g1773218038_))
                         (_g1772918035_ _g1773218038_))
                     (_g1772918035_ _g1773218038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1772918035_
                                                      _g1773218038_))))
                                             (_g1772918035_ _g1773218038_))
                                         (_g1772918035_ _g1773218038_))))
                                 (_g1772918035_ _g1773218038_))
                             (_g1772918035_ _g1773218038_))
                         (_g1772918035_ _g1773218038_))))
                 (_g1772918035_ _g1773218038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1772918035_ _g1773218038_))
                                             (_g1772918035_ _g1773218038_))
                                         (_g1772918035_ _g1773218038_))))
                                 (_g1772918035_ _g1773218038_))))
                         (_g1772918035_ _g1773218038_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1779018053_
                                              _target1778718048_
                                              '())))))
                                     (_g1772918035_ _g1773218038_))
                                 (_g1772918035_ _g1773218038_))))
                         (_g1772918035_ _g1773218038_)))))
              (let ((_g1772718489_
                     (lambda (_g1773218298_)
                       (if (gx#stx-pair? _g1773218298_)
                           (let ((_e1773618300_ (gx#stx-e _g1773218298_)))
                             (let ((_hd1773718303_ (##car _e1773618300_))
                                   (_tl1773818305_ (##cdr _e1773618300_)))
                               (if (gx#stx-pair/null? _hd1773718303_)
                                   (if (fx>= (gx#stx-length _hd1773718303_) '0)
                                       (let ((_g19610_
                                              (gx#syntax-split-splice
                                               _hd1773718303_
                                               '0)))
                                         (begin
                                           (let ((_g19611_
                                                  (values-count _g19610_)))
                                             (if (not (fx= _g19611_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19611_)))
                                           (let ((_target1773918308_
                                                  (values-ref _g19610_ 0))
                                                 (_tl1774118310_
                                                  (values-ref _g19610_ 1)))
                                             (if (gx#stx-null? _tl1774118310_)
                                                 (letrec ((_loop1774218313_
                                                           (lambda (_hd1774018316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1774618318_)
                     (if (gx#stx-pair? _hd1774018316_)
                         (let ((_e1774318321_ (gx#stx-e _hd1774018316_)))
                           (let ((_lp-hd1774418324_ (##car _e1774318321_))
                                 (_lp-tl1774518326_ (##cdr _e1774318321_)))
                             (_loop1774218313_
                              _lp-tl1774518326_
                              (cons _lp-hd1774418324_ _arg1774618318_))))
                         (let ((_arg1774718329_ (reverse _arg1774618318_)))
                           (if (gx#stx-pair? _tl1773818305_)
                               (let ((_e1774818332_ (gx#stx-e _tl1773818305_)))
                                 (let ((_hd1774918335_ (##car _e1774818332_))
                                       (_tl1775018337_ (##cdr _e1774818332_)))
                                   (if (gx#stx-pair? _hd1774918335_)
                                       (let ((_e1775118340_
                                              (gx#stx-e _hd1774918335_)))
                                         (let ((_hd1775218343_
                                                (##car _e1775118340_))
                                               (_tl1775318345_
                                                (##cdr _e1775118340_)))
                                           (if (gx#identifier? _hd1775218343_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1775218343_)
                                                   (if (gx#stx-pair?
                                                        _tl1775318345_)
                                                       (let ((_e1775418348_
                                                              (gx#stx-e
                                                               _tl1775318345_)))
                                                         (let ((_hd1775518351_
                                                                (##car _e1775418348_))
                                                               (_tl1775618353_
                                                                (##cdr _e1775418348_)))
                                                           (if (gx#stx-pair?
                                                                _hd1775518351_)
                                                               (let ((_e1775718356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1775518351_)))
                         (let ((_hd1775818359_ (##car _e1775718356_))
                               (_tl1775918361_ (##cdr _e1775718356_)))
                           (if (gx#identifier? _hd1775818359_)
                               (if (gx#stx-eq? '%#ref _hd1775818359_)
                                   (if (gx#stx-pair? _tl1775918361_)
                                       (let ((_e1776018364_
                                              (gx#stx-e _tl1775918361_)))
                                         (let ((_hd1776118367_
                                                (##car _e1776018364_))
                                               (_tl1776218369_
                                                (##cdr _e1776018364_)))
                                           (if (gx#stx-null? _tl1776218369_)
                                               (if (gx#stx-pair/null?
                                                    _tl1775618353_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1775618353_)
                                                             '0)
                                                       (let ((_g19612_
                                                              (gx#syntax-split-splice
                                                               _tl1775618353_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19612_)))
                     (if (not (fx= _g19613_ 2))
                         (error "Context expects 2 values" _g19613_)))
                   (let ((_target1776318372_ (values-ref _g19612_ 0))
                         (_tl1776518374_ (values-ref _g19612_ 1)))
                     (if (gx#stx-null? _tl1776518374_)
                         (letrec ((_loop1776618377_
                                   (lambda (_hd1776418380_ _xarg1777018382_)
                                     (if (gx#stx-pair? _hd1776418380_)
                                         (let ((_e1776718385_
                                                (gx#stx-e _hd1776418380_)))
                                           (let ((_lp-hd1776818388_
                                                  (##car _e1776718385_))
                                                 (_lp-tl1776918390_
                                                  (##cdr _e1776718385_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1776818388_)
                                                 (let ((_e1777218393_
                                                        (gx#stx-e
                                                         _lp-hd1776818388_)))
                                                   (let ((_hd1777318396_
                                                          (##car _e1777218393_))
                                                         (_tl1777418398_
                                                          (##cdr _e1777218393_)))
                                                     (if (gx#identifier?
                                                          _hd1777318396_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1777318396_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1777418398_)
                         (let ((_e1777518401_ (gx#stx-e _tl1777418398_)))
                           (let ((_hd1777618404_ (##car _e1777518401_))
                                 (_tl1777718406_ (##cdr _e1777518401_)))
                             (if (gx#stx-null? _tl1777718406_)
                                 (_loop1776618377_
                                  _lp-tl1776918390_
                                  (cons _hd1777618404_ _xarg1777018382_))
                                 (_g1772818295_ _g1773218298_))))
                         (_g1772818295_ _g1773218298_))
                     (_g1772818295_ _g1773218298_))
                 (_g1772818295_ _g1773218298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1772818295_
                                                  _g1773218298_))))
                                         (let ((_xarg1777118409_
                                                (reverse _xarg1777018382_)))
                                           (if (gx#stx-null? _tl1775018337_)
                                               ((lambda (_L18412_
                                                         _L18413_
                                                         _L18414_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1844218445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1844318447_)
                               (cons _g1844218445_ _g1844318447_))
                             '()
                             _L18414_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1844918452_
                                                      _g1845018454_)
                                               (cons _g1844918452_
                                                     _g1845018454_))
                                             '()
                                             _L18414_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1845618459_
                                                      _g1845718461_)
                                               (cons _g1845618459_
                                                     _g1845718461_))
                                             '()
                                             _L18412_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1846318466_
                                                     _g1846418468_)
                                              (cons _g1846318466_
                                                    _g1846418468_))
                                            '()
                                            _L18414_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1847018473_
                                                     _g1847118475_)
                                              (cons _g1847018473_
                                                    _g1847118475_))
                                            '()
                                            _L18412_)))
                          (not (find (lambda (_g1847718479_)
                                       (gx#free-identifier=?
                                        _g1847718479_
                                        _L18413_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1848118484_
                                                        _g1848218486_)
                                                 (cons _g1848118484_
                                                       _g1848218486_))
                                               '()
                                               _L18414_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1772818295_ _g1773218298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1777118409_
                                                _hd1776118367_
                                                _arg1774718329_)
                                               (_g1772818295_
                                                _g1773218298_)))))))
                           (_loop1776618377_ _target1776318372_ '()))
                         (_g1772818295_ _g1773218298_)))))
               (_g1772818295_ _g1773218298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1772818295_
                                                    _g1773218298_))
                                               (_g1772818295_ _g1773218298_))))
                                       (_g1772818295_ _g1773218298_))
                                   (_g1772818295_ _g1773218298_))
                               (_g1772818295_ _g1773218298_))))
                       (_g1772818295_ _g1773218298_))))
               (_g1772818295_ _g1773218298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1772818295_
                                                    _g1773218298_))
                                               (_g1772818295_ _g1773218298_))))
                                       (_g1772818295_ _g1773218298_))))
                               (_g1772818295_ _g1773218298_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1774218313_
                                                    _target1773918308_
                                                    '()))
                                                 (_g1772818295_
                                                  _g1773218298_)))))
                                       (_g1772818295_ _g1773218298_))
                                   (_g1772818295_ _g1773218298_))))
                           (_g1772818295_ _g1773218298_)))))
                (_g1772718489_ _form17726_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form17194_)
      (let ((_g1719817322_
             (lambda (_g1719917319_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1719917319_))))
        (let ((_g1719717439_
               (lambda (_g1719917325_)
                 (if (gx#stx-pair? _g1719917325_)
                     (let ((_e1728817327_ (gx#stx-e _g1719917325_)))
                       (let ((_hd1728917330_ (##car _e1728817327_))
                             (_tl1729017332_ (##cdr _e1728817327_)))
                         (if (gx#stx-pair? _tl1729017332_)
                             (let ((_e1729117335_ (gx#stx-e _tl1729017332_)))
                               (let ((_hd1729217338_ (##car _e1729117335_))
                                     (_tl1729317340_ (##cdr _e1729117335_)))
                                 (if (gx#stx-pair? _hd1729217338_)
                                     (let ((_e1729417343_
                                            (gx#stx-e _hd1729217338_)))
                                       (let ((_hd1729517346_
                                              (##car _e1729417343_))
                                             (_tl1729617348_
                                              (##cdr _e1729417343_)))
                                         (if (gx#identifier? _hd1729517346_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1729517346_)
                                                 (if (gx#stx-pair?
                                                      _tl1729617348_)
                                                     (let ((_e1729717351_
                                                            (gx#stx-e
                                                             _tl1729617348_)))
                                                       (let ((_hd1729817354_
                                                              (##car _e1729717351_))
                                                             (_tl1729917356_
                                                              (##cdr _e1729717351_)))
                                                         (if (gx#stx-pair?
                                                              _hd1729817354_)
                                                             (let ((_e1730017359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1729817354_)))
                       (let ((_hd1730117362_ (##car _e1730017359_))
                             (_tl1730217364_ (##cdr _e1730017359_)))
                         (if (gx#identifier? _hd1730117362_)
                             (if (gx#stx-eq? '%#ref _hd1730117362_)
                                 (if (gx#stx-pair? _tl1730217364_)
                                     (let ((_e1730317367_
                                            (gx#stx-e _tl1730217364_)))
                                       (let ((_hd1730417370_
                                              (##car _e1730317367_))
                                             (_tl1730517372_
                                              (##cdr _e1730317367_)))
                                         (if (gx#stx-null? _tl1730517372_)
                                             (if (gx#stx-pair? _tl1729917356_)
                                                 (let ((_e1730617375_
                                                        (gx#stx-e
                                                         _tl1729917356_)))
                                                   (let ((_hd1730717378_
                                                          (##car _e1730617375_))
                                                         (_tl1730817380_
                                                          (##cdr _e1730617375_)))
                                                     (if (gx#stx-pair?
                                                          _hd1730717378_)
                                                         (let ((_e1730917383_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1730717378_)))
                   (let ((_hd1731017386_ (##car _e1730917383_))
                         (_tl1731117388_ (##cdr _e1730917383_)))
                     (if (gx#identifier? _hd1731017386_)
                         (if (gx#stx-eq? '%#ref _hd1731017386_)
                             (if (gx#stx-pair? _tl1731117388_)
                                 (let ((_e1731217391_
                                        (gx#stx-e _tl1731117388_)))
                                   (let ((_hd1731317394_ (##car _e1731217391_))
                                         (_tl1731417396_
                                          (##cdr _e1731217391_)))
                                     (if (gx#stx-null? _tl1731417396_)
                                         (if (gx#stx-pair? _tl1730817380_)
                                             (let ((_e1731517399_
                                                    (gx#stx-e _tl1730817380_)))
                                               (let ((_hd1731617402_
                                                      (##car _e1731517399_))
                                                     (_tl1731717404_
                                                      (##cdr _e1731517399_)))
                                                 (if (gx#stx-null?
                                                      _tl1731717404_)
                                                     (if (gx#stx-null?
                                                          _tl1729317340_)
                                                         ((lambda (_L17407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17408_
                           _L17409_)
                    (gxc#generate-runtime-binding-id _L17407_))
                  _hd1731317394_
                  _hd1730417370_
                  _hd1728917330_)
                 (_g1719817322_ _g1719917325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1719817322_
                                                      _g1719917325_))))
                                             (_g1719817322_ _g1719917325_))
                                         (_g1719817322_ _g1719917325_))))
                                 (_g1719817322_ _g1719917325_))
                             (_g1719817322_ _g1719917325_))
                         (_g1719817322_ _g1719917325_))))
                 (_g1719817322_ _g1719917325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1719817322_ _g1719917325_))
                                             (_g1719817322_ _g1719917325_))))
                                     (_g1719817322_ _g1719917325_))
                                 (_g1719817322_ _g1719917325_))
                             (_g1719817322_ _g1719917325_))))
                     (_g1719817322_ _g1719917325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1719817322_
                                                      _g1719917325_))
                                                 (_g1719817322_ _g1719917325_))
                                             (_g1719817322_ _g1719917325_))))
                                     (_g1719817322_ _g1719917325_))))
                             (_g1719817322_ _g1719917325_))))
                     (_g1719817322_ _g1719917325_)))))
          (let ((_g1719617575_
                 (lambda (_g1719917442_)
                   (if (gx#stx-pair? _g1719917442_)
                       (let ((_e1724917444_ (gx#stx-e _g1719917442_)))
                         (let ((_hd1725017447_ (##car _e1724917444_))
                               (_tl1725117449_ (##cdr _e1724917444_)))
                           (if (gx#stx-pair/null? _hd1725017447_)
                               (if (fx>= (gx#stx-length _hd1725017447_) '0)
                                   (let ((_g19614_
                                          (gx#syntax-split-splice
                                           _hd1725017447_
                                           '0)))
                                     (begin
                                       (let ((_g19615_
                                              (values-count _g19614_)))
                                         (if (not (fx= _g19615_ 2))
                                             (error "Context expects 2 values"
                                                    _g19615_)))
                                       (let ((_target1725217452_
                                              (values-ref _g19614_ 0))
                                             (_tl1725417454_
                                              (values-ref _g19614_ 1)))
                                         (letrec ((_loop1725517457_
                                                   (lambda (_hd1725317460_
                                                            _arg1725917462_)
                                                     (if (gx#stx-pair?
                                                          _hd1725317460_)
                                                         (let ((_e1725617465_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1725317460_)))
                   (let ((_lp-hd1725717468_ (##car _e1725617465_))
                         (_lp-tl1725817470_ (##cdr _e1725617465_)))
                     (_loop1725517457_
                      _lp-tl1725817470_
                      (cons _lp-hd1725717468_ _arg1725917462_))))
                 (let ((_arg1726017473_ (reverse _arg1725917462_)))
                   (if (gx#stx-pair? _tl1725117449_)
                       (let ((_e1726117476_ (gx#stx-e _tl1725117449_)))
                         (let ((_hd1726217479_ (##car _e1726117476_))
                               (_tl1726317481_ (##cdr _e1726117476_)))
                           (if (gx#stx-pair? _hd1726217479_)
                               (let ((_e1726417484_ (gx#stx-e _hd1726217479_)))
                                 (let ((_hd1726517487_ (##car _e1726417484_))
                                       (_tl1726617489_ (##cdr _e1726417484_)))
                                   (if (gx#identifier? _hd1726517487_)
                                       (if (gx#stx-eq? '%#call _hd1726517487_)
                                           (if (gx#stx-pair? _tl1726617489_)
                                               (let ((_e1726717492_
                                                      (gx#stx-e
                                                       _tl1726617489_)))
                                                 (let ((_hd1726817495_
                                                        (##car _e1726717492_))
                                                       (_tl1726917497_
                                                        (##cdr _e1726717492_)))
                                                   (if (gx#stx-pair?
                                                        _hd1726817495_)
                                                       (let ((_e1727017500_
                                                              (gx#stx-e
                                                               _hd1726817495_)))
                                                         (let ((_hd1727117503_
                                                                (##car _e1727017500_))
                                                               (_tl1727217505_
                                                                (##cdr _e1727017500_)))
                                                           (if (gx#identifier?
                                                                _hd1727117503_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1727117503_)
                           (if (gx#stx-pair? _tl1727217505_)
                               (let ((_e1727317508_ (gx#stx-e _tl1727217505_)))
                                 (let ((_hd1727417511_ (##car _e1727317508_))
                                       (_tl1727517513_ (##cdr _e1727317508_)))
                                   (if (gx#stx-null? _tl1727517513_)
                                       (if (gx#stx-pair? _tl1726917497_)
                                           (let ((_e1727617516_
                                                  (gx#stx-e _tl1726917497_)))
                                             (let ((_hd1727717519_
                                                    (##car _e1727617516_))
                                                   (_tl1727817521_
                                                    (##cdr _e1727617516_)))
                                               (if (gx#stx-pair?
                                                    _hd1727717519_)
                                                   (let ((_e1727917524_
                                                          (gx#stx-e
                                                           _hd1727717519_)))
                                                     (let ((_hd1728017527_
                                                            (##car _e1727917524_))
                                                           (_tl1728117529_
                                                            (##cdr _e1727917524_)))
                                                       (if (gx#identifier?
                                                            _hd1728017527_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1728017527_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1728117529_)
                           (let ((_e1728217532_ (gx#stx-e _tl1728117529_)))
                             (let ((_hd1728317535_ (##car _e1728217532_))
                                   (_tl1728417537_ (##cdr _e1728217532_)))
                               (if (gx#stx-null? _tl1728417537_)
                                   (if (gx#stx-null? _tl1726317481_)
                                       ((lambda (_L17540_
                                                 _L17541_
                                                 _L17542_
                                                 _L17543_)
                                          (gxc#generate-runtime-binding-id
                                           _L17540_))
                                        _hd1728317535_
                                        _hd1727417511_
                                        _tl1725417454_
                                        _arg1726017473_)
                                       (_g1719717439_ _g1719917442_))
                                   (_g1719717439_ _g1719917442_))))
                           (_g1719717439_ _g1719917442_))
                       (_g1719717439_ _g1719917442_))
                   (_g1719717439_ _g1719917442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1719717439_
                                                    _g1719917442_))))
                                           (_g1719717439_ _g1719917442_))
                                       (_g1719717439_ _g1719917442_))))
                               (_g1719717439_ _g1719917442_))
                           (_g1719717439_ _g1719917442_))
                       (_g1719717439_ _g1719917442_))))
               (_g1719717439_ _g1719917442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1719717439_ _g1719917442_))
                                           (_g1719717439_ _g1719917442_))
                                       (_g1719717439_ _g1719917442_))))
                               (_g1719717439_ _g1719917442_))))
                       (_g1719717439_ _g1719917442_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1725517457_
                                            _target1725217452_
                                            '())))))
                                   (_g1719717439_ _g1719917442_))
                               (_g1719717439_ _g1719917442_))))
                       (_g1719717439_ _g1719917442_)))))
            (let ((_g1719517723_
                   (lambda (_g1719917578_)
                     (if (gx#stx-pair? _g1719917578_)
                         (let ((_e1720317580_ (gx#stx-e _g1719917578_)))
                           (let ((_hd1720417583_ (##car _e1720317580_))
                                 (_tl1720517585_ (##cdr _e1720317580_)))
                             (if (gx#stx-pair/null? _hd1720417583_)
                                 (if (fx>= (gx#stx-length _hd1720417583_) '0)
                                     (let ((_g19616_
                                            (gx#syntax-split-splice
                                             _hd1720417583_
                                             '0)))
                                       (begin
                                         (let ((_g19617_
                                                (values-count _g19616_)))
                                           (if (not (fx= _g19617_ 2))
                                               (error "Context expects 2 values"
                                                      _g19617_)))
                                         (let ((_target1720617588_
                                                (values-ref _g19616_ 0))
                                               (_tl1720817590_
                                                (values-ref _g19616_ 1)))
                                           (if (gx#stx-null? _tl1720817590_)
                                               (letrec ((_loop1720917593_
                                                         (lambda (_hd1720717596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1721317598_)
                   (if (gx#stx-pair? _hd1720717596_)
                       (let ((_e1721017601_ (gx#stx-e _hd1720717596_)))
                         (let ((_lp-hd1721117604_ (##car _e1721017601_))
                               (_lp-tl1721217606_ (##cdr _e1721017601_)))
                           (_loop1720917593_
                            _lp-tl1721217606_
                            (cons _lp-hd1721117604_ _arg1721317598_))))
                       (let ((_arg1721417609_ (reverse _arg1721317598_)))
                         (if (gx#stx-pair? _tl1720517585_)
                             (let ((_e1721517612_ (gx#stx-e _tl1720517585_)))
                               (let ((_hd1721617615_ (##car _e1721517612_))
                                     (_tl1721717617_ (##cdr _e1721517612_)))
                                 (if (gx#stx-pair? _hd1721617615_)
                                     (let ((_e1721817620_
                                            (gx#stx-e _hd1721617615_)))
                                       (let ((_hd1721917623_
                                              (##car _e1721817620_))
                                             (_tl1722017625_
                                              (##cdr _e1721817620_)))
                                         (if (gx#identifier? _hd1721917623_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1721917623_)
                                                 (if (gx#stx-pair?
                                                      _tl1722017625_)
                                                     (let ((_e1722117628_
                                                            (gx#stx-e
                                                             _tl1722017625_)))
                                                       (let ((_hd1722217631_
                                                              (##car _e1722117628_))
                                                             (_tl1722317633_
                                                              (##cdr _e1722117628_)))
                                                         (if (gx#stx-pair?
                                                              _hd1722217631_)
                                                             (let ((_e1722417636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1722217631_)))
                       (let ((_hd1722517639_ (##car _e1722417636_))
                             (_tl1722617641_ (##cdr _e1722417636_)))
                         (if (gx#identifier? _hd1722517639_)
                             (if (gx#stx-eq? '%#ref _hd1722517639_)
                                 (if (gx#stx-pair? _tl1722617641_)
                                     (let ((_e1722717644_
                                            (gx#stx-e _tl1722617641_)))
                                       (let ((_hd1722817647_
                                              (##car _e1722717644_))
                                             (_tl1722917649_
                                              (##cdr _e1722717644_)))
                                         (if (gx#stx-null? _tl1722917649_)
                                             (if (gx#stx-pair/null?
                                                  _tl1722317633_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1722317633_)
                                                           '0)
                                                     (let ((_g19618_
                                                            (gx#syntax-split-splice
                                                             _tl1722317633_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19619_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19618_)))
                   (if (not (fx= _g19619_ 2))
                       (error "Context expects 2 values" _g19619_)))
                 (let ((_target1723017652_ (values-ref _g19618_ 0))
                       (_tl1723217654_ (values-ref _g19618_ 1)))
                   (if (gx#stx-null? _tl1723217654_)
                       (letrec ((_loop1723317657_
                                 (lambda (_hd1723117660_ _xarg1723717662_)
                                   (if (gx#stx-pair? _hd1723117660_)
                                       (let ((_e1723417665_
                                              (gx#stx-e _hd1723117660_)))
                                         (let ((_lp-hd1723517668_
                                                (##car _e1723417665_))
                                               (_lp-tl1723617670_
                                                (##cdr _e1723417665_)))
                                           (if (gx#stx-pair? _lp-hd1723517668_)
                                               (let ((_e1723917673_
                                                      (gx#stx-e
                                                       _lp-hd1723517668_)))
                                                 (let ((_hd1724017676_
                                                        (##car _e1723917673_))
                                                       (_tl1724117678_
                                                        (##cdr _e1723917673_)))
                                                   (if (gx#identifier?
                                                        _hd1724017676_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1724017676_)
                                                           (if (gx#stx-pair?
                                                                _tl1724117678_)
                                                               (let ((_e1724217681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1724117678_)))
                         (let ((_hd1724317684_ (##car _e1724217681_))
                               (_tl1724417686_ (##cdr _e1724217681_)))
                           (if (gx#stx-null? _tl1724417686_)
                               (_loop1723317657_
                                _lp-tl1723617670_
                                (cons _hd1724317684_ _xarg1723717662_))
                               (_g1719617575_ _g1719917578_))))
                       (_g1719617575_ _g1719917578_))
                   (_g1719617575_ _g1719917578_))
               (_g1719617575_ _g1719917578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1719617575_ _g1719917578_))))
                                       (let ((_xarg1723817689_
                                              (reverse _xarg1723717662_)))
                                         (if (gx#stx-null? _tl1721717617_)
                                             ((lambda (_L17692_
                                                       _L17693_
                                                       _L17694_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17693_))
                                              _xarg1723817689_
                                              _hd1722817647_
                                              _arg1721417609_)
                                             (_g1719617575_
                                              _g1719917578_)))))))
                         (_loop1723317657_ _target1723017652_ '()))
                       (_g1719617575_ _g1719917578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1719617575_
                                                      _g1719917578_))
                                                 (_g1719617575_ _g1719917578_))
                                             (_g1719617575_ _g1719917578_))))
                                     (_g1719617575_ _g1719917578_))
                                 (_g1719617575_ _g1719917578_))
                             (_g1719617575_ _g1719917578_))))
                     (_g1719617575_ _g1719917578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1719617575_
                                                      _g1719917578_))
                                                 (_g1719617575_ _g1719917578_))
                                             (_g1719617575_ _g1719917578_))))
                                     (_g1719617575_ _g1719917578_))))
                             (_g1719617575_ _g1719917578_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1720917593_
                                                  _target1720617588_
                                                  '()))
                                               (_g1719617575_
                                                _g1719917578_)))))
                                     (_g1719617575_ _g1719917578_))
                                 (_g1719617575_ _g1719917578_))))
                         (_g1719617575_ _g1719917578_)))))
              (_g1719517723_ _form17194_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16998_)
      (let ((_g1700017014_
             (lambda (_g1700117011_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1700117011_))))
        (let ((_g1699917191_
               (lambda (_g1700117017_)
                 (if (gx#stx-pair? _g1700117017_)
                     (let ((_e1700417019_ (gx#stx-e _g1700117017_)))
                       (let ((_hd1700517022_ (##car _e1700417019_))
                             (_tl1700617024_ (##cdr _e1700417019_)))
                         (if (gx#stx-pair? _tl1700617024_)
                             (let ((_e1700717027_ (gx#stx-e _tl1700617024_)))
                               (let ((_hd1700817030_ (##car _e1700717027_))
                                     (_tl1700917032_ (##cdr _e1700717027_)))
                                 (if (gx#stx-null? _tl1700917032_)
                                     ((lambda (_L17035_ _L17036_)
                                        (let ((_g1705117079_
                                               (lambda (_g1705217076_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1705217076_))))
                                          (let ((_g1705017092_
                                                 (lambda (_g1705217082_)
                                                   ((lambda (_L17084_)
                                                      (cons '0 '()))
                                                    _g1705217082_))))
                                            (let ((_g1704917141_
                                                   (lambda (_g1705217095_)
                                                     (if (gx#stx-pair/null?
                                                          _g1705217095_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1705217095_)
                           '0)
                     (let ((_g19620_
                            (gx#syntax-split-splice _g1705217095_ '0)))
                       (begin
                         (let ((_g19621_ (values-count _g19620_)))
                           (if (not (fx= _g19621_ 2))
                               (error "Context expects 2 values" _g19621_)))
                         (let ((_target1706517097_ (values-ref _g19620_ 0))
                               (_tl1706717099_ (values-ref _g19620_ 1)))
                           (letrec ((_loop1706817102_
                                     (lambda (_hd1706617105_ _arg1707217107_)
                                       (if (gx#stx-pair? _hd1706617105_)
                                           (let ((_e1706917110_
                                                  (gx#stx-e _hd1706617105_)))
                                             (let ((_lp-hd1707017113_
                                                    (##car _e1706917110_))
                                                   (_lp-tl1707117115_
                                                    (##cdr _e1706917110_)))
                                               (_loop1706817102_
                                                _lp-tl1707117115_
                                                (cons _lp-hd1707017113_
                                                      _arg1707217107_))))
                                           (let ((_arg1707317118_
                                                  (reverse _arg1707217107_)))
                                             ((lambda (_L17121_ _L17122_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1713317136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1713417138_)
                                  (cons _g1713317136_ _g1713417138_))
                                '()
                                _L17122_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1706717099_
                                              _arg1707317118_))))))
                             (_loop1706817102_ _target1706517097_ '())))))
                     (_g1705017092_ _g1705217095_))
                 (_g1705017092_ _g1705217095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1704817188_
                                                     (lambda (_g1705217144_)
                                                       (if (gx#stx-pair/null?
                                                            _g1705217144_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1705217144_)
                             '0)
                       (let ((_g19622_
                              (gx#syntax-split-splice _g1705217144_ '0)))
                         (begin
                           (let ((_g19623_ (values-count _g19622_)))
                             (if (not (fx= _g19623_ 2))
                                 (error "Context expects 2 values" _g19623_)))
                           (let ((_target1705417146_ (values-ref _g19622_ 0))
                                 (_tl1705617148_ (values-ref _g19622_ 1)))
                             (if (gx#stx-null? _tl1705617148_)
                                 (letrec ((_loop1705717151_
                                           (lambda (_hd1705517154_
                                                    _arg1706117156_)
                                             (if (gx#stx-pair? _hd1705517154_)
                                                 (let ((_e1705817159_
                                                        (gx#stx-e
                                                         _hd1705517154_)))
                                                   (let ((_lp-hd1705917162_
                                                          (##car _e1705817159_))
                                                         (_lp-tl1706017164_
                                                          (##cdr _e1705817159_)))
                                                     (_loop1705717151_
                                                      _lp-tl1706017164_
                                                      (cons _lp-hd1705917162_
                                                            _arg1706117156_))))
                                                 (let ((_arg1706217167_
                                                        (reverse _arg1706117156_)))
                                                   ((lambda (_L17170_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1718017183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1718117185_)
                                  (cons _g1718017183_ _g1718117185_))
                                '()
                                _L17170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1706217167_))))))
                                   (_loop1705717151_ _target1705417146_ '()))
                                 (_g1704917141_ _g1705217144_)))))
                       (_g1704917141_ _g1705217144_))
                   (_g1704917141_ _g1705217144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1704817188_ _L17036_))))))
                                      _hd1700817030_
                                      _hd1700517022_)
                                     (_g1700017014_ _g1700117017_))))
                             (_g1700017014_ _g1700117017_))))
                     (_g1700017014_ _g1700117017_)))))
          (_g1699917191_ _form16998_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16951_)
      (let ((_g1695416964_
             (lambda (_g1695516961_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1695516961_))))
        (let ((_g1695316971_ (lambda (_g1695516967_) ((lambda () '#f)))))
          (let ((_g1695216995_
                 (lambda (_g1695516974_)
                   (if (gx#stx-pair? _g1695516974_)
                       (let ((_e1695716976_ (gx#stx-e _g1695516974_)))
                         (let ((_hd1695816979_ (##car _e1695716976_))
                               (_tl1695916981_ (##cdr _e1695716976_)))
                           (if (gx#identifier? _hd1695816979_)
                               (if (gx#stx-eq? '%#lambda _hd1695816979_)
                                   ((lambda (_L16984_) '#t) _tl1695916981_)
                                   (_g1695316971_ _g1695516974_))
                               (_g1695316971_ _g1695516974_))))
                       (_g1695316971_ _g1695516974_)))))
            (_g1695216995_ _expr16951_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16904_)
      (let ((_g1690716917_
             (lambda (_g1690816914_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1690816914_))))
        (let ((_g1690616924_ (lambda (_g1690816920_) ((lambda () '#f)))))
          (let ((_g1690516948_
                 (lambda (_g1690816927_)
                   (if (gx#stx-pair? _g1690816927_)
                       (let ((_e1691016929_ (gx#stx-e _g1690816927_)))
                         (let ((_hd1691116932_ (##car _e1691016929_))
                               (_tl1691216934_ (##cdr _e1691016929_)))
                           (if (gx#identifier? _hd1691116932_)
                               (if (gx#stx-eq? '%#case-lambda _hd1691116932_)
                                   ((lambda (_L16937_) '#t) _tl1691216934_)
                                   (_g1690616924_ _g1690816927_))
                               (_g1690616924_ _g1690816927_))))
                       (_g1690616924_ _g1690816927_)))))
            (_g1690516948_ _expr16904_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16773_)
      (let ((_g1677616806_
             (lambda (_g1677716803_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1677716803_))))
        (let ((_g1677516813_ (lambda (_g1677716809_) ((lambda () '#f)))))
          (let ((_g1677416901_
                 (lambda (_g1677716816_)
                   (if (gx#stx-pair? _g1677716816_)
                       (let ((_e1678116818_ (gx#stx-e _g1677716816_)))
                         (let ((_hd1678216821_ (##car _e1678116818_))
                               (_tl1678316823_ (##cdr _e1678116818_)))
                           (if (gx#identifier? _hd1678216821_)
                               (if (gx#stx-eq? '%#let-values _hd1678216821_)
                                   (if (gx#stx-pair? _tl1678316823_)
                                       (let ((_e1678416826_
                                              (gx#stx-e _tl1678316823_)))
                                         (let ((_hd1678516829_
                                                (##car _e1678416826_))
                                               (_tl1678616831_
                                                (##cdr _e1678416826_)))
                                           (if (gx#stx-pair? _hd1678516829_)
                                               (let ((_e1678716834_
                                                      (gx#stx-e
                                                       _hd1678516829_)))
                                                 (let ((_hd1678816837_
                                                        (##car _e1678716834_))
                                                       (_tl1678916839_
                                                        (##cdr _e1678716834_)))
                                                   (if (gx#stx-pair?
                                                        _hd1678816837_)
                                                       (let ((_e1679016842_
                                                              (gx#stx-e
                                                               _hd1678816837_)))
                                                         (let ((_hd1679116845_
                                                                (##car _e1679016842_))
                                                               (_tl1679216847_
                                                                (##cdr _e1679016842_)))
                                                           (if (gx#stx-pair?
                                                                _hd1679116845_)
                                                               (let ((_e1679316850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1679116845_)))
                         (let ((_hd1679416853_ (##car _e1679316850_))
                               (_tl1679516855_ (##cdr _e1679316850_)))
                           (if (gx#stx-null? _tl1679516855_)
                               (if (gx#stx-pair? _tl1679216847_)
                                   (let ((_e1679616858_
                                          (gx#stx-e _tl1679216847_)))
                                     (let ((_hd1679716861_
                                            (##car _e1679616858_))
                                           (_tl1679816863_
                                            (##cdr _e1679616858_)))
                                       (if (gx#stx-null? _tl1679816863_)
                                           (if (gx#stx-null? _tl1678916839_)
                                               (if (gx#stx-pair?
                                                    _tl1678616831_)
                                                   (let ((_e1679916866_
                                                          (gx#stx-e
                                                           _tl1678616831_)))
                                                     (let ((_hd1680016869_
                                                            (##car _e1679916866_))
                                                           (_tl1680116871_
                                                            (##cdr _e1679916866_)))
                                                       (if (gx#stx-null?
                                                            _tl1680116871_)
                                                           ((lambda (_L16874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16875_
                             _L16876_)
                      (if (gx#identifier? _L16876_)
                          (if (gxc#lambda-expr? _L16875_)
                              (gxc#case-lambda-expr? _L16874_)
                              '#f)
                          '#f))
                    _hd1680016869_
                    _hd1679716861_
                    _hd1679416853_)
                   (_g1677516813_ _g1677716816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1677516813_
                                                    _g1677716816_))
                                               (_g1677516813_ _g1677716816_))
                                           (_g1677516813_ _g1677716816_))))
                                   (_g1677516813_ _g1677716816_))
                               (_g1677516813_ _g1677716816_))))
                       (_g1677516813_ _g1677716816_))))
               (_g1677516813_ _g1677716816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1677516813_ _g1677716816_))))
                                       (_g1677516813_ _g1677716816_))
                                   (_g1677516813_ _g1677716816_))
                               (_g1677516813_ _g1677716816_))))
                       (_g1677516813_ _g1677716816_)))))
            (_g1677416901_ _expr16773_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16513
      (lambda (_stx16515_ _id16516_ _clauses16517_ _gensym?16518_)
        ((letrec ((_lp16520_
                   (lambda (_rest16522_ _ids16523_ _impls16524_ _clauses16525_)
                     (let ((_rest1652616534_ _rest16522_))
                       (let ((_E1652916538_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1652616534_))))
                         (let ((_else1652816542_
                                (lambda ()
                                  (values (reverse _ids16523_)
                                          (reverse _impls16524_)
                                          (reverse _clauses16525_)))))
                           (let ((_K1653016747_
                                  (lambda (_rest16545_ _clause16546_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16546_)
                                        (_lp16520_
                                         _rest16545_
                                         _ids16523_
                                         _impls16524_
                                         (cons _clause16546_ _clauses16525_))
                                        (let ((_g1654816559_
                                               (lambda (_g1654916556_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1654916556_))))
                                          (let ((_g1654716744_
                                                 (lambda (_g1654916562_)
                                                   (if (gx#stx-pair?
                                                        _g1654916562_)
                                                       (let ((_e1655216564_
                                                              (gx#stx-e
                                                               _g1654916562_)))
                                                         (let ((_hd1655316567_
                                                                (##car _e1655216564_))
                                                               (_tl1655416569_
                                                                (##cdr _e1655216564_)))
                                                           ((lambda (_L16572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16573_)
                      (let ((_id16590_
                             (make-symbol
                              (gx#stx-e _id16516_)
                              '"__"
                              (length _clauses16525_)
                              (if _gensym?16518_ (gensym '__) '""))))
                        (let ((_id16592_
                               (gx#core-quote-syntax__1
                                _id16590_
                                (gx#stx-source _stx16515_))))
                          (let ((_impl16594_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16573_ _L16572_))
                                  _stx16515_)))
                            (let ((_clause16741_
                                   (let ((_g1659816626_
                                          (lambda (_g1659916623_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1659916623_))))
                                     (let ((_g1659716642_
                                            (lambda (_g1659916629_)
                                              ((lambda (_L16631_)
                                                 (cons _L16573_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16592_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16631_ '()))
                                              '()))))
                      _stx16515_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1659916629_))))
                                       (let ((_g1659616691_
                                              (lambda (_g1659916645_)
                                                (if (gx#stx-pair/null?
                                                     _g1659916645_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1659916645_)
                                                              '0)
                                                        (let ((_g19624_
                                                               (gx#syntax-split-splice
                                                                _g1659916645_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19624_)))
                      (if (not (fx= _g19625_ 2))
                          (error "Context expects 2 values" _g19625_)))
                    (let ((_target1661216647_ (values-ref _g19624_ 0))
                          (_tl1661416649_ (values-ref _g19624_ 1)))
                      (letrec ((_loop1661516652_
                                (lambda (_hd1661316655_ _arg1661916657_)
                                  (if (gx#stx-pair? _hd1661316655_)
                                      (let ((_e1661616660_
                                             (gx#stx-e _hd1661316655_)))
                                        (let ((_lp-hd1661716663_
                                               (##car _e1661616660_))
                                              (_lp-tl1661816665_
                                               (##cdr _e1661616660_)))
                                          (_loop1661516652_
                                           _lp-tl1661816665_
                                           (cons _lp-hd1661716663_
                                                 _arg1661916657_))))
                                      (let ((_arg1662016668_
                                             (reverse _arg1661916657_)))
                                        ((lambda (_L16671_ _L16672_)
                                           (cons _L16573_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16592_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16671_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1668316686_
                                                             _g1668416688_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1668316686_ '()))
                    _g1668416688_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16672_))))))
                _stx16515_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1661416649_
                                         _arg1662016668_))))))
                        (_loop1661516652_ _target1661216647_ '())))))
                (_g1659716642_ _g1659916645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1659716642_
                                                     _g1659916645_)))))
                                         (let ((_g1659516738_
                                                (lambda (_g1659916694_)
                                                  (if (gx#stx-pair/null?
                                                       _g1659916694_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1659916694_)
                        '0)
                  (let ((_g19626_ (gx#syntax-split-splice _g1659916694_ '0)))
                    (begin
                      (let ((_g19627_ (values-count _g19626_)))
                        (if (not (fx= _g19627_ 2))
                            (error "Context expects 2 values" _g19627_)))
                      (let ((_target1660116696_ (values-ref _g19626_ 0))
                            (_tl1660316698_ (values-ref _g19626_ 1)))
                        (if (gx#stx-null? _tl1660316698_)
                            (letrec ((_loop1660416701_
                                      (lambda (_hd1660216704_ _arg1660816706_)
                                        (if (gx#stx-pair? _hd1660216704_)
                                            (let ((_e1660516709_
                                                   (gx#stx-e _hd1660216704_)))
                                              (let ((_lp-hd1660616712_
                                                     (##car _e1660516709_))
                                                    (_lp-tl1660716714_
                                                     (##cdr _e1660516709_)))
                                                (_loop1660416701_
                                                 _lp-tl1660716714_
                                                 (cons _lp-hd1660616712_
                                                       _arg1660816706_))))
                                            (let ((_arg1660916717_
                                                   (reverse _arg1660816706_)))
                                              ((lambda (_L16720_)
                                                 (cons _L16573_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16592_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1673016733_
                                                     _g1673116735_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1673016733_
                                                                '()))
                                                    _g1673116735_))
                                            '()
                                            _L16720_))))
                      _stx16515_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1660916717_))))))
                              (_loop1660416701_ _target1660116696_ '()))
                            (_g1659616691_ _g1659916694_)))))
                  (_g1659616691_ _g1659916694_))
              (_g1659616691_ _g1659916694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1659516738_ _L16573_)))))))
                              (let ()
                                (_lp16520_
                                 _rest16545_
                                 (cons _id16592_ _ids16523_)
                                 (cons _impl16594_ _impls16524_)
                                 (cons _clause16741_ _clauses16525_))))))))
                    _tl1655416569_
                    _hd1655316567_)))
               (_g1654816559_ _g1654916562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1654716744_ _clause16546_)))))))
                             (if (##pair? _rest1652616534_)
                                 (let ((_hd1653116750_
                                        (##car _rest1652616534_))
                                       (_tl1653216752_
                                        (##cdr _rest1652616534_)))
                                   (let ((_clause16755_ _hd1653116750_))
                                     (let ((_rest16757_ _tl1653216752_))
                                       (_K1653016747_
                                        _rest16757_
                                        _clause16755_))))
                                 (_else1652816542_)))))))))
           _lp16520_)
         _clauses16517_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16762_ _id16763_ _clauses16764_)
          (let ((_gensym?16766_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16513
             _stx16762_
             _id16763_
             _clauses16764_
             _gensym?16766_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19629_
          (let ((_g19628_ (length _g19629_)))
            (cond ((fx= _g19628_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19629_))
                  ((fx= _g19628_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16513
                          _g19629_))
                  (else (error "No clause matching arguments" _g19629_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx16104_)
      (let ((_case-lambda-clause-def16106_
             (lambda (_id16511_ _impl16512_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16511_ '())
                            (cons (gxc#compile-e _impl16512_) '())))
                _stx16104_))))
        (let ((_g1611016155_
               (lambda (_g1611116152_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1611116152_))))
          (let ((_g1610916201_
                 (lambda (_g1611116158_)
                   (if (gx#stx-pair? _g1611116158_)
                       (let ((_e1614216160_ (gx#stx-e _g1611116158_)))
                         (let ((_hd1614316163_ (##car _e1614216160_))
                               (_tl1614416165_ (##cdr _e1614216160_)))
                           (if (gx#stx-pair? _tl1614416165_)
                               (let ((_e1614516168_ (gx#stx-e _tl1614416165_)))
                                 (let ((_hd1614616171_ (##car _e1614516168_))
                                       (_tl1614716173_ (##cdr _e1614516168_)))
                                   (if (gx#stx-pair? _tl1614716173_)
                                       (let ((_e1614816176_
                                              (gx#stx-e _tl1614716173_)))
                                         (let ((_hd1614916179_
                                                (##car _e1614816176_))
                                               (_tl1615016181_
                                                (##cdr _e1614816176_)))
                                           (if (gx#stx-null? _tl1615016181_)
                                               ((lambda (_L16184_ _L16185_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L16185_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16184_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx16104_))
                                                _hd1614916179_
                                                _hd1614616171_)
                                               (_g1611016155_ _g1611116158_))))
                                       (_g1611016155_ _g1611116158_))))
                               (_g1611016155_ _g1611116158_))))
                       (_g1611016155_ _g1611116158_)))))
            (let ((_g1610816383_
                   (lambda (_g1611116204_)
                     (if (gx#stx-pair? _g1611116204_)
                         (let ((_e1612816206_ (gx#stx-e _g1611116204_)))
                           (let ((_hd1612916209_ (##car _e1612816206_))
                                 (_tl1613016211_ (##cdr _e1612816206_)))
                             (if (gx#stx-pair? _tl1613016211_)
                                 (let ((_e1613116214_
                                        (gx#stx-e _tl1613016211_)))
                                   (let ((_hd1613216217_ (##car _e1613116214_))
                                         (_tl1613316219_
                                          (##cdr _e1613116214_)))
                                     (if (gx#stx-pair? _hd1613216217_)
                                         (let ((_e1613416222_
                                                (gx#stx-e _hd1613216217_)))
                                           (let ((_hd1613516225_
                                                  (##car _e1613416222_))
                                                 (_tl1613616227_
                                                  (##cdr _e1613416222_)))
                                             (if (gx#stx-null? _tl1613616227_)
                                                 (if (gx#stx-pair?
                                                      _tl1613316219_)
                                                     (let ((_e1613716230_
                                                            (gx#stx-e
                                                             _tl1613316219_)))
                                                       (let ((_hd1613816233_
                                                              (##car _e1613716230_))
                                                             (_tl1613916235_
                                                              (##cdr _e1613716230_)))
                                                         (if (gx#stx-null?
                                                              _tl1613916235_)
                                                             ((lambda (_L16238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16239_)
                        (if (if (gx#identifier? _L16239_)
                                (gxc#opt-lambda-expr? _L16238_)
                                '#f)
                            (let ((_g1625516285_
                                   (lambda (_g1625616282_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1625616282_))))
                              (let ((_g1625416380_
                                     (lambda (_g1625616288_)
                                       (if (gx#stx-pair? _g1625616288_)
                                           (let ((_e1626016290_
                                                  (gx#stx-e _g1625616288_)))
                                             (let ((_hd1626116293_
                                                    (##car _e1626016290_))
                                                   (_tl1626216295_
                                                    (##cdr _e1626016290_)))
                                               (if (gx#stx-pair?
                                                    _tl1626216295_)
                                                   (let ((_e1626316298_
                                                          (gx#stx-e
                                                           _tl1626216295_)))
                                                     (let ((_hd1626416301_
                                                            (##car _e1626316298_))
                                                           (_tl1626516303_
                                                            (##cdr _e1626316298_)))
                                                       (if (gx#stx-pair?
                                                            _hd1626416301_)
                                                           (let ((_e1626616306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1626416301_)))
                     (let ((_hd1626716309_ (##car _e1626616306_))
                           (_tl1626816311_ (##cdr _e1626616306_)))
                       (if (gx#stx-pair? _hd1626716309_)
                           (let ((_e1626916314_ (gx#stx-e _hd1626716309_)))
                             (let ((_hd1627016317_ (##car _e1626916314_))
                                   (_tl1627116319_ (##cdr _e1626916314_)))
                               (if (gx#stx-pair? _hd1627016317_)
                                   (let ((_e1627216322_
                                          (gx#stx-e _hd1627016317_)))
                                     (let ((_hd1627316325_
                                            (##car _e1627216322_))
                                           (_tl1627416327_
                                            (##cdr _e1627216322_)))
                                       (if (gx#stx-null? _tl1627416327_)
                                           (if (gx#stx-pair? _tl1627116319_)
                                               (let ((_e1627516330_
                                                      (gx#stx-e
                                                       _tl1627116319_)))
                                                 (let ((_hd1627616333_
                                                        (##car _e1627516330_))
                                                       (_tl1627716335_
                                                        (##cdr _e1627516330_)))
                                                   (if (gx#stx-null?
                                                        _tl1627716335_)
                                                       (if (gx#stx-null?
                                                            _tl1626816311_)
                                                           (if (gx#stx-pair?
                                                                _tl1626516303_)
                                                               (let ((_e1627816338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1626516303_)))
                         (let ((_hd1627916341_ (##car _e1627816338_))
                               (_tl1628016343_ (##cdr _e1627816338_)))
                           (if (gx#stx-null? _tl1628016343_)
                               ((lambda (_L16346_ _L16347_ _L16348_)
                                  (let ((_lambda-id16372_
                                         (make-symbol
                                          (gx#stx-e _L16239_)
                                          '"__"
                                          (gx#stx-e _L16348_))))
                                    (let ((_lambda-id16374_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16372_
                                            (gx#stx-source _stx16104_))))
                                      (let ((_g19630_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16374_)))
                                        (let ((_new-case-lambda-expr16377_
                                               (gxc#apply-expression-subst
                                                _L16346_
                                                _L16348_
                                                _lambda-id16374_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16239_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16374_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16374_ '())
                                (cons (gxc#compile-e _L16347_) '())))
                    _stx16104_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16239_ '())
                                       (cons _new-case-lambda-expr16377_ '())))
                           _stx16104_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx16104_))))))))
                                _hd1627916341_
                                _hd1627616333_
                                _hd1627316325_)
                               (_g1625516285_ _g1625616288_))))
                       (_g1625516285_ _g1625616288_))
                   (_g1625516285_ _g1625616288_))
               (_g1625516285_ _g1625616288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1625516285_ _g1625616288_))
                                           (_g1625516285_ _g1625616288_))))
                                   (_g1625516285_ _g1625616288_))))
                           (_g1625516285_ _g1625616288_))))
                   (_g1625516285_ _g1625616288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1625516285_
                                                    _g1625616288_))))
                                           (_g1625516285_ _g1625616288_)))))
                                (_g1625416380_ _L16238_)))
                            (_g1610916201_ _g1611116204_)))
                      _hd1613816233_
                      _hd1613516225_)
                     (_g1610916201_ _g1611116204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1610916201_
                                                      _g1611116204_))
                                                 (_g1610916201_
                                                  _g1611116204_))))
                                         (_g1610916201_ _g1611116204_))))
                                 (_g1610916201_ _g1611116204_))))
                         (_g1610916201_ _g1611116204_)))))
              (let ((_g1610716508_
                     (lambda (_g1611116386_)
                       (if (gx#stx-pair? _g1611116386_)
                           (let ((_e1611416388_ (gx#stx-e _g1611116386_)))
                             (let ((_hd1611516391_ (##car _e1611416388_))
                                   (_tl1611616393_ (##cdr _e1611416388_)))
                               (if (gx#stx-pair? _tl1611616393_)
                                   (let ((_e1611716396_
                                          (gx#stx-e _tl1611616393_)))
                                     (let ((_hd1611816399_
                                            (##car _e1611716396_))
                                           (_tl1611916401_
                                            (##cdr _e1611716396_)))
                                       (if (gx#stx-pair? _hd1611816399_)
                                           (let ((_e1612016404_
                                                  (gx#stx-e _hd1611816399_)))
                                             (let ((_hd1612116407_
                                                    (##car _e1612016404_))
                                                   (_tl1612216409_
                                                    (##cdr _e1612016404_)))
                                               (if (gx#stx-null?
                                                    _tl1612216409_)
                                                   (if (gx#stx-pair?
                                                        _tl1611916401_)
                                                       (let ((_e1612316412_
                                                              (gx#stx-e
                                                               _tl1611916401_)))
                                                         (let ((_hd1612416415_
                                                                (##car _e1612316412_))
                                                               (_tl1612516417_
                                                                (##cdr _e1612316412_)))
                                                           (if (gx#stx-null?
                                                                _tl1612516417_)
                                                               ((lambda (_L16420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16421_)
                          (if (if (gx#identifier? _L16421_)
                                  (gxc#case-lambda-expr? _L16420_)
                                  '#f)
                              (let ((_g1643816452_
                                     (lambda (_g1643916449_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1643916449_))))
                                (let ((_g1643716483_
                                       (lambda (_g1643916455_)
                                         (if (gx#stx-pair? _g1643916455_)
                                             (let ((_e1644516457_
                                                    (gx#stx-e _g1643916455_)))
                                               (let ((_hd1644616460_
                                                      (##car _e1644516457_))
                                                     (_tl1644716462_
                                                      (##cdr _e1644516457_)))
                                                 ((lambda (_L16465_)
                                                    (let ((_g19631_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx16104_
                                                            _L16421_
                                                            _L16465_)))
                                                      (begin
                                                        (let ((_g19632_
                                                               (values-count
                                                                _g19631_)))
                                                          (if (not (fx= _g19632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19632_)))
                (let ((_ids16475_ (values-ref _g19631_ 0))
                      (_impls16476_ (values-ref _g19631_ 1))
                      (_clauses16477_ (values-ref _g19631_ 2)))
                  (let ((_g19633_ (for-each gx#core-bind-runtime! _ids16475_)))
                    (let ((_defs16480_
                           (map _case-lambda-clause-def16106_
                                _ids16475_
                                _impls16476_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16421_)
                           '" => "
                           (map gxc#identifier-symbol _ids16475_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16421_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16477_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx16104_)
                                               '())
                                         _defs16480_))
                           _stx16104_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1644716462_)))
                                             (_g1643816452_ _g1643916455_)))))
                                  (let ((_g1643616505_
                                         (lambda (_g1643916486_)
                                           (if (gx#stx-pair? _g1643916486_)
                                               (let ((_e1644116488_
                                                      (gx#stx-e
                                                       _g1643916486_)))
                                                 (let ((_hd1644216491_
                                                        (##car _e1644116488_))
                                                       (_tl1644316493_
                                                        (##cdr _e1644116488_)))
                                                   ((lambda (_L16496_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16496_)
                  _stx16104_
                  (_g1643716483_ _g1643916486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1644316493_)))
                                               (_g1643716483_
                                                _g1643916486_)))))
                                    (_g1643616505_ _L16420_))))
                              (_g1610816383_ _g1611116386_)))
                        _hd1612416415_
                        _hd1612116407_)
                       (_g1610816383_ _g1611116386_))))
               (_g1610816383_ _g1611116386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1610816383_
                                                    _g1611116386_))))
                                           (_g1610816383_ _g1611116386_))))
                                   (_g1610816383_ _g1611116386_))))
                           (_g1610816383_ _g1611116386_)))))
                (_g1610716508_ _stx16104_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15527_)
      (let ((_bind-e__opt-lambda16086__1958019581_
             (lambda (_id16088_ _expr16089_ _compile?16090_)
               (cons (cons _id16088_ '())
                     (cons (if _compile?16090_
                               (gxc#compile-e _expr16089_)
                               _expr16089_)
                           '())))))
        (let ((_bind-e__0__1958219583_
               (lambda (_id16095_ _expr16096_)
                 (let ((_compile?16098_ '#t))
                   (_bind-e__opt-lambda16086__1958019581_
                    _id16095_
                    _expr16096_
                    _compile?16098_)))))
          (let ((_bind-e15529_
                 (lambda _g19643_
                   (let ((_g19642_ (length _g19643_)))
                     (cond ((fx= _g19642_ 2)
                            (apply _bind-e__0__1958219583_ _g19643_))
                           ((fx= _g19642_ 3)
                            (apply _bind-e__opt-lambda16086__1958019581_
                                   _g19643_))
                           (else
                            (error "No clause matching arguments"
                                   _g19643_)))))))
            (let ((_compile-bindings15530_
                   (lambda (_rest15672_)
                     ((letrec ((_lp15674_
                                (lambda (_rest15676_
                                         _lift115677_
                                         _lift215678_
                                         _bind15679_)
                                  (let ((_rest1568015688_ _rest15676_))
                                    (let ((_E1568315692_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1568015688_))))
                                      (let ((_else1568215696_
                                             (lambda ()
                                               (values (reverse _lift115677_)
                                                       (reverse _lift215678_)
                                                       (reverse _bind15679_)))))
                                        (let ((_K1568416075_
                                               (lambda (_rest15699_ _hd15700_)
                                                 (let ((_g1570415740_
                                                        (lambda (_g1570515737_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1570515737_))))
                                                   (let ((_g1570315781_
                                                          (lambda (_g1570515743_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1570515743_)
                        (let ((_e1573015745_ (gx#stx-e _g1570515743_)))
                          (let ((_hd1573115748_ (##car _e1573015745_))
                                (_tl1573215750_ (##cdr _e1573015745_)))
                            (if (gx#stx-pair? _tl1573215750_)
                                (let ((_e1573315753_
                                       (gx#stx-e _tl1573215750_)))
                                  (let ((_hd1573415756_ (##car _e1573315753_))
                                        (_tl1573515758_ (##cdr _e1573315753_)))
                                    (if (gx#stx-null? _tl1573515758_)
                                        ((lambda (_L15761_ _L15762_)
                                           (_lp15674_
                                            _rest15699_
                                            _lift115677_
                                            _lift215678_
                                            (cons (cons _L15762_
                                                        (cons (gxc#compile-e
                                                               _L15761_)
                                                              '()))
                                                  _bind15679_)))
                                         _hd1573415756_
                                         _hd1573115748_)
                                        (_g1570415740_ _g1570515743_))))
                                (_g1570415740_ _g1570515743_))))
                        (_g1570415740_ _g1570515743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1570215953_
                                                            (lambda (_g1570515784_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1570515784_)
                          (let ((_e1571915786_ (gx#stx-e _g1570515784_)))
                            (let ((_hd1572015789_ (##car _e1571915786_))
                                  (_tl1572115791_ (##cdr _e1571915786_)))
                              (if (gx#stx-pair? _hd1572015789_)
                                  (let ((_e1572215794_
                                         (gx#stx-e _hd1572015789_)))
                                    (let ((_hd1572315797_
                                           (##car _e1572215794_))
                                          (_tl1572415799_
                                           (##cdr _e1572215794_)))
                                      (if (gx#stx-null? _tl1572415799_)
                                          (if (gx#stx-pair? _tl1572115791_)
                                              (let ((_e1572515802_
                                                     (gx#stx-e
                                                      _tl1572115791_)))
                                                (let ((_hd1572615805_
                                                       (##car _e1572515802_))
                                                      (_tl1572715807_
                                                       (##cdr _e1572515802_)))
                                                  (if (gx#stx-null?
                                                       _tl1572715807_)
                                                      ((lambda (_L15810_
                                                                _L15811_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15811_)
                         (gxc#opt-lambda-expr? _L15810_)
                         '#f)
                     (let ((_g1582515855_
                            (lambda (_g1582615852_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1582615852_))))
                       (let ((_g1582415950_
                              (lambda (_g1582615858_)
                                (if (gx#stx-pair? _g1582615858_)
                                    (let ((_e1583015860_
                                           (gx#stx-e _g1582615858_)))
                                      (let ((_hd1583115863_
                                             (##car _e1583015860_))
                                            (_tl1583215865_
                                             (##cdr _e1583015860_)))
                                        (if (gx#stx-pair? _tl1583215865_)
                                            (let ((_e1583315868_
                                                   (gx#stx-e _tl1583215865_)))
                                              (let ((_hd1583415871_
                                                     (##car _e1583315868_))
                                                    (_tl1583515873_
                                                     (##cdr _e1583315868_)))
                                                (if (gx#stx-pair?
                                                     _hd1583415871_)
                                                    (let ((_e1583615876_
                                                           (gx#stx-e
                                                            _hd1583415871_)))
                                                      (let ((_hd1583715879_
                                                             (##car _e1583615876_))
                                                            (_tl1583815881_
                                                             (##cdr _e1583615876_)))
                                                        (if (gx#stx-pair?
                                                             _hd1583715879_)
                                                            (let ((_e1583915884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1583715879_)))
                      (let ((_hd1584015887_ (##car _e1583915884_))
                            (_tl1584115889_ (##cdr _e1583915884_)))
                        (if (gx#stx-pair? _hd1584015887_)
                            (let ((_e1584215892_ (gx#stx-e _hd1584015887_)))
                              (let ((_hd1584315895_ (##car _e1584215892_))
                                    (_tl1584415897_ (##cdr _e1584215892_)))
                                (if (gx#stx-null? _tl1584415897_)
                                    (if (gx#stx-pair? _tl1584115889_)
                                        (let ((_e1584515900_
                                               (gx#stx-e _tl1584115889_)))
                                          (let ((_hd1584615903_
                                                 (##car _e1584515900_))
                                                (_tl1584715905_
                                                 (##cdr _e1584515900_)))
                                            (if (gx#stx-null? _tl1584715905_)
                                                (if (gx#stx-null?
                                                     _tl1583815881_)
                                                    (if (gx#stx-pair?
                                                         _tl1583515873_)
                                                        (let ((_e1584815908_
                                                               (gx#stx-e
                                                                _tl1583515873_)))
                                                          (let ((_hd1584915911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1584815908_))
                        (_tl1585015913_ (##cdr _e1584815908_)))
                    (if (gx#stx-null? _tl1585015913_)
                        ((lambda (_L15916_ _L15917_ _L15918_)
                           (let ((_lambda-id15942_
                                  (make-symbol
                                   (gx#stx-e _L15811_)
                                   '"__"
                                   (gx#stx-e _L15918_)
                                   (gensym '__))))
                             (let ((_lambda-id15944_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15942_
                                     (gx#stx-source _stx15527_))))
                               (let ((_g19638_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15944_)))
                                 (let ((_new-case-lambda-expr15947_
                                        (gxc#apply-expression-subst
                                         _L15916_
                                         _L15918_
                                         _lambda-id15944_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15811_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15944_))
                                       (_lp15674_
                                        (cons (_bind-e__opt-lambda16086__1958019581_
                                               _L15811_
                                               _new-case-lambda-expr15947_
                                               '#f)
                                              _rest15699_)
                                        (cons (_bind-e__0__1958219583_
                                               _lambda-id15944_
                                               _L15917_)
                                              _lift115677_)
                                        _lift215678_
                                        _bind15679_))))))))
                         _hd1584915911_
                         _hd1584615903_
                         _hd1584315895_)
                        (_g1582515855_ _g1582615858_))))
                (_g1582515855_ _g1582615858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1582515855_
                                                     _g1582615858_))
                                                (_g1582515855_
                                                 _g1582615858_))))
                                        (_g1582515855_ _g1582615858_))
                                    (_g1582515855_ _g1582615858_))))
                            (_g1582515855_ _g1582615858_))))
                    (_g1582515855_ _g1582615858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1582515855_
                                                     _g1582615858_))))
                                            (_g1582515855_ _g1582615858_))))
                                    (_g1582515855_ _g1582615858_)))))
                         (_g1582415950_ _L15810_)))
                     (_g1570315781_ _g1570515784_)))
               _hd1572615805_
               _hd1572315797_)
              (_g1570315781_ _g1570515784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1570315781_ _g1570515784_))
                                          (_g1570315781_ _g1570515784_))))
                                  (_g1570315781_ _g1570515784_))))
                          (_g1570315781_ _g1570515784_)))))
               (let ((_g1570116072_
                      (lambda (_g1570515956_)
                        (if (gx#stx-pair? _g1570515956_)
                            (let ((_e1570815958_ (gx#stx-e _g1570515956_)))
                              (let ((_hd1570915961_ (##car _e1570815958_))
                                    (_tl1571015963_ (##cdr _e1570815958_)))
                                (if (gx#stx-pair? _hd1570915961_)
                                    (let ((_e1571115966_
                                           (gx#stx-e _hd1570915961_)))
                                      (let ((_hd1571215969_
                                             (##car _e1571115966_))
                                            (_tl1571315971_
                                             (##cdr _e1571115966_)))
                                        (if (gx#stx-null? _tl1571315971_)
                                            (if (gx#stx-pair? _tl1571015963_)
                                                (let ((_e1571415974_
                                                       (gx#stx-e
                                                        _tl1571015963_)))
                                                  (let ((_hd1571515977_
                                                         (##car _e1571415974_))
                                                        (_tl1571615979_
                                                         (##cdr _e1571415974_)))
                                                    (if (gx#stx-null?
                                                         _tl1571615979_)
                                                        ((lambda (_L15982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15983_)
                   (if (if (gx#identifier? _L15983_)
                           (gxc#case-lambda-expr? _L15982_)
                           '#f)
                       (let ((_g1599816012_
                              (lambda (_g1599916009_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1599916009_))))
                         (let ((_g1599716047_
                                (lambda (_g1599916015_)
                                  (if (gx#stx-pair? _g1599916015_)
                                      (let ((_e1600516017_
                                             (gx#stx-e _g1599916015_)))
                                        (let ((_hd1600616020_
                                               (##car _e1600516017_))
                                              (_tl1600716022_
                                               (##cdr _e1600516017_)))
                                          ((lambda (_L16025_)
                                             (let ((_g19639_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16513
                                                     _stx15527_
                                                     _L15983_
                                                     _L16025_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19640_
                                                        (values-count
                                                         _g19639_)))
                                                   (if (not (fx= _g19640_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19640_)))
                                                 (let ((_ids16035_
                                                        (values-ref
                                                         _g19639_
                                                         0))
                                                       (_impls16036_
                                                        (values-ref
                                                         _g19639_
                                                         1))
                                                       (_clauses16037_
                                                        (values-ref
                                                         _g19639_
                                                         2)))
                                                   (let ((_g19641_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids16035_)))
                                                     (let ((_xbind16040_
                                                            (map _bind-e15529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids16035_
                         _impls16036_)))
               (let ((_expr*16042_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses16037_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*16044_
                        (_bind-e__opt-lambda16086__1958019581_
                         _L15983_
                         _expr*16042_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15983_)
                        '" => "
                        (map gxc#identifier-symbol _ids16035_))
                       (_lp15674_
                        _rest15699_
                        _lift115677_
                        (foldl1 cons _lift215678_ _xbind16040_)
                        (cons _bind*16044_ _bind15679_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1600716022_)))
                                      (_g1599816012_ _g1599916015_)))))
                           (let ((_g1599616069_
                                  (lambda (_g1599916050_)
                                    (if (gx#stx-pair? _g1599916050_)
                                        (let ((_e1600116052_
                                               (gx#stx-e _g1599916050_)))
                                          (let ((_hd1600216055_
                                                 (##car _e1600116052_))
                                                (_tl1600316057_
                                                 (##cdr _e1600116052_)))
                                            ((lambda (_L16060_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L16060_)
                                                   (_lp15674_
                                                    _rest15699_
                                                    _lift115677_
                                                    _lift215678_
                                                    (cons (_bind-e__opt-lambda16086__1958019581_
                                                           _L15983_
                                                           _L15982_
                                                           '#f)
                                                          _bind15679_))
                                                   (_g1599716047_
                                                    _g1599916050_)))
                                             _tl1600316057_)))
                                        (_g1599716047_ _g1599916050_)))))
                             (_g1599616069_ _L15982_))))
                       (_g1570215953_ _g1570515956_)))
                 _hd1571515977_
                 _hd1571215969_)
                (_g1570215953_ _g1570515956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1570215953_ _g1570515956_))
                                            (_g1570215953_ _g1570515956_))))
                                    (_g1570215953_ _g1570515956_))))
                            (_g1570215953_ _g1570515956_)))))
                 (_g1570116072_ _hd15700_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1568015688_)
                                              (let ((_hd1568516078_
                                                     (##car _rest1568015688_))
                                                    (_tl1568616080_
                                                     (##cdr _rest1568015688_)))
                                                (let ((_hd16083_
                                                       _hd1568516078_))
                                                  (let ((_rest16085_
                                                         _tl1568616080_))
                                                    (_K1568416075_
                                                     _rest16085_
                                                     _hd16083_))))
                                              (_else1568215696_)))))))))
                        _lp15674_)
                      _rest15672_
                      '()
                      '()
                      '()))))
              (let ((_g1553315559_
                     (lambda (_g1553415556_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1553415556_))))
                (let ((_g1553215566_
                       (lambda (_g1553415562_)
                         ((lambda () (gxc#xform-let-values% _stx15527_))))))
                  (let ((_g1553115669_
                         (lambda (_g1553415569_)
                           (if (gx#stx-pair? _g1553415569_)
                               (let ((_e1553715571_ (gx#stx-e _g1553415569_)))
                                 (let ((_hd1553815574_ (##car _e1553715571_))
                                       (_tl1553915576_ (##cdr _e1553715571_)))
                                   (if (gx#stx-pair? _tl1553915576_)
                                       (let ((_e1554015579_
                                              (gx#stx-e _tl1553915576_)))
                                         (let ((_hd1554115582_
                                                (##car _e1554015579_))
                                               (_tl1554215584_
                                                (##cdr _e1554015579_)))
                                           (if (gx#stx-pair/null?
                                                _hd1554115582_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1554115582_)
                                                         '0)
                                                   (let ((_g19634_
                                                          (gx#syntax-split-splice
                                                           _hd1554115582_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19635_
                                                              (values-count
                                                               _g19634_)))
                                                         (if (not (fx= _g19635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19635_)))
               (let ((_target1554315587_ (values-ref _g19634_ 0))
                     (_tl1554515589_ (values-ref _g19634_ 1)))
                 (if (gx#stx-null? _tl1554515589_)
                     (letrec ((_loop1554615592_
                               (lambda (_hd1554415595_ _bind1555015597_)
                                 (if (gx#stx-pair? _hd1554415595_)
                                     (let ((_e1554715600_
                                            (gx#stx-e _hd1554415595_)))
                                       (let ((_lp-hd1554815603_
                                              (##car _e1554715600_))
                                             (_lp-tl1554915605_
                                              (##cdr _e1554715600_)))
                                         (_loop1554615592_
                                          _lp-tl1554915605_
                                          (cons _lp-hd1554815603_
                                                _bind1555015597_))))
                                     (let ((_bind1555115608_
                                            (reverse _bind1555015597_)))
                                       (if (gx#stx-pair? _tl1554215584_)
                                           (let ((_e1555215611_
                                                  (gx#stx-e _tl1554215584_)))
                                             (let ((_hd1555315614_
                                                    (##car _e1555215611_))
                                                   (_tl1555415616_
                                                    (##cdr _e1555215611_)))
                                               (if (gx#stx-null?
                                                    _tl1555415616_)
                                                   ((lambda (_L15619_ _L15620_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1564015643_ _g1564115645_)
                                      (cons _g1564015643_ _g1564115645_))
                                    '()
                                    _L15620_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19636_
                            (_compile-bindings15530_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1564815651_ _g1564915653_)
                                         (cons _g1564815651_ _g1564915653_))
                                       '()
                                       _L15620_)))))
                       (begin
                         (let ((_g19637_ (values-count _g19636_)))
                           (if (not (fx= _g19637_ 3))
                               (error "Context expects 3 values" _g19637_)))
                         (let ((_lift115656_ (values-ref _g19636_ 0))
                               (_lift215657_ (values-ref _g19636_ 1))
                               (_hd15658_ (values-ref _g19636_ 2)))
                           (let ((_body15660_ (gxc#compile-e _L15619_)))
                             (let ((_expr15662_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15658_
                                                 (cons _body15660_ '())))
                                     _stx15527_)))
                               (let ((_expr15664_
                                      (if (null? _lift215657_)
                                          _expr15662_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215657_
                                                       (cons _expr15662_ '())))
                                           _stx15527_))))
                                 (let ((_expr15666_
                                        (if (null? _lift115656_)
                                            _expr15664_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115656_
                                                         (cons _expr15664_
                                                               '())))
                                             _stx15527_))))
                                   (let () _expr15666_)))))))))
                   gx#current-expander-context
                   (let ((__obj19590 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19590)
                       __obj19590)))
                  (_g1553215566_ _g1553415569_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1555315614_
                                                    _bind1555115608_)
                                                   (_g1553215566_
                                                    _g1553415569_))))
                                           (_g1553215566_ _g1553415569_)))))))
                       (_loop1554615592_ _target1554315587_ '()))
                     (_g1553215566_ _g1553415569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1553215566_
                                                    _g1553415569_))
                                               (_g1553215566_ _g1553415569_))))
                                       (_g1553215566_ _g1553415569_))))
                               (_g1553215566_ _g1553415569_)))))
                    (_g1553115669_ _stx15527_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14959_)
      (let ((_bind-e__opt-lambda15509__1958519586_
             (lambda (_id15511_ _expr15512_ _compile?15513_)
               (cons (cons _id15511_ '())
                     (cons (if _compile?15513_
                               (gxc#compile-e _expr15512_)
                               _expr15512_)
                           '())))))
        (let ((_bind-e__0__1958719588_
               (lambda (_id15518_ _expr15519_)
                 (let ((_compile?15521_ '#t))
                   (_bind-e__opt-lambda15509__1958519586_
                    _id15518_
                    _expr15519_
                    _compile?15521_)))))
          (let ((_bind-e14961_
                 (lambda _g19651_
                   (let ((_g19650_ (length _g19651_)))
                     (cond ((fx= _g19650_ 2)
                            (apply _bind-e__0__1958719588_ _g19651_))
                           ((fx= _g19650_ 3)
                            (apply _bind-e__opt-lambda15509__1958519586_
                                   _g19651_))
                           (else
                            (error "No clause matching arguments"
                                   _g19651_)))))))
            (let ((_compile-bindings14962_
                   (lambda (_rest15097_)
                     ((letrec ((_lp15099_
                                (lambda (_rest15101_ _bind15102_)
                                  (let ((_rest1510315111_ _rest15101_))
                                    (let ((_E1510615115_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1510315111_))))
                                      (let ((_else1510515119_
                                             (lambda ()
                                               (reverse _bind15102_))))
                                        (let ((_K1510715498_
                                               (lambda (_rest15122_ _hd15123_)
                                                 (let ((_g1512715163_
                                                        (lambda (_g1512815160_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1512815160_))))
                                                   (let ((_g1512615204_
                                                          (lambda (_g1512815166_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1512815166_)
                        (let ((_e1515315168_ (gx#stx-e _g1512815166_)))
                          (let ((_hd1515415171_ (##car _e1515315168_))
                                (_tl1515515173_ (##cdr _e1515315168_)))
                            (if (gx#stx-pair? _tl1515515173_)
                                (let ((_e1515615176_
                                       (gx#stx-e _tl1515515173_)))
                                  (let ((_hd1515715179_ (##car _e1515615176_))
                                        (_tl1515815181_ (##cdr _e1515615176_)))
                                    (if (gx#stx-null? _tl1515815181_)
                                        ((lambda (_L15184_ _L15185_)
                                           (_lp15099_
                                            _rest15122_
                                            (cons (cons _L15185_
                                                        (cons (gxc#compile-e
                                                               _L15184_)
                                                              '()))
                                                  _bind15102_)))
                                         _hd1515715179_
                                         _hd1515415171_)
                                        (_g1512715163_ _g1512815166_))))
                                (_g1512715163_ _g1512815166_))))
                        (_g1512715163_ _g1512815166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1512515376_
                                                            (lambda (_g1512815207_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1512815207_)
                          (let ((_e1514215209_ (gx#stx-e _g1512815207_)))
                            (let ((_hd1514315212_ (##car _e1514215209_))
                                  (_tl1514415214_ (##cdr _e1514215209_)))
                              (if (gx#stx-pair? _hd1514315212_)
                                  (let ((_e1514515217_
                                         (gx#stx-e _hd1514315212_)))
                                    (let ((_hd1514615220_
                                           (##car _e1514515217_))
                                          (_tl1514715222_
                                           (##cdr _e1514515217_)))
                                      (if (gx#stx-null? _tl1514715222_)
                                          (if (gx#stx-pair? _tl1514415214_)
                                              (let ((_e1514815225_
                                                     (gx#stx-e
                                                      _tl1514415214_)))
                                                (let ((_hd1514915228_
                                                       (##car _e1514815225_))
                                                      (_tl1515015230_
                                                       (##cdr _e1514815225_)))
                                                  (if (gx#stx-null?
                                                       _tl1515015230_)
                                                      ((lambda (_L15233_
                                                                _L15234_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15234_)
                         (gxc#opt-lambda-expr? _L15233_)
                         '#f)
                     (let ((_g1524815278_
                            (lambda (_g1524915275_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1524915275_))))
                       (let ((_g1524715373_
                              (lambda (_g1524915281_)
                                (if (gx#stx-pair? _g1524915281_)
                                    (let ((_e1525315283_
                                           (gx#stx-e _g1524915281_)))
                                      (let ((_hd1525415286_
                                             (##car _e1525315283_))
                                            (_tl1525515288_
                                             (##cdr _e1525315283_)))
                                        (if (gx#stx-pair? _tl1525515288_)
                                            (let ((_e1525615291_
                                                   (gx#stx-e _tl1525515288_)))
                                              (let ((_hd1525715294_
                                                     (##car _e1525615291_))
                                                    (_tl1525815296_
                                                     (##cdr _e1525615291_)))
                                                (if (gx#stx-pair?
                                                     _hd1525715294_)
                                                    (let ((_e1525915299_
                                                           (gx#stx-e
                                                            _hd1525715294_)))
                                                      (let ((_hd1526015302_
                                                             (##car _e1525915299_))
                                                            (_tl1526115304_
                                                             (##cdr _e1525915299_)))
                                                        (if (gx#stx-pair?
                                                             _hd1526015302_)
                                                            (let ((_e1526215307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1526015302_)))
                      (let ((_hd1526315310_ (##car _e1526215307_))
                            (_tl1526415312_ (##cdr _e1526215307_)))
                        (if (gx#stx-pair? _hd1526315310_)
                            (let ((_e1526515315_ (gx#stx-e _hd1526315310_)))
                              (let ((_hd1526615318_ (##car _e1526515315_))
                                    (_tl1526715320_ (##cdr _e1526515315_)))
                                (if (gx#stx-null? _tl1526715320_)
                                    (if (gx#stx-pair? _tl1526415312_)
                                        (let ((_e1526815323_
                                               (gx#stx-e _tl1526415312_)))
                                          (let ((_hd1526915326_
                                                 (##car _e1526815323_))
                                                (_tl1527015328_
                                                 (##cdr _e1526815323_)))
                                            (if (gx#stx-null? _tl1527015328_)
                                                (if (gx#stx-null?
                                                     _tl1526115304_)
                                                    (if (gx#stx-pair?
                                                         _tl1525815296_)
                                                        (let ((_e1527115331_
                                                               (gx#stx-e
                                                                _tl1525815296_)))
                                                          (let ((_hd1527215334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1527115331_))
                        (_tl1527315336_ (##cdr _e1527115331_)))
                    (if (gx#stx-null? _tl1527315336_)
                        ((lambda (_L15339_ _L15340_ _L15341_)
                           (let ((_lambda-id15365_
                                  (make-symbol
                                   (gx#stx-e _L15234_)
                                   '"__"
                                   (gx#stx-e _L15341_)
                                   (gensym '__))))
                             (let ((_lambda-id15367_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15365_
                                     (gx#stx-source _stx14959_))))
                               (let ((_g19646_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15367_)))
                                 (let ((_new-case-lambda-expr15370_
                                        (gxc#apply-expression-subst
                                         _L15339_
                                         _L15341_
                                         _lambda-id15367_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15234_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15367_))
                                       (_lp15099_
                                        (cons (_bind-e__opt-lambda15509__1958519586_
                                               _L15234_
                                               _new-case-lambda-expr15370_
                                               '#f)
                                              _rest15122_)
                                        (cons (_bind-e__0__1958719588_
                                               _lambda-id15367_
                                               _L15340_)
                                              _bind15102_)))))))))
                         _hd1527215334_
                         _hd1526915326_
                         _hd1526615318_)
                        (_g1524815278_ _g1524915281_))))
                (_g1524815278_ _g1524915281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1524815278_
                                                     _g1524915281_))
                                                (_g1524815278_
                                                 _g1524915281_))))
                                        (_g1524815278_ _g1524915281_))
                                    (_g1524815278_ _g1524915281_))))
                            (_g1524815278_ _g1524915281_))))
                    (_g1524815278_ _g1524915281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1524815278_
                                                     _g1524915281_))))
                                            (_g1524815278_ _g1524915281_))))
                                    (_g1524815278_ _g1524915281_)))))
                         (_g1524715373_ _L15233_)))
                     (_g1512615204_ _g1512815207_)))
               _hd1514915228_
               _hd1514615220_)
              (_g1512615204_ _g1512815207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1512615204_ _g1512815207_))
                                          (_g1512615204_ _g1512815207_))))
                                  (_g1512615204_ _g1512815207_))))
                          (_g1512615204_ _g1512815207_)))))
               (let ((_g1512415495_
                      (lambda (_g1512815379_)
                        (if (gx#stx-pair? _g1512815379_)
                            (let ((_e1513115381_ (gx#stx-e _g1512815379_)))
                              (let ((_hd1513215384_ (##car _e1513115381_))
                                    (_tl1513315386_ (##cdr _e1513115381_)))
                                (if (gx#stx-pair? _hd1513215384_)
                                    (let ((_e1513415389_
                                           (gx#stx-e _hd1513215384_)))
                                      (let ((_hd1513515392_
                                             (##car _e1513415389_))
                                            (_tl1513615394_
                                             (##cdr _e1513415389_)))
                                        (if (gx#stx-null? _tl1513615394_)
                                            (if (gx#stx-pair? _tl1513315386_)
                                                (let ((_e1513715397_
                                                       (gx#stx-e
                                                        _tl1513315386_)))
                                                  (let ((_hd1513815400_
                                                         (##car _e1513715397_))
                                                        (_tl1513915402_
                                                         (##cdr _e1513715397_)))
                                                    (if (gx#stx-null?
                                                         _tl1513915402_)
                                                        ((lambda (_L15405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15406_)
                   (if (if (gx#identifier? _L15406_)
                           (gxc#case-lambda-expr? _L15405_)
                           '#f)
                       (let ((_g1542115435_
                              (lambda (_g1542215432_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1542215432_))))
                         (let ((_g1542015470_
                                (lambda (_g1542215438_)
                                  (if (gx#stx-pair? _g1542215438_)
                                      (let ((_e1542815440_
                                             (gx#stx-e _g1542215438_)))
                                        (let ((_hd1542915443_
                                               (##car _e1542815440_))
                                              (_tl1543015445_
                                               (##cdr _e1542815440_)))
                                          ((lambda (_L15448_)
                                             (let ((_g19647_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16513
                                                     _stx14959_
                                                     _L15406_
                                                     _L15448_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19648_
                                                        (values-count
                                                         _g19647_)))
                                                   (if (not (fx= _g19648_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19648_)))
                                                 (let ((_ids15458_
                                                        (values-ref
                                                         _g19647_
                                                         0))
                                                       (_impls15459_
                                                        (values-ref
                                                         _g19647_
                                                         1))
                                                       (_clauses15460_
                                                        (values-ref
                                                         _g19647_
                                                         2)))
                                                   (let ((_g19649_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15458_)))
                                                     (let ((_xbind15463_
                                                            (map _bind-e14961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15458_
                         _impls15459_)))
               (let ((_expr*15465_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15460_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15467_
                        (_bind-e__opt-lambda15509__1958519586_
                         _L15406_
                         _expr*15465_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15406_)
                        '" => "
                        (map gxc#identifier-symbol _ids15458_))
                       (_lp15099_
                        _rest15122_
                        (cons _bind*15467_
                              (foldl1 cons
                                      _bind15102_
                                      _xbind15463_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1543015445_)))
                                      (_g1542115435_ _g1542215438_)))))
                           (let ((_g1541915492_
                                  (lambda (_g1542215473_)
                                    (if (gx#stx-pair? _g1542215473_)
                                        (let ((_e1542415475_
                                               (gx#stx-e _g1542215473_)))
                                          (let ((_hd1542515478_
                                                 (##car _e1542415475_))
                                                (_tl1542615480_
                                                 (##cdr _e1542415475_)))
                                            ((lambda (_L15483_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15483_)
                                                   (_lp15099_
                                                    _rest15122_
                                                    (cons (_bind-e__opt-lambda15509__1958519586_
                                                           _L15406_
                                                           _L15405_
                                                           '#f)
                                                          _bind15102_))
                                                   (_g1542015470_
                                                    _g1542215473_)))
                                             _tl1542615480_)))
                                        (_g1542015470_ _g1542215473_)))))
                             (_g1541915492_ _L15405_))))
                       (_g1512515376_ _g1512815379_)))
                 _hd1513815400_
                 _hd1513515392_)
                (_g1512515376_ _g1512815379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1512515376_ _g1512815379_))
                                            (_g1512515376_ _g1512815379_))))
                                    (_g1512515376_ _g1512815379_))))
                            (_g1512515376_ _g1512815379_)))))
                 (_g1512415495_ _hd15123_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1510315111_)
                                              (let ((_hd1510815501_
                                                     (##car _rest1510315111_))
                                                    (_tl1510915503_
                                                     (##cdr _rest1510315111_)))
                                                (let ((_hd15506_
                                                       _hd1510815501_))
                                                  (let ((_rest15508_
                                                         _tl1510915503_))
                                                    (_K1510715498_
                                                     _rest15508_
                                                     _hd15506_))))
                                              (_else1510515119_)))))))))
                        _lp15099_)
                      _rest15097_
                      '()))))
              (let ((_g1496514992_
                     (lambda (_g1496614989_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1496614989_))))
                (let ((_g1496414999_
                       (lambda (_g1496614995_)
                         ((lambda () (gxc#xform-let-values% _stx14959_))))))
                  (let ((_g1496315094_
                         (lambda (_g1496615002_)
                           (if (gx#stx-pair? _g1496615002_)
                               (let ((_e1497015004_ (gx#stx-e _g1496615002_)))
                                 (let ((_hd1497115007_ (##car _e1497015004_))
                                       (_tl1497215009_ (##cdr _e1497015004_)))
                                   (if (gx#stx-pair? _tl1497215009_)
                                       (let ((_e1497315012_
                                              (gx#stx-e _tl1497215009_)))
                                         (let ((_hd1497415015_
                                                (##car _e1497315012_))
                                               (_tl1497515017_
                                                (##cdr _e1497315012_)))
                                           (if (gx#stx-pair/null?
                                                _hd1497415015_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1497415015_)
                                                         '0)
                                                   (let ((_g19644_
                                                          (gx#syntax-split-splice
                                                           _hd1497415015_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19645_
                                                              (values-count
                                                               _g19644_)))
                                                         (if (not (fx= _g19645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19645_)))
               (let ((_target1497615020_ (values-ref _g19644_ 0))
                     (_tl1497815022_ (values-ref _g19644_ 1)))
                 (if (gx#stx-null? _tl1497815022_)
                     (letrec ((_loop1497915025_
                               (lambda (_hd1497715028_ _bind1498315030_)
                                 (if (gx#stx-pair? _hd1497715028_)
                                     (let ((_e1498015033_
                                            (gx#stx-e _hd1497715028_)))
                                       (let ((_lp-hd1498115036_
                                              (##car _e1498015033_))
                                             (_lp-tl1498215038_
                                              (##cdr _e1498015033_)))
                                         (_loop1497915025_
                                          _lp-tl1498215038_
                                          (cons _lp-hd1498115036_
                                                _bind1498315030_))))
                                     (let ((_bind1498415041_
                                            (reverse _bind1498315030_)))
                                       (if (gx#stx-pair? _tl1497515017_)
                                           (let ((_e1498515044_
                                                  (gx#stx-e _tl1497515017_)))
                                             (let ((_hd1498615047_
                                                    (##car _e1498515044_))
                                                   (_tl1498715049_
                                                    (##cdr _e1498515044_)))
                                               (if (gx#stx-null?
                                                    _tl1498715049_)
                                                   ((lambda (_L15052_
                                                             _L15053_
                                                             _L15054_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1507515078_ _g1507615080_)
                                      (cons _g1507515078_ _g1507615080_))
                                    '()
                                    _L15053_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd15091_
                            (_compile-bindings14962_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1508315086_ _g1508415088_)
                                         (cons _g1508315086_ _g1508415088_))
                                       '()
                                       _L15053_))))
                           (_body15092_ (gxc#compile-e _L15052_)))
                       (gxc#xform-wrap-source
                        (cons _L15054_ (cons _hd15091_ (cons _body15092_ '())))
                        _stx14959_)))
                   gx#current-expander-context
                   (let ((__obj19591 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19591)
                       __obj19591)))
                  (_g1496414999_ _g1496615002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1498615047_
                                                    _bind1498415041_
                                                    _hd1497115007_)
                                                   (_g1496414999_
                                                    _g1496615002_))))
                                           (_g1496414999_ _g1496615002_)))))))
                       (_loop1497915025_ _target1497615020_ '()))
                     (_g1496414999_ _g1496615002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1496414999_
                                                    _g1496615002_))
                                               (_g1496414999_ _g1496615002_))))
                                       (_g1496414999_ _g1496615002_))))
                               (_g1496414999_ _g1496615002_)))))
                    (_g1496315094_ _stx14959_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14880_)
      (let ((_g1488314900_
             (lambda (_g1488414897_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1488414897_))))
        (let ((_g1488214907_ (lambda (_g1488414903_) ((lambda () '#f)))))
          (let ((_g1488114956_
                 (lambda (_g1488414910_)
                   (if (gx#stx-pair? _g1488414910_)
                       (let ((_e1488714912_ (gx#stx-e _g1488414910_)))
                         (let ((_hd1488814915_ (##car _e1488714912_))
                               (_tl1488914917_ (##cdr _e1488714912_)))
                           (if (gx#stx-pair? _hd1488814915_)
                               (let ((_e1489014920_ (gx#stx-e _hd1488814915_)))
                                 (let ((_hd1489114923_ (##car _e1489014920_))
                                       (_tl1489214925_ (##cdr _e1489014920_)))
                                   (if (gx#stx-null? _tl1489214925_)
                                       (if (gx#stx-pair? _tl1488914917_)
                                           (let ((_e1489314928_
                                                  (gx#stx-e _tl1488914917_)))
                                             (let ((_hd1489414931_
                                                    (##car _e1489314928_))
                                                   (_tl1489514933_
                                                    (##cdr _e1489314928_)))
                                               (if (gx#stx-null?
                                                    _tl1489514933_)
                                                   ((lambda (_L14936_ _L14937_)
                                                      (if (gx#identifier?
                                                           _L14937_)
                                                          (let ((_$e14953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14936_)))
                    (if _$e14953_ _$e14953_ (gxc#opt-lambda-expr? _L14936_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1489414931_
                                                    _hd1489114923_)
                                                   (_g1488214907_
                                                    _g1488414910_))))
                                           (_g1488214907_ _g1488414910_))
                                       (_g1488214907_ _g1488414910_))))
                               (_g1488214907_ _g1488414910_))))
                       (_g1488214907_ _g1488414910_)))))
            (_g1488114956_ _bind14880_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14818_ _id14819_ _new-id14820_)
      (let ((_g1482314836_
             (lambda (_g1482414833_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1482414833_))))
        (let ((_g1482214843_
               (lambda (_g1482414839_) ((lambda () _stx14818_)))))
          (let ((_g1482114877_
                 (lambda (_g1482414846_)
                   (if (gx#stx-pair? _g1482414846_)
                       (let ((_e1482614848_ (gx#stx-e _g1482414846_)))
                         (let ((_hd1482714851_ (##car _e1482614848_))
                               (_tl1482814853_ (##cdr _e1482614848_)))
                           (if (gx#stx-pair? _tl1482814853_)
                               (let ((_e1482914856_ (gx#stx-e _tl1482814853_)))
                                 (let ((_hd1483014859_ (##car _e1482914856_))
                                       (_tl1483114861_ (##cdr _e1482914856_)))
                                   (if (gx#stx-null? _tl1483114861_)
                                       ((lambda (_L14864_)
                                          (if (gx#free-identifier=?
                                               _L14864_
                                               _id14819_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14820_ '()))
                                               _stx14818_)
                                              (_g1482214843_ _g1482414846_)))
                                        _hd1483014859_)
                                       (_g1482214843_ _g1482414846_))))
                               (_g1482214843_ _g1482414846_))))
                       (_g1482214843_ _g1482414846_)))))
            (_g1482114877_ _stx14818_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14674_)
      (let ((_g1467714708_
             (lambda (_g1467814705_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467814705_))))
        (let ((_g1467614753_
               (lambda (_g1467814711_)
                 (if (gx#stx-pair? _g1467814711_)
                     (let ((_e1469514713_ (gx#stx-e _g1467814711_)))
                       (let ((_hd1469614716_ (##car _e1469514713_))
                             (_tl1469714718_ (##cdr _e1469514713_)))
                         (if (gx#stx-pair? _tl1469714718_)
                             (let ((_e1469814721_ (gx#stx-e _tl1469714718_)))
                               (let ((_hd1469914724_ (##car _e1469814721_))
                                     (_tl1470014726_ (##cdr _e1469814721_)))
                                 (if (gx#stx-pair? _tl1470014726_)
                                     (let ((_e1470114729_
                                            (gx#stx-e _tl1470014726_)))
                                       (let ((_hd1470214732_
                                              (##car _e1470114729_))
                                             (_tl1470314734_
                                              (##cdr _e1470114729_)))
                                         (if (gx#stx-null? _tl1470314734_)
                                             ((lambda (_L14737_ _L14738_)
                                                (gxc#compile-e _L14737_))
                                              _hd1470214732_
                                              _hd1469914724_)
                                             (_g1467714708_ _g1467814711_))))
                                     (_g1467714708_ _g1467814711_))))
                             (_g1467714708_ _g1467814711_))))
                     (_g1467714708_ _g1467814711_)))))
          (let ((_g1467514815_
                 (lambda (_g1467814756_)
                   (if (gx#stx-pair? _g1467814756_)
                       (let ((_e1468114758_ (gx#stx-e _g1467814756_)))
                         (let ((_hd1468214761_ (##car _e1468114758_))
                               (_tl1468314763_ (##cdr _e1468114758_)))
                           (if (gx#stx-pair? _tl1468314763_)
                               (let ((_e1468414766_ (gx#stx-e _tl1468314763_)))
                                 (let ((_hd1468514769_ (##car _e1468414766_))
                                       (_tl1468614771_ (##cdr _e1468414766_)))
                                   (if (gx#stx-pair? _hd1468514769_)
                                       (let ((_e1468714774_
                                              (gx#stx-e _hd1468514769_)))
                                         (let ((_hd1468814777_
                                                (##car _e1468714774_))
                                               (_tl1468914779_
                                                (##cdr _e1468714774_)))
                                           (if (gx#stx-null? _tl1468914779_)
                                               (if (gx#stx-pair?
                                                    _tl1468614771_)
                                                   (let ((_e1469014782_
                                                          (gx#stx-e
                                                           _tl1468614771_)))
                                                     (let ((_hd1469114785_
                                                            (##car _e1469014782_))
                                                           (_tl1469214787_
                                                            (##cdr _e1469014782_)))
                                                       (if (gx#stx-null?
                                                            _tl1469214787_)
                                                           ((lambda (_L14790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14791_)
                      (if (gx#identifier? _L14791_)
                          (let ((_sym14807_
                                 (gxc#generate-runtime-binding-id _L14791_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14807_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14807_)
                                  (let ((_type1480814810_
                                         (gxc#apply-basic-expression-type
                                          _L14790_)))
                                    (if _type1480814810_
                                        (let ((_type14813_ _type1480814810_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14807_
                                           _type14813_))
                                        '#f)))
                              (gxc#compile-e _L14790_)))
                          (_g1467614753_ _g1467814756_)))
                    _hd1469114785_
                    _hd1468814777_)
                   (_g1467614753_ _g1467814756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1467614753_
                                                    _g1467814756_))
                                               (_g1467614753_ _g1467814756_))))
                                       (_g1467614753_ _g1467814756_))))
                               (_g1467614753_ _g1467814756_))))
                       (_g1467614753_ _g1467814756_)))))
            (_g1467514815_ _stx14674_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14459_)
      (let ((_collect-e14461_
             (lambda (_hd14618_ _expr14619_)
               (let ((_g1462214632_
                      (lambda (_g1462314629_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1462314629_))))
                 (let ((_g1462114639_
                        (lambda (_g1462314635_) ((lambda () '#!void)))))
                   (let ((_g1462014671_
                          (lambda (_g1462314642_)
                            (if (gx#stx-pair? _g1462314642_)
                                (let ((_e1462514644_ (gx#stx-e _g1462314642_)))
                                  (let ((_hd1462614647_ (##car _e1462514644_))
                                        (_tl1462714649_ (##cdr _e1462514644_)))
                                    (if (gx#stx-null? _tl1462714649_)
                                        ((lambda (_L14652_)
                                           (if (gx#identifier? _L14652_)
                                               (let ((_sym14663_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14652_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14663_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14663_)
                                                     (let ((_type1466414666_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14619_)))
                                                       (if _type1466414666_
                                                           (let ((_type14669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1466414666_))
                     (gxc#optimizer-declare-type!__opt-lambda19364
                      _sym14663_
                      _type14669_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1462114639_ _g1462314642_)))
                                         _hd1462614647_)
                                        (_g1462114639_ _g1462314642_))))
                                (_g1462114639_ _g1462314642_)))))
                     (_g1462014671_ _hd14618_)))))))
        (let ((_g1446314498_
               (lambda (_g1446414495_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1446414495_))))
          (let ((_g1446214615_
                 (lambda (_g1446414501_)
                   (if (gx#stx-pair? _g1446414501_)
                       (let ((_e1446814503_ (gx#stx-e _g1446414501_)))
                         (let ((_hd1446914506_ (##car _e1446814503_))
                               (_tl1447014508_ (##cdr _e1446814503_)))
                           (if (gx#stx-pair? _tl1447014508_)
                               (let ((_e1447114511_ (gx#stx-e _tl1447014508_)))
                                 (let ((_hd1447214514_ (##car _e1447114511_))
                                       (_tl1447314516_ (##cdr _e1447114511_)))
                                   (if (gx#stx-pair/null? _hd1447214514_)
                                       (if (fx>= (gx#stx-length _hd1447214514_)
                                                 '0)
                                           (let ((_g19652_
                                                  (gx#syntax-split-splice
                                                   _hd1447214514_
                                                   '0)))
                                             (begin
                                               (let ((_g19653_
                                                      (values-count _g19652_)))
                                                 (if (not (fx= _g19653_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19653_)))
                                               (let ((_target1447414519_
                                                      (values-ref _g19652_ 0))
                                                     (_tl1447614521_
                                                      (values-ref _g19652_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1447614521_)
                                                     (letrec ((_loop1447714524_
                                                               (lambda (_hd1447514527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1448114529_
                                _hd1448214531_)
                         (if (gx#stx-pair? _hd1447514527_)
                             (let ((_e1447814534_ (gx#stx-e _hd1447514527_)))
                               (let ((_lp-hd1447914537_ (##car _e1447814534_))
                                     (_lp-tl1448014539_ (##cdr _e1447814534_)))
                                 (if (gx#stx-pair? _lp-hd1447914537_)
                                     (let ((_e1448514542_
                                            (gx#stx-e _lp-hd1447914537_)))
                                       (let ((_hd1448614545_
                                              (##car _e1448514542_))
                                             (_tl1448714547_
                                              (##cdr _e1448514542_)))
                                         (if (gx#stx-pair? _tl1448714547_)
                                             (let ((_e1448814550_
                                                    (gx#stx-e _tl1448714547_)))
                                               (let ((_hd1448914553_
                                                      (##car _e1448814550_))
                                                     (_tl1449014555_
                                                      (##cdr _e1448814550_)))
                                                 (if (gx#stx-null?
                                                      _tl1449014555_)
                                                     (_loop1447714524_
                                                      _lp-tl1448014539_
                                                      (cons _hd1448914553_
                                                            _expr1448114529_)
                                                      (cons _hd1448614545_
                                                            _hd1448214531_))
                                                     (_g1446314498_
                                                      _g1446414501_))))
                                             (_g1446314498_ _g1446414501_))))
                                     (_g1446314498_ _g1446414501_))))
                             (let ((_expr1448314558_
                                    (reverse _expr1448114529_))
                                   (_hd1448414560_ (reverse _hd1448214531_)))
                               (if (gx#stx-pair? _tl1447314516_)
                                   (let ((_e1449114563_
                                          (gx#stx-e _tl1447314516_)))
                                     (let ((_hd1449214566_
                                            (##car _e1449114563_))
                                           (_tl1449314568_
                                            (##cdr _e1449114563_)))
                                       (if (gx#stx-null? _tl1449314568_)
                                           ((lambda (_L14571_
                                                     _L14572_
                                                     _L14573_)
                                              (begin
                                                (for-each
                                                 _collect-e14461_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1459314596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1459414598_)
                     (cons _g1459314596_ _g1459414598_))
                   '()
                   _L14573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1460014603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1460114605_)
                     (cons _g1460014603_ _g1460114605_))
                   '()
                   _L14572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1460714610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1460814612_)
                     (cons _g1460714610_ _g1460814612_))
                   '()
                   _L14572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14571_)))
                                            _hd1449214566_
                                            _expr1448314558_
                                            _hd1448414560_)
                                           (_g1446314498_ _g1446414501_))))
                                   (_g1446314498_ _g1446414501_)))))))
               (_loop1447714524_ _target1447414519_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1446314498_
                                                      _g1446414501_)))))
                                           (_g1446314498_ _g1446414501_))
                                       (_g1446314498_ _g1446414501_))))
                               (_g1446314498_ _g1446414501_))))
                       (_g1446314498_ _g1446414501_)))))
            (_g1446214615_ _stx14459_))))))
  (define gxc#collect-type-call%
    (lambda (_stx14013_)
      (let ((_g1401714119_
             (lambda (_g1401814116_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1401814116_))))
        (let ((_g1401614126_ (lambda (_g1401814122_) ((lambda () '#!void)))))
          (let ((_g1401514276_
                 (lambda (_g1401814129_)
                   (if (gx#stx-pair? _g1401814129_)
                       (let ((_e1407614131_ (gx#stx-e _g1401814129_)))
                         (let ((_hd1407714134_ (##car _e1407614131_))
                               (_tl1407814136_ (##cdr _e1407614131_)))
                           (if (gx#stx-pair? _tl1407814136_)
                               (let ((_e1407914139_ (gx#stx-e _tl1407814136_)))
                                 (let ((_hd1408014142_ (##car _e1407914139_))
                                       (_tl1408114144_ (##cdr _e1407914139_)))
                                   (if (gx#stx-pair? _hd1408014142_)
                                       (let ((_e1408214147_
                                              (gx#stx-e _hd1408014142_)))
                                         (let ((_hd1408314150_
                                                (##car _e1408214147_))
                                               (_tl1408414152_
                                                (##cdr _e1408214147_)))
                                           (if (gx#identifier? _hd1408314150_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1408314150_)
                                                   (if (gx#stx-pair?
                                                        _tl1408414152_)
                                                       (let ((_e1408514155_
                                                              (gx#stx-e
                                                               _tl1408414152_)))
                                                         (let ((_hd1408614158_
                                                                (##car _e1408514155_))
                                                               (_tl1408714160_
                                                                (##cdr _e1408514155_)))
                                                           (if (gx#stx-null?
                                                                _tl1408714160_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1408114144_)
                           (let ((_e1408814163_ (gx#stx-e _tl1408114144_)))
                             (let ((_hd1408914166_ (##car _e1408814163_))
                                   (_tl1409014168_ (##cdr _e1408814163_)))
                               (if (gx#stx-pair? _hd1408914166_)
                                   (let ((_e1409114171_
                                          (gx#stx-e _hd1408914166_)))
                                     (let ((_hd1409214174_
                                            (##car _e1409114171_))
                                           (_tl1409314176_
                                            (##cdr _e1409114171_)))
                                       (if (gx#identifier? _hd1409214174_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1409214174_)
                                               (if (gx#stx-pair?
                                                    _tl1409314176_)
                                                   (let ((_e1409414179_
                                                          (gx#stx-e
                                                           _tl1409314176_)))
                                                     (let ((_hd1409514182_
                                                            (##car _e1409414179_))
                                                           (_tl1409614184_
                                                            (##cdr _e1409414179_)))
                                                       (if (gx#stx-null?
                                                            _tl1409614184_)
                                                           (if (gx#stx-pair?
                                                                _tl1409014168_)
                                                               (let ((_e1409714187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1409014168_)))
                         (let ((_hd1409814190_ (##car _e1409714187_))
                               (_tl1409914192_ (##cdr _e1409714187_)))
                           (if (gx#stx-pair? _hd1409814190_)
                               (let ((_e1410014195_ (gx#stx-e _hd1409814190_)))
                                 (let ((_hd1410114198_ (##car _e1410014195_))
                                       (_tl1410214200_ (##cdr _e1410014195_)))
                                   (if (gx#identifier? _hd1410114198_)
                                       (if (gx#stx-eq? '%#quote _hd1410114198_)
                                           (if (gx#stx-pair? _tl1410214200_)
                                               (let ((_e1410314203_
                                                      (gx#stx-e
                                                       _tl1410214200_)))
                                                 (let ((_hd1410414206_
                                                        (##car _e1410314203_))
                                                       (_tl1410514208_
                                                        (##cdr _e1410314203_)))
                                                   (if (gx#stx-null?
                                                        _tl1410514208_)
                                                       (if (gx#stx-pair?
                                                            _tl1409914192_)
                                                           (let ((_e1410614211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1409914192_)))
                     (let ((_hd1410714214_ (##car _e1410614211_))
                           (_tl1410814216_ (##cdr _e1410614211_)))
                       (if (gx#stx-pair? _hd1410714214_)
                           (let ((_e1410914219_ (gx#stx-e _hd1410714214_)))
                             (let ((_hd1411014222_ (##car _e1410914219_))
                                   (_tl1411114224_ (##cdr _e1410914219_)))
                               (if (gx#identifier? _hd1411014222_)
                                   (if (gx#stx-eq? '%#ref _hd1411014222_)
                                       (if (gx#stx-pair? _tl1411114224_)
                                           (let ((_e1411214227_
                                                  (gx#stx-e _tl1411114224_)))
                                             (let ((_hd1411314230_
                                                    (##car _e1411214227_))
                                                   (_tl1411414232_
                                                    (##cdr _e1411214227_)))
                                               (if (gx#stx-null?
                                                    _tl1411414232_)
                                                   (if (gx#stx-null?
                                                        _tl1410814216_)
                                                       ((lambda (_L14235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14236_
                         _L14237_
                         _L14238_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19340
                       (gxc#generate-runtime-binding-id _L14237_)
                       (gx#stx-e _L14236_)
                       (gxc#generate-runtime-binding-id _L14235_)
                       '#f)
                      (_g1401614126_ _g1401814129_)))
                _hd1411314230_
                _hd1410414206_
                _hd1409514182_
                _hd1408614158_)
               (_g1401614126_ _g1401814129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1401614126_
                                                    _g1401814129_))))
                                           (_g1401614126_ _g1401814129_))
                                       (_g1401614126_ _g1401814129_))
                                   (_g1401614126_ _g1401814129_))))
                           (_g1401614126_ _g1401814129_))))
                   (_g1401614126_ _g1401814129_))
               (_g1401614126_ _g1401814129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1401614126_ _g1401814129_))
                                           (_g1401614126_ _g1401814129_))
                                       (_g1401614126_ _g1401814129_))))
                               (_g1401614126_ _g1401814129_))))
                       (_g1401614126_ _g1401814129_))
                   (_g1401614126_ _g1401814129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1401614126_
                                                    _g1401814129_))
                                               (_g1401614126_ _g1401814129_))
                                           (_g1401614126_ _g1401814129_))))
                                   (_g1401614126_ _g1401814129_))))
                           (_g1401614126_ _g1401814129_))
                       (_g1401614126_ _g1401814129_))))
               (_g1401614126_ _g1401814129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1401614126_
                                                    _g1401814129_))
                                               (_g1401614126_ _g1401814129_))))
                                       (_g1401614126_ _g1401814129_))))
                               (_g1401614126_ _g1401814129_))))
                       (_g1401614126_ _g1401814129_)))))
            (let ((_g1401414456_
                   (lambda (_g1401814279_)
                     (if (gx#stx-pair? _g1401814279_)
                         (let ((_e1402414281_ (gx#stx-e _g1401814279_)))
                           (let ((_hd1402514284_ (##car _e1402414281_))
                                 (_tl1402614286_ (##cdr _e1402414281_)))
                             (if (gx#stx-pair? _tl1402614286_)
                                 (let ((_e1402714289_
                                        (gx#stx-e _tl1402614286_)))
                                   (let ((_hd1402814292_ (##car _e1402714289_))
                                         (_tl1402914294_
                                          (##cdr _e1402714289_)))
                                     (if (gx#stx-pair? _hd1402814292_)
                                         (let ((_e1403014297_
                                                (gx#stx-e _hd1402814292_)))
                                           (let ((_hd1403114300_
                                                  (##car _e1403014297_))
                                                 (_tl1403214302_
                                                  (##cdr _e1403014297_)))
                                             (if (gx#identifier?
                                                  _hd1403114300_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1403114300_)
                                                     (if (gx#stx-pair?
                                                          _tl1403214302_)
                                                         (let ((_e1403314305_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1403214302_)))
                   (let ((_hd1403414308_ (##car _e1403314305_))
                         (_tl1403514310_ (##cdr _e1403314305_)))
                     (if (gx#stx-null? _tl1403514310_)
                         (if (gx#stx-pair? _tl1402914294_)
                             (let ((_e1403614313_ (gx#stx-e _tl1402914294_)))
                               (let ((_hd1403714316_ (##car _e1403614313_))
                                     (_tl1403814318_ (##cdr _e1403614313_)))
                                 (if (gx#stx-pair? _hd1403714316_)
                                     (let ((_e1403914321_
                                            (gx#stx-e _hd1403714316_)))
                                       (let ((_hd1404014324_
                                              (##car _e1403914321_))
                                             (_tl1404114326_
                                              (##cdr _e1403914321_)))
                                         (if (gx#identifier? _hd1404014324_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1404014324_)
                                                 (if (gx#stx-pair?
                                                      _tl1404114326_)
                                                     (let ((_e1404214329_
                                                            (gx#stx-e
                                                             _tl1404114326_)))
                                                       (let ((_hd1404314332_
                                                              (##car _e1404214329_))
                                                             (_tl1404414334_
                                                              (##cdr _e1404214329_)))
                                                         (if (gx#stx-null?
                                                              _tl1404414334_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1403814318_)
                         (let ((_e1404514337_ (gx#stx-e _tl1403814318_)))
                           (let ((_hd1404614340_ (##car _e1404514337_))
                                 (_tl1404714342_ (##cdr _e1404514337_)))
                             (if (gx#stx-pair? _hd1404614340_)
                                 (let ((_e1404814345_
                                        (gx#stx-e _hd1404614340_)))
                                   (let ((_hd1404914348_ (##car _e1404814345_))
                                         (_tl1405014350_
                                          (##cdr _e1404814345_)))
                                     (if (gx#identifier? _hd1404914348_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1404914348_)
                                             (if (gx#stx-pair? _tl1405014350_)
                                                 (let ((_e1405114353_
                                                        (gx#stx-e
                                                         _tl1405014350_)))
                                                   (let ((_hd1405214356_
                                                          (##car _e1405114353_))
                                                         (_tl1405314358_
                                                          (##cdr _e1405114353_)))
                                                     (if (gx#stx-null?
                                                          _tl1405314358_)
                                                         (if (gx#stx-pair?
                                                              _tl1404714342_)
                                                             (let ((_e1405414361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1404714342_)))
                       (let ((_hd1405514364_ (##car _e1405414361_))
                             (_tl1405614366_ (##cdr _e1405414361_)))
                         (if (gx#stx-pair? _hd1405514364_)
                             (let ((_e1405714369_ (gx#stx-e _hd1405514364_)))
                               (let ((_hd1405814372_ (##car _e1405714369_))
                                     (_tl1405914374_ (##cdr _e1405714369_)))
                                 (if (gx#identifier? _hd1405814372_)
                                     (if (gx#stx-eq? '%#ref _hd1405814372_)
                                         (if (gx#stx-pair? _tl1405914374_)
                                             (let ((_e1406014377_
                                                    (gx#stx-e _tl1405914374_)))
                                               (let ((_hd1406114380_
                                                      (##car _e1406014377_))
                                                     (_tl1406214382_
                                                      (##cdr _e1406014377_)))
                                                 (if (gx#stx-null?
                                                      _tl1406214382_)
                                                     (if (gx#stx-pair?
                                                          _tl1405614366_)
                                                         (let ((_e1406314385_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1405614366_)))
                   (let ((_hd1406414388_ (##car _e1406314385_))
                         (_tl1406514390_ (##cdr _e1406314385_)))
                     (if (gx#stx-pair? _hd1406414388_)
                         (let ((_e1406614393_ (gx#stx-e _hd1406414388_)))
                           (let ((_hd1406714396_ (##car _e1406614393_))
                                 (_tl1406814398_ (##cdr _e1406614393_)))
                             (if (gx#identifier? _hd1406714396_)
                                 (if (gx#stx-eq? '%#quote _hd1406714396_)
                                     (if (gx#stx-pair? _tl1406814398_)
                                         (let ((_e1406914401_
                                                (gx#stx-e _tl1406814398_)))
                                           (let ((_hd1407014404_
                                                  (##car _e1406914401_))
                                                 (_tl1407114406_
                                                  (##cdr _e1406914401_)))
                                             (if (gx#stx-null? _tl1407114406_)
                                                 (if (gx#stx-null?
                                                      _tl1406514390_)
                                                     ((lambda (_L14409_
                                                               _L14410_
                                                               _L14411_
                                                               _L14412_
                                                               _L14413_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14413_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19340
                     (gxc#generate-runtime-binding-id _L14412_)
                     (gx#stx-e _L14411_)
                     (gxc#generate-runtime-binding-id _L14410_)
                     (gx#stx-e _L14409_))
                    (_g1401514276_ _g1401814279_)))
              _hd1407014404_
              _hd1406114380_
              _hd1405214356_
              _hd1404314332_
              _hd1403414308_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401514276_
                                                      _g1401814279_))
                                                 (_g1401514276_
                                                  _g1401814279_))))
                                         (_g1401514276_ _g1401814279_))
                                     (_g1401514276_ _g1401814279_))
                                 (_g1401514276_ _g1401814279_))))
                         (_g1401514276_ _g1401814279_))))
                 (_g1401514276_ _g1401814279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401514276_
                                                      _g1401814279_))))
                                             (_g1401514276_ _g1401814279_))
                                         (_g1401514276_ _g1401814279_))
                                     (_g1401514276_ _g1401814279_))))
                             (_g1401514276_ _g1401814279_))))
                     (_g1401514276_ _g1401814279_))
                 (_g1401514276_ _g1401814279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1401514276_ _g1401814279_))
                                             (_g1401514276_ _g1401814279_))
                                         (_g1401514276_ _g1401814279_))))
                                 (_g1401514276_ _g1401814279_))))
                         (_g1401514276_ _g1401814279_))
                     (_g1401514276_ _g1401814279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401514276_
                                                      _g1401814279_))
                                                 (_g1401514276_ _g1401814279_))
                                             (_g1401514276_ _g1401814279_))))
                                     (_g1401514276_ _g1401814279_))))
                             (_g1401514276_ _g1401814279_))
                         (_g1401514276_ _g1401814279_))))
                 (_g1401514276_ _g1401814279_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401514276_
                                                      _g1401814279_))
                                                 (_g1401514276_
                                                  _g1401814279_))))
                                         (_g1401514276_ _g1401814279_))))
                                 (_g1401514276_ _g1401814279_))))
                         (_g1401514276_ _g1401814279_)))))
              (_g1401414456_ _stx14013_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13953_)
      (let ((_g1395613969_
             (lambda (_g1395713966_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1395713966_))))
        (let ((_g1395513976_ (lambda (_g1395713972_) ((lambda () '#f)))))
          (let ((_g1395414010_
                 (lambda (_g1395713979_)
                   (if (gx#stx-pair? _g1395713979_)
                       (let ((_e1395913981_ (gx#stx-e _g1395713979_)))
                         (let ((_hd1396013984_ (##car _e1395913981_))
                               (_tl1396113986_ (##cdr _e1395913981_)))
                           (if (gx#stx-pair? _tl1396113986_)
                               (let ((_e1396213989_ (gx#stx-e _tl1396113986_)))
                                 (let ((_hd1396313992_ (##car _e1396213989_))
                                       (_tl1396413994_ (##cdr _e1396213989_)))
                                   (if (gx#stx-null? _tl1396413994_)
                                       ((lambda (_L13997_)
                                          (gxc#compile-e _L13997_))
                                        _hd1396313992_)
                                       (_g1395513976_ _g1395713979_))))
                               (_g1395513976_ _g1395713979_))))
                       (_g1395513976_ _g1395713979_)))))
            (_g1395414010_ _stx13953_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13378_)
      (let ((_g1338313504_
             (lambda (_g1338413501_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1338413501_))))
        (let ((_g1338213511_ (lambda (_g1338413507_) ((lambda () '#f)))))
          (let ((_g1338113535_
                 (lambda (_g1338413514_)
                   (if (gx#stx-pair? _g1338413514_)
                       (let ((_e1349713516_ (gx#stx-e _g1338413514_)))
                         (let ((_hd1349813519_ (##car _e1349713516_))
                               (_tl1349913521_ (##cdr _e1349713516_)))
                           ((lambda (_L13524_)
                              (if (gxc#dispatch-lambda-form? _L13524_)
                                  (let ((__obj19592
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19592
                                       'lambda
                                       (gxc#lambda-form-arity _L13524_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13524_))
                                      __obj19592))
                                  (_g1338213511_ _g1338413514_)))
                            _tl1349913521_)))
                       (_g1338213511_ _g1338413514_)))))
            (let ((_g1338013765_
                   (lambda (_g1338413538_)
                     (if (gx#stx-pair? _g1338413538_)
                         (let ((_e1344213540_ (gx#stx-e _g1338413538_)))
                           (let ((_hd1344313543_ (##car _e1344213540_))
                                 (_tl1344413545_ (##cdr _e1344213540_)))
                             (if (gx#stx-pair? _tl1344413545_)
                                 (let ((_e1344513548_
                                        (gx#stx-e _tl1344413545_)))
                                   (let ((_hd1344613551_ (##car _e1344513548_))
                                         (_tl1344713553_
                                          (##cdr _e1344513548_)))
                                     (if (gx#stx-pair/null? _hd1344613551_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1344613551_)
                                                   '0)
                                             (let ((_g19654_
                                                    (gx#syntax-split-splice
                                                     _hd1344613551_
                                                     '0)))
                                               (begin
                                                 (let ((_g19655_
                                                        (values-count
                                                         _g19654_)))
                                                   (if (not (fx= _g19655_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19655_)))
                                                 (let ((_target1344813556_
                                                        (values-ref
                                                         _g19654_
                                                         0))
                                                       (_tl1345013558_
                                                        (values-ref
                                                         _g19654_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1345013558_)
                                                       (letrec ((_loop1345113561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1344913564_ _arg1345513566_)
                           (if (gx#stx-pair? _hd1344913564_)
                               (let ((_e1345213569_ (gx#stx-e _hd1344913564_)))
                                 (let ((_lp-hd1345313572_
                                        (##car _e1345213569_))
                                       (_lp-tl1345413574_
                                        (##cdr _e1345213569_)))
                                   (_loop1345113561_
                                    _lp-tl1345413574_
                                    (cons _lp-hd1345313572_ _arg1345513566_))))
                               (let ((_arg1345613577_
                                      (reverse _arg1345513566_)))
                                 (if (gx#stx-pair? _tl1344713553_)
                                     (let ((_e1345713580_
                                            (gx#stx-e _tl1344713553_)))
                                       (let ((_hd1345813583_
                                              (##car _e1345713580_))
                                             (_tl1345913585_
                                              (##cdr _e1345713580_)))
                                         (if (gx#stx-pair? _hd1345813583_)
                                             (let ((_e1346013588_
                                                    (gx#stx-e _hd1345813583_)))
                                               (let ((_hd1346113591_
                                                      (##car _e1346013588_))
                                                     (_tl1346213593_
                                                      (##cdr _e1346013588_)))
                                                 (if (gx#identifier?
                                                      _hd1346113591_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1346113591_)
                                                         (if (gx#stx-pair?
                                                              _tl1346213593_)
                                                             (let ((_e1346313596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1346213593_)))
                       (let ((_hd1346413599_ (##car _e1346313596_))
                             (_tl1346513601_ (##cdr _e1346313596_)))
                         (if (gx#stx-pair? _hd1346413599_)
                             (let ((_e1346613604_ (gx#stx-e _hd1346413599_)))
                               (let ((_hd1346713607_ (##car _e1346613604_))
                                     (_tl1346813609_ (##cdr _e1346613604_)))
                                 (if (gx#identifier? _hd1346713607_)
                                     (if (gx#stx-eq? '%#ref _hd1346713607_)
                                         (if (gx#stx-pair? _tl1346813609_)
                                             (let ((_e1346913612_
                                                    (gx#stx-e _tl1346813609_)))
                                               (let ((_hd1347013615_
                                                      (##car _e1346913612_))
                                                     (_tl1347113617_
                                                      (##cdr _e1346913612_)))
                                                 (if (gx#stx-null?
                                                      _tl1347113617_)
                                                     (if (gx#stx-pair?
                                                          _tl1346513601_)
                                                         (let ((_e1347213620_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1346513601_)))
                   (let ((_hd1347313623_ (##car _e1347213620_))
                         (_tl1347413625_ (##cdr _e1347213620_)))
                     (if (gx#stx-pair? _hd1347313623_)
                         (let ((_e1347513628_ (gx#stx-e _hd1347313623_)))
                           (let ((_hd1347613631_ (##car _e1347513628_))
                                 (_tl1347713633_ (##cdr _e1347513628_)))
                             (if (gx#identifier? _hd1347613631_)
                                 (if (gx#stx-eq? '%#ref _hd1347613631_)
                                     (if (gx#stx-pair? _tl1347713633_)
                                         (let ((_e1347813636_
                                                (gx#stx-e _tl1347713633_)))
                                           (let ((_hd1347913639_
                                                  (##car _e1347813636_))
                                                 (_tl1348013641_
                                                  (##cdr _e1347813636_)))
                                             (if (gx#stx-null? _tl1348013641_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1347413625_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1347413625_)
                                                               '0)
                                                         (let ((_g19656_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1347413625_
                         '0)))
                   (begin
                     (let ((_g19657_ (values-count _g19656_)))
                       (if (not (fx= _g19657_ 2))
                           (error "Context expects 2 values" _g19657_)))
                     (let ((_target1348113644_ (values-ref _g19656_ 0))
                           (_tl1348313646_ (values-ref _g19656_ 1)))
                       (if (gx#stx-null? _tl1348313646_)
                           (letrec ((_loop1348413649_
                                     (lambda (_hd1348213652_ _xarg1348813654_)
                                       (if (gx#stx-pair? _hd1348213652_)
                                           (let ((_e1348513657_
                                                  (gx#stx-e _hd1348213652_)))
                                             (let ((_lp-hd1348613660_
                                                    (##car _e1348513657_))
                                                   (_lp-tl1348713662_
                                                    (##cdr _e1348513657_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1348613660_)
                                                   (let ((_e1349013665_
                                                          (gx#stx-e
                                                           _lp-hd1348613660_)))
                                                     (let ((_hd1349113668_
                                                            (##car _e1349013665_))
                                                           (_tl1349213670_
                                                            (##cdr _e1349013665_)))
                                                       (if (gx#identifier?
                                                            _hd1349113668_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1349113668_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1349213670_)
                           (let ((_e1349313673_ (gx#stx-e _tl1349213670_)))
                             (let ((_hd1349413676_ (##car _e1349313673_))
                                   (_tl1349513678_ (##cdr _e1349313673_)))
                               (if (gx#stx-null? _tl1349513678_)
                                   (_loop1348413649_
                                    _lp-tl1348713662_
                                    (cons _hd1349413676_ _xarg1348813654_))
                                   (_g1338113535_ _g1338413538_))))
                           (_g1338113535_ _g1338413538_))
                       (_g1338113535_ _g1338413538_))
                   (_g1338113535_ _g1338413538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338113535_
                                                    _g1338413538_))))
                                           (let ((_xarg1348913681_
                                                  (reverse _xarg1348813654_)))
                                             (if (gx#stx-null? _tl1345913585_)
                                                 ((lambda (_L13684_
                                                           _L13685_
                                                           _L13686_
                                                           _L13687_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1372413727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1372513729_)
                                 (cons _g1372413727_ _g1372513729_))
                               '()
                               _L13687_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13686_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1373113734_
                                                            _g1373213736_)
                                                     (cons _g1373113734_
                                                           _g1373213736_))
                                                   '()
                                                   _L13687_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1373813741_
                                                            _g1373913743_)
                                                     (cons _g1373813741_
                                                           _g1373913743_))
                                                   '()
                                                   _L13684_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1374513748_
                                                       _g1374613750_)
                                                (cons _g1374513748_
                                                      _g1374613750_))
                                              '()
                                              _L13687_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1375213755_
                                                       _g1375313757_)
                                                (cons _g1375213755_
                                                      _g1375313757_))
                                              '()
                                              _L13684_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13760_
                       (gxc#generate-runtime-binding-id _L13685_)))
                  (let ((_type13762_
                         (gxc#optimizer-resolve-type _type-t13760_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13762_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13760_)
                          '#f))))
                (_g1338113535_ _g1338413538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1348913681_
                                                  _hd1347913639_
                                                  _hd1347013615_
                                                  _arg1345613577_)
                                                 (_g1338113535_
                                                  _g1338413538_)))))))
                             (_loop1348413649_ _target1348113644_ '()))
                           (_g1338113535_ _g1338413538_)))))
                 (_g1338113535_ _g1338413538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338113535_
                                                      _g1338413538_))
                                                 (_g1338113535_
                                                  _g1338413538_))))
                                         (_g1338113535_ _g1338413538_))
                                     (_g1338113535_ _g1338413538_))
                                 (_g1338113535_ _g1338413538_))))
                         (_g1338113535_ _g1338413538_))))
                 (_g1338113535_ _g1338413538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338113535_
                                                      _g1338413538_))))
                                             (_g1338113535_ _g1338413538_))
                                         (_g1338113535_ _g1338413538_))
                                     (_g1338113535_ _g1338413538_))))
                             (_g1338113535_ _g1338413538_))))
                     (_g1338113535_ _g1338413538_))
                 (_g1338113535_ _g1338413538_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1338113535_
                                                      _g1338413538_))))
                                             (_g1338113535_ _g1338413538_))))
                                     (_g1338113535_ _g1338413538_)))))))
                 (_loop1345113561_ _target1344813556_ '()))
               (_g1338113535_ _g1338413538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1338113535_ _g1338413538_))
                                         (_g1338113535_ _g1338413538_))))
                                 (_g1338113535_ _g1338413538_))))
                         (_g1338113535_ _g1338413538_)))))
              (let ((_g1337913950_
                     (lambda (_g1338413768_)
                       (if (gx#stx-pair? _g1338413768_)
                           (let ((_e1339013770_ (gx#stx-e _g1338413768_)))
                             (let ((_hd1339113773_ (##car _e1339013770_))
                                   (_tl1339213775_ (##cdr _e1339013770_)))
                               (if (gx#stx-pair? _tl1339213775_)
                                   (let ((_e1339313778_
                                          (gx#stx-e _tl1339213775_)))
                                     (let ((_hd1339413781_
                                            (##car _e1339313778_))
                                           (_tl1339513783_
                                            (##cdr _e1339313778_)))
                                       (if (gx#stx-pair? _tl1339513783_)
                                           (let ((_e1339613786_
                                                  (gx#stx-e _tl1339513783_)))
                                             (let ((_hd1339713789_
                                                    (##car _e1339613786_))
                                                   (_tl1339813791_
                                                    (##cdr _e1339613786_)))
                                               (if (gx#stx-pair?
                                                    _hd1339713789_)
                                                   (let ((_e1339913794_
                                                          (gx#stx-e
                                                           _hd1339713789_)))
                                                     (let ((_hd1340013797_
                                                            (##car _e1339913794_))
                                                           (_tl1340113799_
                                                            (##cdr _e1339913794_)))
                                                       (if (gx#identifier?
                                                            _hd1340013797_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1340013797_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1340113799_)
                           (let ((_e1340213802_ (gx#stx-e _tl1340113799_)))
                             (let ((_hd1340313805_ (##car _e1340213802_))
                                   (_tl1340413807_ (##cdr _e1340213802_)))
                               (if (gx#stx-pair? _hd1340313805_)
                                   (let ((_e1340513810_
                                          (gx#stx-e _hd1340313805_)))
                                     (let ((_hd1340613813_
                                            (##car _e1340513810_))
                                           (_tl1340713815_
                                            (##cdr _e1340513810_)))
                                       (if (gx#identifier? _hd1340613813_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1340613813_)
                                               (if (gx#stx-pair?
                                                    _tl1340713815_)
                                                   (let ((_e1340813818_
                                                          (gx#stx-e
                                                           _tl1340713815_)))
                                                     (let ((_hd1340913821_
                                                            (##car _e1340813818_))
                                                           (_tl1341013823_
                                                            (##cdr _e1340813818_)))
                                                       (if (gx#stx-null?
                                                            _tl1341013823_)
                                                           (if (gx#stx-pair?
                                                                _tl1340413807_)
                                                               (let ((_e1341113826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1340413807_)))
                         (let ((_hd1341213829_ (##car _e1341113826_))
                               (_tl1341313831_ (##cdr _e1341113826_)))
                           (if (gx#stx-pair? _hd1341213829_)
                               (let ((_e1341413834_ (gx#stx-e _hd1341213829_)))
                                 (let ((_hd1341513837_ (##car _e1341413834_))
                                       (_tl1341613839_ (##cdr _e1341413834_)))
                                   (if (gx#identifier? _hd1341513837_)
                                       (if (gx#stx-eq? '%#ref _hd1341513837_)
                                           (if (gx#stx-pair? _tl1341613839_)
                                               (let ((_e1341713842_
                                                      (gx#stx-e
                                                       _tl1341613839_)))
                                                 (let ((_hd1341813845_
                                                        (##car _e1341713842_))
                                                       (_tl1341913847_
                                                        (##cdr _e1341713842_)))
                                                   (if (gx#stx-null?
                                                        _tl1341913847_)
                                                       (if (gx#stx-pair?
                                                            _tl1341313831_)
                                                           (let ((_e1342013850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1341313831_)))
                     (let ((_hd1342113853_ (##car _e1342013850_))
                           (_tl1342213855_ (##cdr _e1342013850_)))
                       (if (gx#stx-pair? _hd1342113853_)
                           (let ((_e1342313858_ (gx#stx-e _hd1342113853_)))
                             (let ((_hd1342413861_ (##car _e1342313858_))
                                   (_tl1342513863_ (##cdr _e1342313858_)))
                               (if (gx#identifier? _hd1342413861_)
                                   (if (gx#stx-eq? '%#ref _hd1342413861_)
                                       (if (gx#stx-pair? _tl1342513863_)
                                           (let ((_e1342613866_
                                                  (gx#stx-e _tl1342513863_)))
                                             (let ((_hd1342713869_
                                                    (##car _e1342613866_))
                                                   (_tl1342813871_
                                                    (##cdr _e1342613866_)))
                                               (if (gx#stx-null?
                                                    _tl1342813871_)
                                                   (if (gx#stx-pair?
                                                        _tl1342213855_)
                                                       (let ((_e1342913874_
                                                              (gx#stx-e
                                                               _tl1342213855_)))
                                                         (let ((_hd1343013877_
                                                                (##car _e1342913874_))
                                                               (_tl1343113879_
                                                                (##cdr _e1342913874_)))
                                                           (if (gx#stx-pair?
                                                                _hd1343013877_)
                                                               (let ((_e1343213882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1343013877_)))
                         (let ((_hd1343313885_ (##car _e1343213882_))
                               (_tl1343413887_ (##cdr _e1343213882_)))
                           (if (gx#identifier? _hd1343313885_)
                               (if (gx#stx-eq? '%#ref _hd1343313885_)
                                   (if (gx#stx-pair? _tl1343413887_)
                                       (let ((_e1343513890_
                                              (gx#stx-e _tl1343413887_)))
                                         (let ((_hd1343613893_
                                                (##car _e1343513890_))
                                               (_tl1343713895_
                                                (##cdr _e1343513890_)))
                                           (if (gx#stx-null? _tl1343713895_)
                                               (if (gx#stx-null?
                                                    _tl1343113879_)
                                                   (if (gx#stx-null?
                                                        _tl1339813791_)
                                                       ((lambda (_L13898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13899_
                         _L13900_
                         _L13901_
                         _L13902_)
                  (if (if (gx#identifier? _L13902_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13901_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13900_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13902_ _L13898_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13945_
                             (gxc#generate-runtime-binding-id _L13899_)))
                        (let ((_type13947_
                               (gxc#optimizer-resolve-type _type-t13945_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13947_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13945_)
                                '#f))))
                      (_g1338013765_ _g1338413768_)))
                _hd1343613893_
                _hd1342713869_
                _hd1341813845_
                _hd1340913821_
                _hd1339413781_)
               (_g1338013765_ _g1338413768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338013765_
                                                    _g1338413768_))
                                               (_g1338013765_ _g1338413768_))))
                                       (_g1338013765_ _g1338413768_))
                                   (_g1338013765_ _g1338413768_))
                               (_g1338013765_ _g1338413768_))))
                       (_g1338013765_ _g1338413768_))))
               (_g1338013765_ _g1338413768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338013765_
                                                    _g1338413768_))))
                                           (_g1338013765_ _g1338413768_))
                                       (_g1338013765_ _g1338413768_))
                                   (_g1338013765_ _g1338413768_))))
                           (_g1338013765_ _g1338413768_))))
                   (_g1338013765_ _g1338413768_))
               (_g1338013765_ _g1338413768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1338013765_ _g1338413768_))
                                           (_g1338013765_ _g1338413768_))
                                       (_g1338013765_ _g1338413768_))))
                               (_g1338013765_ _g1338413768_))))
                       (_g1338013765_ _g1338413768_))
                   (_g1338013765_ _g1338413768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338013765_
                                                    _g1338413768_))
                                               (_g1338013765_ _g1338413768_))
                                           (_g1338013765_ _g1338413768_))))
                                   (_g1338013765_ _g1338413768_))))
                           (_g1338013765_ _g1338413768_))
                       (_g1338013765_ _g1338413768_))
                   (_g1338013765_ _g1338413768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1338013765_
                                                    _g1338413768_))))
                                           (_g1338013765_ _g1338413768_))))
                                   (_g1338013765_ _g1338413768_))))
                           (_g1338013765_ _g1338413768_)))))
                (_g1337913950_ _stx13378_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13324_)
      (let ((_clause-e13326_
             (lambda (_form13376_)
               (let ((__obj19593 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19593
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13376_)
                    (gxc#dispatch-lambda-form-delegate _form13376_))
                   __obj19593)))))
        (let ((_g1332913339_
               (lambda (_g1333013336_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1333013336_))))
          (let ((_g1332813346_ (lambda (_g1333013342_) ((lambda () '#f)))))
            (let ((_g1332713373_
                   (lambda (_g1333013349_)
                     (if (gx#stx-pair? _g1333013349_)
                         (let ((_e1333213351_ (gx#stx-e _g1333013349_)))
                           (let ((_hd1333313354_ (##car _e1333213351_))
                                 (_tl1333413356_ (##cdr _e1333213351_)))
                             ((lambda (_L13359_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13359_)
                                    (let ((_clauses13371_
                                           (map _clause-e13326_ _L13359_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13371_))
                                    (_g1332813346_ _g1333013349_)))
                              _tl1333413356_)))
                         (_g1332813346_ _g1333013349_)))))
              (_g1332713373_ _stx13324_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13229_)
      (let ((_g1323213252_
             (lambda (_g1323313249_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1323313249_))))
        (let ((_g1323113259_ (lambda (_g1323313255_) ((lambda () '#f)))))
          (let ((_g1323013321_
                 (lambda (_g1323313262_)
                   (if (gx#stx-pair? _g1323313262_)
                       (let ((_e1323613264_ (gx#stx-e _g1323313262_)))
                         (let ((_hd1323713267_ (##car _e1323613264_))
                               (_tl1323813269_ (##cdr _e1323613264_)))
                           (if (gx#stx-pair? _tl1323813269_)
                               (let ((_e1323913272_ (gx#stx-e _tl1323813269_)))
                                 (let ((_hd1324013275_ (##car _e1323913272_))
                                       (_tl1324113277_ (##cdr _e1323913272_)))
                                   (if (gx#stx-pair? _hd1324013275_)
                                       (let ((_e1324213280_
                                              (gx#stx-e _hd1324013275_)))
                                         (let ((_hd1324313283_
                                                (##car _e1324213280_))
                                               (_tl1324413285_
                                                (##cdr _e1324213280_)))
                                           (if (gx#identifier? _hd1324313283_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1324313283_)
                                                   (if (gx#stx-pair?
                                                        _tl1324413285_)
                                                       (let ((_e1324513288_
                                                              (gx#stx-e
                                                               _tl1324413285_)))
                                                         (let ((_hd1324613291_
                                                                (##car _e1324513288_))
                                                               (_tl1324713293_
                                                                (##cdr _e1324513288_)))
                                                           (if (gx#stx-null?
                                                                _tl1324713293_)
                                                               ((lambda (_L13296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13297_)
                          (let ((_type-e1331413316_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13297_)
                                  '#f)))
                            (if _type-e1331413316_
                                (let ((_type-e13319_ _type-e1331413316_))
                                  (_type-e13319_ _stx13229_ _L13296_))
                                '#f)))
                        _tl1324113277_
                        _hd1324613291_)
                       (_g1323113259_ _g1323313262_))))
               (_g1323113259_ _g1323313262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1323113259_
                                                    _g1323313262_))
                                               (_g1323113259_ _g1323313262_))))
                                       (_g1323113259_ _g1323313262_))))
                               (_g1323113259_ _g1323313262_))))
                       (_g1323113259_ _g1323313262_)))))
            (_g1323013321_ _stx13229_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12714_ _args12715_)
      (let ((_g1271912832_
             (lambda (_g1272012829_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1272012829_))))
        (let ((_g1271812839_
               (lambda (_g1272012835_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12714_))
                      '#f))))))
          (let ((_g1271713046_
                 (lambda (_g1272012842_)
                   (if (gx#stx-pair? _g1272012842_)
                       (let ((_e1278012844_ (gx#stx-e _g1272012842_)))
                         (let ((_hd1278112847_ (##car _e1278012844_))
                               (_tl1278212849_ (##cdr _e1278012844_)))
                           (if (gx#stx-pair? _hd1278112847_)
                               (let ((_e1278312852_ (gx#stx-e _hd1278112847_)))
                                 (let ((_hd1278412855_ (##car _e1278312852_))
                                       (_tl1278512857_ (##cdr _e1278312852_)))
                                   (if (gx#identifier? _hd1278412855_)
                                       (if (gx#stx-eq? '%#quote _hd1278412855_)
                                           (if (gx#stx-pair? _tl1278512857_)
                                               (let ((_e1278612860_
                                                      (gx#stx-e
                                                       _tl1278512857_)))
                                                 (let ((_hd1278712863_
                                                        (##car _e1278612860_))
                                                       (_tl1278812865_
                                                        (##cdr _e1278612860_)))
                                                   (if (gx#stx-null?
                                                        _tl1278812865_)
                                                       (if (gx#stx-pair?
                                                            _tl1278212849_)
                                                           (let ((_e1278912868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1278212849_)))
                     (let ((_hd1279012871_ (##car _e1278912868_))
                           (_tl1279112873_ (##cdr _e1278912868_)))
                       (if (gx#stx-pair? _hd1279012871_)
                           (let ((_e1279212876_ (gx#stx-e _hd1279012871_)))
                             (let ((_hd1279312879_ (##car _e1279212876_))
                                   (_tl1279412881_ (##cdr _e1279212876_)))
                               (if (gx#identifier? _hd1279312879_)
                                   (if (gx#stx-eq? '%#ref _hd1279312879_)
                                       (if (gx#stx-pair? _tl1279412881_)
                                           (let ((_e1279512884_
                                                  (gx#stx-e _tl1279412881_)))
                                             (let ((_hd1279612887_
                                                    (##car _e1279512884_))
                                                   (_tl1279712889_
                                                    (##cdr _e1279512884_)))
                                               (if (gx#stx-null?
                                                    _tl1279712889_)
                                                   (if (gx#stx-pair?
                                                        _tl1279112873_)
                                                       (let ((_e1279812892_
                                                              (gx#stx-e
                                                               _tl1279112873_)))
                                                         (let ((_hd1279912895_
                                                                (##car _e1279812892_))
                                                               (_tl1280012897_
                                                                (##cdr _e1279812892_)))
                                                           (if (gx#stx-pair?
                                                                _hd1279912895_)
                                                               (let ((_e1280112900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1279912895_)))
                         (let ((_hd1280212903_ (##car _e1280112900_))
                               (_tl1280312905_ (##cdr _e1280112900_)))
                           (if (gx#identifier? _hd1280212903_)
                               (if (gx#stx-eq? '%#quote _hd1280212903_)
                                   (if (gx#stx-pair? _tl1280312905_)
                                       (let ((_e1280412908_
                                              (gx#stx-e _tl1280312905_)))
                                         (let ((_hd1280512911_
                                                (##car _e1280412908_))
                                               (_tl1280612913_
                                                (##cdr _e1280412908_)))
                                           (if (gx#stx-null? _tl1280612913_)
                                               (if (gx#stx-pair?
                                                    _tl1280012897_)
                                                   (let ((_e1280712916_
                                                          (gx#stx-e
                                                           _tl1280012897_)))
                                                     (let ((_hd1280812919_
                                                            (##car _e1280712916_))
                                                           (_tl1280912921_
                                                            (##cdr _e1280712916_)))
                                                       (if (gx#stx-pair?
                                                            _tl1280912921_)
                                                           (let ((_e1281012924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1280912921_)))
                     (let ((_hd1281112927_ (##car _e1281012924_))
                           (_tl1281212929_ (##cdr _e1281012924_)))
                       (if (gx#stx-pair? _hd1281112927_)
                           (let ((_e1281312932_ (gx#stx-e _hd1281112927_)))
                             (let ((_hd1281412935_ (##car _e1281312932_))
                                   (_tl1281512937_ (##cdr _e1281312932_)))
                               (if (gx#identifier? _hd1281412935_)
                                   (if (gx#stx-eq? '%#quote _hd1281412935_)
                                       (if (gx#stx-pair? _tl1281512937_)
                                           (let ((_e1281612940_
                                                  (gx#stx-e _tl1281512937_)))
                                             (let ((_hd1281712943_
                                                    (##car _e1281612940_))
                                                   (_tl1281812945_
                                                    (##cdr _e1281612940_)))
                                               (if (gx#stx-null?
                                                    _tl1281812945_)
                                                   (if (gx#stx-pair?
                                                        _tl1281212929_)
                                                       (let ((_e1281912948_
                                                              (gx#stx-e
                                                               _tl1281212929_)))
                                                         (let ((_hd1282012951_
                                                                (##car _e1281912948_))
                                                               (_tl1282112953_
                                                                (##cdr _e1281912948_)))
                                                           (if (gx#stx-pair?
                                                                _hd1282012951_)
                                                               (let ((_e1282212956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1282012951_)))
                         (let ((_hd1282312959_ (##car _e1282212956_))
                               (_tl1282412961_ (##cdr _e1282212956_)))
                           (if (gx#identifier? _hd1282312959_)
                               (if (gx#stx-eq? '%#quote _hd1282312959_)
                                   (if (gx#stx-pair? _tl1282412961_)
                                       (let ((_e1282512964_
                                              (gx#stx-e _tl1282412961_)))
                                         (let ((_hd1282612967_
                                                (##car _e1282512964_))
                                               (_tl1282712969_
                                                (##cdr _e1282512964_)))
                                           (if (gx#stx-null? _tl1282712969_)
                                               (if (gx#stx-null?
                                                    _tl1282112953_)
                                                   ((lambda (_L12972_
                                                             _L12973_
                                                             _L12974_
                                                             _L12975_
                                                             _L12976_
                                                             _L12977_)
                                                      (let ((_super-t13023_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12976_)
                         (gxc#generate-runtime-binding-id _L12976_)
                         '#f)))
                (let ((_super-type13025_
                       (if _super-t13023_
                           (gxc#optimizer-resolve-type _super-t13023_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type13025_
                              (not (##structure-instance-of?
                                    _super-type13025_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12714_
                           _L12976_)
                          '#!void)
                      (let ((_fields13041_ (gx#stx-e _L12975_))
                            (_xfields13042_
                             (if _super-type13025_
                                 (let ((_super-fields1302713030_
                                        (##structure-ref
                                         _super-type13025_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1302813032_
                                        (##structure-ref
                                         _super-type13025_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1302713030_
                                       (if _super-xfields1302813032_
                                           (let ((_super-fields13035_
                                                  _super-fields1302713030_)
                                                 (_super-xfields13036_
                                                  _super-xfields1302813032_))
                                             (fx+ _super-fields13035_
                                                  _super-xfields13036_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist13043_ (gx#stx-e _L12973_))
                            (_ctor13044_
                             (let ((_$e13038_ (gx#stx-e _L12972_)))
                               (if _$e13038_
                                   (values _$e13038_)
                                   (if _super-type13025_
                                       (##structure-ref
                                        _super-type13025_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t13023_ '#!void '#f))))))
                        (let ((__obj19594
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19594
                             (gx#stx-e _L12977_)
                             _super-t13023_
                             _fields13041_
                             _xfields13042_
                             _ctor13044_
                             _plist13043_)
                            __obj19594))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1282612967_
                                                    _hd1281712943_
                                                    _hd1280812919_
                                                    _hd1280512911_
                                                    _hd1279612887_
                                                    _hd1278712863_)
                                                   (_g1271812839_
                                                    _g1272012842_))
                                               (_g1271812839_ _g1272012842_))))
                                       (_g1271812839_ _g1272012842_))
                                   (_g1271812839_ _g1272012842_))
                               (_g1271812839_ _g1272012842_))))
                       (_g1271812839_ _g1272012842_))))
               (_g1271812839_ _g1272012842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1271812839_
                                                    _g1272012842_))))
                                           (_g1271812839_ _g1272012842_))
                                       (_g1271812839_ _g1272012842_))
                                   (_g1271812839_ _g1272012842_))))
                           (_g1271812839_ _g1272012842_))))
                   (_g1271812839_ _g1272012842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1271812839_
                                                    _g1272012842_))
                                               (_g1271812839_ _g1272012842_))))
                                       (_g1271812839_ _g1272012842_))
                                   (_g1271812839_ _g1272012842_))
                               (_g1271812839_ _g1272012842_))))
                       (_g1271812839_ _g1272012842_))))
               (_g1271812839_ _g1272012842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1271812839_
                                                    _g1272012842_))))
                                           (_g1271812839_ _g1272012842_))
                                       (_g1271812839_ _g1272012842_))
                                   (_g1271812839_ _g1272012842_))))
                           (_g1271812839_ _g1272012842_))))
                   (_g1271812839_ _g1272012842_))
               (_g1271812839_ _g1272012842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1271812839_ _g1272012842_))
                                           (_g1271812839_ _g1272012842_))
                                       (_g1271812839_ _g1272012842_))))
                               (_g1271812839_ _g1272012842_))))
                       (_g1271812839_ _g1272012842_)))))
            (let ((_g1271613226_
                   (lambda (_g1272013049_)
                     (if (gx#stx-pair? _g1272013049_)
                         (let ((_e1272613051_ (gx#stx-e _g1272013049_)))
                           (let ((_hd1272713054_ (##car _e1272613051_))
                                 (_tl1272813056_ (##cdr _e1272613051_)))
                             (if (gx#stx-pair? _hd1272713054_)
                                 (let ((_e1272913059_
                                        (gx#stx-e _hd1272713054_)))
                                   (let ((_hd1273013062_ (##car _e1272913059_))
                                         (_tl1273113064_
                                          (##cdr _e1272913059_)))
                                     (if (gx#identifier? _hd1273013062_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1273013062_)
                                             (if (gx#stx-pair? _tl1273113064_)
                                                 (let ((_e1273213067_
                                                        (gx#stx-e
                                                         _tl1273113064_)))
                                                   (let ((_hd1273313070_
                                                          (##car _e1273213067_))
                                                         (_tl1273413072_
                                                          (##cdr _e1273213067_)))
                                                     (if (gx#stx-null?
                                                          _tl1273413072_)
                                                         (if (gx#stx-pair?
                                                              _tl1272813056_)
                                                             (let ((_e1273513075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1272813056_)))
                       (let ((_hd1273613078_ (##car _e1273513075_))
                             (_tl1273713080_ (##cdr _e1273513075_)))
                         (if (gx#stx-pair? _hd1273613078_)
                             (let ((_e1273813083_ (gx#stx-e _hd1273613078_)))
                               (let ((_hd1273913086_ (##car _e1273813083_))
                                     (_tl1274013088_ (##cdr _e1273813083_)))
                                 (if (gx#identifier? _hd1273913086_)
                                     (if (gx#stx-eq? '%#quote _hd1273913086_)
                                         (if (gx#stx-pair? _tl1274013088_)
                                             (let ((_e1274113091_
                                                    (gx#stx-e _tl1274013088_)))
                                               (let ((_hd1274213094_
                                                      (##car _e1274113091_))
                                                     (_tl1274313096_
                                                      (##cdr _e1274113091_)))
                                                 (if (gx#stx-datum?
                                                      _hd1274213094_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1274213094_)
                         '#f)
                 (if (gx#stx-null? _tl1274313096_)
                     (if (gx#stx-pair? _tl1273713080_)
                         (let ((_e1274413099_ (gx#stx-e _tl1273713080_)))
                           (let ((_hd1274513102_ (##car _e1274413099_))
                                 (_tl1274613104_ (##cdr _e1274413099_)))
                             (if (gx#stx-pair? _hd1274513102_)
                                 (let ((_e1274713107_
                                        (gx#stx-e _hd1274513102_)))
                                   (let ((_hd1274813110_ (##car _e1274713107_))
                                         (_tl1274913112_
                                          (##cdr _e1274713107_)))
                                     (if (gx#identifier? _hd1274813110_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1274813110_)
                                             (if (gx#stx-pair? _tl1274913112_)
                                                 (let ((_e1275013115_
                                                        (gx#stx-e
                                                         _tl1274913112_)))
                                                   (let ((_hd1275113118_
                                                          (##car _e1275013115_))
                                                         (_tl1275213120_
                                                          (##cdr _e1275013115_)))
                                                     (if (gx#stx-null?
                                                          _tl1275213120_)
                                                         (if (gx#stx-pair?
                                                              _tl1274613104_)
                                                             (let ((_e1275313123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1274613104_)))
                       (let ((_hd1275413126_ (##car _e1275313123_))
                             (_tl1275513128_ (##cdr _e1275313123_)))
                         (if (gx#stx-pair? _tl1275513128_)
                             (let ((_e1275613131_ (gx#stx-e _tl1275513128_)))
                               (let ((_hd1275713134_ (##car _e1275613131_))
                                     (_tl1275813136_ (##cdr _e1275613131_)))
                                 (if (gx#stx-pair? _hd1275713134_)
                                     (let ((_e1275913139_
                                            (gx#stx-e _hd1275713134_)))
                                       (let ((_hd1276013142_
                                              (##car _e1275913139_))
                                             (_tl1276113144_
                                              (##cdr _e1275913139_)))
                                         (if (gx#identifier? _hd1276013142_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1276013142_)
                                                 (if (gx#stx-pair?
                                                      _tl1276113144_)
                                                     (let ((_e1276213147_
                                                            (gx#stx-e
                                                             _tl1276113144_)))
                                                       (let ((_hd1276313150_
                                                              (##car _e1276213147_))
                                                             (_tl1276413152_
                                                              (##cdr _e1276213147_)))
                                                         (if (gx#stx-null?
                                                              _tl1276413152_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1275813136_)
                         (let ((_e1276513155_ (gx#stx-e _tl1275813136_)))
                           (let ((_hd1276613158_ (##car _e1276513155_))
                                 (_tl1276713160_ (##cdr _e1276513155_)))
                             (if (gx#stx-pair? _hd1276613158_)
                                 (let ((_e1276813163_
                                        (gx#stx-e _hd1276613158_)))
                                   (let ((_hd1276913166_ (##car _e1276813163_))
                                         (_tl1277013168_
                                          (##cdr _e1276813163_)))
                                     (if (gx#identifier? _hd1276913166_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1276913166_)
                                             (if (gx#stx-pair? _tl1277013168_)
                                                 (let ((_e1277113171_
                                                        (gx#stx-e
                                                         _tl1277013168_)))
                                                   (let ((_hd1277213174_
                                                          (##car _e1277113171_))
                                                         (_tl1277313176_
                                                          (##cdr _e1277113171_)))
                                                     (if (gx#stx-null?
                                                          _tl1277313176_)
                                                         (if (gx#stx-null?
                                                              _tl1276713160_)
                                                             ((lambda (_L13179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L13180_
                               _L13181_
                               _L13182_
                               _L13183_)
                        (let ((__obj19595
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19595
                             (gx#stx-e _L13183_)
                             '#f
                             (gx#stx-e _L13182_)
                             '0
                             (gx#stx-e _L13179_)
                             (gx#stx-e _L13180_))
                            __obj19595)))
                      _hd1277213174_
                      _hd1276313150_
                      _hd1275413126_
                      _hd1275113118_
                      _hd1273313070_)
                     (_g1271713046_ _g1272013049_))
                 (_g1271713046_ _g1272013049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1271713046_ _g1272013049_))
                                             (_g1271713046_ _g1272013049_))
                                         (_g1271713046_ _g1272013049_))))
                                 (_g1271713046_ _g1272013049_))))
                         (_g1271713046_ _g1272013049_))
                     (_g1271713046_ _g1272013049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1271713046_
                                                      _g1272013049_))
                                                 (_g1271713046_ _g1272013049_))
                                             (_g1271713046_ _g1272013049_))))
                                     (_g1271713046_ _g1272013049_))))
                             (_g1271713046_ _g1272013049_))))
                     (_g1271713046_ _g1272013049_))
                 (_g1271713046_ _g1272013049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1271713046_ _g1272013049_))
                                             (_g1271713046_ _g1272013049_))
                                         (_g1271713046_ _g1272013049_))))
                                 (_g1271713046_ _g1272013049_))))
                         (_g1271713046_ _g1272013049_))
                     (_g1271713046_ _g1272013049_))
                 (_g1271713046_ _g1272013049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1271713046_
                                                      _g1272013049_))))
                                             (_g1271713046_ _g1272013049_))
                                         (_g1271713046_ _g1272013049_))
                                     (_g1271713046_ _g1272013049_))))
                             (_g1271713046_ _g1272013049_))))
                     (_g1271713046_ _g1272013049_))
                 (_g1271713046_ _g1272013049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1271713046_ _g1272013049_))
                                             (_g1271713046_ _g1272013049_))
                                         (_g1271713046_ _g1272013049_))))
                                 (_g1271713046_ _g1272013049_))))
                         (_g1271713046_ _g1272013049_)))))
              (_g1271613226_ _args12715_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12640_ _args12641_)
      (let ((_g1264412660_
             (lambda (_g1264512657_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1264512657_))))
        (let ((_g1264312667_ (lambda (_g1264512663_) ((lambda () '#f)))))
          (let ((_g1264212711_
                 (lambda (_g1264512670_)
                   (if (gx#stx-pair? _g1264512670_)
                       (let ((_e1264712672_ (gx#stx-e _g1264512670_)))
                         (let ((_hd1264812675_ (##car _e1264712672_))
                               (_tl1264912677_ (##cdr _e1264712672_)))
                           (if (gx#stx-pair? _hd1264812675_)
                               (let ((_e1265012680_ (gx#stx-e _hd1264812675_)))
                                 (let ((_hd1265112683_ (##car _e1265012680_))
                                       (_tl1265212685_ (##cdr _e1265012680_)))
                                   (if (gx#identifier? _hd1265112683_)
                                       (if (gx#stx-eq? '%#ref _hd1265112683_)
                                           (if (gx#stx-pair? _tl1265212685_)
                                               (let ((_e1265312688_
                                                      (gx#stx-e
                                                       _tl1265212685_)))
                                                 (let ((_hd1265412691_
                                                        (##car _e1265312688_))
                                                       (_tl1265512693_
                                                        (##cdr _e1265312688_)))
                                                   (if (gx#stx-null?
                                                        _tl1265512693_)
                                                       (if (gx#stx-null?
                                                            _tl1264912677_)
                                                           ((lambda (_L12696_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12696_)))
                                                            _hd1265412691_)
                                                           (_g1264312667_
                                                            _g1264512670_))
                                                       (_g1264312667_
                                                        _g1264512670_))))
                                               (_g1264312667_ _g1264512670_))
                                           (_g1264312667_ _g1264512670_))
                                       (_g1264312667_ _g1264512670_))))
                               (_g1264312667_ _g1264512670_))))
                       (_g1264312667_ _g1264512670_)))))
            (_g1264212711_ _args12641_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12524_ _args12525_)
      (let ((_g1252812554_
             (lambda (_g1252912551_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1252912551_))))
        (let ((_g1252712561_ (lambda (_g1252912557_) ((lambda () '#f)))))
          (let ((_g1252612637_
                 (lambda (_g1252912564_)
                   (if (gx#stx-pair? _g1252912564_)
                       (let ((_e1253212566_ (gx#stx-e _g1252912564_)))
                         (let ((_hd1253312569_ (##car _e1253212566_))
                               (_tl1253412571_ (##cdr _e1253212566_)))
                           (if (gx#stx-pair? _hd1253312569_)
                               (let ((_e1253512574_ (gx#stx-e _hd1253312569_)))
                                 (let ((_hd1253612577_ (##car _e1253512574_))
                                       (_tl1253712579_ (##cdr _e1253512574_)))
                                   (if (gx#identifier? _hd1253612577_)
                                       (if (gx#stx-eq? '%#ref _hd1253612577_)
                                           (if (gx#stx-pair? _tl1253712579_)
                                               (let ((_e1253812582_
                                                      (gx#stx-e
                                                       _tl1253712579_)))
                                                 (let ((_hd1253912585_
                                                        (##car _e1253812582_))
                                                       (_tl1254012587_
                                                        (##cdr _e1253812582_)))
                                                   (if (gx#stx-null?
                                                        _tl1254012587_)
                                                       (if (gx#stx-pair?
                                                            _tl1253412571_)
                                                           (let ((_e1254112590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1253412571_)))
                     (let ((_hd1254212593_ (##car _e1254112590_))
                           (_tl1254312595_ (##cdr _e1254112590_)))
                       (if (gx#stx-pair? _hd1254212593_)
                           (let ((_e1254412598_ (gx#stx-e _hd1254212593_)))
                             (let ((_hd1254512601_ (##car _e1254412598_))
                                   (_tl1254612603_ (##cdr _e1254412598_)))
                               (if (gx#identifier? _hd1254512601_)
                                   (if (gx#stx-eq? '%#quote _hd1254512601_)
                                       (if (gx#stx-pair? _tl1254612603_)
                                           (let ((_e1254712606_
                                                  (gx#stx-e _tl1254612603_)))
                                             (let ((_hd1254812609_
                                                    (##car _e1254712606_))
                                                   (_tl1254912611_
                                                    (##cdr _e1254712606_)))
                                               (if (gx#stx-null?
                                                    _tl1254912611_)
                                                   (if (gx#stx-null?
                                                        _tl1254312595_)
                                                       ((lambda (_L12614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12615_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12615_)
                   (gx#stx-e _L12614_)))
                _hd1254812609_
                _hd1253912585_)
               (_g1252712561_ _g1252912564_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1252712561_
                                                    _g1252912564_))))
                                           (_g1252712561_ _g1252912564_))
                                       (_g1252712561_ _g1252912564_))
                                   (_g1252712561_ _g1252912564_))))
                           (_g1252712561_ _g1252912564_))))
                   (_g1252712561_ _g1252912564_))
               (_g1252712561_ _g1252912564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1252712561_ _g1252912564_))
                                           (_g1252712561_ _g1252912564_))
                                       (_g1252712561_ _g1252912564_))))
                               (_g1252712561_ _g1252912564_))))
                       (_g1252712561_ _g1252912564_)))))
            (_g1252612637_ _args12525_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12408_ _args12409_)
      (let ((_g1241212438_
             (lambda (_g1241312435_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1241312435_))))
        (let ((_g1241112445_ (lambda (_g1241312441_) ((lambda () '#f)))))
          (let ((_g1241012521_
                 (lambda (_g1241312448_)
                   (if (gx#stx-pair? _g1241312448_)
                       (let ((_e1241612450_ (gx#stx-e _g1241312448_)))
                         (let ((_hd1241712453_ (##car _e1241612450_))
                               (_tl1241812455_ (##cdr _e1241612450_)))
                           (if (gx#stx-pair? _hd1241712453_)
                               (let ((_e1241912458_ (gx#stx-e _hd1241712453_)))
                                 (let ((_hd1242012461_ (##car _e1241912458_))
                                       (_tl1242112463_ (##cdr _e1241912458_)))
                                   (if (gx#identifier? _hd1242012461_)
                                       (if (gx#stx-eq? '%#ref _hd1242012461_)
                                           (if (gx#stx-pair? _tl1242112463_)
                                               (let ((_e1242212466_
                                                      (gx#stx-e
                                                       _tl1242112463_)))
                                                 (let ((_hd1242312469_
                                                        (##car _e1242212466_))
                                                       (_tl1242412471_
                                                        (##cdr _e1242212466_)))
                                                   (if (gx#stx-null?
                                                        _tl1242412471_)
                                                       (if (gx#stx-pair?
                                                            _tl1241812455_)
                                                           (let ((_e1242512474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1241812455_)))
                     (let ((_hd1242612477_ (##car _e1242512474_))
                           (_tl1242712479_ (##cdr _e1242512474_)))
                       (if (gx#stx-pair? _hd1242612477_)
                           (let ((_e1242812482_ (gx#stx-e _hd1242612477_)))
                             (let ((_hd1242912485_ (##car _e1242812482_))
                                   (_tl1243012487_ (##cdr _e1242812482_)))
                               (if (gx#identifier? _hd1242912485_)
                                   (if (gx#stx-eq? '%#quote _hd1242912485_)
                                       (if (gx#stx-pair? _tl1243012487_)
                                           (let ((_e1243112490_
                                                  (gx#stx-e _tl1243012487_)))
                                             (let ((_hd1243212493_
                                                    (##car _e1243112490_))
                                                   (_tl1243312495_
                                                    (##cdr _e1243112490_)))
                                               (if (gx#stx-null?
                                                    _tl1243312495_)
                                                   (if (gx#stx-null?
                                                        _tl1242712479_)
                                                       ((lambda (_L12498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12499_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12499_)
                   (gx#stx-e _L12498_)))
                _hd1243212493_
                _hd1242312469_)
               (_g1241112445_ _g1241312448_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1241112445_
                                                    _g1241312448_))))
                                           (_g1241112445_ _g1241312448_))
                                       (_g1241112445_ _g1241312448_))
                                   (_g1241112445_ _g1241312448_))))
                           (_g1241112445_ _g1241312448_))))
                   (_g1241112445_ _g1241312448_))
               (_g1241112445_ _g1241312448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1241112445_ _g1241312448_))
                                           (_g1241112445_ _g1241312448_))
                                       (_g1241112445_ _g1241312448_))))
                               (_g1241112445_ _g1241312448_))))
                       (_g1241112445_ _g1241312448_)))))
            (_g1241012521_ _args12409_))))))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx12357_)
      (let ((_g1235912372_
             (lambda (_g1236012369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1236012369_))))
        (let ((_g1235812405_
               (lambda (_g1236012375_)
                 (if (gx#stx-pair? _g1236012375_)
                     (let ((_e1236212377_ (gx#stx-e _g1236012375_)))
                       (let ((_hd1236312380_ (##car _e1236212377_))
                             (_tl1236412382_ (##cdr _e1236212377_)))
                         (if (gx#stx-pair? _tl1236412382_)
                             (let ((_e1236512385_ (gx#stx-e _tl1236412382_)))
                               (let ((_hd1236612388_ (##car _e1236512385_))
                                     (_tl1236712390_ (##cdr _e1236512385_)))
                                 (if (gx#stx-null? _tl1236712390_)
                                     ((lambda (_L12393_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12393_)))
                                      _hd1236612388_)
                                     (_g1235912372_ _g1236012375_))))
                             (_g1235912372_ _g1236012375_))))
                     (_g1235912372_ _g1236012375_)))))
          (_g1235812405_ _stx12357_)))))
  (define gxc#optimize-call%
    (lambda (_stx12263_)
      (let ((_g1226612286_
             (lambda (_g1226712283_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1226712283_))))
        (let ((_g1226512293_
               (lambda (_g1226712289_)
                 ((lambda () (gxc#xform-call% _stx12263_))))))
          (let ((_g1226412354_
                 (lambda (_g1226712296_)
                   (if (gx#stx-pair? _g1226712296_)
                       (let ((_e1227012298_ (gx#stx-e _g1226712296_)))
                         (let ((_hd1227112301_ (##car _e1227012298_))
                               (_tl1227212303_ (##cdr _e1227012298_)))
                           (if (gx#stx-pair? _tl1227212303_)
                               (let ((_e1227312306_ (gx#stx-e _tl1227212303_)))
                                 (let ((_hd1227412309_ (##car _e1227312306_))
                                       (_tl1227512311_ (##cdr _e1227312306_)))
                                   (if (gx#stx-pair? _hd1227412309_)
                                       (let ((_e1227612314_
                                              (gx#stx-e _hd1227412309_)))
                                         (let ((_hd1227712317_
                                                (##car _e1227612314_))
                                               (_tl1227812319_
                                                (##cdr _e1227612314_)))
                                           (if (gx#identifier? _hd1227712317_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1227712317_)
                                                   (if (gx#stx-pair?
                                                        _tl1227812319_)
                                                       (let ((_e1227912322_
                                                              (gx#stx-e
                                                               _tl1227812319_)))
                                                         (let ((_hd1228012325_
                                                                (##car _e1227912322_))
                                                               (_tl1228112327_
                                                                (##cdr _e1227912322_)))
                                                           (if (gx#stx-null?
                                                                _tl1228112327_)
                                                               ((lambda (_L12330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12331_)
                          (let ((_rator-id12349_
                                 (gxc#generate-runtime-binding-id _L12331_)))
                            (let ((_rator-type12351_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12349_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12351_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12349_
                                       '" => "
                                       _rator-type12351_
                                       '" "
                                       (##structure-ref
                                        _rator-type12351_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12351_
                                       'optimize-call
                                       _stx12263_
                                       _L12330_))
                                    (if (not _rator-type12351_)
                                        (gxc#xform-call% _stx12263_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12263_
                                         _rator-type12351_)))))))
                        _tl1227512311_
                        _hd1228012325_)
                       (_g1226512293_ _g1226712296_))))
               (_g1226512293_ _g1226712296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1226512293_
                                                    _g1226712296_))
                                               (_g1226512293_ _g1226712296_))))
                                       (_g1226512293_ _g1226712296_))))
                               (_g1226512293_ _g1226712296_))))
                       (_g1226512293_ _g1226712296_)))))
            (_g1226412354_ _stx12263_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self12118_ _stx12119_ _args12120_)
      (let ((_self1212112127_ _self12118_))
        (let ((_E1212312131_
               (lambda () (error '"No clause matching" _self1212112127_))))
          (let ((_K1212412255_
                 (lambda (_struct-t12134_)
                   (let ((_struct-type12136_
                          (gxc#optimizer-resolve-type _struct-t12134_)))
                     (let ((_struct-type1213712151_ _struct-type12136_))
                       (let ((_E1214112155_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1213712151_))))
                         (let ((_else1214012159_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx12119_
                                   _struct-t12134_
                                   _struct-type12136_))))
                           (let ((_try-match1213912167_
                                  (lambda ()
                                    (let ((_K1214212164_
                                           (lambda ()
                                             (gxc#xform-call% _stx12119_))))
                                      (if (##eq? _struct-type1213712151_ '#f)
                                          (_K1214212164_)
                                          (_else1214012159_))))))
                             (let ((_K1214312230_
                                    (lambda (_plist12170_
                                             _struct-type-id12171_)
                                      (let ((_g1217412184_
                                             (lambda (_g1217512181_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1217512181_))))
                                        (let ((_g1217312191_
                                               (lambda (_g1217512187_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx12119_))))))
                                          (let ((_g1217212227_
                                                 (lambda (_g1217512194_)
                                                   (if (gx#stx-pair?
                                                        _g1217512194_)
                                                       (let ((_e1217712196_
                                                              (gx#stx-e
                                                               _g1217512194_)))
                                                         (let ((_hd1217812199_
                                                                (##car _e1217712196_))
                                                               (_tl1217912201_
                                                                (##cdr _e1217712196_)))
                                                           (if (gx#stx-null?
                                                                _tl1217912201_)
                                                               ((lambda (_L12204_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12224_ (gxc#compile-e _L12204_))
                                (_op12225_
                                 (if (if _plist12170_
                                         (assgetq 'final: _plist12170_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12225_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id12171_
                                                     '()))
                                         (cons _expr12224_ '())))
                             _stx12119_)))
                        _hd1217812199_)
                       (_g1217312191_ _g1217512194_))))
               (_g1217312191_ _g1217512194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1217212227_ _args12120_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1213712151_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1214412233_
                                          (##vector-ref
                                           _struct-type1213712151_
                                           '1)))
                                     (let ((_struct-type-id12236_
                                            _e1214412233_))
                                       (let ((_e1214512238_
                                              (##vector-ref
                                               _struct-type1213712151_
                                               '2)))
                                         (let ((_e1214612241_
                                                (##vector-ref
                                                 _struct-type1213712151_
                                                 '3)))
                                           (let ((_e1214712244_
                                                  (##vector-ref
                                                   _struct-type1213712151_
                                                   '4)))
                                             (let ((_e1214812247_
                                                    (##vector-ref
                                                     _struct-type1213712151_
                                                     '5)))
                                               (let ((_e1214912250_
                                                      (##vector-ref
                                                       _struct-type1213712151_
                                                       '6)))
                                                 (let ((_plist12253_
                                                        _e1214912250_))
                                                   (_K1214312230_
                                                    _plist12253_
                                                    _struct-type-id12236_)))))))))
                                   (_try-match1213912167_)))))))))))
            (if (##structure-instance-of?
                 _self1212112127_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1212512258_ (##vector-ref _self1212112127_ '1)))
                  (let ((_struct-t12261_ _e1212512258_))
                    (_K1212412255_ _struct-t12261_)))
                (_E1212312131_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self12014_ _stx12015_ _args12016_)
      (let ((_self1201712023_ _self12014_))
        (let ((_E1201912027_
               (lambda () (error '"No clause matching" _self1201712023_))))
          (let ((_K1202012110_
                 (lambda (_struct-t12030_)
                   (let ((_struct-type12032_
                          (gxc#optimizer-resolve-type _struct-t12030_)))
                     (let ((_struct-type1203312046_ _struct-type12032_))
                       (let ((_E1203712050_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1203312046_))))
                         (let ((_else1203612054_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx12015_
                                   _struct-t12030_
                                   _struct-type12032_))))
                           (let ((_try-match1203512062_
                                  (lambda ()
                                    (let ((_K1203812059_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t12030_)
                                               (gxc#xform-call% _stx12015_)))))
                                      (if (##eq? _struct-type1203312046_ '#f)
                                          (_K1203812059_)
                                          (_else1203612054_))))))
                             (let ((_K1203912084_
                                    (lambda (_ctor12065_
                                             _xfields12066_
                                             _fields12067_
                                             _type-id12068_)
                                      (let ((_args12070_
                                             (map gxc#compile-e _args12016_)))
                                        (let ((_$e12072_
                                               (if _ctor12065_
                                                   (if _xfields12066_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type12032_
                                                        _ctor12065_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e12072_
                                              ((lambda (_kons12075_)
                                                 (let ((_$obj12077_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj12077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t12030_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields12067_ _xfields12066_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons12075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj12077_ '())) _args12070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx12015_))
                                          (cons (cons '%#ref
                                                      (cons _$obj12077_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx12015_)))
                                               _$e12072_)
                                              (if (let ((_$e12079_
                                                         _ctor12065_))
                                                    (if _$e12079_
                                                        _$e12079_
                                                        (not _xfields12066_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t12030_ '()))
                             _args12070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx12015_)
                                                  (let ((_arity12082_
                                                         (fx+ _fields12067_
                                                              _xfields12066_)))
                                                    (if (fx= _arity12082_
                                                             (length _args12070_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t12030_ '()))
                                   _args12070_)))
                 _stx12015_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx12015_
                 _struct-t12030_
                 _arity12082_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1203312046_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1204012087_
                                          (##vector-ref
                                           _struct-type1203312046_
                                           '1)))
                                     (let ((_type-id12090_ _e1204012087_))
                                       (let ((_e1204112092_
                                              (##vector-ref
                                               _struct-type1203312046_
                                               '2)))
                                         (let ((_e1204212095_
                                                (##vector-ref
                                                 _struct-type1203312046_
                                                 '3)))
                                           (let ((_fields12098_ _e1204212095_))
                                             (let ((_e1204312100_
                                                    (##vector-ref
                                                     _struct-type1203312046_
                                                     '4)))
                                               (let ((_xfields12103_
                                                      _e1204312100_))
                                                 (let ((_e1204412105_
                                                        (##vector-ref
                                                         _struct-type1203312046_
                                                         '5)))
                                                   (let ((_ctor12108_
                                                          _e1204412105_))
                                                     (_K1203912084_
                                                      _ctor12108_
                                                      _xfields12103_
                                                      _fields12098_
                                                      _type-id12090_))))))))))
                                   (_try-match1203512062_)))))))))))
            (if (##structure-instance-of?
                 _self1201712023_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1202112113_ (##vector-ref _self1201712023_ '1)))
                  (let ((_struct-t12116_ _e1202112113_))
                    (_K1202012110_ _struct-t12116_)))
                (_E1201912027_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11855_ _stx11856_ _args11857_)
      (let ((_self1185811865_ _self11855_))
        (let ((_E1186011869_
               (lambda () (error '"No clause matching" _self1185811865_))))
          (let ((_K1186112001_
                 (lambda (_off11872_ _struct-t11873_)
                   (let ((_struct-type11875_
                          (gxc#optimizer-resolve-type _struct-t11873_)))
                     (let ((_struct-type1187611890_ _struct-type11875_))
                       (let ((_E1188011894_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1187611890_))))
                         (let ((_else1187911898_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11856_
                                   _struct-t11873_
                                   _struct-type11875_))))
                           (let ((_try-match1187811906_
                                  (lambda ()
                                    (let ((_K1188111903_
                                           (lambda ()
                                             (gxc#xform-call% _stx11856_))))
                                      (if (##eq? _struct-type1187611890_ '#f)
                                          (_K1188111903_)
                                          (_else1187911898_))))))
                             (let ((_K1188211972_
                                    (lambda (_plist11909_
                                             _xfields11910_
                                             _fields11911_
                                             _struct-type-id11912_)
                                      (if _xfields11910_
                                          (let ((_g1191511925_
                                                 (lambda (_g1191611922_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1191611922_))))
                                            (let ((_g1191411932_
                                                   (lambda (_g1191611928_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11856_))))))
                                              (let ((_g1191311969_
                                                     (lambda (_g1191611935_)
                                                       (if (gx#stx-pair?
                                                            _g1191611935_)
                                                           (let ((_e1191811937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1191611935_)))
                     (let ((_hd1191911940_ (##car _e1191811937_))
                           (_tl1192011942_ (##cdr _e1191811937_)))
                       (if (gx#stx-null? _tl1192011942_)
                           ((lambda (_L11945_)
                              (let ((_expr11965_ (gxc#compile-e _L11945_))
                                    (_off11966_
                                     (fx+ _off11872_ _xfields11910_ '1))
                                    (_op11967_
                                     (if (if _plist11909_
                                             (assgetq 'final: _plist11909_)
                                             '#f)
                                         '%#struct-direct-ref
                                         '%#struct-ref)))
                                (gxc#xform-wrap-source
                                 (cons _op11967_
                                       (cons (cons '%#ref
                                                   (cons _struct-t11873_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11966_ '()))
                                                   (cons _expr11965_ '()))))
                                 _stx11856_)))
                            _hd1191911940_)
                           (_g1191411932_ _g1191611935_))))
                   (_g1191411932_ _g1191611935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1191311969_ _args11857_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11912_)
                                            (gxc#xform-call% _stx11856_))))))
                               (if (##structure-instance-of?
                                    _struct-type1187611890_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1188311975_
                                          (##vector-ref
                                           _struct-type1187611890_
                                           '1)))
                                     (let ((_struct-type-id11978_
                                            _e1188311975_))
                                       (let ((_e1188411980_
                                              (##vector-ref
                                               _struct-type1187611890_
                                               '2)))
                                         (let ((_e1188511983_
                                                (##vector-ref
                                                 _struct-type1187611890_
                                                 '3)))
                                           (let ((_fields11986_ _e1188511983_))
                                             (let ((_e1188611988_
                                                    (##vector-ref
                                                     _struct-type1187611890_
                                                     '4)))
                                               (let ((_xfields11991_
                                                      _e1188611988_))
                                                 (let ((_e1188711993_
                                                        (##vector-ref
                                                         _struct-type1187611890_
                                                         '5)))
                                                   (let ((_e1188811996_
                                                          (##vector-ref
                                                           _struct-type1187611890_
                                                           '6)))
                                                     (let ((_plist11999_
                                                            _e1188811996_))
                                                       (_K1188211972_
                                                        _plist11999_
                                                        _xfields11991_
                                                        _fields11986_
                                                        _struct-type-id11978_)))))))))))
                                   (_try-match1187811906_)))))))))))
            (if (##structure-instance-of?
                 _self1185811865_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1186212004_ (##vector-ref _self1185811865_ '1)))
                  (let ((_struct-t12007_ _e1186212004_))
                    (let ((_e1186312009_ (##vector-ref _self1185811865_ '2)))
                      (let ((_off12012_ _e1186312009_))
                        (_K1186112001_ _off12012_ _struct-t12007_)))))
                (_E1186011869_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11679_ _stx11680_ _args11681_)
      (let ((_self1168211689_ _self11679_))
        (let ((_E1168411693_
               (lambda () (error '"No clause matching" _self1168211689_))))
          (let ((_K1168511842_
                 (lambda (_off11696_ _struct-t11697_)
                   (let ((_struct-type11699_
                          (gxc#optimizer-resolve-type _struct-t11697_)))
                     (let ((_struct-type1170011714_ _struct-type11699_))
                       (let ((_E1170411718_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1170011714_))))
                         (let ((_else1170311722_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11680_
                                   _struct-t11697_
                                   _struct-type11699_))))
                           (let ((_try-match1170211730_
                                  (lambda ()
                                    (let ((_K1170511727_
                                           (lambda ()
                                             (gxc#xform-call% _stx11680_))))
                                      (if (##eq? _struct-type1170011714_ '#f)
                                          (_K1170511727_)
                                          (_else1170311722_))))))
                             (let ((_K1170611813_
                                    (lambda (_plist11733_
                                             _xfields11734_
                                             _fields11735_
                                             _struct-type-id11736_)
                                      (if _xfields11734_
                                          (let ((_g1173911753_
                                                 (lambda (_g1174011750_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1174011750_))))
                                            (let ((_g1173811760_
                                                   (lambda (_g1174011756_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11680_))))))
                                              (let ((_g1173711810_
                                                     (lambda (_g1174011763_)
                                                       (if (gx#stx-pair?
                                                            _g1174011763_)
                                                           (let ((_e1174311765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1174011763_)))
                     (let ((_hd1174411768_ (##car _e1174311765_))
                           (_tl1174511770_ (##cdr _e1174311765_)))
                       (if (gx#stx-pair? _tl1174511770_)
                           (let ((_e1174611773_ (gx#stx-e _tl1174511770_)))
                             (let ((_hd1174711776_ (##car _e1174611773_))
                                   (_tl1174811778_ (##cdr _e1174611773_)))
                               (if (gx#stx-null? _tl1174811778_)
                                   ((lambda (_L11781_ _L11782_)
                                      (let ((_expr11805_
                                             (gxc#compile-e _L11782_))
                                            (_val11806_
                                             (gxc#compile-e _L11781_))
                                            (_off11807_
                                             (fx+ _off11696_
                                                  _xfields11734_
                                                  '1))
                                            (_op11808_
                                             (if (if _plist11733_
                                                     (assgetq 'final:
                                                              _plist11733_)
                                                     '#f)
                                                 '%#struct-direct-set!
                                                 '%#struct-set!)))
                                        (gxc#xform-wrap-source
                                         (cons _op11808_
                                               (cons (cons '%#ref
                                                           (cons _struct-t11697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11807_ '()))
                   (cons _expr11805_ (cons _val11806_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11680_)))
                                    _hd1174711776_
                                    _hd1174411768_)
                                   (_g1173811760_ _g1174011763_))))
                           (_g1173811760_ _g1174011763_))))
                   (_g1173811760_ _g1174011763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1173711810_ _args11681_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11736_)
                                            (gxc#xform-call% _stx11680_))))))
                               (if (##structure-instance-of?
                                    _struct-type1170011714_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1170711816_
                                          (##vector-ref
                                           _struct-type1170011714_
                                           '1)))
                                     (let ((_struct-type-id11819_
                                            _e1170711816_))
                                       (let ((_e1170811821_
                                              (##vector-ref
                                               _struct-type1170011714_
                                               '2)))
                                         (let ((_e1170911824_
                                                (##vector-ref
                                                 _struct-type1170011714_
                                                 '3)))
                                           (let ((_fields11827_ _e1170911824_))
                                             (let ((_e1171011829_
                                                    (##vector-ref
                                                     _struct-type1170011714_
                                                     '4)))
                                               (let ((_xfields11832_
                                                      _e1171011829_))
                                                 (let ((_e1171111834_
                                                        (##vector-ref
                                                         _struct-type1170011714_
                                                         '5)))
                                                   (let ((_e1171211837_
                                                          (##vector-ref
                                                           _struct-type1170011714_
                                                           '6)))
                                                     (let ((_plist11840_
                                                            _e1171211837_))
                                                       (_K1170611813_
                                                        _plist11840_
                                                        _xfields11832_
                                                        _fields11827_
                                                        _struct-type-id11819_)))))))))))
                                   (_try-match1170211730_)))))))))))
            (if (##structure-instance-of?
                 _self1168211689_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1168611845_ (##vector-ref _self1168211689_ '1)))
                  (let ((_struct-t11848_ _e1168611845_))
                    (let ((_e1168711850_ (##vector-ref _self1168211689_ '2)))
                      (let ((_off11853_ _e1168711850_))
                        (_K1168511842_ _off11853_ _struct-t11848_)))))
                (_E1168411693_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11635_ _stx11636_ _args11637_)
      (let ((_self1163811647_ _self11635_))
        (let ((_E1164011651_
               (lambda () (error '"No clause matching" _self1163811647_))))
          (let ((_K1164111658_
                 (lambda (_inline11654_ _dispatch11655_ _arity11656_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11635_ _args11637_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11636_
                          _arity11656_))
                     (if _inline11654_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11654_ _stx11636_)
                             _stx11636_)))
                         (if _dispatch11655_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11655_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11655_ '()))
                                             _args11637_))
                                 _stx11636_)))
                             (gxc#xform-call% _stx11636_)))))))
            (if (##structure-instance-of?
                 _self1163811647_
                 (##type-id gxc#!lambda::t))
                (let ((_e1164211661_ (##vector-ref _self1163811647_ '1)))
                  (let ((_e1164311664_ (##vector-ref _self1163811647_ '2)))
                    (let ((_arity11667_ _e1164311664_))
                      (let ((_e1164411669_ (##vector-ref _self1163811647_ '3)))
                        (let ((_dispatch11672_ _e1164411669_))
                          (let ((_e1164511674_
                                 (##vector-ref _self1163811647_ '4)))
                            (let ((_inline11677_ _e1164511674_))
                              (_K1164111658_
                               _inline11677_
                               _dispatch11672_
                               _arity11667_))))))))
                (_E1164011651_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11596_ _stx11597_ _args11598_)
      (let ((_self1159911606_ _self11596_))
        (let ((_E1160111610_
               (lambda () (error '"No clause matching" _self1159911606_))))
          (let ((_K1160211624_
                 (lambda (_clauses11613_)
                   (let ((_$e11619_
                          (find (lambda (_g1161411616_)
                                  (gxc#!lambda-arity-match?
                                   _g1161411616_
                                   _args11598_))
                                _clauses11613_)))
                     (if _$e11619_
                         ((lambda (_clause11622_)
                            (call-method
                             _clause11622_
                             'optimize-call
                             _stx11597_
                             _args11598_))
                          _$e11619_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11597_
                          (map gxc#!lambda-arity _clauses11613_)))))))
            (if (##structure-instance-of?
                 _self1159911606_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1160311627_ (##vector-ref _self1159911606_ '1)))
                  (let ((_e1160411630_ (##vector-ref _self1159911606_ '2)))
                    (let ((_clauses11633_ _e1160411630_))
                      (_K1160211624_ _clauses11633_))))
                (_E1160111610_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11532_ _args11533_)
      (let ((_self1153411541_ _self11532_))
        (let ((_E1153611545_
               (lambda () (error '"No clause matching" _self1153411541_))))
          (let ((_K1153711585_
                 (lambda (_arity11548_)
                   (let ((_arity1154911558_ _arity11548_))
                     (let ((_E1155211562_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1154911558_))))
                       (let ((_try-match1155111578_
                              (lambda ()
                                (let ((_K1155311568_
                                       (lambda (_arity11566_)
                                         (fx>= (length _args11533_)
                                               _arity11566_))))
                                  (if (##pair? _arity1154911558_)
                                      (let ((_hd1155411571_
                                             (##car _arity1154911558_))
                                            (_tl1155511573_
                                             (##cdr _arity1154911558_)))
                                        (let ((_arity11576_ _hd1155411571_))
                                          (if (##null? _tl1155511573_)
                                              (_K1155311568_ _arity11576_)
                                              (_E1155211562_))))
                                      (_E1155211562_))))))
                         (let ((_K1155611582_
                                (lambda ()
                                  (fx= (length _args11533_) _arity11548_))))
                           (if (fixnum? _arity1154911558_)
                               (_K1155611582_)
                               (_try-match1155111578_)))))))))
            (if (##structure-instance-of?
                 _self1153411541_
                 (##type-id gxc#!lambda::t))
                (let ((_e1153811588_ (##vector-ref _self1153411541_ '1)))
                  (let ((_e1153911591_ (##vector-ref _self1153411541_ '2)))
                    (let ((_arity11594_ _e1153911591_))
                      (_K1153711585_ _arity11594_))))
                (_E1153611545_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11472_)
      (let ((_g1147411488_
             (lambda (_g1147511485_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1147511485_))))
        (let ((_g1147311529_
               (lambda (_g1147511491_)
                 (if (gx#stx-pair? _g1147511491_)
                     (let ((_e1147811493_ (gx#stx-e _g1147511491_)))
                       (let ((_hd1147911496_ (##car _e1147811493_))
                             (_tl1148011498_ (##cdr _e1147811493_)))
                         (if (gx#stx-pair? _tl1148011498_)
                             (let ((_e1148111501_ (gx#stx-e _tl1148011498_)))
                               (let ((_hd1148211504_ (##car _e1148111501_))
                                     (_tl1148311506_ (##cdr _e1148111501_)))
                                 ((lambda (_L11509_ _L11510_)
                                    (let ((_ctx11523_
                                           (gx#syntax-local-e__0 _L11510_)))
                                      (let ((_code11525_
                                             (##structure-ref
                                              _ctx11523_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11525_))
                                           gx#current-expander-context
                                           _ctx11523_)))))
                                  _tl1148311506_
                                  _hd1148211504_)))
                             (_g1147411488_ _g1147511491_))))
                     (_g1147411488_ _g1147511491_)))))
          (_g1147311529_ _stx11472_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11282_)
      (let ((_generate-e11284_
             (lambda (_id11461_)
               (let ((_sym11463_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11461_)
                          '#f)))
                 (let ((_$e11465_
                        (if _sym11463_
                            (gxc#optimizer-lookup-type _sym11463_)
                            '#f)))
                   (if _$e11465_
                       ((lambda (_type11468_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11463_)
                            (let ((_typedecl11470_
                                   (call-method _type11468_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11463_
                                          (cons _typedecl11470_ '()))))))
                        _$e11465_)
                       '(begin)))))))
        (let ((_g1128711325_
               (lambda (_g1128811322_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1128811322_))))
          (let ((_g1128611406_
                 (lambda (_g1128811328_)
                   (if (gx#stx-pair? _g1128811328_)
                       (let ((_e1130311330_ (gx#stx-e _g1128811328_)))
                         (let ((_hd1130411333_ (##car _e1130311330_))
                               (_tl1130511335_ (##cdr _e1130311330_)))
                           (if (gx#stx-pair? _tl1130511335_)
                               (let ((_e1130611338_ (gx#stx-e _tl1130511335_)))
                                 (let ((_hd1130711341_ (##car _e1130611338_))
                                       (_tl1130811343_ (##cdr _e1130611338_)))
                                   (if (gx#stx-pair/null? _hd1130711341_)
                                       (if (fx>= (gx#stx-length _hd1130711341_)
                                                 '0)
                                           (let ((_g19658_
                                                  (gx#syntax-split-splice
                                                   _hd1130711341_
                                                   '0)))
                                             (begin
                                               (let ((_g19659_
                                                      (values-count _g19658_)))
                                                 (if (not (fx= _g19659_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19659_)))
                                               (let ((_target1130911346_
                                                      (values-ref _g19658_ 0))
                                                     (_tl1131111348_
                                                      (values-ref _g19658_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1131111348_)
                                                     (letrec ((_loop1131211351_
                                                               (lambda (_hd1131011354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1131611356_)
                         (if (gx#stx-pair? _hd1131011354_)
                             (let ((_e1131311359_ (gx#stx-e _hd1131011354_)))
                               (let ((_lp-hd1131411362_ (##car _e1131311359_))
                                     (_lp-tl1131511364_ (##cdr _e1131311359_)))
                                 (_loop1131211351_
                                  _lp-tl1131511364_
                                  (cons _lp-hd1131411362_ _id1131611356_))))
                             (let ((_id1131711367_ (reverse _id1131611356_)))
                               (if (gx#stx-pair? _tl1130811343_)
                                   (let ((_e1131811370_
                                          (gx#stx-e _tl1130811343_)))
                                     (let ((_hd1131911373_
                                            (##car _e1131811370_))
                                           (_tl1132011375_
                                            (##cdr _e1131811370_)))
                                       (if (gx#stx-null? _tl1132011375_)
                                           ((lambda (_L11378_)
                                              (let ((_types11404_
                                                     (map _generate-e11284_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1139611399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1139711401_)
                              (cons _g1139611399_ _g1139711401_))
                            '()
                            _L11378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11404_)))
                                            _id1131711367_)
                                           (_g1128711325_ _g1128811328_))))
                                   (_g1128711325_ _g1128811328_)))))))
               (_loop1131211351_ _target1130911346_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1128711325_
                                                      _g1128811328_)))))
                                           (_g1128711325_ _g1128811328_))
                                       (_g1128711325_ _g1128811328_))))
                               (_g1128711325_ _g1128811328_))))
                       (_g1128711325_ _g1128811328_)))))
            (let ((_g1128511458_
                   (lambda (_g1128811409_)
                     (if (gx#stx-pair? _g1128811409_)
                         (let ((_e1129011411_ (gx#stx-e _g1128811409_)))
                           (let ((_hd1129111414_ (##car _e1129011411_))
                                 (_tl1129211416_ (##cdr _e1129011411_)))
                             (if (gx#stx-pair? _tl1129211416_)
                                 (let ((_e1129311419_
                                        (gx#stx-e _tl1129211416_)))
                                   (let ((_hd1129411422_ (##car _e1129311419_))
                                         (_tl1129511424_
                                          (##cdr _e1129311419_)))
                                     (if (gx#stx-pair? _hd1129411422_)
                                         (let ((_e1129611427_
                                                (gx#stx-e _hd1129411422_)))
                                           (let ((_hd1129711430_
                                                  (##car _e1129611427_))
                                                 (_tl1129811432_
                                                  (##cdr _e1129611427_)))
                                             (if (gx#stx-null? _tl1129811432_)
                                                 (if (gx#stx-pair?
                                                      _tl1129511424_)
                                                     (let ((_e1129911435_
                                                            (gx#stx-e
                                                             _tl1129511424_)))
                                                       (let ((_hd1130011438_
                                                              (##car _e1129911435_))
                                                             (_tl1130111440_
                                                              (##cdr _e1129911435_)))
                                                         (if (gx#stx-null?
                                                              _tl1130111440_)
                                                             ((lambda (_L11443_)
                                                                (_generate-e11284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11443_))
                      _hd1129711430_)
                     (_g1128611406_ _g1128811409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1128611406_
                                                      _g1128811409_))
                                                 (_g1128611406_
                                                  _g1128811409_))))
                                         (_g1128611406_ _g1128811409_))))
                                 (_g1128611406_ _g1128811409_))))
                         (_g1128611406_ _g1128811409_)))))
              (_g1128511458_ _stx11282_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10836_)
      (let ((_g1084010942_
             (lambda (_g1084110939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1084110939_))))
        (let ((_g1083910949_ (lambda (_g1084110945_) ((lambda () '(begin))))))
          (let ((_g1083811099_
                 (lambda (_g1084110952_)
                   (if (gx#stx-pair? _g1084110952_)
                       (let ((_e1089910954_ (gx#stx-e _g1084110952_)))
                         (let ((_hd1090010957_ (##car _e1089910954_))
                               (_tl1090110959_ (##cdr _e1089910954_)))
                           (if (gx#stx-pair? _tl1090110959_)
                               (let ((_e1090210962_ (gx#stx-e _tl1090110959_)))
                                 (let ((_hd1090310965_ (##car _e1090210962_))
                                       (_tl1090410967_ (##cdr _e1090210962_)))
                                   (if (gx#stx-pair? _hd1090310965_)
                                       (let ((_e1090510970_
                                              (gx#stx-e _hd1090310965_)))
                                         (let ((_hd1090610973_
                                                (##car _e1090510970_))
                                               (_tl1090710975_
                                                (##cdr _e1090510970_)))
                                           (if (gx#identifier? _hd1090610973_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1090610973_)
                                                   (if (gx#stx-pair?
                                                        _tl1090710975_)
                                                       (let ((_e1090810978_
                                                              (gx#stx-e
                                                               _tl1090710975_)))
                                                         (let ((_hd1090910981_
                                                                (##car _e1090810978_))
                                                               (_tl1091010983_
                                                                (##cdr _e1090810978_)))
                                                           (if (gx#stx-null?
                                                                _tl1091010983_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1090410967_)
                           (let ((_e1091110986_ (gx#stx-e _tl1090410967_)))
                             (let ((_hd1091210989_ (##car _e1091110986_))
                                   (_tl1091310991_ (##cdr _e1091110986_)))
                               (if (gx#stx-pair? _hd1091210989_)
                                   (let ((_e1091410994_
                                          (gx#stx-e _hd1091210989_)))
                                     (let ((_hd1091510997_
                                            (##car _e1091410994_))
                                           (_tl1091610999_
                                            (##cdr _e1091410994_)))
                                       (if (gx#identifier? _hd1091510997_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1091510997_)
                                               (if (gx#stx-pair?
                                                    _tl1091610999_)
                                                   (let ((_e1091711002_
                                                          (gx#stx-e
                                                           _tl1091610999_)))
                                                     (let ((_hd1091811005_
                                                            (##car _e1091711002_))
                                                           (_tl1091911007_
                                                            (##cdr _e1091711002_)))
                                                       (if (gx#stx-null?
                                                            _tl1091911007_)
                                                           (if (gx#stx-pair?
                                                                _tl1091310991_)
                                                               (let ((_e1092011010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1091310991_)))
                         (let ((_hd1092111013_ (##car _e1092011010_))
                               (_tl1092211015_ (##cdr _e1092011010_)))
                           (if (gx#stx-pair? _hd1092111013_)
                               (let ((_e1092311018_ (gx#stx-e _hd1092111013_)))
                                 (let ((_hd1092411021_ (##car _e1092311018_))
                                       (_tl1092511023_ (##cdr _e1092311018_)))
                                   (if (gx#identifier? _hd1092411021_)
                                       (if (gx#stx-eq? '%#quote _hd1092411021_)
                                           (if (gx#stx-pair? _tl1092511023_)
                                               (let ((_e1092611026_
                                                      (gx#stx-e
                                                       _tl1092511023_)))
                                                 (let ((_hd1092711029_
                                                        (##car _e1092611026_))
                                                       (_tl1092811031_
                                                        (##cdr _e1092611026_)))
                                                   (if (gx#stx-null?
                                                        _tl1092811031_)
                                                       (if (gx#stx-pair?
                                                            _tl1092211015_)
                                                           (let ((_e1092911034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1092211015_)))
                     (let ((_hd1093011037_ (##car _e1092911034_))
                           (_tl1093111039_ (##cdr _e1092911034_)))
                       (if (gx#stx-pair? _hd1093011037_)
                           (let ((_e1093211042_ (gx#stx-e _hd1093011037_)))
                             (let ((_hd1093311045_ (##car _e1093211042_))
                                   (_tl1093411047_ (##cdr _e1093211042_)))
                               (if (gx#identifier? _hd1093311045_)
                                   (if (gx#stx-eq? '%#ref _hd1093311045_)
                                       (if (gx#stx-pair? _tl1093411047_)
                                           (let ((_e1093511050_
                                                  (gx#stx-e _tl1093411047_)))
                                             (let ((_hd1093611053_
                                                    (##car _e1093511050_))
                                                   (_tl1093711055_
                                                    (##cdr _e1093511050_)))
                                               (if (gx#stx-null?
                                                    _tl1093711055_)
                                                   (if (gx#stx-null?
                                                        _tl1093111039_)
                                                       ((lambda (_L11058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11059_
                         _L11060_
                         _L11061_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L11060_)
                                  (cons (gx#stx-e _L11059_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L11058_)
                                              (cons '#f '())))))
                      (_g1083910949_ _g1084110952_)))
                _hd1093611053_
                _hd1092711029_
                _hd1091811005_
                _hd1090910981_)
               (_g1083910949_ _g1084110952_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083910949_
                                                    _g1084110952_))))
                                           (_g1083910949_ _g1084110952_))
                                       (_g1083910949_ _g1084110952_))
                                   (_g1083910949_ _g1084110952_))))
                           (_g1083910949_ _g1084110952_))))
                   (_g1083910949_ _g1084110952_))
               (_g1083910949_ _g1084110952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1083910949_ _g1084110952_))
                                           (_g1083910949_ _g1084110952_))
                                       (_g1083910949_ _g1084110952_))))
                               (_g1083910949_ _g1084110952_))))
                       (_g1083910949_ _g1084110952_))
                   (_g1083910949_ _g1084110952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083910949_
                                                    _g1084110952_))
                                               (_g1083910949_ _g1084110952_))
                                           (_g1083910949_ _g1084110952_))))
                                   (_g1083910949_ _g1084110952_))))
                           (_g1083910949_ _g1084110952_))
                       (_g1083910949_ _g1084110952_))))
               (_g1083910949_ _g1084110952_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1083910949_
                                                    _g1084110952_))
                                               (_g1083910949_ _g1084110952_))))
                                       (_g1083910949_ _g1084110952_))))
                               (_g1083910949_ _g1084110952_))))
                       (_g1083910949_ _g1084110952_)))))
            (let ((_g1083711279_
                   (lambda (_g1084111102_)
                     (if (gx#stx-pair? _g1084111102_)
                         (let ((_e1084711104_ (gx#stx-e _g1084111102_)))
                           (let ((_hd1084811107_ (##car _e1084711104_))
                                 (_tl1084911109_ (##cdr _e1084711104_)))
                             (if (gx#stx-pair? _tl1084911109_)
                                 (let ((_e1085011112_
                                        (gx#stx-e _tl1084911109_)))
                                   (let ((_hd1085111115_ (##car _e1085011112_))
                                         (_tl1085211117_
                                          (##cdr _e1085011112_)))
                                     (if (gx#stx-pair? _hd1085111115_)
                                         (let ((_e1085311120_
                                                (gx#stx-e _hd1085111115_)))
                                           (let ((_hd1085411123_
                                                  (##car _e1085311120_))
                                                 (_tl1085511125_
                                                  (##cdr _e1085311120_)))
                                             (if (gx#identifier?
                                                  _hd1085411123_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1085411123_)
                                                     (if (gx#stx-pair?
                                                          _tl1085511125_)
                                                         (let ((_e1085611128_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1085511125_)))
                   (let ((_hd1085711131_ (##car _e1085611128_))
                         (_tl1085811133_ (##cdr _e1085611128_)))
                     (if (gx#stx-null? _tl1085811133_)
                         (if (gx#stx-pair? _tl1085211117_)
                             (let ((_e1085911136_ (gx#stx-e _tl1085211117_)))
                               (let ((_hd1086011139_ (##car _e1085911136_))
                                     (_tl1086111141_ (##cdr _e1085911136_)))
                                 (if (gx#stx-pair? _hd1086011139_)
                                     (let ((_e1086211144_
                                            (gx#stx-e _hd1086011139_)))
                                       (let ((_hd1086311147_
                                              (##car _e1086211144_))
                                             (_tl1086411149_
                                              (##cdr _e1086211144_)))
                                         (if (gx#identifier? _hd1086311147_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1086311147_)
                                                 (if (gx#stx-pair?
                                                      _tl1086411149_)
                                                     (let ((_e1086511152_
                                                            (gx#stx-e
                                                             _tl1086411149_)))
                                                       (let ((_hd1086611155_
                                                              (##car _e1086511152_))
                                                             (_tl1086711157_
                                                              (##cdr _e1086511152_)))
                                                         (if (gx#stx-null?
                                                              _tl1086711157_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1086111141_)
                         (let ((_e1086811160_ (gx#stx-e _tl1086111141_)))
                           (let ((_hd1086911163_ (##car _e1086811160_))
                                 (_tl1087011165_ (##cdr _e1086811160_)))
                             (if (gx#stx-pair? _hd1086911163_)
                                 (let ((_e1087111168_
                                        (gx#stx-e _hd1086911163_)))
                                   (let ((_hd1087211171_ (##car _e1087111168_))
                                         (_tl1087311173_
                                          (##cdr _e1087111168_)))
                                     (if (gx#identifier? _hd1087211171_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1087211171_)
                                             (if (gx#stx-pair? _tl1087311173_)
                                                 (let ((_e1087411176_
                                                        (gx#stx-e
                                                         _tl1087311173_)))
                                                   (let ((_hd1087511179_
                                                          (##car _e1087411176_))
                                                         (_tl1087611181_
                                                          (##cdr _e1087411176_)))
                                                     (if (gx#stx-null?
                                                          _tl1087611181_)
                                                         (if (gx#stx-pair?
                                                              _tl1087011165_)
                                                             (let ((_e1087711184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1087011165_)))
                       (let ((_hd1087811187_ (##car _e1087711184_))
                             (_tl1087911189_ (##cdr _e1087711184_)))
                         (if (gx#stx-pair? _hd1087811187_)
                             (let ((_e1088011192_ (gx#stx-e _hd1087811187_)))
                               (let ((_hd1088111195_ (##car _e1088011192_))
                                     (_tl1088211197_ (##cdr _e1088011192_)))
                                 (if (gx#identifier? _hd1088111195_)
                                     (if (gx#stx-eq? '%#ref _hd1088111195_)
                                         (if (gx#stx-pair? _tl1088211197_)
                                             (let ((_e1088311200_
                                                    (gx#stx-e _tl1088211197_)))
                                               (let ((_hd1088411203_
                                                      (##car _e1088311200_))
                                                     (_tl1088511205_
                                                      (##cdr _e1088311200_)))
                                                 (if (gx#stx-null?
                                                      _tl1088511205_)
                                                     (if (gx#stx-pair?
                                                          _tl1087911189_)
                                                         (let ((_e1088611208_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1087911189_)))
                   (let ((_hd1088711211_ (##car _e1088611208_))
                         (_tl1088811213_ (##cdr _e1088611208_)))
                     (if (gx#stx-pair? _hd1088711211_)
                         (let ((_e1088911216_ (gx#stx-e _hd1088711211_)))
                           (let ((_hd1089011219_ (##car _e1088911216_))
                                 (_tl1089111221_ (##cdr _e1088911216_)))
                             (if (gx#identifier? _hd1089011219_)
                                 (if (gx#stx-eq? '%#quote _hd1089011219_)
                                     (if (gx#stx-pair? _tl1089111221_)
                                         (let ((_e1089211224_
                                                (gx#stx-e _tl1089111221_)))
                                           (let ((_hd1089311227_
                                                  (##car _e1089211224_))
                                                 (_tl1089411229_
                                                  (##cdr _e1089211224_)))
                                             (if (gx#stx-null? _tl1089411229_)
                                                 (if (gx#stx-null?
                                                      _tl1088811213_)
                                                     ((lambda (_L11232_
                                                               _L11233_
                                                               _L11234_
                                                               _L11235_
                                                               _L11236_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11236_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11235_)
                                (cons (gx#stx-e _L11234_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11233_)
                                            (cons (gx#stx-e _L11232_) '())))))
                    (_g1083811099_ _g1084111102_)))
              _hd1089311227_
              _hd1088411203_
              _hd1087511179_
              _hd1086611155_
              _hd1085711131_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083811099_
                                                      _g1084111102_))
                                                 (_g1083811099_
                                                  _g1084111102_))))
                                         (_g1083811099_ _g1084111102_))
                                     (_g1083811099_ _g1084111102_))
                                 (_g1083811099_ _g1084111102_))))
                         (_g1083811099_ _g1084111102_))))
                 (_g1083811099_ _g1084111102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083811099_
                                                      _g1084111102_))))
                                             (_g1083811099_ _g1084111102_))
                                         (_g1083811099_ _g1084111102_))
                                     (_g1083811099_ _g1084111102_))))
                             (_g1083811099_ _g1084111102_))))
                     (_g1083811099_ _g1084111102_))
                 (_g1083811099_ _g1084111102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1083811099_ _g1084111102_))
                                             (_g1083811099_ _g1084111102_))
                                         (_g1083811099_ _g1084111102_))))
                                 (_g1083811099_ _g1084111102_))))
                         (_g1083811099_ _g1084111102_))
                     (_g1083811099_ _g1084111102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083811099_
                                                      _g1084111102_))
                                                 (_g1083811099_ _g1084111102_))
                                             (_g1083811099_ _g1084111102_))))
                                     (_g1083811099_ _g1084111102_))))
                             (_g1083811099_ _g1084111102_))
                         (_g1083811099_ _g1084111102_))))
                 (_g1083811099_ _g1084111102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1083811099_
                                                      _g1084111102_))
                                                 (_g1083811099_
                                                  _g1084111102_))))
                                         (_g1083811099_ _g1084111102_))))
                                 (_g1083811099_ _g1084111102_))))
                         (_g1083811099_ _g1084111102_)))))
              (_g1083711279_ _stx10836_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10812_)
      (let ((_self1081310819_ _self10812_))
        (let ((_E1081510823_
               (lambda () (error '"No clause matching" _self1081310819_))))
          (let ((_K1081610828_
                 (lambda (_alias-id10826_)
                   (cons '@alias (cons _alias-id10826_ '())))))
            (if (##structure-instance-of?
                 _self1081310819_
                 (##type-id gxc#!alias::t))
                (let ((_e1081710831_ (##vector-ref _self1081310819_ '1)))
                  (let ((_alias-id10834_ _e1081710831_))
                    (_K1081610828_ _alias-id10834_)))
                (_E1081510823_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10756_)
      (let ((_self1075710768_ _self10756_))
        (let ((_E1075910772_
               (lambda () (error '"No clause matching" _self1075710768_))))
          (let ((_K1076010781_
                 (lambda (_plist10775_
                          _ctor10776_
                          _fields10777_
                          _super10778_
                          _type-id10779_)
                   (cons '@struct-type
                         (cons _type-id10779_
                               (cons _super10778_
                                     (cons _fields10777_
                                           (cons _ctor10776_
                                                 (cons _plist10775_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1075710768_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1076110784_ (##vector-ref _self1075710768_ '1)))
                  (let ((_type-id10787_ _e1076110784_))
                    (let ((_e1076210789_ (##vector-ref _self1075710768_ '2)))
                      (let ((_super10792_ _e1076210789_))
                        (let ((_e1076310794_
                               (##vector-ref _self1075710768_ '3)))
                          (let ((_fields10797_ _e1076310794_))
                            (let ((_e1076410799_
                                   (##vector-ref _self1075710768_ '4)))
                              (let ((_e1076510802_
                                     (##vector-ref _self1075710768_ '5)))
                                (let ((_ctor10805_ _e1076510802_))
                                  (let ((_e1076610807_
                                         (##vector-ref _self1075710768_ '6)))
                                    (let ((_plist10810_ _e1076610807_))
                                      (_K1076010781_
                                       _plist10810_
                                       _ctor10805_
                                       _fields10797_
                                       _super10792_
                                       _type-id10787_))))))))))))
                (_E1075910772_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10732_)
      (let ((_self1073310739_ _self10732_))
        (let ((_E1073510743_
               (lambda () (error '"No clause matching" _self1073310739_))))
          (let ((_K1073610748_
                 (lambda (_struct-t10746_)
                   (cons '@struct-pred (cons _struct-t10746_ '())))))
            (if (##structure-instance-of?
                 _self1073310739_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1073710751_ (##vector-ref _self1073310739_ '1)))
                  (let ((_struct-t10754_ _e1073710751_))
                    (_K1073610748_ _struct-t10754_)))
                (_E1073510743_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10708_)
      (let ((_self1070910715_ _self10708_))
        (let ((_E1071110719_
               (lambda () (error '"No clause matching" _self1070910715_))))
          (let ((_K1071210724_
                 (lambda (_struct-t10722_)
                   (cons '@struct-cons (cons _struct-t10722_ '())))))
            (if (##structure-instance-of?
                 _self1070910715_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1071310727_ (##vector-ref _self1070910715_ '1)))
                  (let ((_struct-t10730_ _e1071310727_))
                    (_K1071210724_ _struct-t10730_)))
                (_E1071110719_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10677_)
      (let ((_self1067810685_ _self10677_))
        (let ((_E1068010689_
               (lambda () (error '"No clause matching" _self1067810685_))))
          (let ((_K1068110695_
                 (lambda (_off10692_ _struct-t10693_)
                   (cons '@struct-getf
                         (cons _struct-t10693_ (cons _off10692_ '()))))))
            (if (##structure-instance-of?
                 _self1067810685_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1068210698_ (##vector-ref _self1067810685_ '1)))
                  (let ((_struct-t10701_ _e1068210698_))
                    (let ((_e1068310703_ (##vector-ref _self1067810685_ '2)))
                      (let ((_off10706_ _e1068310703_))
                        (_K1068110695_ _off10706_ _struct-t10701_)))))
                (_E1068010689_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10646_)
      (let ((_self1064710654_ _self10646_))
        (let ((_E1064910658_
               (lambda () (error '"No clause matching" _self1064710654_))))
          (let ((_K1065010664_
                 (lambda (_off10661_ _struct-t10662_)
                   (cons '@struct-setf
                         (cons _struct-t10662_ (cons _off10661_ '()))))))
            (if (##structure-instance-of?
                 _self1064710654_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1065110667_ (##vector-ref _self1064710654_ '1)))
                  (let ((_struct-t10670_ _e1065110667_))
                    (let ((_e1065210672_ (##vector-ref _self1064710654_ '2)))
                      (let ((_off10675_ _e1065210672_))
                        (_K1065010664_ _off10675_ _struct-t10670_)))))
                (_E1064910658_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10594_)
      (let ((_self1059510605_ _self10594_))
        (let ((_E1059710609_
               (lambda () (error '"No clause matching" _self1059510605_))))
          (let ((_K1059810620_
                 (lambda (_typedecl10612_
                          _inline10613_
                          _dispatch10614_
                          _arity10615_)
                   (if _inline10613_
                       (let ((_$e10617_ _typedecl10612_))
                         (if _$e10617_
                             _$e10617_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10615_
                                   (cons _dispatch10614_ '())))))))
            (if (##structure-instance-of?
                 _self1059510605_
                 (##type-id gxc#!lambda::t))
                (let ((_e1059910623_ (##vector-ref _self1059510605_ '1)))
                  (let ((_e1060010626_ (##vector-ref _self1059510605_ '2)))
                    (let ((_arity10629_ _e1060010626_))
                      (let ((_e1060110631_ (##vector-ref _self1059510605_ '3)))
                        (let ((_dispatch10634_ _e1060110631_))
                          (let ((_e1060210636_
                                 (##vector-ref _self1059510605_ '4)))
                            (let ((_inline10639_ _e1060210636_))
                              (let ((_e1060310641_
                                     (##vector-ref _self1059510605_ '5)))
                                (let ((_typedecl10644_ _e1060310641_))
                                  (_K1059810620_
                                   _typedecl10644_
                                   _inline10639_
                                   _dispatch10634_
                                   _arity10629_))))))))))
                (_E1059710609_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10527_)
      (let ((_clause-e10529_
             (lambda (_clause10559_)
               (let ((_clause1056010568_ _clause10559_))
                 (let ((_E1056210572_
                        (lambda ()
                          (error '"No clause matching" _clause1056010568_))))
                   (let ((_K1056310578_
                          (lambda (_dispatch10575_ _arity10576_)
                            (cons _arity10576_ (cons _dispatch10575_ '())))))
                     (if (##structure-instance-of?
                          _clause1056010568_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1056410581_
                                (##vector-ref _clause1056010568_ '1)))
                           (let ((_e1056510584_
                                  (##vector-ref _clause1056010568_ '2)))
                             (let ((_arity10587_ _e1056510584_))
                               (let ((_e1056610589_
                                      (##vector-ref _clause1056010568_ '3)))
                                 (let ((_dispatch10592_ _e1056610589_))
                                   (_K1056310578_
                                    _dispatch10592_
                                    _arity10587_))))))
                         (_E1056210572_))))))))
        (let ((_self1053010537_ _self10527_))
          (let ((_E1053210541_
                 (lambda () (error '"No clause matching" _self1053010537_))))
            (let ((_K1053310548_
                   (lambda (_clauses10544_)
                     (let ((_clauses10546_
                            (map _clause-e10529_ _clauses10544_)))
                       (cons '@case-lambda _clauses10546_)))))
              (if (##structure-instance-of?
                   _self1053010537_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1053410551_ (##vector-ref _self1053010537_ '1)))
                    (let ((_e1053510554_ (##vector-ref _self1053010537_ '2)))
                      (let ((_clauses10557_ _e1053510554_))
                        (_K1053310548_ _clauses10557_))))
                  (_E1053210541_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10525_) (gxc#generate-runtime-binding-id _stx10525_))))
