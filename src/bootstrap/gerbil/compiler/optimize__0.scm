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
    (lambda _$args19371_
      (apply make-struct-instance gxc#optimizer-info::t _$args19371_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19369_)
      (struct-instance-init!
       _self19369_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19383 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19383) __obj19383))))))
  (define gxc#optimize!
    (lambda (_ctx19363_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19363_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19363_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19366_
                  (gxc#optimize-source
                   (##structure-ref _ctx19363_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19363_
              _code19366_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19308_)
      (let ((_deps19310_
             (let ((_imports19354_
                    (##structure-ref _ctx19308_ '8 gx#module-context::t '#f)))
               (let ((_$e19356_
                      (gx#core-context-prelude__opt-lambda11350 _ctx19308_)))
                 (if _$e19356_
                     ((lambda (_g1935819360_)
                        (cons _g1935819360_ _imports19354_))
                      _$e19356_)
                     _imports19354_)))))
        ((letrec ((_lp19312_
                   (lambda (_rest19314_)
                     (let ((_rest1931519323_ _rest19314_))
                       (let ((_E1931819327_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1931519323_))))
                         (let ((_else1931719331_ (lambda () '#!void)))
                           (let ((_K1931919342_
                                  (lambda (_rest19334_ _hd19335_)
                                    (if (##structure-instance-of?
                                         _hd19335_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19335_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19337_
                                                       (gx#core-context-prelude__opt-lambda11350
                                                        _hd19335_)))
                                                  (if _$e19337_
                                                      ((lambda (_pre19340_)
                                                         (_lp19312_
                                                          (cons _pre19340_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19335_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19337_)
              (_lp19312_
               (##structure-ref _hd19335_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19335_)))
                                          (_lp19312_ _rest19334_))
                                        (if (##structure-instance-of?
                                             _hd19335_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19335_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19312_
                                                     (##structure-ref
                                                      _hd19335_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19335_)))
                                              (_lp19312_ _rest19334_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19335_
                                                 'gx#module-import::t)
                                                (_lp19312_
                                                 (cons (##structure-ref
                                                        _hd19335_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19334_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19335_
                                                     'gx#module-export::t)
                                                    (_lp19312_
                                                     (cons (##structure-ref
                                                            _hd19335_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19334_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19335_
                                                         'gx#import-set::t)
                                                        (_lp19312_
                                                         (cons (##structure-ref
                                                                _hd19335_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19334_))
                                                        (error '"Unexpected module import"
                                                               _hd19335_)))))))))
                             (if (##pair? _rest1931519323_)
                                 (let ((_hd1932019345_
                                        (##car _rest1931519323_))
                                       (_tl1932119347_
                                        (##cdr _rest1931519323_)))
                                   (let ((_hd19350_ _hd1932019345_))
                                     (let ((_rest19352_ _tl1932119347_))
                                       (_K1931919342_ _rest19352_ _hd19350_))))
                                 (_else1931719331_)))))))))
           _lp19312_)
         _deps19310_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19288_)
      (if (if (##structure-instance-of? _ctx19288_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19288_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19290_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19292_
                   (##structure-ref _ctx19288_ '1 gx#expander-context::t '#f)))
              (let ((_mod19294_ (table-ref _ht19290_ _id19292_ '#f)))
                (let ()
                  (let ((_$e19297_ _mod19294_))
                    (if _$e19297_
                        _$e19297_
                        (let ((_mod19300_
                               (gxc#optimizer-import-ssxi _ctx19288_)))
                          (let ((_val19305_
                                 (let ((_$e19302_ _mod19300_))
                                   (if _$e19302_ _$e19302_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19290_ _id19292_ _val19305_)
                                _val19305_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19265_)
      (let ((_catch-e19267_
             (lambda (_exn19286_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19265_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19286_))
                     '#!void)
                 '#f))))
        (let ((_import-e19268_
               (lambda ()
                 (let ((_str-id19271_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19265_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19279_
                          (let ((_odir1927219274_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1927219274_
                                (let ((_odir19277_ _odir1927219274_))
                                  (path-expand
                                   (string-append _str-id19271_ '".ss")
                                   _odir19277_))
                                '#f))))
                     (let ((_library-path19281_
                            (string->symbol
                             (string-append '":" _str-id19271_))))
                       (let ((_ssxi-path19283_
                              (if (if _artefact-path19279_
                                      (file-exists? _artefact-path19279_)
                                      '#f)
                                  _artefact-path19279_
                                  _library-path19281_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19283_)
                             (gx#import-module__opt-lambda11385
                              _ssxi-path19283_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19265_ '1 gx#expander-context::t '#f)
              (with-exception-catcher _catch-e19267_ _import-e19268_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19262_
      (apply make-struct-instance gxc#!type::t _$args19262_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19259_
      (apply make-struct-instance gxc#!alias::t _$args19259_)))
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
    (lambda _$args19256_
      (apply make-struct-instance gxc#!struct-type::t _$args19256_)))
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
    (lambda _$args19253_
      (apply make-struct-instance gxc#!procedure::t _$args19253_)))
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
    (lambda _$args19250_
      (apply make-struct-instance gxc#!struct-pred::t _$args19250_)))
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
    (lambda _$args19247_
      (apply make-struct-instance gxc#!struct-cons::t _$args19247_)))
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
    (lambda _$args19244_
      (apply make-struct-instance gxc#!struct-getf::t _$args19244_)))
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
    (lambda _$args19241_
      (apply make-struct-instance gxc#!struct-setf::t _$args19241_)))
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
    (lambda _$args19238_
      (apply make-struct-instance gxc#!lambda::t _$args19238_)))
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
    (lambda _$args19235_
      (apply make-struct-instance gxc#!case-lambda::t _$args19235_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19227_
             _id19228_
             _super19229_
             _fields19230_
             _xfields19231_
             _ctor19232_
             _plist19233_)
      (struct-instance-init!
       _self19227_
       _id19228_
       _super19229_
       _fields19230_
       _xfields19231_
       _ctor19232_
       _plist19233_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19191
      (lambda (_self19193_
               _id19194_
               _arity19195_
               _dispatch19196_
               _inline19197_
               _typedecl19198_)
        (struct-instance-init!
         _self19193_
         _id19194_
         _arity19195_
         _dispatch19196_
         _inline19197_
         _typedecl19198_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19203_ _id19204_ _arity19205_ _dispatch19206_)
          (let ((_inline19208_ '#f))
            (let ((_typedecl19210_ '#f))
              (struct-instance-init!
               _self19203_
               _id19204_
               _arity19205_
               _dispatch19206_
               _inline19208_
               _typedecl19210_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19212_
                 _id19213_
                 _arity19214_
                 _dispatch19215_
                 _inline19216_)
          (let ((_typedecl19218_ '#f))
            (struct-instance-init!
             _self19212_
             _id19213_
             _arity19214_
             _dispatch19215_
             _inline19216_
             _typedecl19218_))))
      (define gxc#!lambda:::init!
        (lambda _g19391_
          (let ((_g19390_ (length _g19391_)))
            (cond ((fx= _g19390_ 4) (apply gxc#!lambda:::init!__0 _g19391_))
                  ((fx= _g19390_ 5) (apply gxc#!lambda:::init!__1 _g19391_))
                  ((fx= _g19390_ 6) (apply struct-instance-init! _g19391_))
                  (else (error "No clause matching arguments" _g19391_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19185_)
      (let ((_$e19187_
             (##structure-ref _type19185_ '7 gxc#!struct-type::t '#f)))
        (if _$e19187_
            (values _$e19187_)
            (let ((_vtab19190_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19185_
                 _vtab19190_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19190_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19176_ _method19177_)
      (let ((_vtab1917819180_
             (##structure-ref _type19176_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1917819180_
            (let ((_vtab19183_ _vtab1917819180_))
              (table-ref _vtab19183_ _method19177_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda19158
      (lambda (_sym19160_ _type19161_ _local?19162_)
        (begin
          (if (##structure-instance-of? _type19161_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym19160_
                     _type19161_))
          (gxc#verbose
           '"declare-type "
           _sym19160_
           '" "
           (##vector->list _type19161_))
          (table-set!
           (if _local?19162_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym19160_
           _type19161_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19167_ _type19168_)
          (let ((_local?19170_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda19158
             _sym19167_
             _type19168_
             _local?19170_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19393_
          (let ((_g19392_ (length _g19393_)))
            (cond ((fx= _g19392_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19393_))
                  ((fx= _g19392_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda19158
                          _g19393_))
                  (else (error "No clause matching arguments" _g19393_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda19134
      (lambda (_type-t19136_ _method19137_ _sym19138_ _rebind?19139_)
        (let ((_type19141_ (gxc#optimizer-resolve-type _type-t19136_)))
          (if (##structure-instance-of? _type19141_ 'gxc#!struct-type::t)
              (let ((_vtab19143_ (gxc#!struct-type-vtab _type19141_)))
                (if _rebind?19139_
                    (if (hash-key? _vtab19143_ _method19137_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t19136_
                         '" "
                         _method19137_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t19136_
                         '" "
                         _method19137_))
                    (if (hash-key? _vtab19143_ _method19137_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t19136_
                           '" "
                           _method19137_
                           '" => "
                           _sym19138_)
                          (table-set! _vtab19143_ _method19137_ _sym19138_)))))
              (if (not _type19141_)
                  (gxc#verbose '"declare-method: unknown type " _type-t19136_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19136_
                         _type19141_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t19148_ _method19149_ _sym19150_)
          (let ((_rebind?19152_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda19134
             _type-t19148_
             _method19149_
             _sym19150_
             _rebind?19152_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19395_
          (let ((_g19394_ (length _g19395_)))
            (cond ((fx= _g19394_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19395_))
                  ((fx= _g19394_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda19134
                          _g19395_))
                  (else (error "No clause matching arguments" _g19395_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym19124_)
      (let ((_$e19132_
             (let ((_ht1912519127_ (gxc#current-compile-local-type)))
               (if _ht1912519127_
                   (let ((_ht19130_ _ht1912519127_))
                     (table-ref _ht19130_ _sym19124_ '#f))
                   '#f))))
        (if _$e19132_
            _$e19132_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym19124_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym19116_)
      (let ((_type1911719119_ (gxc#optimizer-lookup-type _sym19116_)))
        (if _type1911719119_
            (let ((_type19122_ _type1911719119_))
              (if (##structure-instance-of? _type19122_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type19122_ '1 gxc#!type::t '#f))
                  _type19122_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t19111_ _method19112_)
      (let ((_type19114_ (gxc#optimizer-resolve-type _type-t19111_)))
        (if (##structure-instance-of? _type19114_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type19114_ _method19112_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx19107_)
      (begin
        (gxc#apply-collect-mutators _stx19107_)
        (let ((_stx19109_ (gxc#apply-lift-top-lambdas _stx19107_)))
          (begin
            (gxc#apply-collect-type-info _stx19109_)
            (gxc#apply-optimize-call _stx19109_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl19104_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19104_ '%#lambda false)
           (table-set! _tbl19104_ '%#case-lambda false)
           (table-set! _tbl19104_ '%#let-values false)
           (table-set! _tbl19104_ '%#letrec-values false)
           (table-set! _tbl19104_ '%#letrec*-values false)
           (table-set! _tbl19104_ '%#quote false)
           (table-set! _tbl19104_ '%#quote-syntax false)
           (table-set! _tbl19104_ '%#call false)
           (table-set! _tbl19104_ '%#if false)
           (table-set! _tbl19104_ '%#ref false)
           (table-set! _tbl19104_ '%#set! false)
           (table-set! _tbl19104_ '%#struct-instance? false)
           (table-set! _tbl19104_ '%#struct-direct-instance? false)
           (table-set! _tbl19104_ '%#struct-ref false)
           (table-set! _tbl19104_ '%#struct-set! false)
           _tbl19104_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19100_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19100_ '%#begin false)
           (table-set! _tbl19100_ '%#begin-syntax false)
           (table-set! _tbl19100_ '%#begin-foreign false)
           (table-set! _tbl19100_ '%#module false)
           (table-set! _tbl19100_ '%#import false)
           (table-set! _tbl19100_ '%#export false)
           (table-set! _tbl19100_ '%#provide false)
           (table-set! _tbl19100_ '%#extern false)
           (table-set! _tbl19100_ '%#define-values false)
           (table-set! _tbl19100_ '%#define-syntax false)
           (table-set! _tbl19100_ '%#define-alias false)
           (table-set! _tbl19100_ '%#declare false)
           _tbl19100_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl19096_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19096_ (force gxc#&false-special-form))
           (hash-copy! _tbl19096_ (force gxc#&false-expression))
           _tbl19096_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl19092_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19092_ '%#lambda gxc#xform-identity)
           (table-set! _tbl19092_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl19092_ '%#let-values gxc#xform-identity)
           (table-set! _tbl19092_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl19092_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl19092_ '%#quote gxc#xform-identity)
           (table-set! _tbl19092_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19092_ '%#call gxc#xform-identity)
           (table-set! _tbl19092_ '%#if gxc#xform-identity)
           (table-set! _tbl19092_ '%#ref gxc#xform-identity)
           (table-set! _tbl19092_ '%#set! gxc#xform-identity)
           (table-set! _tbl19092_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl19092_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl19092_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl19092_ '%#struct-set! gxc#xform-identity)
           _tbl19092_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl19088_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19088_ '%#begin gxc#xform-identity)
           (table-set! _tbl19088_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl19088_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl19088_ '%#module gxc#xform-identity)
           (table-set! _tbl19088_ '%#import gxc#xform-identity)
           (table-set! _tbl19088_ '%#export gxc#xform-identity)
           (table-set! _tbl19088_ '%#provide gxc#xform-identity)
           (table-set! _tbl19088_ '%#extern gxc#xform-identity)
           (table-set! _tbl19088_ '%#define-values gxc#xform-identity)
           (table-set! _tbl19088_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl19088_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl19088_ '%#declare gxc#xform-identity)
           _tbl19088_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl19084_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19084_ (force gxc#&identity-special-form))
           (hash-copy! _tbl19084_ (force gxc#&identity-expression))
           _tbl19084_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl19080_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl19080_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl19080_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl19080_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl19080_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl19080_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl19080_ '%#quote gxc#xform-identity)
           (table-set! _tbl19080_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl19080_ '%#call gxc#xform-operands)
           (table-set! _tbl19080_ '%#if gxc#xform-operands)
           (table-set! _tbl19080_ '%#ref gxc#xform-identity)
           (table-set! _tbl19080_ '%#set! gxc#xform-setq%)
           (table-set! _tbl19080_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl19080_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl19080_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl19080_ '%#struct-set! gxc#xform-operands)
           _tbl19080_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl19076_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19076_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl19076_ (force gxc#&identity))
           (table-set! _tbl19076_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19076_ '%#module gxc#xform-module%)
           (table-set! _tbl19076_ '%#define-values gxc#xform-define-values%)
           _tbl19076_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl19072_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19072_ (force gxc#&void))
           (table-set! _tbl19072_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19072_ '%#module gxc#collect-module%)
           (table-set! _tbl19072_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19072_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19072_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl19072_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl19072_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl19072_ '%#call gxc#collect-operands)
           (table-set! _tbl19072_ '%#if gxc#collect-operands)
           (table-set! _tbl19072_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl19072_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl19072_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl19072_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl19072_ '%#struct-set! gxc#collect-operands)
           _tbl19072_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19065_ . _args19067_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19065_ _args19067_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl19062_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19062_ (force gxc#&basic-xform))
           (table-set!
            _tbl19062_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl19062_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl19062_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl19062_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl19062_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx19055_ . _args19057_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19055_ _args19057_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl19052_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19052_ (force gxc#&basic-xform-expression))
           (table-set! _tbl19052_ '%#begin gxc#xform-begin%)
           (table-set! _tbl19052_ '%#ref gxc#expression-subst-ref%)
           _tbl19052_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx19045_ . _args19047_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19045_ _args19047_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl19042_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19042_ (force gxc#&void))
           (table-set! _tbl19042_ '%#begin gxc#collect-begin%)
           (table-set! _tbl19042_ '%#module gxc#collect-module%)
           (table-set!
            _tbl19042_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl19042_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl19042_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl19042_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl19042_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl19042_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl19042_ '%#call gxc#collect-type-call%)
           (table-set! _tbl19042_ '%#if gxc#collect-operands)
           (table-set! _tbl19042_ '%#set! gxc#collect-body-setq%)
           _tbl19042_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx19035_ . _args19037_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19035_ _args19037_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl19032_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19032_ (force gxc#&false))
           (table-set! _tbl19032_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl19032_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl19032_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl19032_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl19032_ '%#ref gxc#basic-expression-type-ref%)
           _tbl19032_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx19025_ . _args19027_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19025_ _args19027_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl19022_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19022_ (force gxc#&basic-xform))
           (table-set! _tbl19022_ '%#call gxc#optimize-call%)
           _tbl19022_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx19015_ . _args19017_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19015_ _args19017_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl19012_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl19012_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl19012_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl19012_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl19012_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl19012_ '%#call gxc#generate-ssxi-call%)
           _tbl19012_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx19005_ . _args19007_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19005_ _args19007_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx19002_ . _args19003_) _stx19002_))
  (define gxc#xform-wrap-source
    (lambda (_stx18999_ _src-stx19000_)
      (gx#stx-wrap-source _stx18999_ (gx#stx-source _src-stx19000_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18993_)
      (lambda (_g1899418996_)
        (apply gxc#compile-e _g1899418996_ _args18993_))))
  (define gxc#xform-begin%
    (lambda (_stx18952_ . _args18953_)
      (let ((_g1895518965_
             (lambda (_g1895618962_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1895618962_))))
        (let ((_g1895418990_
               (lambda (_g1895618968_)
                 (if (gx#stx-pair? _g1895618968_)
                     (let ((_e1895818970_ (gx#stx-e _g1895618968_)))
                       (let ((_hd1895918973_ (##car _e1895818970_))
                             (_tl1896018975_ (##cdr _e1895818970_)))
                         ((lambda (_L18978_)
                            (let ((_forms18988_
                                   (map (gxc#xform-apply-compile-e _args18953_)
                                        _L18978_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18988_)
                               _stx18952_)))
                          _tl1896018975_)))
                     (_g1895518965_ _g1895618968_)))))
          (_g1895418990_ _stx18952_)))))
  (define gxc#xform-module%
    (lambda (_stx18889_ . _args18890_)
      (let ((_g1889218906_
             (lambda (_g1889318903_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1889318903_))))
        (let ((_g1889118949_
               (lambda (_g1889318909_)
                 (if (gx#stx-pair? _g1889318909_)
                     (let ((_e1889618911_ (gx#stx-e _g1889318909_)))
                       (let ((_hd1889718914_ (##car _e1889618911_))
                             (_tl1889818916_ (##cdr _e1889618911_)))
                         (if (gx#stx-pair? _tl1889818916_)
                             (let ((_e1889918919_ (gx#stx-e _tl1889818916_)))
                               (let ((_hd1890018922_ (##car _e1889918919_))
                                     (_tl1890118924_ (##cdr _e1889918919_)))
                                 ((lambda (_L18927_ _L18928_)
                                    (let ((_ctx18941_
                                           (gx#syntax-local-e__0 _L18928_)))
                                      (let ((_code18943_
                                             (##structure-ref
                                              _ctx18941_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18946_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18943_
                                                         _args18890_))
                                                gx#current-expander-context
                                                _ctx18941_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18941_
                                               _code18946_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18928_
                                                           (cons _code18946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18889_)))))))
                                  _tl1890118924_
                                  _hd1890018922_)))
                             (_g1889218906_ _g1889318909_))))
                     (_g1889218906_ _g1889318909_)))))
          (_g1889118949_ _stx18889_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18819_ . _args18820_)
      (let ((_g1882218839_
             (lambda (_g1882318836_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1882318836_))))
        (let ((_g1882118886_
               (lambda (_g1882318842_)
                 (if (gx#stx-pair? _g1882318842_)
                     (let ((_e1882618844_ (gx#stx-e _g1882318842_)))
                       (let ((_hd1882718847_ (##car _e1882618844_))
                             (_tl1882818849_ (##cdr _e1882618844_)))
                         (if (gx#stx-pair? _tl1882818849_)
                             (let ((_e1882918852_ (gx#stx-e _tl1882818849_)))
                               (let ((_hd1883018855_ (##car _e1882918852_))
                                     (_tl1883118857_ (##cdr _e1882918852_)))
                                 (if (gx#stx-pair? _tl1883118857_)
                                     (let ((_e1883218860_
                                            (gx#stx-e _tl1883118857_)))
                                       (let ((_hd1883318863_
                                              (##car _e1883218860_))
                                             (_tl1883418865_
                                              (##cdr _e1883218860_)))
                                         (if (gx#stx-null? _tl1883418865_)
                                             ((lambda (_L18868_ _L18869_)
                                                (let ((_expr18884_
                                                       (apply gxc#compile-e
                                                              _L18868_
                                                              _args18820_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18869_
                                                               (cons _expr18884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18819_)))
                                              _hd1883318863_
                                              _hd1883018855_)
                                             (_g1882218839_ _g1882318842_))))
                                     (_g1882218839_ _g1882318842_))))
                             (_g1882218839_ _g1882318842_))))
                     (_g1882218839_ _g1882318842_)))))
          (_g1882118886_ _stx18819_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18762_ . _args18763_)
      (let ((_g1876518779_
             (lambda (_g1876618776_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1876618776_))))
        (let ((_g1876418816_
               (lambda (_g1876618782_)
                 (if (gx#stx-pair? _g1876618782_)
                     (let ((_e1876918784_ (gx#stx-e _g1876618782_)))
                       (let ((_hd1877018787_ (##car _e1876918784_))
                             (_tl1877118789_ (##cdr _e1876918784_)))
                         (if (gx#stx-pair? _tl1877118789_)
                             (let ((_e1877218792_ (gx#stx-e _tl1877118789_)))
                               (let ((_hd1877318795_ (##car _e1877218792_))
                                     (_tl1877418797_ (##cdr _e1877218792_)))
                                 ((lambda (_L18800_ _L18801_)
                                    (let ((_body18814_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18763_)
                                                _L18800_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18801_ _body18814_))
                                       _stx18762_)))
                                  _tl1877418797_
                                  _hd1877318795_)))
                             (_g1876518779_ _g1876618782_))))
                     (_g1876518779_ _g1876618782_)))))
          (_g1876418816_ _stx18762_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18675_ . _args18676_)
      (let ((_clause-e18678_
             (lambda (_clause18719_)
               (let ((_g1872118732_
                      (lambda (_g1872218729_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1872218729_))))
                 (let ((_g1872018759_
                        (lambda (_g1872218735_)
                          (if (gx#stx-pair? _g1872218735_)
                              (let ((_e1872518737_ (gx#stx-e _g1872218735_)))
                                (let ((_hd1872618740_ (##car _e1872518737_))
                                      (_tl1872718742_ (##cdr _e1872518737_)))
                                  ((lambda (_L18745_ _L18746_)
                                     (let ((_body18757_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18676_)
                                                 _L18745_)))
                                       (cons _L18746_ _body18757_)))
                                   _tl1872718742_
                                   _hd1872618740_)))
                              (_g1872118732_ _g1872218735_)))))
                   (_g1872018759_ _clause18719_))))))
        (let ((_g1868018690_
               (lambda (_g1868118687_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1868118687_))))
          (let ((_g1867918716_
                 (lambda (_g1868118693_)
                   (if (gx#stx-pair? _g1868118693_)
                       (let ((_e1868318695_ (gx#stx-e _g1868118693_)))
                         (let ((_hd1868418698_ (##car _e1868318695_))
                               (_tl1868518700_ (##cdr _e1868318695_)))
                           ((lambda (_L18703_)
                              (let ((_clauses18714_
                                     (map _clause-e18678_ _L18703_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18714_)
                                 _stx18675_)))
                            _tl1868518700_)))
                       (_g1868018690_ _g1868118693_)))))
            (_g1867918716_ _stx18675_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18469_ . _args18470_)
      (let ((_g1847218505_
             (lambda (_g1847318502_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1847318502_))))
        (let ((_g1847118672_
               (lambda (_g1847318508_)
                 (if (gx#stx-pair? _g1847318508_)
                     (let ((_e1847818510_ (gx#stx-e _g1847318508_)))
                       (let ((_hd1847918513_ (##car _e1847818510_))
                             (_tl1848018515_ (##cdr _e1847818510_)))
                         (if (gx#stx-pair? _tl1848018515_)
                             (let ((_e1848118518_ (gx#stx-e _tl1848018515_)))
                               (let ((_hd1848218521_ (##car _e1848118518_))
                                     (_tl1848318523_ (##cdr _e1848118518_)))
                                 (if (gx#stx-pair/null? _hd1848218521_)
                                     (if (fx>= (gx#stx-length _hd1848218521_)
                                               '0)
                                         (let ((_g19396_
                                                (gx#syntax-split-splice
                                                 _hd1848218521_
                                                 '0)))
                                           (begin
                                             (let ((_g19397_
                                                    (values-count _g19396_)))
                                               (if (not (fx= _g19397_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19397_)))
                                             (let ((_target1848418526_
                                                    (values-ref _g19396_ 0))
                                                   (_tl1848618528_
                                                    (values-ref _g19396_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1848618528_)
                                                   (letrec ((_loop1848718531_
                                                             (lambda (_hd1848518534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1849118536_
                              _hd1849218538_)
                       (if (gx#stx-pair? _hd1848518534_)
                           (let ((_e1848818541_ (gx#stx-e _hd1848518534_)))
                             (let ((_lp-hd1848918544_ (##car _e1848818541_))
                                   (_lp-tl1849018546_ (##cdr _e1848818541_)))
                               (if (gx#stx-pair? _lp-hd1848918544_)
                                   (let ((_e1849518549_
                                          (gx#stx-e _lp-hd1848918544_)))
                                     (let ((_hd1849618552_
                                            (##car _e1849518549_))
                                           (_tl1849718554_
                                            (##cdr _e1849518549_)))
                                       (if (gx#stx-pair? _tl1849718554_)
                                           (let ((_e1849818557_
                                                  (gx#stx-e _tl1849718554_)))
                                             (let ((_hd1849918560_
                                                    (##car _e1849818557_))
                                                   (_tl1850018562_
                                                    (##cdr _e1849818557_)))
                                               (if (gx#stx-null?
                                                    _tl1850018562_)
                                                   (_loop1848718531_
                                                    _lp-tl1849018546_
                                                    (cons _hd1849918560_
                                                          _expr1849118536_)
                                                    (cons _hd1849618552_
                                                          _hd1849218538_))
                                                   (_g1847218505_
                                                    _g1847318508_))))
                                           (_g1847218505_ _g1847318508_))))
                                   (_g1847218505_ _g1847318508_))))
                           (let ((_expr1849318565_ (reverse _expr1849118536_))
                                 (_hd1849418567_ (reverse _hd1849218538_)))
                             ((lambda (_L18570_ _L18571_ _L18572_ _L18573_)
                                (let ((_g1859218608_
                                       (lambda (_g1859318605_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1859318605_))))
                                  (let ((_g1859118662_
                                         (lambda (_g1859318611_)
                                           (if (gx#stx-pair/null?
                                                _g1859318611_)
                                               (if (fx>= (gx#stx-length
                                                          _g1859318611_)
                                                         '0)
                                                   (let ((_g19398_
                                                          (gx#syntax-split-splice
                                                           _g1859318611_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19399_
                                                              (values-count
                                                               _g19398_)))
                                                         (if (not (fx= _g19399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19399_)))
               (let ((_target1859518613_ (values-ref _g19398_ 0))
                     (_tl1859718615_ (values-ref _g19398_ 1)))
                 (if (gx#stx-null? _tl1859718615_)
                     (letrec ((_loop1859818618_
                               (lambda (_hd1859618621_ _expr1860218623_)
                                 (if (gx#stx-pair? _hd1859618621_)
                                     (let ((_e1859918626_
                                            (gx#syntax-e _hd1859618621_)))
                                       (let ((_lp-hd1860018629_
                                              (##car _e1859918626_))
                                             (_lp-tl1860118631_
                                              (##cdr _e1859918626_)))
                                         (_loop1859818618_
                                          _lp-tl1860118631_
                                          (cons _lp-hd1860018629_
                                                _expr1860218623_))))
                                     (let ((_expr1860318634_
                                            (reverse _expr1860218623_)))
                                       ((lambda (_L18637_)
                                          (let ()
                                            (let ((_body18650_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18470_)
                                                        _L18570_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18573_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18637_
                                                              _L18572_)
                                                             (foldr (lambda (_g1865118655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1865218657_
                                     _g1865318659_)
                              (cons (cons _g1865218657_
                                          (cons _g1865118655_ '()))
                                    _g1865318659_))
                            '()
                            _L18637_
                            _L18572_))
                   _body18650_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18469_))))
                                        _expr1860318634_))))))
                       (_loop1859818618_ _target1859518613_ '()))
                     (_g1859218608_ _g1859318611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1859218608_
                                                    _g1859318611_))
                                               (_g1859218608_
                                                _g1859318611_)))))
                                    (_g1859118662_
                                     (map (gxc#xform-apply-compile-e
                                           _args18470_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1866418667_
                                                             _g1866518669_)
                                                      (cons _g1866418667_
                                                            _g1866518669_))
                                                    '()
                                                    _L18571_)))))))
                              _tl1848318523_
                              _expr1849318565_
                              _hd1849418567_
                              _hd1847918513_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1848718531_
                                                      _target1848418526_
                                                      '()
                                                      '()))
                                                   (_g1847218505_
                                                    _g1847318508_)))))
                                         (_g1847218505_ _g1847318508_))
                                     (_g1847218505_ _g1847318508_))))
                             (_g1847218505_ _g1847318508_))))
                     (_g1847218505_ _g1847318508_)))))
          (_g1847118672_ _stx18469_)))))
  (define gxc#xform-operands
    (lambda (_stx18425_ . _args18426_)
      (let ((_g1842818439_
             (lambda (_g1842918436_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1842918436_))))
        (let ((_g1842718466_
               (lambda (_g1842918442_)
                 (if (gx#stx-pair? _g1842918442_)
                     (let ((_e1843218444_ (gx#stx-e _g1842918442_)))
                       (let ((_hd1843318447_ (##car _e1843218444_))
                             (_tl1843418449_ (##cdr _e1843218444_)))
                         ((lambda (_L18452_ _L18453_)
                            (let ((_rands18464_
                                   (map (gxc#xform-apply-compile-e _args18426_)
                                        _L18452_)))
                              (gxc#xform-wrap-source
                               (cons _L18453_ _rands18464_)
                               _stx18425_)))
                          _tl1843418449_
                          _hd1843318447_)))
                     (_g1842818439_ _g1842918442_)))))
          (_g1842718466_ _stx18425_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18355_ . _args18356_)
      (let ((_g1835818375_
             (lambda (_g1835918372_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1835918372_))))
        (let ((_g1835718422_
               (lambda (_g1835918378_)
                 (if (gx#stx-pair? _g1835918378_)
                     (let ((_e1836218380_ (gx#stx-e _g1835918378_)))
                       (let ((_hd1836318383_ (##car _e1836218380_))
                             (_tl1836418385_ (##cdr _e1836218380_)))
                         (if (gx#stx-pair? _tl1836418385_)
                             (let ((_e1836518388_ (gx#stx-e _tl1836418385_)))
                               (let ((_hd1836618391_ (##car _e1836518388_))
                                     (_tl1836718393_ (##cdr _e1836518388_)))
                                 (if (gx#stx-pair? _tl1836718393_)
                                     (let ((_e1836818396_
                                            (gx#stx-e _tl1836718393_)))
                                       (let ((_hd1836918399_
                                              (##car _e1836818396_))
                                             (_tl1837018401_
                                              (##cdr _e1836818396_)))
                                         (if (gx#stx-null? _tl1837018401_)
                                             ((lambda (_L18404_ _L18405_)
                                                (let ((_expr18420_
                                                       (apply gxc#compile-e
                                                              _L18404_
                                                              _args18356_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18405_
                                                               (cons _expr18420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18355_)))
                                              _hd1836918399_
                                              _hd1836618391_)
                                             (_g1835818375_ _g1835918378_))))
                                     (_g1835818375_ _g1835918378_))))
                             (_g1835818375_ _g1835918378_))))
                     (_g1835818375_ _g1835918378_)))))
          (_g1835718422_ _stx18355_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18286_)
      (let ((_g1828818305_
             (lambda (_g1828918302_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1828918302_))))
        (let ((_g1828718352_
               (lambda (_g1828918308_)
                 (if (gx#stx-pair? _g1828918308_)
                     (let ((_e1829218310_ (gx#stx-e _g1828918308_)))
                       (let ((_hd1829318313_ (##car _e1829218310_))
                             (_tl1829418315_ (##cdr _e1829218310_)))
                         (if (gx#stx-pair? _tl1829418315_)
                             (let ((_e1829518318_ (gx#stx-e _tl1829418315_)))
                               (let ((_hd1829618321_ (##car _e1829518318_))
                                     (_tl1829718323_ (##cdr _e1829518318_)))
                                 (if (gx#stx-pair? _tl1829718323_)
                                     (let ((_e1829818326_
                                            (gx#stx-e _tl1829718323_)))
                                       (let ((_hd1829918329_
                                              (##car _e1829818326_))
                                             (_tl1830018331_
                                              (##cdr _e1829818326_)))
                                         (if (gx#stx-null? _tl1830018331_)
                                             ((lambda (_L18334_ _L18335_)
                                                (let ((_sym18350_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18335_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18350_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18350_
                                                     '#t)
                                                    (gxc#compile-e _L18334_))))
                                              _hd1829918329_
                                              _hd1829618321_)
                                             (_g1828818305_ _g1828918308_))))
                                     (_g1828818305_ _g1828918308_))))
                             (_g1828818305_ _g1828918308_))))
                     (_g1828818305_ _g1828918308_)))))
          (_g1828718352_ _stx18286_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17520_)
      (let ((_g1752517682_
             (lambda (_g1752617679_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1752617679_))))
        (let ((_g1752417689_ (lambda (_g1752617685_) ((lambda () '#f)))))
          (let ((_g1752317829_
                 (lambda (_g1752617692_)
                   (if (gx#stx-pair? _g1752617692_)
                       (let ((_e1764217694_ (gx#stx-e _g1752617692_)))
                         (let ((_hd1764317697_ (##car _e1764217694_))
                               (_tl1764417699_ (##cdr _e1764217694_)))
                           (if (gx#stx-pair? _tl1764417699_)
                               (let ((_e1764517702_ (gx#stx-e _tl1764417699_)))
                                 (let ((_hd1764617705_ (##car _e1764517702_))
                                       (_tl1764717707_ (##cdr _e1764517702_)))
                                   (if (gx#stx-pair? _hd1764617705_)
                                       (let ((_e1764817710_
                                              (gx#stx-e _hd1764617705_)))
                                         (let ((_hd1764917713_
                                                (##car _e1764817710_))
                                               (_tl1765017715_
                                                (##cdr _e1764817710_)))
                                           (if (gx#identifier? _hd1764917713_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1764917713_)
                                                   (if (gx#stx-pair?
                                                        _tl1765017715_)
                                                       (let ((_e1765117718_
                                                              (gx#stx-e
                                                               _tl1765017715_)))
                                                         (let ((_hd1765217721_
                                                                (##car _e1765117718_))
                                                               (_tl1765317723_
                                                                (##cdr _e1765117718_)))
                                                           (if (gx#stx-pair?
                                                                _hd1765217721_)
                                                               (let ((_e1765417726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1765217721_)))
                         (let ((_hd1765517729_ (##car _e1765417726_))
                               (_tl1765617731_ (##cdr _e1765417726_)))
                           (if (gx#identifier? _hd1765517729_)
                               (if (gx#stx-eq? '%#ref _hd1765517729_)
                                   (if (gx#stx-pair? _tl1765617731_)
                                       (let ((_e1765717734_
                                              (gx#stx-e _tl1765617731_)))
                                         (let ((_hd1765817737_
                                                (##car _e1765717734_))
                                               (_tl1765917739_
                                                (##cdr _e1765717734_)))
                                           (if (gx#stx-null? _tl1765917739_)
                                               (if (gx#stx-pair?
                                                    _tl1765317723_)
                                                   (let ((_e1766017742_
                                                          (gx#stx-e
                                                           _tl1765317723_)))
                                                     (let ((_hd1766117745_
                                                            (##car _e1766017742_))
                                                           (_tl1766217747_
                                                            (##cdr _e1766017742_)))
                                                       (if (gx#stx-pair?
                                                            _hd1766117745_)
                                                           (let ((_e1766317750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1766117745_)))
                     (let ((_hd1766417753_ (##car _e1766317750_))
                           (_tl1766517755_ (##cdr _e1766317750_)))
                       (if (gx#identifier? _hd1766417753_)
                           (if (gx#stx-eq? '%#ref _hd1766417753_)
                               (if (gx#stx-pair? _tl1766517755_)
                                   (let ((_e1766617758_
                                          (gx#stx-e _tl1766517755_)))
                                     (let ((_hd1766717761_
                                            (##car _e1766617758_))
                                           (_tl1766817763_
                                            (##cdr _e1766617758_)))
                                       (if (gx#stx-null? _tl1766817763_)
                                           (if (gx#stx-pair? _tl1766217747_)
                                               (let ((_e1766917766_
                                                      (gx#stx-e
                                                       _tl1766217747_)))
                                                 (let ((_hd1767017769_
                                                        (##car _e1766917766_))
                                                       (_tl1767117771_
                                                        (##cdr _e1766917766_)))
                                                   (if (gx#stx-pair?
                                                        _hd1767017769_)
                                                       (let ((_e1767217774_
                                                              (gx#stx-e
                                                               _hd1767017769_)))
                                                         (let ((_hd1767317777_
                                                                (##car _e1767217774_))
                                                               (_tl1767417779_
                                                                (##cdr _e1767217774_)))
                                                           (if (gx#identifier?
                                                                _hd1767317777_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1767317777_)
                           (if (gx#stx-pair? _tl1767417779_)
                               (let ((_e1767517782_ (gx#stx-e _tl1767417779_)))
                                 (let ((_hd1767617785_ (##car _e1767517782_))
                                       (_tl1767717787_ (##cdr _e1767517782_)))
                                   (if (gx#stx-null? _tl1767717787_)
                                       (if (gx#stx-null? _tl1767117771_)
                                           (if (gx#stx-null? _tl1764717707_)
                                               ((lambda (_L17790_
                                                         _L17791_
                                                         _L17792_
                                                         _L17793_)
                                                  (if (if (gx#identifier?
                                                           _L17793_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17792_)
                           'apply)
                      (if (gx#free-identifier=? _L17793_ _L17790_)
                          (not (gx#free-identifier=? _L17791_ _L17793_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1752417689_ _g1752617692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1767617785_
                                                _hd1766717761_
                                                _hd1765817737_
                                                _hd1764317697_)
                                               (_g1752417689_ _g1752617692_))
                                           (_g1752417689_ _g1752617692_))
                                       (_g1752417689_ _g1752617692_))))
                               (_g1752417689_ _g1752617692_))
                           (_g1752417689_ _g1752617692_))
                       (_g1752417689_ _g1752617692_))))
               (_g1752417689_ _g1752617692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1752417689_ _g1752617692_))
                                           (_g1752417689_ _g1752617692_))))
                                   (_g1752417689_ _g1752617692_))
                               (_g1752417689_ _g1752617692_))
                           (_g1752417689_ _g1752617692_))))
                   (_g1752417689_ _g1752617692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752417689_
                                                    _g1752617692_))
                                               (_g1752417689_ _g1752617692_))))
                                       (_g1752417689_ _g1752617692_))
                                   (_g1752417689_ _g1752617692_))
                               (_g1752417689_ _g1752617692_))))
                       (_g1752417689_ _g1752617692_))))
               (_g1752417689_ _g1752617692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752417689_
                                                    _g1752617692_))
                                               (_g1752417689_ _g1752617692_))))
                                       (_g1752417689_ _g1752617692_))))
                               (_g1752417689_ _g1752617692_))))
                       (_g1752417689_ _g1752617692_)))))
            (let ((_g1752218089_
                   (lambda (_g1752617832_)
                     (if (gx#stx-pair? _g1752617832_)
                         (let ((_e1757817834_ (gx#stx-e _g1752617832_)))
                           (let ((_hd1757917837_ (##car _e1757817834_))
                                 (_tl1758017839_ (##cdr _e1757817834_)))
                             (if (gx#stx-pair/null? _hd1757917837_)
                                 (if (fx>= (gx#stx-length _hd1757917837_) '0)
                                     (let ((_g19400_
                                            (gx#syntax-split-splice
                                             _hd1757917837_
                                             '0)))
                                       (begin
                                         (let ((_g19401_
                                                (values-count _g19400_)))
                                           (if (not (fx= _g19401_ 2))
                                               (error "Context expects 2 values"
                                                      _g19401_)))
                                         (let ((_target1758117842_
                                                (values-ref _g19400_ 0))
                                               (_tl1758317844_
                                                (values-ref _g19400_ 1)))
                                           (letrec ((_loop1758417847_
                                                     (lambda (_hd1758217850_
                                                              _arg1758817852_)
                                                       (if (gx#stx-pair?
                                                            _hd1758217850_)
                                                           (let ((_e1758517855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1758217850_)))
                     (let ((_lp-hd1758617858_ (##car _e1758517855_))
                           (_lp-tl1758717860_ (##cdr _e1758517855_)))
                       (_loop1758417847_
                        _lp-tl1758717860_
                        (cons _lp-hd1758617858_ _arg1758817852_))))
                   (let ((_arg1758917863_ (reverse _arg1758817852_)))
                     (if (gx#stx-pair? _tl1758017839_)
                         (let ((_e1759017866_ (gx#stx-e _tl1758017839_)))
                           (let ((_hd1759117869_ (##car _e1759017866_))
                                 (_tl1759217871_ (##cdr _e1759017866_)))
                             (if (gx#stx-pair? _hd1759117869_)
                                 (let ((_e1759317874_
                                        (gx#stx-e _hd1759117869_)))
                                   (let ((_hd1759417877_ (##car _e1759317874_))
                                         (_tl1759517879_
                                          (##cdr _e1759317874_)))
                                     (if (gx#identifier? _hd1759417877_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1759417877_)
                                             (if (gx#stx-pair? _tl1759517879_)
                                                 (let ((_e1759617882_
                                                        (gx#stx-e
                                                         _tl1759517879_)))
                                                   (let ((_hd1759717885_
                                                          (##car _e1759617882_))
                                                         (_tl1759817887_
                                                          (##cdr _e1759617882_)))
                                                     (if (gx#stx-pair?
                                                          _hd1759717885_)
                                                         (let ((_e1759917890_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1759717885_)))
                   (let ((_hd1760017893_ (##car _e1759917890_))
                         (_tl1760117895_ (##cdr _e1759917890_)))
                     (if (gx#identifier? _hd1760017893_)
                         (if (gx#stx-eq? '%#ref _hd1760017893_)
                             (if (gx#stx-pair? _tl1760117895_)
                                 (let ((_e1760217898_
                                        (gx#stx-e _tl1760117895_)))
                                   (let ((_hd1760317901_ (##car _e1760217898_))
                                         (_tl1760417903_
                                          (##cdr _e1760217898_)))
                                     (if (gx#stx-null? _tl1760417903_)
                                         (if (gx#stx-pair? _tl1759817887_)
                                             (let ((_e1760517906_
                                                    (gx#stx-e _tl1759817887_)))
                                               (let ((_hd1760617909_
                                                      (##car _e1760517906_))
                                                     (_tl1760717911_
                                                      (##cdr _e1760517906_)))
                                                 (if (gx#stx-pair?
                                                      _hd1760617909_)
                                                     (let ((_e1760817914_
                                                            (gx#stx-e
                                                             _hd1760617909_)))
                                                       (let ((_hd1760917917_
                                                              (##car _e1760817914_))
                                                             (_tl1761017919_
                                                              (##cdr _e1760817914_)))
                                                         (if (gx#identifier?
                                                              _hd1760917917_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1760917917_)
                         (if (gx#stx-pair? _tl1761017919_)
                             (let ((_e1761117922_ (gx#stx-e _tl1761017919_)))
                               (let ((_hd1761217925_ (##car _e1761117922_))
                                     (_tl1761317927_ (##cdr _e1761117922_)))
                                 (if (gx#stx-null? _tl1761317927_)
                                     (if (gx#stx-pair/null? _tl1760717911_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1760717911_)
                                                   '1)
                                             (let ((_g19402_
                                                    (gx#syntax-split-splice
                                                     _tl1760717911_
                                                     '1)))
                                               (begin
                                                 (let ((_g19403_
                                                        (values-count
                                                         _g19402_)))
                                                   (if (not (fx= _g19403_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19403_)))
                                                 (let ((_target1761417930_
                                                        (values-ref
                                                         _g19402_
                                                         0))
                                                       (_tl1761617932_
                                                        (values-ref
                                                         _g19402_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1761617932_)
                                                       (let ((_e1762317935_
                                                              (gx#stx-e
                                                               _tl1761617932_)))
                                                         (let ((_hd1762417938_
                                                                (##car _e1762317935_))
                                                               (_tl1762517940_
                                                                (##cdr _e1762317935_)))
                                                           (if (gx#stx-pair?
                                                                _hd1762417938_)
                                                               (let ((_e1762617943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1762417938_)))
                         (let ((_hd1762717946_ (##car _e1762617943_))
                               (_tl1762817948_ (##cdr _e1762617943_)))
                           (if (gx#identifier? _hd1762717946_)
                               (if (gx#stx-eq? '%#ref _hd1762717946_)
                                   (if (gx#stx-pair? _tl1762817948_)
                                       (let ((_e1762917951_
                                              (gx#stx-e _tl1762817948_)))
                                         (let ((_hd1763017954_
                                                (##car _e1762917951_))
                                               (_tl1763117956_
                                                (##cdr _e1762917951_)))
                                           (if (gx#stx-null? _tl1763117956_)
                                               (if (gx#stx-null?
                                                    _tl1762517940_)
                                                   (letrec ((_loop1761717959_
                                                             (lambda (_hd1761517962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1762117964_)
                       (if (gx#stx-pair? _hd1761517962_)
                           (let ((_e1761817967_ (gx#stx-e _hd1761517962_)))
                             (let ((_lp-hd1761917970_ (##car _e1761817967_))
                                   (_lp-tl1762017972_ (##cdr _e1761817967_)))
                               (if (gx#stx-pair? _lp-hd1761917970_)
                                   (let ((_e1763217975_
                                          (gx#stx-e _lp-hd1761917970_)))
                                     (let ((_hd1763317978_
                                            (##car _e1763217975_))
                                           (_tl1763417980_
                                            (##cdr _e1763217975_)))
                                       (if (gx#identifier? _hd1763317978_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1763317978_)
                                               (if (gx#stx-pair?
                                                    _tl1763417980_)
                                                   (let ((_e1763517983_
                                                          (gx#stx-e
                                                           _tl1763417980_)))
                                                     (let ((_hd1763617986_
                                                            (##car _e1763517983_))
                                                           (_tl1763717988_
                                                            (##cdr _e1763517983_)))
                                                       (if (gx#stx-null?
                                                            _tl1763717988_)
                                                           (_loop1761717959_
                                                            _lp-tl1762017972_
                                                            (cons _hd1763617986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1762117964_))
                   (_g1752317829_ _g1752617832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752317829_
                                                    _g1752617832_))
                                               (_g1752317829_ _g1752617832_))
                                           (_g1752317829_ _g1752617832_))))
                                   (_g1752317829_ _g1752617832_))))
                           (let ((_xarg1762217991_ (reverse _xarg1762117964_)))
                             (if (gx#stx-null? _tl1759217871_)
                                 ((lambda (_L17994_
                                           _L17995_
                                           _L17996_
                                           _L17997_
                                           _L17998_
                                           _L17999_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1804218045_
                                                                _g1804318047_)
                                                         (cons _g1804218045_
                                                               _g1804318047_))
                                                       '()
                                                       _L17999_)))
                                            (if (gx#identifier? _L17998_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17997_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1804918052_ _g1805018054_)
                                         (cons _g1804918052_ _g1805018054_))
                                       '()
                                       _L17999_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1805618059_ _g1805718061_)
                                         (cons _g1805618059_ _g1805718061_))
                                       '()
                                       _L17995_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1806318066_ _g1806418068_)
                                        (cons _g1806318066_ _g1806418068_))
                                      '()
                                      _L17999_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1807018073_ _g1807118075_)
                                        (cons _g1807018073_ _g1807118075_))
                                      '()
                                      _L17995_)))
                    (if (gx#free-identifier=? _L17998_ _L17994_)
                        (not (find (lambda (_g1807718079_)
                                     (gx#free-identifier=?
                                      _g1807718079_
                                      _L17996_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1808118084_
                                                      _g1808218086_)
                                               (cons _g1808118084_
                                                     _g1808218086_))
                                             (cons _L17998_ '())
                                             _L17999_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1752317829_ _g1752617832_)))
                                  _hd1763017954_
                                  _xarg1762217991_
                                  _hd1761217925_
                                  _hd1760317901_
                                  _tl1758317844_
                                  _arg1758917863_)
                                 (_g1752317829_ _g1752617832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1761717959_
                                                      _target1761417930_
                                                      '()))
                                                   (_g1752317829_
                                                    _g1752617832_))
                                               (_g1752317829_ _g1752617832_))))
                                       (_g1752317829_ _g1752617832_))
                                   (_g1752317829_ _g1752617832_))
                               (_g1752317829_ _g1752617832_))))
                       (_g1752317829_ _g1752617832_))))
               (_g1752317829_ _g1752617832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1752317829_ _g1752617832_))
                                         (_g1752317829_ _g1752617832_))
                                     (_g1752317829_ _g1752617832_))))
                             (_g1752317829_ _g1752617832_))
                         (_g1752317829_ _g1752617832_))
                     (_g1752317829_ _g1752617832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1752317829_
                                                      _g1752617832_))))
                                             (_g1752317829_ _g1752617832_))
                                         (_g1752317829_ _g1752617832_))))
                                 (_g1752317829_ _g1752617832_))
                             (_g1752317829_ _g1752617832_))
                         (_g1752317829_ _g1752617832_))))
                 (_g1752317829_ _g1752617832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1752317829_ _g1752617832_))
                                             (_g1752317829_ _g1752617832_))
                                         (_g1752317829_ _g1752617832_))))
                                 (_g1752317829_ _g1752617832_))))
                         (_g1752317829_ _g1752617832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1758417847_
                                              _target1758117842_
                                              '())))))
                                     (_g1752317829_ _g1752617832_))
                                 (_g1752317829_ _g1752617832_))))
                         (_g1752317829_ _g1752617832_)))))
              (let ((_g1752118283_
                     (lambda (_g1752618092_)
                       (if (gx#stx-pair? _g1752618092_)
                           (let ((_e1753018094_ (gx#stx-e _g1752618092_)))
                             (let ((_hd1753118097_ (##car _e1753018094_))
                                   (_tl1753218099_ (##cdr _e1753018094_)))
                               (if (gx#stx-pair/null? _hd1753118097_)
                                   (if (fx>= (gx#stx-length _hd1753118097_) '0)
                                       (let ((_g19404_
                                              (gx#syntax-split-splice
                                               _hd1753118097_
                                               '0)))
                                         (begin
                                           (let ((_g19405_
                                                  (values-count _g19404_)))
                                             (if (not (fx= _g19405_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19405_)))
                                           (let ((_target1753318102_
                                                  (values-ref _g19404_ 0))
                                                 (_tl1753518104_
                                                  (values-ref _g19404_ 1)))
                                             (if (gx#stx-null? _tl1753518104_)
                                                 (letrec ((_loop1753618107_
                                                           (lambda (_hd1753418110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1754018112_)
                     (if (gx#stx-pair? _hd1753418110_)
                         (let ((_e1753718115_ (gx#stx-e _hd1753418110_)))
                           (let ((_lp-hd1753818118_ (##car _e1753718115_))
                                 (_lp-tl1753918120_ (##cdr _e1753718115_)))
                             (_loop1753618107_
                              _lp-tl1753918120_
                              (cons _lp-hd1753818118_ _arg1754018112_))))
                         (let ((_arg1754118123_ (reverse _arg1754018112_)))
                           (if (gx#stx-pair? _tl1753218099_)
                               (let ((_e1754218126_ (gx#stx-e _tl1753218099_)))
                                 (let ((_hd1754318129_ (##car _e1754218126_))
                                       (_tl1754418131_ (##cdr _e1754218126_)))
                                   (if (gx#stx-pair? _hd1754318129_)
                                       (let ((_e1754518134_
                                              (gx#stx-e _hd1754318129_)))
                                         (let ((_hd1754618137_
                                                (##car _e1754518134_))
                                               (_tl1754718139_
                                                (##cdr _e1754518134_)))
                                           (if (gx#identifier? _hd1754618137_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1754618137_)
                                                   (if (gx#stx-pair?
                                                        _tl1754718139_)
                                                       (let ((_e1754818142_
                                                              (gx#stx-e
                                                               _tl1754718139_)))
                                                         (let ((_hd1754918145_
                                                                (##car _e1754818142_))
                                                               (_tl1755018147_
                                                                (##cdr _e1754818142_)))
                                                           (if (gx#stx-pair?
                                                                _hd1754918145_)
                                                               (let ((_e1755118150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1754918145_)))
                         (let ((_hd1755218153_ (##car _e1755118150_))
                               (_tl1755318155_ (##cdr _e1755118150_)))
                           (if (gx#identifier? _hd1755218153_)
                               (if (gx#stx-eq? '%#ref _hd1755218153_)
                                   (if (gx#stx-pair? _tl1755318155_)
                                       (let ((_e1755418158_
                                              (gx#stx-e _tl1755318155_)))
                                         (let ((_hd1755518161_
                                                (##car _e1755418158_))
                                               (_tl1755618163_
                                                (##cdr _e1755418158_)))
                                           (if (gx#stx-null? _tl1755618163_)
                                               (if (gx#stx-pair/null?
                                                    _tl1755018147_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1755018147_)
                                                             '0)
                                                       (let ((_g19406_
                                                              (gx#syntax-split-splice
                                                               _tl1755018147_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19406_)))
                     (if (not (fx= _g19407_ 2))
                         (error "Context expects 2 values" _g19407_)))
                   (let ((_target1755718166_ (values-ref _g19406_ 0))
                         (_tl1755918168_ (values-ref _g19406_ 1)))
                     (if (gx#stx-null? _tl1755918168_)
                         (letrec ((_loop1756018171_
                                   (lambda (_hd1755818174_ _xarg1756418176_)
                                     (if (gx#stx-pair? _hd1755818174_)
                                         (let ((_e1756118179_
                                                (gx#stx-e _hd1755818174_)))
                                           (let ((_lp-hd1756218182_
                                                  (##car _e1756118179_))
                                                 (_lp-tl1756318184_
                                                  (##cdr _e1756118179_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1756218182_)
                                                 (let ((_e1756618187_
                                                        (gx#stx-e
                                                         _lp-hd1756218182_)))
                                                   (let ((_hd1756718190_
                                                          (##car _e1756618187_))
                                                         (_tl1756818192_
                                                          (##cdr _e1756618187_)))
                                                     (if (gx#identifier?
                                                          _hd1756718190_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1756718190_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1756818192_)
                         (let ((_e1756918195_ (gx#stx-e _tl1756818192_)))
                           (let ((_hd1757018198_ (##car _e1756918195_))
                                 (_tl1757118200_ (##cdr _e1756918195_)))
                             (if (gx#stx-null? _tl1757118200_)
                                 (_loop1756018171_
                                  _lp-tl1756318184_
                                  (cons _hd1757018198_ _xarg1756418176_))
                                 (_g1752218089_ _g1752618092_))))
                         (_g1752218089_ _g1752618092_))
                     (_g1752218089_ _g1752618092_))
                 (_g1752218089_ _g1752618092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1752218089_
                                                  _g1752618092_))))
                                         (let ((_xarg1756518203_
                                                (reverse _xarg1756418176_)))
                                           (if (gx#stx-null? _tl1754418131_)
                                               ((lambda (_L18206_
                                                         _L18207_
                                                         _L18208_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1823618239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1823718241_)
                               (cons _g1823618239_ _g1823718241_))
                             '()
                             _L18208_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1824318246_
                                                      _g1824418248_)
                                               (cons _g1824318246_
                                                     _g1824418248_))
                                             '()
                                             _L18208_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1825018253_
                                                      _g1825118255_)
                                               (cons _g1825018253_
                                                     _g1825118255_))
                                             '()
                                             _L18206_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1825718260_
                                                     _g1825818262_)
                                              (cons _g1825718260_
                                                    _g1825818262_))
                                            '()
                                            _L18208_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1826418267_
                                                     _g1826518269_)
                                              (cons _g1826418267_
                                                    _g1826518269_))
                                            '()
                                            _L18206_)))
                          (not (find (lambda (_g1827118273_)
                                       (gx#free-identifier=?
                                        _g1827118273_
                                        _L18207_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1827518278_
                                                        _g1827618280_)
                                                 (cons _g1827518278_
                                                       _g1827618280_))
                                               '()
                                               _L18208_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1752218089_ _g1752618092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1756518203_
                                                _hd1755518161_
                                                _arg1754118123_)
                                               (_g1752218089_
                                                _g1752618092_)))))))
                           (_loop1756018171_ _target1755718166_ '()))
                         (_g1752218089_ _g1752618092_)))))
               (_g1752218089_ _g1752618092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752218089_
                                                    _g1752618092_))
                                               (_g1752218089_ _g1752618092_))))
                                       (_g1752218089_ _g1752618092_))
                                   (_g1752218089_ _g1752618092_))
                               (_g1752218089_ _g1752618092_))))
                       (_g1752218089_ _g1752618092_))))
               (_g1752218089_ _g1752618092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1752218089_
                                                    _g1752618092_))
                                               (_g1752218089_ _g1752618092_))))
                                       (_g1752218089_ _g1752618092_))))
                               (_g1752218089_ _g1752618092_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1753618107_
                                                    _target1753318102_
                                                    '()))
                                                 (_g1752218089_
                                                  _g1752618092_)))))
                                       (_g1752218089_ _g1752618092_))
                                   (_g1752218089_ _g1752618092_))))
                           (_g1752218089_ _g1752618092_)))))
                (_g1752118283_ _form17520_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16988_)
      (let ((_g1699217116_
             (lambda (_g1699317113_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1699317113_))))
        (let ((_g1699117233_
               (lambda (_g1699317119_)
                 (if (gx#stx-pair? _g1699317119_)
                     (let ((_e1708217121_ (gx#stx-e _g1699317119_)))
                       (let ((_hd1708317124_ (##car _e1708217121_))
                             (_tl1708417126_ (##cdr _e1708217121_)))
                         (if (gx#stx-pair? _tl1708417126_)
                             (let ((_e1708517129_ (gx#stx-e _tl1708417126_)))
                               (let ((_hd1708617132_ (##car _e1708517129_))
                                     (_tl1708717134_ (##cdr _e1708517129_)))
                                 (if (gx#stx-pair? _hd1708617132_)
                                     (let ((_e1708817137_
                                            (gx#stx-e _hd1708617132_)))
                                       (let ((_hd1708917140_
                                              (##car _e1708817137_))
                                             (_tl1709017142_
                                              (##cdr _e1708817137_)))
                                         (if (gx#identifier? _hd1708917140_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1708917140_)
                                                 (if (gx#stx-pair?
                                                      _tl1709017142_)
                                                     (let ((_e1709117145_
                                                            (gx#stx-e
                                                             _tl1709017142_)))
                                                       (let ((_hd1709217148_
                                                              (##car _e1709117145_))
                                                             (_tl1709317150_
                                                              (##cdr _e1709117145_)))
                                                         (if (gx#stx-pair?
                                                              _hd1709217148_)
                                                             (let ((_e1709417153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1709217148_)))
                       (let ((_hd1709517156_ (##car _e1709417153_))
                             (_tl1709617158_ (##cdr _e1709417153_)))
                         (if (gx#identifier? _hd1709517156_)
                             (if (gx#stx-eq? '%#ref _hd1709517156_)
                                 (if (gx#stx-pair? _tl1709617158_)
                                     (let ((_e1709717161_
                                            (gx#stx-e _tl1709617158_)))
                                       (let ((_hd1709817164_
                                              (##car _e1709717161_))
                                             (_tl1709917166_
                                              (##cdr _e1709717161_)))
                                         (if (gx#stx-null? _tl1709917166_)
                                             (if (gx#stx-pair? _tl1709317150_)
                                                 (let ((_e1710017169_
                                                        (gx#stx-e
                                                         _tl1709317150_)))
                                                   (let ((_hd1710117172_
                                                          (##car _e1710017169_))
                                                         (_tl1710217174_
                                                          (##cdr _e1710017169_)))
                                                     (if (gx#stx-pair?
                                                          _hd1710117172_)
                                                         (let ((_e1710317177_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1710117172_)))
                   (let ((_hd1710417180_ (##car _e1710317177_))
                         (_tl1710517182_ (##cdr _e1710317177_)))
                     (if (gx#identifier? _hd1710417180_)
                         (if (gx#stx-eq? '%#ref _hd1710417180_)
                             (if (gx#stx-pair? _tl1710517182_)
                                 (let ((_e1710617185_
                                        (gx#stx-e _tl1710517182_)))
                                   (let ((_hd1710717188_ (##car _e1710617185_))
                                         (_tl1710817190_
                                          (##cdr _e1710617185_)))
                                     (if (gx#stx-null? _tl1710817190_)
                                         (if (gx#stx-pair? _tl1710217174_)
                                             (let ((_e1710917193_
                                                    (gx#stx-e _tl1710217174_)))
                                               (let ((_hd1711017196_
                                                      (##car _e1710917193_))
                                                     (_tl1711117198_
                                                      (##cdr _e1710917193_)))
                                                 (if (gx#stx-null?
                                                      _tl1711117198_)
                                                     (if (gx#stx-null?
                                                          _tl1708717134_)
                                                         ((lambda (_L17201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17202_
                           _L17203_)
                    (gxc#generate-runtime-binding-id _L17201_))
                  _hd1710717188_
                  _hd1709817164_
                  _hd1708317124_)
                 (_g1699217116_ _g1699317119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699217116_
                                                      _g1699317119_))))
                                             (_g1699217116_ _g1699317119_))
                                         (_g1699217116_ _g1699317119_))))
                                 (_g1699217116_ _g1699317119_))
                             (_g1699217116_ _g1699317119_))
                         (_g1699217116_ _g1699317119_))))
                 (_g1699217116_ _g1699317119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1699217116_ _g1699317119_))
                                             (_g1699217116_ _g1699317119_))))
                                     (_g1699217116_ _g1699317119_))
                                 (_g1699217116_ _g1699317119_))
                             (_g1699217116_ _g1699317119_))))
                     (_g1699217116_ _g1699317119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699217116_
                                                      _g1699317119_))
                                                 (_g1699217116_ _g1699317119_))
                                             (_g1699217116_ _g1699317119_))))
                                     (_g1699217116_ _g1699317119_))))
                             (_g1699217116_ _g1699317119_))))
                     (_g1699217116_ _g1699317119_)))))
          (let ((_g1699017369_
                 (lambda (_g1699317236_)
                   (if (gx#stx-pair? _g1699317236_)
                       (let ((_e1704317238_ (gx#stx-e _g1699317236_)))
                         (let ((_hd1704417241_ (##car _e1704317238_))
                               (_tl1704517243_ (##cdr _e1704317238_)))
                           (if (gx#stx-pair/null? _hd1704417241_)
                               (if (fx>= (gx#stx-length _hd1704417241_) '0)
                                   (let ((_g19408_
                                          (gx#syntax-split-splice
                                           _hd1704417241_
                                           '0)))
                                     (begin
                                       (let ((_g19409_
                                              (values-count _g19408_)))
                                         (if (not (fx= _g19409_ 2))
                                             (error "Context expects 2 values"
                                                    _g19409_)))
                                       (let ((_target1704617246_
                                              (values-ref _g19408_ 0))
                                             (_tl1704817248_
                                              (values-ref _g19408_ 1)))
                                         (letrec ((_loop1704917251_
                                                   (lambda (_hd1704717254_
                                                            _arg1705317256_)
                                                     (if (gx#stx-pair?
                                                          _hd1704717254_)
                                                         (let ((_e1705017259_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1704717254_)))
                   (let ((_lp-hd1705117262_ (##car _e1705017259_))
                         (_lp-tl1705217264_ (##cdr _e1705017259_)))
                     (_loop1704917251_
                      _lp-tl1705217264_
                      (cons _lp-hd1705117262_ _arg1705317256_))))
                 (let ((_arg1705417267_ (reverse _arg1705317256_)))
                   (if (gx#stx-pair? _tl1704517243_)
                       (let ((_e1705517270_ (gx#stx-e _tl1704517243_)))
                         (let ((_hd1705617273_ (##car _e1705517270_))
                               (_tl1705717275_ (##cdr _e1705517270_)))
                           (if (gx#stx-pair? _hd1705617273_)
                               (let ((_e1705817278_ (gx#stx-e _hd1705617273_)))
                                 (let ((_hd1705917281_ (##car _e1705817278_))
                                       (_tl1706017283_ (##cdr _e1705817278_)))
                                   (if (gx#identifier? _hd1705917281_)
                                       (if (gx#stx-eq? '%#call _hd1705917281_)
                                           (if (gx#stx-pair? _tl1706017283_)
                                               (let ((_e1706117286_
                                                      (gx#stx-e
                                                       _tl1706017283_)))
                                                 (let ((_hd1706217289_
                                                        (##car _e1706117286_))
                                                       (_tl1706317291_
                                                        (##cdr _e1706117286_)))
                                                   (if (gx#stx-pair?
                                                        _hd1706217289_)
                                                       (let ((_e1706417294_
                                                              (gx#stx-e
                                                               _hd1706217289_)))
                                                         (let ((_hd1706517297_
                                                                (##car _e1706417294_))
                                                               (_tl1706617299_
                                                                (##cdr _e1706417294_)))
                                                           (if (gx#identifier?
                                                                _hd1706517297_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1706517297_)
                           (if (gx#stx-pair? _tl1706617299_)
                               (let ((_e1706717302_ (gx#stx-e _tl1706617299_)))
                                 (let ((_hd1706817305_ (##car _e1706717302_))
                                       (_tl1706917307_ (##cdr _e1706717302_)))
                                   (if (gx#stx-null? _tl1706917307_)
                                       (if (gx#stx-pair? _tl1706317291_)
                                           (let ((_e1707017310_
                                                  (gx#stx-e _tl1706317291_)))
                                             (let ((_hd1707117313_
                                                    (##car _e1707017310_))
                                                   (_tl1707217315_
                                                    (##cdr _e1707017310_)))
                                               (if (gx#stx-pair?
                                                    _hd1707117313_)
                                                   (let ((_e1707317318_
                                                          (gx#stx-e
                                                           _hd1707117313_)))
                                                     (let ((_hd1707417321_
                                                            (##car _e1707317318_))
                                                           (_tl1707517323_
                                                            (##cdr _e1707317318_)))
                                                       (if (gx#identifier?
                                                            _hd1707417321_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1707417321_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1707517323_)
                           (let ((_e1707617326_ (gx#stx-e _tl1707517323_)))
                             (let ((_hd1707717329_ (##car _e1707617326_))
                                   (_tl1707817331_ (##cdr _e1707617326_)))
                               (if (gx#stx-null? _tl1707817331_)
                                   (if (gx#stx-null? _tl1705717275_)
                                       ((lambda (_L17334_
                                                 _L17335_
                                                 _L17336_
                                                 _L17337_)
                                          (gxc#generate-runtime-binding-id
                                           _L17334_))
                                        _hd1707717329_
                                        _hd1706817305_
                                        _tl1704817248_
                                        _arg1705417267_)
                                       (_g1699117233_ _g1699317236_))
                                   (_g1699117233_ _g1699317236_))))
                           (_g1699117233_ _g1699317236_))
                       (_g1699117233_ _g1699317236_))
                   (_g1699117233_ _g1699317236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1699117233_
                                                    _g1699317236_))))
                                           (_g1699117233_ _g1699317236_))
                                       (_g1699117233_ _g1699317236_))))
                               (_g1699117233_ _g1699317236_))
                           (_g1699117233_ _g1699317236_))
                       (_g1699117233_ _g1699317236_))))
               (_g1699117233_ _g1699317236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1699117233_ _g1699317236_))
                                           (_g1699117233_ _g1699317236_))
                                       (_g1699117233_ _g1699317236_))))
                               (_g1699117233_ _g1699317236_))))
                       (_g1699117233_ _g1699317236_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1704917251_
                                            _target1704617246_
                                            '())))))
                                   (_g1699117233_ _g1699317236_))
                               (_g1699117233_ _g1699317236_))))
                       (_g1699117233_ _g1699317236_)))))
            (let ((_g1698917517_
                   (lambda (_g1699317372_)
                     (if (gx#stx-pair? _g1699317372_)
                         (let ((_e1699717374_ (gx#stx-e _g1699317372_)))
                           (let ((_hd1699817377_ (##car _e1699717374_))
                                 (_tl1699917379_ (##cdr _e1699717374_)))
                             (if (gx#stx-pair/null? _hd1699817377_)
                                 (if (fx>= (gx#stx-length _hd1699817377_) '0)
                                     (let ((_g19410_
                                            (gx#syntax-split-splice
                                             _hd1699817377_
                                             '0)))
                                       (begin
                                         (let ((_g19411_
                                                (values-count _g19410_)))
                                           (if (not (fx= _g19411_ 2))
                                               (error "Context expects 2 values"
                                                      _g19411_)))
                                         (let ((_target1700017382_
                                                (values-ref _g19410_ 0))
                                               (_tl1700217384_
                                                (values-ref _g19410_ 1)))
                                           (if (gx#stx-null? _tl1700217384_)
                                               (letrec ((_loop1700317387_
                                                         (lambda (_hd1700117390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1700717392_)
                   (if (gx#stx-pair? _hd1700117390_)
                       (let ((_e1700417395_ (gx#stx-e _hd1700117390_)))
                         (let ((_lp-hd1700517398_ (##car _e1700417395_))
                               (_lp-tl1700617400_ (##cdr _e1700417395_)))
                           (_loop1700317387_
                            _lp-tl1700617400_
                            (cons _lp-hd1700517398_ _arg1700717392_))))
                       (let ((_arg1700817403_ (reverse _arg1700717392_)))
                         (if (gx#stx-pair? _tl1699917379_)
                             (let ((_e1700917406_ (gx#stx-e _tl1699917379_)))
                               (let ((_hd1701017409_ (##car _e1700917406_))
                                     (_tl1701117411_ (##cdr _e1700917406_)))
                                 (if (gx#stx-pair? _hd1701017409_)
                                     (let ((_e1701217414_
                                            (gx#stx-e _hd1701017409_)))
                                       (let ((_hd1701317417_
                                              (##car _e1701217414_))
                                             (_tl1701417419_
                                              (##cdr _e1701217414_)))
                                         (if (gx#identifier? _hd1701317417_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1701317417_)
                                                 (if (gx#stx-pair?
                                                      _tl1701417419_)
                                                     (let ((_e1701517422_
                                                            (gx#stx-e
                                                             _tl1701417419_)))
                                                       (let ((_hd1701617425_
                                                              (##car _e1701517422_))
                                                             (_tl1701717427_
                                                              (##cdr _e1701517422_)))
                                                         (if (gx#stx-pair?
                                                              _hd1701617425_)
                                                             (let ((_e1701817430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1701617425_)))
                       (let ((_hd1701917433_ (##car _e1701817430_))
                             (_tl1702017435_ (##cdr _e1701817430_)))
                         (if (gx#identifier? _hd1701917433_)
                             (if (gx#stx-eq? '%#ref _hd1701917433_)
                                 (if (gx#stx-pair? _tl1702017435_)
                                     (let ((_e1702117438_
                                            (gx#stx-e _tl1702017435_)))
                                       (let ((_hd1702217441_
                                              (##car _e1702117438_))
                                             (_tl1702317443_
                                              (##cdr _e1702117438_)))
                                         (if (gx#stx-null? _tl1702317443_)
                                             (if (gx#stx-pair/null?
                                                  _tl1701717427_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1701717427_)
                                                           '0)
                                                     (let ((_g19412_
                                                            (gx#syntax-split-splice
                                                             _tl1701717427_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19413_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19412_)))
                   (if (not (fx= _g19413_ 2))
                       (error "Context expects 2 values" _g19413_)))
                 (let ((_target1702417446_ (values-ref _g19412_ 0))
                       (_tl1702617448_ (values-ref _g19412_ 1)))
                   (if (gx#stx-null? _tl1702617448_)
                       (letrec ((_loop1702717451_
                                 (lambda (_hd1702517454_ _xarg1703117456_)
                                   (if (gx#stx-pair? _hd1702517454_)
                                       (let ((_e1702817459_
                                              (gx#stx-e _hd1702517454_)))
                                         (let ((_lp-hd1702917462_
                                                (##car _e1702817459_))
                                               (_lp-tl1703017464_
                                                (##cdr _e1702817459_)))
                                           (if (gx#stx-pair? _lp-hd1702917462_)
                                               (let ((_e1703317467_
                                                      (gx#stx-e
                                                       _lp-hd1702917462_)))
                                                 (let ((_hd1703417470_
                                                        (##car _e1703317467_))
                                                       (_tl1703517472_
                                                        (##cdr _e1703317467_)))
                                                   (if (gx#identifier?
                                                        _hd1703417470_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1703417470_)
                                                           (if (gx#stx-pair?
                                                                _tl1703517472_)
                                                               (let ((_e1703617475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1703517472_)))
                         (let ((_hd1703717478_ (##car _e1703617475_))
                               (_tl1703817480_ (##cdr _e1703617475_)))
                           (if (gx#stx-null? _tl1703817480_)
                               (_loop1702717451_
                                _lp-tl1703017464_
                                (cons _hd1703717478_ _xarg1703117456_))
                               (_g1699017369_ _g1699317372_))))
                       (_g1699017369_ _g1699317372_))
                   (_g1699017369_ _g1699317372_))
               (_g1699017369_ _g1699317372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1699017369_ _g1699317372_))))
                                       (let ((_xarg1703217483_
                                              (reverse _xarg1703117456_)))
                                         (if (gx#stx-null? _tl1701117411_)
                                             ((lambda (_L17486_
                                                       _L17487_
                                                       _L17488_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17487_))
                                              _xarg1703217483_
                                              _hd1702217441_
                                              _arg1700817403_)
                                             (_g1699017369_
                                              _g1699317372_)))))))
                         (_loop1702717451_ _target1702417446_ '()))
                       (_g1699017369_ _g1699317372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699017369_
                                                      _g1699317372_))
                                                 (_g1699017369_ _g1699317372_))
                                             (_g1699017369_ _g1699317372_))))
                                     (_g1699017369_ _g1699317372_))
                                 (_g1699017369_ _g1699317372_))
                             (_g1699017369_ _g1699317372_))))
                     (_g1699017369_ _g1699317372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1699017369_
                                                      _g1699317372_))
                                                 (_g1699017369_ _g1699317372_))
                                             (_g1699017369_ _g1699317372_))))
                                     (_g1699017369_ _g1699317372_))))
                             (_g1699017369_ _g1699317372_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1700317387_
                                                  _target1700017382_
                                                  '()))
                                               (_g1699017369_
                                                _g1699317372_)))))
                                     (_g1699017369_ _g1699317372_))
                                 (_g1699017369_ _g1699317372_))))
                         (_g1699017369_ _g1699317372_)))))
              (_g1698917517_ _form16988_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16792_)
      (let ((_g1679416808_
             (lambda (_g1679516805_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1679516805_))))
        (let ((_g1679316985_
               (lambda (_g1679516811_)
                 (if (gx#stx-pair? _g1679516811_)
                     (let ((_e1679816813_ (gx#stx-e _g1679516811_)))
                       (let ((_hd1679916816_ (##car _e1679816813_))
                             (_tl1680016818_ (##cdr _e1679816813_)))
                         (if (gx#stx-pair? _tl1680016818_)
                             (let ((_e1680116821_ (gx#stx-e _tl1680016818_)))
                               (let ((_hd1680216824_ (##car _e1680116821_))
                                     (_tl1680316826_ (##cdr _e1680116821_)))
                                 (if (gx#stx-null? _tl1680316826_)
                                     ((lambda (_L16829_ _L16830_)
                                        (let ((_g1684516873_
                                               (lambda (_g1684616870_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1684616870_))))
                                          (let ((_g1684416886_
                                                 (lambda (_g1684616876_)
                                                   ((lambda (_L16878_)
                                                      (cons '0 '()))
                                                    _g1684616876_))))
                                            (let ((_g1684316935_
                                                   (lambda (_g1684616889_)
                                                     (if (gx#stx-pair/null?
                                                          _g1684616889_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1684616889_)
                           '0)
                     (let ((_g19414_
                            (gx#syntax-split-splice _g1684616889_ '0)))
                       (begin
                         (let ((_g19415_ (values-count _g19414_)))
                           (if (not (fx= _g19415_ 2))
                               (error "Context expects 2 values" _g19415_)))
                         (let ((_target1685916891_ (values-ref _g19414_ 0))
                               (_tl1686116893_ (values-ref _g19414_ 1)))
                           (letrec ((_loop1686216896_
                                     (lambda (_hd1686016899_ _arg1686616901_)
                                       (if (gx#stx-pair? _hd1686016899_)
                                           (let ((_e1686316904_
                                                  (gx#stx-e _hd1686016899_)))
                                             (let ((_lp-hd1686416907_
                                                    (##car _e1686316904_))
                                                   (_lp-tl1686516909_
                                                    (##cdr _e1686316904_)))
                                               (_loop1686216896_
                                                _lp-tl1686516909_
                                                (cons _lp-hd1686416907_
                                                      _arg1686616901_))))
                                           (let ((_arg1686716912_
                                                  (reverse _arg1686616901_)))
                                             ((lambda (_L16915_ _L16916_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1692716930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1692816932_)
                                  (cons _g1692716930_ _g1692816932_))
                                '()
                                _L16916_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1686116893_
                                              _arg1686716912_))))))
                             (_loop1686216896_ _target1685916891_ '())))))
                     (_g1684416886_ _g1684616889_))
                 (_g1684416886_ _g1684616889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1684216982_
                                                     (lambda (_g1684616938_)
                                                       (if (gx#stx-pair/null?
                                                            _g1684616938_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1684616938_)
                             '0)
                       (let ((_g19416_
                              (gx#syntax-split-splice _g1684616938_ '0)))
                         (begin
                           (let ((_g19417_ (values-count _g19416_)))
                             (if (not (fx= _g19417_ 2))
                                 (error "Context expects 2 values" _g19417_)))
                           (let ((_target1684816940_ (values-ref _g19416_ 0))
                                 (_tl1685016942_ (values-ref _g19416_ 1)))
                             (if (gx#stx-null? _tl1685016942_)
                                 (letrec ((_loop1685116945_
                                           (lambda (_hd1684916948_
                                                    _arg1685516950_)
                                             (if (gx#stx-pair? _hd1684916948_)
                                                 (let ((_e1685216953_
                                                        (gx#stx-e
                                                         _hd1684916948_)))
                                                   (let ((_lp-hd1685316956_
                                                          (##car _e1685216953_))
                                                         (_lp-tl1685416958_
                                                          (##cdr _e1685216953_)))
                                                     (_loop1685116945_
                                                      _lp-tl1685416958_
                                                      (cons _lp-hd1685316956_
                                                            _arg1685516950_))))
                                                 (let ((_arg1685616961_
                                                        (reverse _arg1685516950_)))
                                                   ((lambda (_L16964_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1697416977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1697516979_)
                                  (cons _g1697416977_ _g1697516979_))
                                '()
                                _L16964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1685616961_))))))
                                   (_loop1685116945_ _target1684816940_ '()))
                                 (_g1684316935_ _g1684616938_)))))
                       (_g1684316935_ _g1684616938_))
                   (_g1684316935_ _g1684616938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1684216982_ _L16830_))))))
                                      _hd1680216824_
                                      _hd1679916816_)
                                     (_g1679416808_ _g1679516811_))))
                             (_g1679416808_ _g1679516811_))))
                     (_g1679416808_ _g1679516811_)))))
          (_g1679316985_ _form16792_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16745_)
      (let ((_g1674816758_
             (lambda (_g1674916755_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1674916755_))))
        (let ((_g1674716765_ (lambda (_g1674916761_) ((lambda () '#f)))))
          (let ((_g1674616789_
                 (lambda (_g1674916768_)
                   (if (gx#stx-pair? _g1674916768_)
                       (let ((_e1675116770_ (gx#stx-e _g1674916768_)))
                         (let ((_hd1675216773_ (##car _e1675116770_))
                               (_tl1675316775_ (##cdr _e1675116770_)))
                           (if (gx#identifier? _hd1675216773_)
                               (if (gx#stx-eq? '%#lambda _hd1675216773_)
                                   ((lambda (_L16778_) '#t) _tl1675316775_)
                                   (_g1674716765_ _g1674916768_))
                               (_g1674716765_ _g1674916768_))))
                       (_g1674716765_ _g1674916768_)))))
            (_g1674616789_ _expr16745_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16698_)
      (let ((_g1670116711_
             (lambda (_g1670216708_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1670216708_))))
        (let ((_g1670016718_ (lambda (_g1670216714_) ((lambda () '#f)))))
          (let ((_g1669916742_
                 (lambda (_g1670216721_)
                   (if (gx#stx-pair? _g1670216721_)
                       (let ((_e1670416723_ (gx#stx-e _g1670216721_)))
                         (let ((_hd1670516726_ (##car _e1670416723_))
                               (_tl1670616728_ (##cdr _e1670416723_)))
                           (if (gx#identifier? _hd1670516726_)
                               (if (gx#stx-eq? '%#case-lambda _hd1670516726_)
                                   ((lambda (_L16731_) '#t) _tl1670616728_)
                                   (_g1670016718_ _g1670216721_))
                               (_g1670016718_ _g1670216721_))))
                       (_g1670016718_ _g1670216721_)))))
            (_g1669916742_ _expr16698_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16567_)
      (let ((_g1657016600_
             (lambda (_g1657116597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1657116597_))))
        (let ((_g1656916607_ (lambda (_g1657116603_) ((lambda () '#f)))))
          (let ((_g1656816695_
                 (lambda (_g1657116610_)
                   (if (gx#stx-pair? _g1657116610_)
                       (let ((_e1657516612_ (gx#stx-e _g1657116610_)))
                         (let ((_hd1657616615_ (##car _e1657516612_))
                               (_tl1657716617_ (##cdr _e1657516612_)))
                           (if (gx#identifier? _hd1657616615_)
                               (if (gx#stx-eq? '%#let-values _hd1657616615_)
                                   (if (gx#stx-pair? _tl1657716617_)
                                       (let ((_e1657816620_
                                              (gx#stx-e _tl1657716617_)))
                                         (let ((_hd1657916623_
                                                (##car _e1657816620_))
                                               (_tl1658016625_
                                                (##cdr _e1657816620_)))
                                           (if (gx#stx-pair? _hd1657916623_)
                                               (let ((_e1658116628_
                                                      (gx#stx-e
                                                       _hd1657916623_)))
                                                 (let ((_hd1658216631_
                                                        (##car _e1658116628_))
                                                       (_tl1658316633_
                                                        (##cdr _e1658116628_)))
                                                   (if (gx#stx-pair?
                                                        _hd1658216631_)
                                                       (let ((_e1658416636_
                                                              (gx#stx-e
                                                               _hd1658216631_)))
                                                         (let ((_hd1658516639_
                                                                (##car _e1658416636_))
                                                               (_tl1658616641_
                                                                (##cdr _e1658416636_)))
                                                           (if (gx#stx-pair?
                                                                _hd1658516639_)
                                                               (let ((_e1658716644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1658516639_)))
                         (let ((_hd1658816647_ (##car _e1658716644_))
                               (_tl1658916649_ (##cdr _e1658716644_)))
                           (if (gx#stx-null? _tl1658916649_)
                               (if (gx#stx-pair? _tl1658616641_)
                                   (let ((_e1659016652_
                                          (gx#stx-e _tl1658616641_)))
                                     (let ((_hd1659116655_
                                            (##car _e1659016652_))
                                           (_tl1659216657_
                                            (##cdr _e1659016652_)))
                                       (if (gx#stx-null? _tl1659216657_)
                                           (if (gx#stx-null? _tl1658316633_)
                                               (if (gx#stx-pair?
                                                    _tl1658016625_)
                                                   (let ((_e1659316660_
                                                          (gx#stx-e
                                                           _tl1658016625_)))
                                                     (let ((_hd1659416663_
                                                            (##car _e1659316660_))
                                                           (_tl1659516665_
                                                            (##cdr _e1659316660_)))
                                                       (if (gx#stx-null?
                                                            _tl1659516665_)
                                                           ((lambda (_L16668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16669_
                             _L16670_)
                      (if (gx#identifier? _L16670_)
                          (if (gxc#lambda-expr? _L16669_)
                              (gxc#case-lambda-expr? _L16668_)
                              '#f)
                          '#f))
                    _hd1659416663_
                    _hd1659116655_
                    _hd1658816647_)
                   (_g1656916607_ _g1657116610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1656916607_
                                                    _g1657116610_))
                                               (_g1656916607_ _g1657116610_))
                                           (_g1656916607_ _g1657116610_))))
                                   (_g1656916607_ _g1657116610_))
                               (_g1656916607_ _g1657116610_))))
                       (_g1656916607_ _g1657116610_))))
               (_g1656916607_ _g1657116610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1656916607_ _g1657116610_))))
                                       (_g1656916607_ _g1657116610_))
                                   (_g1656916607_ _g1657116610_))
                               (_g1656916607_ _g1657116610_))))
                       (_g1656916607_ _g1657116610_)))))
            (_g1656816695_ _expr16567_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16307
      (lambda (_stx16309_ _id16310_ _clauses16311_ _gensym?16312_)
        ((letrec ((_lp16314_
                   (lambda (_rest16316_ _ids16317_ _impls16318_ _clauses16319_)
                     (let ((_rest1632016328_ _rest16316_))
                       (let ((_E1632316332_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1632016328_))))
                         (let ((_else1632216336_
                                (lambda ()
                                  (values (reverse _ids16317_)
                                          (reverse _impls16318_)
                                          (reverse _clauses16319_)))))
                           (let ((_K1632416541_
                                  (lambda (_rest16339_ _clause16340_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16340_)
                                        (_lp16314_
                                         _rest16339_
                                         _ids16317_
                                         _impls16318_
                                         (cons _clause16340_ _clauses16319_))
                                        (let ((_g1634216353_
                                               (lambda (_g1634316350_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1634316350_))))
                                          (let ((_g1634116538_
                                                 (lambda (_g1634316356_)
                                                   (if (gx#stx-pair?
                                                        _g1634316356_)
                                                       (let ((_e1634616358_
                                                              (gx#stx-e
                                                               _g1634316356_)))
                                                         (let ((_hd1634716361_
                                                                (##car _e1634616358_))
                                                               (_tl1634816363_
                                                                (##cdr _e1634616358_)))
                                                           ((lambda (_L16366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16367_)
                      (let ((_id16384_
                             (make-symbol
                              (gx#stx-e _id16310_)
                              '"__"
                              (length _clauses16319_)
                              (if _gensym?16312_ (gensym '__) '""))))
                        (let ((_id16386_
                               (gx#core-quote-syntax__1
                                _id16384_
                                (gx#stx-source _stx16309_))))
                          (let ((_impl16388_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16367_ _L16366_))
                                  _stx16309_)))
                            (let ((_clause16535_
                                   (let ((_g1639216420_
                                          (lambda (_g1639316417_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1639316417_))))
                                     (let ((_g1639116436_
                                            (lambda (_g1639316423_)
                                              ((lambda (_L16425_)
                                                 (cons _L16367_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16386_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16425_ '()))
                                              '()))))
                      _stx16309_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1639316423_))))
                                       (let ((_g1639016485_
                                              (lambda (_g1639316439_)
                                                (if (gx#stx-pair/null?
                                                     _g1639316439_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1639316439_)
                                                              '0)
                                                        (let ((_g19418_
                                                               (gx#syntax-split-splice
                                                                _g1639316439_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19418_)))
                      (if (not (fx= _g19419_ 2))
                          (error "Context expects 2 values" _g19419_)))
                    (let ((_target1640616441_ (values-ref _g19418_ 0))
                          (_tl1640816443_ (values-ref _g19418_ 1)))
                      (letrec ((_loop1640916446_
                                (lambda (_hd1640716449_ _arg1641316451_)
                                  (if (gx#stx-pair? _hd1640716449_)
                                      (let ((_e1641016454_
                                             (gx#stx-e _hd1640716449_)))
                                        (let ((_lp-hd1641116457_
                                               (##car _e1641016454_))
                                              (_lp-tl1641216459_
                                               (##cdr _e1641016454_)))
                                          (_loop1640916446_
                                           _lp-tl1641216459_
                                           (cons _lp-hd1641116457_
                                                 _arg1641316451_))))
                                      (let ((_arg1641416462_
                                             (reverse _arg1641316451_)))
                                        ((lambda (_L16465_ _L16466_)
                                           (cons _L16367_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16386_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16465_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1647716480_
                                                             _g1647816482_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1647716480_ '()))
                    _g1647816482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16466_))))))
                _stx16309_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1640816443_
                                         _arg1641416462_))))))
                        (_loop1640916446_ _target1640616441_ '())))))
                (_g1639116436_ _g1639316439_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1639116436_
                                                     _g1639316439_)))))
                                         (let ((_g1638916532_
                                                (lambda (_g1639316488_)
                                                  (if (gx#stx-pair/null?
                                                       _g1639316488_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1639316488_)
                        '0)
                  (let ((_g19420_ (gx#syntax-split-splice _g1639316488_ '0)))
                    (begin
                      (let ((_g19421_ (values-count _g19420_)))
                        (if (not (fx= _g19421_ 2))
                            (error "Context expects 2 values" _g19421_)))
                      (let ((_target1639516490_ (values-ref _g19420_ 0))
                            (_tl1639716492_ (values-ref _g19420_ 1)))
                        (if (gx#stx-null? _tl1639716492_)
                            (letrec ((_loop1639816495_
                                      (lambda (_hd1639616498_ _arg1640216500_)
                                        (if (gx#stx-pair? _hd1639616498_)
                                            (let ((_e1639916503_
                                                   (gx#stx-e _hd1639616498_)))
                                              (let ((_lp-hd1640016506_
                                                     (##car _e1639916503_))
                                                    (_lp-tl1640116508_
                                                     (##cdr _e1639916503_)))
                                                (_loop1639816495_
                                                 _lp-tl1640116508_
                                                 (cons _lp-hd1640016506_
                                                       _arg1640216500_))))
                                            (let ((_arg1640316511_
                                                   (reverse _arg1640216500_)))
                                              ((lambda (_L16514_)
                                                 (cons _L16367_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16386_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1652416527_
                                                     _g1652516529_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1652416527_
                                                                '()))
                                                    _g1652516529_))
                                            '()
                                            _L16514_))))
                      _stx16309_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1640316511_))))))
                              (_loop1639816495_ _target1639516490_ '()))
                            (_g1639016485_ _g1639316488_)))))
                  (_g1639016485_ _g1639316488_))
              (_g1639016485_ _g1639316488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1638916532_ _L16367_)))))))
                              (let ()
                                (_lp16314_
                                 _rest16339_
                                 (cons _id16386_ _ids16317_)
                                 (cons _impl16388_ _impls16318_)
                                 (cons _clause16535_ _clauses16319_))))))))
                    _tl1634816363_
                    _hd1634716361_)))
               (_g1634216353_ _g1634316356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1634116538_ _clause16340_)))))))
                             (if (##pair? _rest1632016328_)
                                 (let ((_hd1632516544_
                                        (##car _rest1632016328_))
                                       (_tl1632616546_
                                        (##cdr _rest1632016328_)))
                                   (let ((_clause16549_ _hd1632516544_))
                                     (let ((_rest16551_ _tl1632616546_))
                                       (_K1632416541_
                                        _rest16551_
                                        _clause16549_))))
                                 (_else1632216336_)))))))))
           _lp16314_)
         _clauses16311_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16556_ _id16557_ _clauses16558_)
          (let ((_gensym?16560_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16307
             _stx16556_
             _id16557_
             _clauses16558_
             _gensym?16560_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19423_
          (let ((_g19422_ (length _g19423_)))
            (cond ((fx= _g19422_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19423_))
                  ((fx= _g19422_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16307
                          _g19423_))
                  (else (error "No clause matching arguments" _g19423_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15898_)
      (let ((_case-lambda-clause-def15900_
             (lambda (_id16305_ _impl16306_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16305_ '())
                            (cons (gxc#compile-e _impl16306_) '())))
                _stx15898_))))
        (let ((_g1590415949_
               (lambda (_g1590515946_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1590515946_))))
          (let ((_g1590315995_
                 (lambda (_g1590515952_)
                   (if (gx#stx-pair? _g1590515952_)
                       (let ((_e1593615954_ (gx#stx-e _g1590515952_)))
                         (let ((_hd1593715957_ (##car _e1593615954_))
                               (_tl1593815959_ (##cdr _e1593615954_)))
                           (if (gx#stx-pair? _tl1593815959_)
                               (let ((_e1593915962_ (gx#stx-e _tl1593815959_)))
                                 (let ((_hd1594015965_ (##car _e1593915962_))
                                       (_tl1594115967_ (##cdr _e1593915962_)))
                                   (if (gx#stx-pair? _tl1594115967_)
                                       (let ((_e1594215970_
                                              (gx#stx-e _tl1594115967_)))
                                         (let ((_hd1594315973_
                                                (##car _e1594215970_))
                                               (_tl1594415975_
                                                (##cdr _e1594215970_)))
                                           (if (gx#stx-null? _tl1594415975_)
                                               ((lambda (_L15978_ _L15979_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15979_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15978_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15898_))
                                                _hd1594315973_
                                                _hd1594015965_)
                                               (_g1590415949_ _g1590515952_))))
                                       (_g1590415949_ _g1590515952_))))
                               (_g1590415949_ _g1590515952_))))
                       (_g1590415949_ _g1590515952_)))))
            (let ((_g1590216177_
                   (lambda (_g1590515998_)
                     (if (gx#stx-pair? _g1590515998_)
                         (let ((_e1592216000_ (gx#stx-e _g1590515998_)))
                           (let ((_hd1592316003_ (##car _e1592216000_))
                                 (_tl1592416005_ (##cdr _e1592216000_)))
                             (if (gx#stx-pair? _tl1592416005_)
                                 (let ((_e1592516008_
                                        (gx#stx-e _tl1592416005_)))
                                   (let ((_hd1592616011_ (##car _e1592516008_))
                                         (_tl1592716013_
                                          (##cdr _e1592516008_)))
                                     (if (gx#stx-pair? _hd1592616011_)
                                         (let ((_e1592816016_
                                                (gx#stx-e _hd1592616011_)))
                                           (let ((_hd1592916019_
                                                  (##car _e1592816016_))
                                                 (_tl1593016021_
                                                  (##cdr _e1592816016_)))
                                             (if (gx#stx-null? _tl1593016021_)
                                                 (if (gx#stx-pair?
                                                      _tl1592716013_)
                                                     (let ((_e1593116024_
                                                            (gx#stx-e
                                                             _tl1592716013_)))
                                                       (let ((_hd1593216027_
                                                              (##car _e1593116024_))
                                                             (_tl1593316029_
                                                              (##cdr _e1593116024_)))
                                                         (if (gx#stx-null?
                                                              _tl1593316029_)
                                                             ((lambda (_L16032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16033_)
                        (if (if (gx#identifier? _L16033_)
                                (gxc#opt-lambda-expr? _L16032_)
                                '#f)
                            (let ((_g1604916079_
                                   (lambda (_g1605016076_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1605016076_))))
                              (let ((_g1604816174_
                                     (lambda (_g1605016082_)
                                       (if (gx#stx-pair? _g1605016082_)
                                           (let ((_e1605416084_
                                                  (gx#stx-e _g1605016082_)))
                                             (let ((_hd1605516087_
                                                    (##car _e1605416084_))
                                                   (_tl1605616089_
                                                    (##cdr _e1605416084_)))
                                               (if (gx#stx-pair?
                                                    _tl1605616089_)
                                                   (let ((_e1605716092_
                                                          (gx#stx-e
                                                           _tl1605616089_)))
                                                     (let ((_hd1605816095_
                                                            (##car _e1605716092_))
                                                           (_tl1605916097_
                                                            (##cdr _e1605716092_)))
                                                       (if (gx#stx-pair?
                                                            _hd1605816095_)
                                                           (let ((_e1606016100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1605816095_)))
                     (let ((_hd1606116103_ (##car _e1606016100_))
                           (_tl1606216105_ (##cdr _e1606016100_)))
                       (if (gx#stx-pair? _hd1606116103_)
                           (let ((_e1606316108_ (gx#stx-e _hd1606116103_)))
                             (let ((_hd1606416111_ (##car _e1606316108_))
                                   (_tl1606516113_ (##cdr _e1606316108_)))
                               (if (gx#stx-pair? _hd1606416111_)
                                   (let ((_e1606616116_
                                          (gx#stx-e _hd1606416111_)))
                                     (let ((_hd1606716119_
                                            (##car _e1606616116_))
                                           (_tl1606816121_
                                            (##cdr _e1606616116_)))
                                       (if (gx#stx-null? _tl1606816121_)
                                           (if (gx#stx-pair? _tl1606516113_)
                                               (let ((_e1606916124_
                                                      (gx#stx-e
                                                       _tl1606516113_)))
                                                 (let ((_hd1607016127_
                                                        (##car _e1606916124_))
                                                       (_tl1607116129_
                                                        (##cdr _e1606916124_)))
                                                   (if (gx#stx-null?
                                                        _tl1607116129_)
                                                       (if (gx#stx-null?
                                                            _tl1606216105_)
                                                           (if (gx#stx-pair?
                                                                _tl1605916097_)
                                                               (let ((_e1607216132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1605916097_)))
                         (let ((_hd1607316135_ (##car _e1607216132_))
                               (_tl1607416137_ (##cdr _e1607216132_)))
                           (if (gx#stx-null? _tl1607416137_)
                               ((lambda (_L16140_ _L16141_ _L16142_)
                                  (let ((_lambda-id16166_
                                         (make-symbol
                                          (gx#stx-e _L16033_)
                                          '"__"
                                          (gx#stx-e _L16142_))))
                                    (let ((_lambda-id16168_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16166_
                                            (gx#stx-source _stx15898_))))
                                      (let ((_g19424_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16168_)))
                                        (let ((_new-case-lambda-expr16171_
                                               (gxc#apply-expression-subst
                                                _L16140_
                                                _L16142_
                                                _lambda-id16168_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L16033_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16168_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16168_ '())
                                (cons (gxc#compile-e _L16141_) '())))
                    _stx15898_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L16033_ '())
                                       (cons _new-case-lambda-expr16171_ '())))
                           _stx15898_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15898_))))))))
                                _hd1607316135_
                                _hd1607016127_
                                _hd1606716119_)
                               (_g1604916079_ _g1605016082_))))
                       (_g1604916079_ _g1605016082_))
                   (_g1604916079_ _g1605016082_))
               (_g1604916079_ _g1605016082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1604916079_ _g1605016082_))
                                           (_g1604916079_ _g1605016082_))))
                                   (_g1604916079_ _g1605016082_))))
                           (_g1604916079_ _g1605016082_))))
                   (_g1604916079_ _g1605016082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1604916079_
                                                    _g1605016082_))))
                                           (_g1604916079_ _g1605016082_)))))
                                (_g1604816174_ _L16032_)))
                            (_g1590315995_ _g1590515998_)))
                      _hd1593216027_
                      _hd1592916019_)
                     (_g1590315995_ _g1590515998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1590315995_
                                                      _g1590515998_))
                                                 (_g1590315995_
                                                  _g1590515998_))))
                                         (_g1590315995_ _g1590515998_))))
                                 (_g1590315995_ _g1590515998_))))
                         (_g1590315995_ _g1590515998_)))))
              (let ((_g1590116302_
                     (lambda (_g1590516180_)
                       (if (gx#stx-pair? _g1590516180_)
                           (let ((_e1590816182_ (gx#stx-e _g1590516180_)))
                             (let ((_hd1590916185_ (##car _e1590816182_))
                                   (_tl1591016187_ (##cdr _e1590816182_)))
                               (if (gx#stx-pair? _tl1591016187_)
                                   (let ((_e1591116190_
                                          (gx#stx-e _tl1591016187_)))
                                     (let ((_hd1591216193_
                                            (##car _e1591116190_))
                                           (_tl1591316195_
                                            (##cdr _e1591116190_)))
                                       (if (gx#stx-pair? _hd1591216193_)
                                           (let ((_e1591416198_
                                                  (gx#stx-e _hd1591216193_)))
                                             (let ((_hd1591516201_
                                                    (##car _e1591416198_))
                                                   (_tl1591616203_
                                                    (##cdr _e1591416198_)))
                                               (if (gx#stx-null?
                                                    _tl1591616203_)
                                                   (if (gx#stx-pair?
                                                        _tl1591316195_)
                                                       (let ((_e1591716206_
                                                              (gx#stx-e
                                                               _tl1591316195_)))
                                                         (let ((_hd1591816209_
                                                                (##car _e1591716206_))
                                                               (_tl1591916211_
                                                                (##cdr _e1591716206_)))
                                                           (if (gx#stx-null?
                                                                _tl1591916211_)
                                                               ((lambda (_L16214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16215_)
                          (if (if (gx#identifier? _L16215_)
                                  (gxc#case-lambda-expr? _L16214_)
                                  '#f)
                              (let ((_g1623216246_
                                     (lambda (_g1623316243_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1623316243_))))
                                (let ((_g1623116277_
                                       (lambda (_g1623316249_)
                                         (if (gx#stx-pair? _g1623316249_)
                                             (let ((_e1623916251_
                                                    (gx#stx-e _g1623316249_)))
                                               (let ((_hd1624016254_
                                                      (##car _e1623916251_))
                                                     (_tl1624116256_
                                                      (##cdr _e1623916251_)))
                                                 ((lambda (_L16259_)
                                                    (let ((_g19425_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15898_
                                                            _L16215_
                                                            _L16259_)))
                                                      (begin
                                                        (let ((_g19426_
                                                               (values-count
                                                                _g19425_)))
                                                          (if (not (fx= _g19426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19426_)))
                (let ((_ids16269_ (values-ref _g19425_ 0))
                      (_impls16270_ (values-ref _g19425_ 1))
                      (_clauses16271_ (values-ref _g19425_ 2)))
                  (let ((_g19427_ (for-each gx#core-bind-runtime! _ids16269_)))
                    (let ((_defs16274_
                           (map _case-lambda-clause-def15900_
                                _ids16269_
                                _impls16270_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16215_)
                           '" => "
                           (map gxc#identifier-symbol _ids16269_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16215_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16271_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15898_)
                                               '())
                                         _defs16274_))
                           _stx15898_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1624116256_)))
                                             (_g1623216246_ _g1623316249_)))))
                                  (let ((_g1623016299_
                                         (lambda (_g1623316280_)
                                           (if (gx#stx-pair? _g1623316280_)
                                               (let ((_e1623516282_
                                                      (gx#stx-e
                                                       _g1623316280_)))
                                                 (let ((_hd1623616285_
                                                        (##car _e1623516282_))
                                                       (_tl1623716287_
                                                        (##cdr _e1623516282_)))
                                                   ((lambda (_L16290_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16290_)
                  _stx15898_
                  (_g1623116277_ _g1623316280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1623716287_)))
                                               (_g1623116277_
                                                _g1623316280_)))))
                                    (_g1623016299_ _L16214_))))
                              (_g1590216177_ _g1590516180_)))
                        _hd1591816209_
                        _hd1591516201_)
                       (_g1590216177_ _g1590516180_))))
               (_g1590216177_ _g1590516180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1590216177_
                                                    _g1590516180_))))
                                           (_g1590216177_ _g1590516180_))))
                                   (_g1590216177_ _g1590516180_))))
                           (_g1590216177_ _g1590516180_)))))
                (_g1590116302_ _stx15898_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15321_)
      (let ((_bind-e__opt-lambda15880__1937419375_
             (lambda (_id15882_ _expr15883_ _compile?15884_)
               (cons (cons _id15882_ '())
                     (cons (if _compile?15884_
                               (gxc#compile-e _expr15883_)
                               _expr15883_)
                           '())))))
        (let ((_bind-e__0__1937619377_
               (lambda (_id15889_ _expr15890_)
                 (let ((_compile?15892_ '#t))
                   (_bind-e__opt-lambda15880__1937419375_
                    _id15889_
                    _expr15890_
                    _compile?15892_)))))
          (let ((_bind-e15323_
                 (lambda _g19437_
                   (let ((_g19436_ (length _g19437_)))
                     (cond ((fx= _g19436_ 2)
                            (apply _bind-e__0__1937619377_ _g19437_))
                           ((fx= _g19436_ 3)
                            (apply _bind-e__opt-lambda15880__1937419375_
                                   _g19437_))
                           (else
                            (error "No clause matching arguments"
                                   _g19437_)))))))
            (let ((_compile-bindings15324_
                   (lambda (_rest15466_)
                     ((letrec ((_lp15468_
                                (lambda (_rest15470_
                                         _lift115471_
                                         _lift215472_
                                         _bind15473_)
                                  (let ((_rest1547415482_ _rest15470_))
                                    (let ((_E1547715486_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1547415482_))))
                                      (let ((_else1547615490_
                                             (lambda ()
                                               (values (reverse _lift115471_)
                                                       (reverse _lift215472_)
                                                       (reverse _bind15473_)))))
                                        (let ((_K1547815869_
                                               (lambda (_rest15493_ _hd15494_)
                                                 (let ((_g1549815534_
                                                        (lambda (_g1549915531_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1549915531_))))
                                                   (let ((_g1549715575_
                                                          (lambda (_g1549915537_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1549915537_)
                        (let ((_e1552415539_ (gx#stx-e _g1549915537_)))
                          (let ((_hd1552515542_ (##car _e1552415539_))
                                (_tl1552615544_ (##cdr _e1552415539_)))
                            (if (gx#stx-pair? _tl1552615544_)
                                (let ((_e1552715547_
                                       (gx#stx-e _tl1552615544_)))
                                  (let ((_hd1552815550_ (##car _e1552715547_))
                                        (_tl1552915552_ (##cdr _e1552715547_)))
                                    (if (gx#stx-null? _tl1552915552_)
                                        ((lambda (_L15555_ _L15556_)
                                           (_lp15468_
                                            _rest15493_
                                            _lift115471_
                                            _lift215472_
                                            (cons (cons _L15556_
                                                        (cons (gxc#compile-e
                                                               _L15555_)
                                                              '()))
                                                  _bind15473_)))
                                         _hd1552815550_
                                         _hd1552515542_)
                                        (_g1549815534_ _g1549915537_))))
                                (_g1549815534_ _g1549915537_))))
                        (_g1549815534_ _g1549915537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1549615747_
                                                            (lambda (_g1549915578_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1549915578_)
                          (let ((_e1551315580_ (gx#stx-e _g1549915578_)))
                            (let ((_hd1551415583_ (##car _e1551315580_))
                                  (_tl1551515585_ (##cdr _e1551315580_)))
                              (if (gx#stx-pair? _hd1551415583_)
                                  (let ((_e1551615588_
                                         (gx#stx-e _hd1551415583_)))
                                    (let ((_hd1551715591_
                                           (##car _e1551615588_))
                                          (_tl1551815593_
                                           (##cdr _e1551615588_)))
                                      (if (gx#stx-null? _tl1551815593_)
                                          (if (gx#stx-pair? _tl1551515585_)
                                              (let ((_e1551915596_
                                                     (gx#stx-e
                                                      _tl1551515585_)))
                                                (let ((_hd1552015599_
                                                       (##car _e1551915596_))
                                                      (_tl1552115601_
                                                       (##cdr _e1551915596_)))
                                                  (if (gx#stx-null?
                                                       _tl1552115601_)
                                                      ((lambda (_L15604_
                                                                _L15605_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15605_)
                         (gxc#opt-lambda-expr? _L15604_)
                         '#f)
                     (let ((_g1561915649_
                            (lambda (_g1562015646_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1562015646_))))
                       (let ((_g1561815744_
                              (lambda (_g1562015652_)
                                (if (gx#stx-pair? _g1562015652_)
                                    (let ((_e1562415654_
                                           (gx#stx-e _g1562015652_)))
                                      (let ((_hd1562515657_
                                             (##car _e1562415654_))
                                            (_tl1562615659_
                                             (##cdr _e1562415654_)))
                                        (if (gx#stx-pair? _tl1562615659_)
                                            (let ((_e1562715662_
                                                   (gx#stx-e _tl1562615659_)))
                                              (let ((_hd1562815665_
                                                     (##car _e1562715662_))
                                                    (_tl1562915667_
                                                     (##cdr _e1562715662_)))
                                                (if (gx#stx-pair?
                                                     _hd1562815665_)
                                                    (let ((_e1563015670_
                                                           (gx#stx-e
                                                            _hd1562815665_)))
                                                      (let ((_hd1563115673_
                                                             (##car _e1563015670_))
                                                            (_tl1563215675_
                                                             (##cdr _e1563015670_)))
                                                        (if (gx#stx-pair?
                                                             _hd1563115673_)
                                                            (let ((_e1563315678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1563115673_)))
                      (let ((_hd1563415681_ (##car _e1563315678_))
                            (_tl1563515683_ (##cdr _e1563315678_)))
                        (if (gx#stx-pair? _hd1563415681_)
                            (let ((_e1563615686_ (gx#stx-e _hd1563415681_)))
                              (let ((_hd1563715689_ (##car _e1563615686_))
                                    (_tl1563815691_ (##cdr _e1563615686_)))
                                (if (gx#stx-null? _tl1563815691_)
                                    (if (gx#stx-pair? _tl1563515683_)
                                        (let ((_e1563915694_
                                               (gx#stx-e _tl1563515683_)))
                                          (let ((_hd1564015697_
                                                 (##car _e1563915694_))
                                                (_tl1564115699_
                                                 (##cdr _e1563915694_)))
                                            (if (gx#stx-null? _tl1564115699_)
                                                (if (gx#stx-null?
                                                     _tl1563215675_)
                                                    (if (gx#stx-pair?
                                                         _tl1562915667_)
                                                        (let ((_e1564215702_
                                                               (gx#stx-e
                                                                _tl1562915667_)))
                                                          (let ((_hd1564315705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1564215702_))
                        (_tl1564415707_ (##cdr _e1564215702_)))
                    (if (gx#stx-null? _tl1564415707_)
                        ((lambda (_L15710_ _L15711_ _L15712_)
                           (let ((_lambda-id15736_
                                  (make-symbol
                                   (gx#stx-e _L15605_)
                                   '"__"
                                   (gx#stx-e _L15712_)
                                   (gensym '__))))
                             (let ((_lambda-id15738_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15736_
                                     (gx#stx-source _stx15321_))))
                               (let ((_g19432_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15738_)))
                                 (let ((_new-case-lambda-expr15741_
                                        (gxc#apply-expression-subst
                                         _L15710_
                                         _L15712_
                                         _lambda-id15738_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15605_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15738_))
                                       (_lp15468_
                                        (cons (_bind-e__opt-lambda15880__1937419375_
                                               _L15605_
                                               _new-case-lambda-expr15741_
                                               '#f)
                                              _rest15493_)
                                        (cons (_bind-e__0__1937619377_
                                               _lambda-id15738_
                                               _L15711_)
                                              _lift115471_)
                                        _lift215472_
                                        _bind15473_))))))))
                         _hd1564315705_
                         _hd1564015697_
                         _hd1563715689_)
                        (_g1561915649_ _g1562015652_))))
                (_g1561915649_ _g1562015652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1561915649_
                                                     _g1562015652_))
                                                (_g1561915649_
                                                 _g1562015652_))))
                                        (_g1561915649_ _g1562015652_))
                                    (_g1561915649_ _g1562015652_))))
                            (_g1561915649_ _g1562015652_))))
                    (_g1561915649_ _g1562015652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1561915649_
                                                     _g1562015652_))))
                                            (_g1561915649_ _g1562015652_))))
                                    (_g1561915649_ _g1562015652_)))))
                         (_g1561815744_ _L15604_)))
                     (_g1549715575_ _g1549915578_)))
               _hd1552015599_
               _hd1551715591_)
              (_g1549715575_ _g1549915578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1549715575_ _g1549915578_))
                                          (_g1549715575_ _g1549915578_))))
                                  (_g1549715575_ _g1549915578_))))
                          (_g1549715575_ _g1549915578_)))))
               (let ((_g1549515866_
                      (lambda (_g1549915750_)
                        (if (gx#stx-pair? _g1549915750_)
                            (let ((_e1550215752_ (gx#stx-e _g1549915750_)))
                              (let ((_hd1550315755_ (##car _e1550215752_))
                                    (_tl1550415757_ (##cdr _e1550215752_)))
                                (if (gx#stx-pair? _hd1550315755_)
                                    (let ((_e1550515760_
                                           (gx#stx-e _hd1550315755_)))
                                      (let ((_hd1550615763_
                                             (##car _e1550515760_))
                                            (_tl1550715765_
                                             (##cdr _e1550515760_)))
                                        (if (gx#stx-null? _tl1550715765_)
                                            (if (gx#stx-pair? _tl1550415757_)
                                                (let ((_e1550815768_
                                                       (gx#stx-e
                                                        _tl1550415757_)))
                                                  (let ((_hd1550915771_
                                                         (##car _e1550815768_))
                                                        (_tl1551015773_
                                                         (##cdr _e1550815768_)))
                                                    (if (gx#stx-null?
                                                         _tl1551015773_)
                                                        ((lambda (_L15776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15777_)
                   (if (if (gx#identifier? _L15777_)
                           (gxc#case-lambda-expr? _L15776_)
                           '#f)
                       (let ((_g1579215806_
                              (lambda (_g1579315803_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1579315803_))))
                         (let ((_g1579115841_
                                (lambda (_g1579315809_)
                                  (if (gx#stx-pair? _g1579315809_)
                                      (let ((_e1579915811_
                                             (gx#stx-e _g1579315809_)))
                                        (let ((_hd1580015814_
                                               (##car _e1579915811_))
                                              (_tl1580115816_
                                               (##cdr _e1579915811_)))
                                          ((lambda (_L15819_)
                                             (let ((_g19433_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16307
                                                     _stx15321_
                                                     _L15777_
                                                     _L15819_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19434_
                                                        (values-count
                                                         _g19433_)))
                                                   (if (not (fx= _g19434_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19434_)))
                                                 (let ((_ids15829_
                                                        (values-ref
                                                         _g19433_
                                                         0))
                                                       (_impls15830_
                                                        (values-ref
                                                         _g19433_
                                                         1))
                                                       (_clauses15831_
                                                        (values-ref
                                                         _g19433_
                                                         2)))
                                                   (let ((_g19435_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15829_)))
                                                     (let ((_xbind15834_
                                                            (map _bind-e15323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15829_
                         _impls15830_)))
               (let ((_expr*15836_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15831_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15838_
                        (_bind-e__opt-lambda15880__1937419375_
                         _L15777_
                         _expr*15836_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15777_)
                        '" => "
                        (map gxc#identifier-symbol _ids15829_))
                       (_lp15468_
                        _rest15493_
                        _lift115471_
                        (foldl1 cons _lift215472_ _xbind15834_)
                        (cons _bind*15838_ _bind15473_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1580115816_)))
                                      (_g1579215806_ _g1579315809_)))))
                           (let ((_g1579015863_
                                  (lambda (_g1579315844_)
                                    (if (gx#stx-pair? _g1579315844_)
                                        (let ((_e1579515846_
                                               (gx#stx-e _g1579315844_)))
                                          (let ((_hd1579615849_
                                                 (##car _e1579515846_))
                                                (_tl1579715851_
                                                 (##cdr _e1579515846_)))
                                            ((lambda (_L15854_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15854_)
                                                   (_lp15468_
                                                    _rest15493_
                                                    _lift115471_
                                                    _lift215472_
                                                    (cons (_bind-e__opt-lambda15880__1937419375_
                                                           _L15777_
                                                           _L15776_
                                                           '#f)
                                                          _bind15473_))
                                                   (_g1579115841_
                                                    _g1579315844_)))
                                             _tl1579715851_)))
                                        (_g1579115841_ _g1579315844_)))))
                             (_g1579015863_ _L15776_))))
                       (_g1549615747_ _g1549915750_)))
                 _hd1550915771_
                 _hd1550615763_)
                (_g1549615747_ _g1549915750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1549615747_ _g1549915750_))
                                            (_g1549615747_ _g1549915750_))))
                                    (_g1549615747_ _g1549915750_))))
                            (_g1549615747_ _g1549915750_)))))
                 (_g1549515866_ _hd15494_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1547415482_)
                                              (let ((_hd1547915872_
                                                     (##car _rest1547415482_))
                                                    (_tl1548015874_
                                                     (##cdr _rest1547415482_)))
                                                (let ((_hd15877_
                                                       _hd1547915872_))
                                                  (let ((_rest15879_
                                                         _tl1548015874_))
                                                    (_K1547815869_
                                                     _rest15879_
                                                     _hd15877_))))
                                              (_else1547615490_)))))))))
                        _lp15468_)
                      _rest15466_
                      '()
                      '()
                      '()))))
              (let ((_g1532715353_
                     (lambda (_g1532815350_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1532815350_))))
                (let ((_g1532615360_
                       (lambda (_g1532815356_)
                         ((lambda () (gxc#xform-let-values% _stx15321_))))))
                  (let ((_g1532515463_
                         (lambda (_g1532815363_)
                           (if (gx#stx-pair? _g1532815363_)
                               (let ((_e1533115365_ (gx#stx-e _g1532815363_)))
                                 (let ((_hd1533215368_ (##car _e1533115365_))
                                       (_tl1533315370_ (##cdr _e1533115365_)))
                                   (if (gx#stx-pair? _tl1533315370_)
                                       (let ((_e1533415373_
                                              (gx#stx-e _tl1533315370_)))
                                         (let ((_hd1533515376_
                                                (##car _e1533415373_))
                                               (_tl1533615378_
                                                (##cdr _e1533415373_)))
                                           (if (gx#stx-pair/null?
                                                _hd1533515376_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1533515376_)
                                                         '0)
                                                   (let ((_g19428_
                                                          (gx#syntax-split-splice
                                                           _hd1533515376_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19429_
                                                              (values-count
                                                               _g19428_)))
                                                         (if (not (fx= _g19429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19429_)))
               (let ((_target1533715381_ (values-ref _g19428_ 0))
                     (_tl1533915383_ (values-ref _g19428_ 1)))
                 (if (gx#stx-null? _tl1533915383_)
                     (letrec ((_loop1534015386_
                               (lambda (_hd1533815389_ _bind1534415391_)
                                 (if (gx#stx-pair? _hd1533815389_)
                                     (let ((_e1534115394_
                                            (gx#stx-e _hd1533815389_)))
                                       (let ((_lp-hd1534215397_
                                              (##car _e1534115394_))
                                             (_lp-tl1534315399_
                                              (##cdr _e1534115394_)))
                                         (_loop1534015386_
                                          _lp-tl1534315399_
                                          (cons _lp-hd1534215397_
                                                _bind1534415391_))))
                                     (let ((_bind1534515402_
                                            (reverse _bind1534415391_)))
                                       (if (gx#stx-pair? _tl1533615378_)
                                           (let ((_e1534615405_
                                                  (gx#stx-e _tl1533615378_)))
                                             (let ((_hd1534715408_
                                                    (##car _e1534615405_))
                                                   (_tl1534815410_
                                                    (##cdr _e1534615405_)))
                                               (if (gx#stx-null?
                                                    _tl1534815410_)
                                                   ((lambda (_L15413_ _L15414_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1543415437_ _g1543515439_)
                                      (cons _g1543415437_ _g1543515439_))
                                    '()
                                    _L15414_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19430_
                            (_compile-bindings15324_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1544215445_ _g1544315447_)
                                         (cons _g1544215445_ _g1544315447_))
                                       '()
                                       _L15414_)))))
                       (begin
                         (let ((_g19431_ (values-count _g19430_)))
                           (if (not (fx= _g19431_ 3))
                               (error "Context expects 3 values" _g19431_)))
                         (let ((_lift115450_ (values-ref _g19430_ 0))
                               (_lift215451_ (values-ref _g19430_ 1))
                               (_hd15452_ (values-ref _g19430_ 2)))
                           (let ((_body15454_ (gxc#compile-e _L15413_)))
                             (let ((_expr15456_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15452_
                                                 (cons _body15454_ '())))
                                     _stx15321_)))
                               (let ((_expr15458_
                                      (if (null? _lift215451_)
                                          _expr15456_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215451_
                                                       (cons _expr15456_ '())))
                                           _stx15321_))))
                                 (let ((_expr15460_
                                        (if (null? _lift115450_)
                                            _expr15458_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115450_
                                                         (cons _expr15458_
                                                               '())))
                                             _stx15321_))))
                                   (let () _expr15460_)))))))))
                   gx#current-expander-context
                   (let ((__obj19384 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19384)
                       __obj19384)))
                  (_g1532615360_ _g1532815363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1534715408_
                                                    _bind1534515402_)
                                                   (_g1532615360_
                                                    _g1532815363_))))
                                           (_g1532615360_ _g1532815363_)))))))
                       (_loop1534015386_ _target1533715381_ '()))
                     (_g1532615360_ _g1532815363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1532615360_
                                                    _g1532815363_))
                                               (_g1532615360_ _g1532815363_))))
                                       (_g1532615360_ _g1532815363_))))
                               (_g1532615360_ _g1532815363_)))))
                    (_g1532515463_ _stx15321_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14753_)
      (let ((_bind-e__opt-lambda15303__1937919380_
             (lambda (_id15305_ _expr15306_ _compile?15307_)
               (cons (cons _id15305_ '())
                     (cons (if _compile?15307_
                               (gxc#compile-e _expr15306_)
                               _expr15306_)
                           '())))))
        (let ((_bind-e__0__1938119382_
               (lambda (_id15312_ _expr15313_)
                 (let ((_compile?15315_ '#t))
                   (_bind-e__opt-lambda15303__1937919380_
                    _id15312_
                    _expr15313_
                    _compile?15315_)))))
          (let ((_bind-e14755_
                 (lambda _g19445_
                   (let ((_g19444_ (length _g19445_)))
                     (cond ((fx= _g19444_ 2)
                            (apply _bind-e__0__1938119382_ _g19445_))
                           ((fx= _g19444_ 3)
                            (apply _bind-e__opt-lambda15303__1937919380_
                                   _g19445_))
                           (else
                            (error "No clause matching arguments"
                                   _g19445_)))))))
            (let ((_compile-bindings14756_
                   (lambda (_rest14891_)
                     ((letrec ((_lp14893_
                                (lambda (_rest14895_ _bind14896_)
                                  (let ((_rest1489714905_ _rest14895_))
                                    (let ((_E1490014909_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1489714905_))))
                                      (let ((_else1489914913_
                                             (lambda ()
                                               (reverse _bind14896_))))
                                        (let ((_K1490115292_
                                               (lambda (_rest14916_ _hd14917_)
                                                 (let ((_g1492114957_
                                                        (lambda (_g1492214954_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1492214954_))))
                                                   (let ((_g1492014998_
                                                          (lambda (_g1492214960_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1492214960_)
                        (let ((_e1494714962_ (gx#stx-e _g1492214960_)))
                          (let ((_hd1494814965_ (##car _e1494714962_))
                                (_tl1494914967_ (##cdr _e1494714962_)))
                            (if (gx#stx-pair? _tl1494914967_)
                                (let ((_e1495014970_
                                       (gx#stx-e _tl1494914967_)))
                                  (let ((_hd1495114973_ (##car _e1495014970_))
                                        (_tl1495214975_ (##cdr _e1495014970_)))
                                    (if (gx#stx-null? _tl1495214975_)
                                        ((lambda (_L14978_ _L14979_)
                                           (_lp14893_
                                            _rest14916_
                                            (cons (cons _L14979_
                                                        (cons (gxc#compile-e
                                                               _L14978_)
                                                              '()))
                                                  _bind14896_)))
                                         _hd1495114973_
                                         _hd1494814965_)
                                        (_g1492114957_ _g1492214960_))))
                                (_g1492114957_ _g1492214960_))))
                        (_g1492114957_ _g1492214960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1491915170_
                                                            (lambda (_g1492215001_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1492215001_)
                          (let ((_e1493615003_ (gx#stx-e _g1492215001_)))
                            (let ((_hd1493715006_ (##car _e1493615003_))
                                  (_tl1493815008_ (##cdr _e1493615003_)))
                              (if (gx#stx-pair? _hd1493715006_)
                                  (let ((_e1493915011_
                                         (gx#stx-e _hd1493715006_)))
                                    (let ((_hd1494015014_
                                           (##car _e1493915011_))
                                          (_tl1494115016_
                                           (##cdr _e1493915011_)))
                                      (if (gx#stx-null? _tl1494115016_)
                                          (if (gx#stx-pair? _tl1493815008_)
                                              (let ((_e1494215019_
                                                     (gx#stx-e
                                                      _tl1493815008_)))
                                                (let ((_hd1494315022_
                                                       (##car _e1494215019_))
                                                      (_tl1494415024_
                                                       (##cdr _e1494215019_)))
                                                  (if (gx#stx-null?
                                                       _tl1494415024_)
                                                      ((lambda (_L15027_
                                                                _L15028_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15028_)
                         (gxc#opt-lambda-expr? _L15027_)
                         '#f)
                     (let ((_g1504215072_
                            (lambda (_g1504315069_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1504315069_))))
                       (let ((_g1504115167_
                              (lambda (_g1504315075_)
                                (if (gx#stx-pair? _g1504315075_)
                                    (let ((_e1504715077_
                                           (gx#stx-e _g1504315075_)))
                                      (let ((_hd1504815080_
                                             (##car _e1504715077_))
                                            (_tl1504915082_
                                             (##cdr _e1504715077_)))
                                        (if (gx#stx-pair? _tl1504915082_)
                                            (let ((_e1505015085_
                                                   (gx#stx-e _tl1504915082_)))
                                              (let ((_hd1505115088_
                                                     (##car _e1505015085_))
                                                    (_tl1505215090_
                                                     (##cdr _e1505015085_)))
                                                (if (gx#stx-pair?
                                                     _hd1505115088_)
                                                    (let ((_e1505315093_
                                                           (gx#stx-e
                                                            _hd1505115088_)))
                                                      (let ((_hd1505415096_
                                                             (##car _e1505315093_))
                                                            (_tl1505515098_
                                                             (##cdr _e1505315093_)))
                                                        (if (gx#stx-pair?
                                                             _hd1505415096_)
                                                            (let ((_e1505615101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1505415096_)))
                      (let ((_hd1505715104_ (##car _e1505615101_))
                            (_tl1505815106_ (##cdr _e1505615101_)))
                        (if (gx#stx-pair? _hd1505715104_)
                            (let ((_e1505915109_ (gx#stx-e _hd1505715104_)))
                              (let ((_hd1506015112_ (##car _e1505915109_))
                                    (_tl1506115114_ (##cdr _e1505915109_)))
                                (if (gx#stx-null? _tl1506115114_)
                                    (if (gx#stx-pair? _tl1505815106_)
                                        (let ((_e1506215117_
                                               (gx#stx-e _tl1505815106_)))
                                          (let ((_hd1506315120_
                                                 (##car _e1506215117_))
                                                (_tl1506415122_
                                                 (##cdr _e1506215117_)))
                                            (if (gx#stx-null? _tl1506415122_)
                                                (if (gx#stx-null?
                                                     _tl1505515098_)
                                                    (if (gx#stx-pair?
                                                         _tl1505215090_)
                                                        (let ((_e1506515125_
                                                               (gx#stx-e
                                                                _tl1505215090_)))
                                                          (let ((_hd1506615128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1506515125_))
                        (_tl1506715130_ (##cdr _e1506515125_)))
                    (if (gx#stx-null? _tl1506715130_)
                        ((lambda (_L15133_ _L15134_ _L15135_)
                           (let ((_lambda-id15159_
                                  (make-symbol
                                   (gx#stx-e _L15028_)
                                   '"__"
                                   (gx#stx-e _L15135_)
                                   (gensym '__))))
                             (let ((_lambda-id15161_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15159_
                                     (gx#stx-source _stx14753_))))
                               (let ((_g19440_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15161_)))
                                 (let ((_new-case-lambda-expr15164_
                                        (gxc#apply-expression-subst
                                         _L15133_
                                         _L15135_
                                         _lambda-id15161_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15028_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15161_))
                                       (_lp14893_
                                        (cons (_bind-e__opt-lambda15303__1937919380_
                                               _L15028_
                                               _new-case-lambda-expr15164_
                                               '#f)
                                              _rest14916_)
                                        (cons (_bind-e__0__1938119382_
                                               _lambda-id15161_
                                               _L15134_)
                                              _bind14896_)))))))))
                         _hd1506615128_
                         _hd1506315120_
                         _hd1506015112_)
                        (_g1504215072_ _g1504315075_))))
                (_g1504215072_ _g1504315075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1504215072_
                                                     _g1504315075_))
                                                (_g1504215072_
                                                 _g1504315075_))))
                                        (_g1504215072_ _g1504315075_))
                                    (_g1504215072_ _g1504315075_))))
                            (_g1504215072_ _g1504315075_))))
                    (_g1504215072_ _g1504315075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1504215072_
                                                     _g1504315075_))))
                                            (_g1504215072_ _g1504315075_))))
                                    (_g1504215072_ _g1504315075_)))))
                         (_g1504115167_ _L15027_)))
                     (_g1492014998_ _g1492215001_)))
               _hd1494315022_
               _hd1494015014_)
              (_g1492014998_ _g1492215001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1492014998_ _g1492215001_))
                                          (_g1492014998_ _g1492215001_))))
                                  (_g1492014998_ _g1492215001_))))
                          (_g1492014998_ _g1492215001_)))))
               (let ((_g1491815289_
                      (lambda (_g1492215173_)
                        (if (gx#stx-pair? _g1492215173_)
                            (let ((_e1492515175_ (gx#stx-e _g1492215173_)))
                              (let ((_hd1492615178_ (##car _e1492515175_))
                                    (_tl1492715180_ (##cdr _e1492515175_)))
                                (if (gx#stx-pair? _hd1492615178_)
                                    (let ((_e1492815183_
                                           (gx#stx-e _hd1492615178_)))
                                      (let ((_hd1492915186_
                                             (##car _e1492815183_))
                                            (_tl1493015188_
                                             (##cdr _e1492815183_)))
                                        (if (gx#stx-null? _tl1493015188_)
                                            (if (gx#stx-pair? _tl1492715180_)
                                                (let ((_e1493115191_
                                                       (gx#stx-e
                                                        _tl1492715180_)))
                                                  (let ((_hd1493215194_
                                                         (##car _e1493115191_))
                                                        (_tl1493315196_
                                                         (##cdr _e1493115191_)))
                                                    (if (gx#stx-null?
                                                         _tl1493315196_)
                                                        ((lambda (_L15199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15200_)
                   (if (if (gx#identifier? _L15200_)
                           (gxc#case-lambda-expr? _L15199_)
                           '#f)
                       (let ((_g1521515229_
                              (lambda (_g1521615226_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1521615226_))))
                         (let ((_g1521415264_
                                (lambda (_g1521615232_)
                                  (if (gx#stx-pair? _g1521615232_)
                                      (let ((_e1522215234_
                                             (gx#stx-e _g1521615232_)))
                                        (let ((_hd1522315237_
                                               (##car _e1522215234_))
                                              (_tl1522415239_
                                               (##cdr _e1522215234_)))
                                          ((lambda (_L15242_)
                                             (let ((_g19441_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16307
                                                     _stx14753_
                                                     _L15200_
                                                     _L15242_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19442_
                                                        (values-count
                                                         _g19441_)))
                                                   (if (not (fx= _g19442_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19442_)))
                                                 (let ((_ids15252_
                                                        (values-ref
                                                         _g19441_
                                                         0))
                                                       (_impls15253_
                                                        (values-ref
                                                         _g19441_
                                                         1))
                                                       (_clauses15254_
                                                        (values-ref
                                                         _g19441_
                                                         2)))
                                                   (let ((_g19443_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15252_)))
                                                     (let ((_xbind15257_
                                                            (map _bind-e14755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15252_
                         _impls15253_)))
               (let ((_expr*15259_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15254_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15261_
                        (_bind-e__opt-lambda15303__1937919380_
                         _L15200_
                         _expr*15259_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15200_)
                        '" => "
                        (map gxc#identifier-symbol _ids15252_))
                       (_lp14893_
                        _rest14916_
                        (cons _bind*15261_
                              (foldl1 cons
                                      _bind14896_
                                      _xbind15257_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1522415239_)))
                                      (_g1521515229_ _g1521615232_)))))
                           (let ((_g1521315286_
                                  (lambda (_g1521615267_)
                                    (if (gx#stx-pair? _g1521615267_)
                                        (let ((_e1521815269_
                                               (gx#stx-e _g1521615267_)))
                                          (let ((_hd1521915272_
                                                 (##car _e1521815269_))
                                                (_tl1522015274_
                                                 (##cdr _e1521815269_)))
                                            ((lambda (_L15277_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15277_)
                                                   (_lp14893_
                                                    _rest14916_
                                                    (cons (_bind-e__opt-lambda15303__1937919380_
                                                           _L15200_
                                                           _L15199_
                                                           '#f)
                                                          _bind14896_))
                                                   (_g1521415264_
                                                    _g1521615267_)))
                                             _tl1522015274_)))
                                        (_g1521415264_ _g1521615267_)))))
                             (_g1521315286_ _L15199_))))
                       (_g1491915170_ _g1492215173_)))
                 _hd1493215194_
                 _hd1492915186_)
                (_g1491915170_ _g1492215173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1491915170_ _g1492215173_))
                                            (_g1491915170_ _g1492215173_))))
                                    (_g1491915170_ _g1492215173_))))
                            (_g1491915170_ _g1492215173_)))))
                 (_g1491815289_ _hd14917_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1489714905_)
                                              (let ((_hd1490215295_
                                                     (##car _rest1489714905_))
                                                    (_tl1490315297_
                                                     (##cdr _rest1489714905_)))
                                                (let ((_hd15300_
                                                       _hd1490215295_))
                                                  (let ((_rest15302_
                                                         _tl1490315297_))
                                                    (_K1490115292_
                                                     _rest15302_
                                                     _hd15300_))))
                                              (_else1489914913_)))))))))
                        _lp14893_)
                      _rest14891_
                      '()))))
              (let ((_g1475914786_
                     (lambda (_g1476014783_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1476014783_))))
                (let ((_g1475814793_
                       (lambda (_g1476014789_)
                         ((lambda () (gxc#xform-let-values% _stx14753_))))))
                  (let ((_g1475714888_
                         (lambda (_g1476014796_)
                           (if (gx#stx-pair? _g1476014796_)
                               (let ((_e1476414798_ (gx#stx-e _g1476014796_)))
                                 (let ((_hd1476514801_ (##car _e1476414798_))
                                       (_tl1476614803_ (##cdr _e1476414798_)))
                                   (if (gx#stx-pair? _tl1476614803_)
                                       (let ((_e1476714806_
                                              (gx#stx-e _tl1476614803_)))
                                         (let ((_hd1476814809_
                                                (##car _e1476714806_))
                                               (_tl1476914811_
                                                (##cdr _e1476714806_)))
                                           (if (gx#stx-pair/null?
                                                _hd1476814809_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1476814809_)
                                                         '0)
                                                   (let ((_g19438_
                                                          (gx#syntax-split-splice
                                                           _hd1476814809_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19439_
                                                              (values-count
                                                               _g19438_)))
                                                         (if (not (fx= _g19439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19439_)))
               (let ((_target1477014814_ (values-ref _g19438_ 0))
                     (_tl1477214816_ (values-ref _g19438_ 1)))
                 (if (gx#stx-null? _tl1477214816_)
                     (letrec ((_loop1477314819_
                               (lambda (_hd1477114822_ _bind1477714824_)
                                 (if (gx#stx-pair? _hd1477114822_)
                                     (let ((_e1477414827_
                                            (gx#stx-e _hd1477114822_)))
                                       (let ((_lp-hd1477514830_
                                              (##car _e1477414827_))
                                             (_lp-tl1477614832_
                                              (##cdr _e1477414827_)))
                                         (_loop1477314819_
                                          _lp-tl1477614832_
                                          (cons _lp-hd1477514830_
                                                _bind1477714824_))))
                                     (let ((_bind1477814835_
                                            (reverse _bind1477714824_)))
                                       (if (gx#stx-pair? _tl1476914811_)
                                           (let ((_e1477914838_
                                                  (gx#stx-e _tl1476914811_)))
                                             (let ((_hd1478014841_
                                                    (##car _e1477914838_))
                                                   (_tl1478114843_
                                                    (##cdr _e1477914838_)))
                                               (if (gx#stx-null?
                                                    _tl1478114843_)
                                                   ((lambda (_L14846_
                                                             _L14847_
                                                             _L14848_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1486914872_ _g1487014874_)
                                      (cons _g1486914872_ _g1487014874_))
                                    '()
                                    _L14847_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14885_
                            (_compile-bindings14756_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1487714880_ _g1487814882_)
                                         (cons _g1487714880_ _g1487814882_))
                                       '()
                                       _L14847_))))
                           (_body14886_ (gxc#compile-e _L14846_)))
                       (gxc#xform-wrap-source
                        (cons _L14848_ (cons _hd14885_ (cons _body14886_ '())))
                        _stx14753_)))
                   gx#current-expander-context
                   (let ((__obj19385 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19385)
                       __obj19385)))
                  (_g1475814793_ _g1476014796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1478014841_
                                                    _bind1477814835_
                                                    _hd1476514801_)
                                                   (_g1475814793_
                                                    _g1476014796_))))
                                           (_g1475814793_ _g1476014796_)))))))
                       (_loop1477314819_ _target1477014814_ '()))
                     (_g1475814793_ _g1476014796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1475814793_
                                                    _g1476014796_))
                                               (_g1475814793_ _g1476014796_))))
                                       (_g1475814793_ _g1476014796_))))
                               (_g1475814793_ _g1476014796_)))))
                    (_g1475714888_ _stx14753_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14674_)
      (let ((_g1467714694_
             (lambda (_g1467814691_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1467814691_))))
        (let ((_g1467614701_ (lambda (_g1467814697_) ((lambda () '#f)))))
          (let ((_g1467514750_
                 (lambda (_g1467814704_)
                   (if (gx#stx-pair? _g1467814704_)
                       (let ((_e1468114706_ (gx#stx-e _g1467814704_)))
                         (let ((_hd1468214709_ (##car _e1468114706_))
                               (_tl1468314711_ (##cdr _e1468114706_)))
                           (if (gx#stx-pair? _hd1468214709_)
                               (let ((_e1468414714_ (gx#stx-e _hd1468214709_)))
                                 (let ((_hd1468514717_ (##car _e1468414714_))
                                       (_tl1468614719_ (##cdr _e1468414714_)))
                                   (if (gx#stx-null? _tl1468614719_)
                                       (if (gx#stx-pair? _tl1468314711_)
                                           (let ((_e1468714722_
                                                  (gx#stx-e _tl1468314711_)))
                                             (let ((_hd1468814725_
                                                    (##car _e1468714722_))
                                                   (_tl1468914727_
                                                    (##cdr _e1468714722_)))
                                               (if (gx#stx-null?
                                                    _tl1468914727_)
                                                   ((lambda (_L14730_ _L14731_)
                                                      (if (gx#identifier?
                                                           _L14731_)
                                                          (let ((_$e14747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14730_)))
                    (if _$e14747_ _$e14747_ (gxc#opt-lambda-expr? _L14730_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1468814725_
                                                    _hd1468514717_)
                                                   (_g1467614701_
                                                    _g1467814704_))))
                                           (_g1467614701_ _g1467814704_))
                                       (_g1467614701_ _g1467814704_))))
                               (_g1467614701_ _g1467814704_))))
                       (_g1467614701_ _g1467814704_)))))
            (_g1467514750_ _bind14674_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14612_ _id14613_ _new-id14614_)
      (let ((_g1461714630_
             (lambda (_g1461814627_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1461814627_))))
        (let ((_g1461614637_
               (lambda (_g1461814633_) ((lambda () _stx14612_)))))
          (let ((_g1461514671_
                 (lambda (_g1461814640_)
                   (if (gx#stx-pair? _g1461814640_)
                       (let ((_e1462014642_ (gx#stx-e _g1461814640_)))
                         (let ((_hd1462114645_ (##car _e1462014642_))
                               (_tl1462214647_ (##cdr _e1462014642_)))
                           (if (gx#stx-pair? _tl1462214647_)
                               (let ((_e1462314650_ (gx#stx-e _tl1462214647_)))
                                 (let ((_hd1462414653_ (##car _e1462314650_))
                                       (_tl1462514655_ (##cdr _e1462314650_)))
                                   (if (gx#stx-null? _tl1462514655_)
                                       ((lambda (_L14658_)
                                          (if (gx#free-identifier=?
                                               _L14658_
                                               _id14613_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14614_ '()))
                                               _stx14612_)
                                              (_g1461614637_ _g1461814640_)))
                                        _hd1462414653_)
                                       (_g1461614637_ _g1461814640_))))
                               (_g1461614637_ _g1461814640_))))
                       (_g1461614637_ _g1461814640_)))))
            (_g1461514671_ _stx14612_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14468_)
      (let ((_g1447114502_
             (lambda (_g1447214499_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1447214499_))))
        (let ((_g1447014547_
               (lambda (_g1447214505_)
                 (if (gx#stx-pair? _g1447214505_)
                     (let ((_e1448914507_ (gx#stx-e _g1447214505_)))
                       (let ((_hd1449014510_ (##car _e1448914507_))
                             (_tl1449114512_ (##cdr _e1448914507_)))
                         (if (gx#stx-pair? _tl1449114512_)
                             (let ((_e1449214515_ (gx#stx-e _tl1449114512_)))
                               (let ((_hd1449314518_ (##car _e1449214515_))
                                     (_tl1449414520_ (##cdr _e1449214515_)))
                                 (if (gx#stx-pair? _tl1449414520_)
                                     (let ((_e1449514523_
                                            (gx#stx-e _tl1449414520_)))
                                       (let ((_hd1449614526_
                                              (##car _e1449514523_))
                                             (_tl1449714528_
                                              (##cdr _e1449514523_)))
                                         (if (gx#stx-null? _tl1449714528_)
                                             ((lambda (_L14531_ _L14532_)
                                                (gxc#compile-e _L14531_))
                                              _hd1449614526_
                                              _hd1449314518_)
                                             (_g1447114502_ _g1447214505_))))
                                     (_g1447114502_ _g1447214505_))))
                             (_g1447114502_ _g1447214505_))))
                     (_g1447114502_ _g1447214505_)))))
          (let ((_g1446914609_
                 (lambda (_g1447214550_)
                   (if (gx#stx-pair? _g1447214550_)
                       (let ((_e1447514552_ (gx#stx-e _g1447214550_)))
                         (let ((_hd1447614555_ (##car _e1447514552_))
                               (_tl1447714557_ (##cdr _e1447514552_)))
                           (if (gx#stx-pair? _tl1447714557_)
                               (let ((_e1447814560_ (gx#stx-e _tl1447714557_)))
                                 (let ((_hd1447914563_ (##car _e1447814560_))
                                       (_tl1448014565_ (##cdr _e1447814560_)))
                                   (if (gx#stx-pair? _hd1447914563_)
                                       (let ((_e1448114568_
                                              (gx#stx-e _hd1447914563_)))
                                         (let ((_hd1448214571_
                                                (##car _e1448114568_))
                                               (_tl1448314573_
                                                (##cdr _e1448114568_)))
                                           (if (gx#stx-null? _tl1448314573_)
                                               (if (gx#stx-pair?
                                                    _tl1448014565_)
                                                   (let ((_e1448414576_
                                                          (gx#stx-e
                                                           _tl1448014565_)))
                                                     (let ((_hd1448514579_
                                                            (##car _e1448414576_))
                                                           (_tl1448614581_
                                                            (##cdr _e1448414576_)))
                                                       (if (gx#stx-null?
                                                            _tl1448614581_)
                                                           ((lambda (_L14584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14585_)
                      (if (gx#identifier? _L14585_)
                          (let ((_sym14601_
                                 (gxc#generate-runtime-binding-id _L14585_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14601_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14601_)
                                  (let ((_type1460214604_
                                         (gxc#apply-basic-expression-type
                                          _L14584_)))
                                    (if _type1460214604_
                                        (let ((_type14607_ _type1460214604_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14601_
                                           _type14607_))
                                        '#f)))
                              (gxc#compile-e _L14584_)))
                          (_g1447014547_ _g1447214550_)))
                    _hd1448514579_
                    _hd1448214571_)
                   (_g1447014547_ _g1447214550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1447014547_
                                                    _g1447214550_))
                                               (_g1447014547_ _g1447214550_))))
                                       (_g1447014547_ _g1447214550_))))
                               (_g1447014547_ _g1447214550_))))
                       (_g1447014547_ _g1447214550_)))))
            (_g1446914609_ _stx14468_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14253_)
      (let ((_collect-e14255_
             (lambda (_hd14412_ _expr14413_)
               (let ((_g1441614426_
                      (lambda (_g1441714423_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1441714423_))))
                 (let ((_g1441514433_
                        (lambda (_g1441714429_) ((lambda () '#!void)))))
                   (let ((_g1441414465_
                          (lambda (_g1441714436_)
                            (if (gx#stx-pair? _g1441714436_)
                                (let ((_e1441914438_ (gx#stx-e _g1441714436_)))
                                  (let ((_hd1442014441_ (##car _e1441914438_))
                                        (_tl1442114443_ (##cdr _e1441914438_)))
                                    (if (gx#stx-null? _tl1442114443_)
                                        ((lambda (_L14446_)
                                           (if (gx#identifier? _L14446_)
                                               (let ((_sym14457_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14446_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14457_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14457_)
                                                     (let ((_type1445814460_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14413_)))
                                                       (if _type1445814460_
                                                           (let ((_type14463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1445814460_))
                     (gxc#optimizer-declare-type!__opt-lambda19158
                      _sym14457_
                      _type14463_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1441514433_ _g1441714436_)))
                                         _hd1442014441_)
                                        (_g1441514433_ _g1441714436_))))
                                (_g1441514433_ _g1441714436_)))))
                     (_g1441414465_ _hd14412_)))))))
        (let ((_g1425714292_
               (lambda (_g1425814289_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1425814289_))))
          (let ((_g1425614409_
                 (lambda (_g1425814295_)
                   (if (gx#stx-pair? _g1425814295_)
                       (let ((_e1426214297_ (gx#stx-e _g1425814295_)))
                         (let ((_hd1426314300_ (##car _e1426214297_))
                               (_tl1426414302_ (##cdr _e1426214297_)))
                           (if (gx#stx-pair? _tl1426414302_)
                               (let ((_e1426514305_ (gx#stx-e _tl1426414302_)))
                                 (let ((_hd1426614308_ (##car _e1426514305_))
                                       (_tl1426714310_ (##cdr _e1426514305_)))
                                   (if (gx#stx-pair/null? _hd1426614308_)
                                       (if (fx>= (gx#stx-length _hd1426614308_)
                                                 '0)
                                           (let ((_g19446_
                                                  (gx#syntax-split-splice
                                                   _hd1426614308_
                                                   '0)))
                                             (begin
                                               (let ((_g19447_
                                                      (values-count _g19446_)))
                                                 (if (not (fx= _g19447_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19447_)))
                                               (let ((_target1426814313_
                                                      (values-ref _g19446_ 0))
                                                     (_tl1427014315_
                                                      (values-ref _g19446_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1427014315_)
                                                     (letrec ((_loop1427114318_
                                                               (lambda (_hd1426914321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1427514323_
                                _hd1427614325_)
                         (if (gx#stx-pair? _hd1426914321_)
                             (let ((_e1427214328_ (gx#stx-e _hd1426914321_)))
                               (let ((_lp-hd1427314331_ (##car _e1427214328_))
                                     (_lp-tl1427414333_ (##cdr _e1427214328_)))
                                 (if (gx#stx-pair? _lp-hd1427314331_)
                                     (let ((_e1427914336_
                                            (gx#stx-e _lp-hd1427314331_)))
                                       (let ((_hd1428014339_
                                              (##car _e1427914336_))
                                             (_tl1428114341_
                                              (##cdr _e1427914336_)))
                                         (if (gx#stx-pair? _tl1428114341_)
                                             (let ((_e1428214344_
                                                    (gx#stx-e _tl1428114341_)))
                                               (let ((_hd1428314347_
                                                      (##car _e1428214344_))
                                                     (_tl1428414349_
                                                      (##cdr _e1428214344_)))
                                                 (if (gx#stx-null?
                                                      _tl1428414349_)
                                                     (_loop1427114318_
                                                      _lp-tl1427414333_
                                                      (cons _hd1428314347_
                                                            _expr1427514323_)
                                                      (cons _hd1428014339_
                                                            _hd1427614325_))
                                                     (_g1425714292_
                                                      _g1425814295_))))
                                             (_g1425714292_ _g1425814295_))))
                                     (_g1425714292_ _g1425814295_))))
                             (let ((_expr1427714352_
                                    (reverse _expr1427514323_))
                                   (_hd1427814354_ (reverse _hd1427614325_)))
                               (if (gx#stx-pair? _tl1426714310_)
                                   (let ((_e1428514357_
                                          (gx#stx-e _tl1426714310_)))
                                     (let ((_hd1428614360_
                                            (##car _e1428514357_))
                                           (_tl1428714362_
                                            (##cdr _e1428514357_)))
                                       (if (gx#stx-null? _tl1428714362_)
                                           ((lambda (_L14365_
                                                     _L14366_
                                                     _L14367_)
                                              (begin
                                                (for-each
                                                 _collect-e14255_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1438714390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1438814392_)
                     (cons _g1438714390_ _g1438814392_))
                   '()
                   _L14367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1439414397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1439514399_)
                     (cons _g1439414397_ _g1439514399_))
                   '()
                   _L14366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1440114404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1440214406_)
                     (cons _g1440114404_ _g1440214406_))
                   '()
                   _L14366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14365_)))
                                            _hd1428614360_
                                            _expr1427714352_
                                            _hd1427814354_)
                                           (_g1425714292_ _g1425814295_))))
                                   (_g1425714292_ _g1425814295_)))))))
               (_loop1427114318_ _target1426814313_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1425714292_
                                                      _g1425814295_)))))
                                           (_g1425714292_ _g1425814295_))
                                       (_g1425714292_ _g1425814295_))))
                               (_g1425714292_ _g1425814295_))))
                       (_g1425714292_ _g1425814295_)))))
            (_g1425614409_ _stx14253_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13807_)
      (let ((_g1381113913_
             (lambda (_g1381213910_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1381213910_))))
        (let ((_g1381013920_ (lambda (_g1381213916_) ((lambda () '#!void)))))
          (let ((_g1380914070_
                 (lambda (_g1381213923_)
                   (if (gx#stx-pair? _g1381213923_)
                       (let ((_e1387013925_ (gx#stx-e _g1381213923_)))
                         (let ((_hd1387113928_ (##car _e1387013925_))
                               (_tl1387213930_ (##cdr _e1387013925_)))
                           (if (gx#stx-pair? _tl1387213930_)
                               (let ((_e1387313933_ (gx#stx-e _tl1387213930_)))
                                 (let ((_hd1387413936_ (##car _e1387313933_))
                                       (_tl1387513938_ (##cdr _e1387313933_)))
                                   (if (gx#stx-pair? _hd1387413936_)
                                       (let ((_e1387613941_
                                              (gx#stx-e _hd1387413936_)))
                                         (let ((_hd1387713944_
                                                (##car _e1387613941_))
                                               (_tl1387813946_
                                                (##cdr _e1387613941_)))
                                           (if (gx#identifier? _hd1387713944_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1387713944_)
                                                   (if (gx#stx-pair?
                                                        _tl1387813946_)
                                                       (let ((_e1387913949_
                                                              (gx#stx-e
                                                               _tl1387813946_)))
                                                         (let ((_hd1388013952_
                                                                (##car _e1387913949_))
                                                               (_tl1388113954_
                                                                (##cdr _e1387913949_)))
                                                           (if (gx#stx-null?
                                                                _tl1388113954_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1387513938_)
                           (let ((_e1388213957_ (gx#stx-e _tl1387513938_)))
                             (let ((_hd1388313960_ (##car _e1388213957_))
                                   (_tl1388413962_ (##cdr _e1388213957_)))
                               (if (gx#stx-pair? _hd1388313960_)
                                   (let ((_e1388513965_
                                          (gx#stx-e _hd1388313960_)))
                                     (let ((_hd1388613968_
                                            (##car _e1388513965_))
                                           (_tl1388713970_
                                            (##cdr _e1388513965_)))
                                       (if (gx#identifier? _hd1388613968_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1388613968_)
                                               (if (gx#stx-pair?
                                                    _tl1388713970_)
                                                   (let ((_e1388813973_
                                                          (gx#stx-e
                                                           _tl1388713970_)))
                                                     (let ((_hd1388913976_
                                                            (##car _e1388813973_))
                                                           (_tl1389013978_
                                                            (##cdr _e1388813973_)))
                                                       (if (gx#stx-null?
                                                            _tl1389013978_)
                                                           (if (gx#stx-pair?
                                                                _tl1388413962_)
                                                               (let ((_e1389113981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1388413962_)))
                         (let ((_hd1389213984_ (##car _e1389113981_))
                               (_tl1389313986_ (##cdr _e1389113981_)))
                           (if (gx#stx-pair? _hd1389213984_)
                               (let ((_e1389413989_ (gx#stx-e _hd1389213984_)))
                                 (let ((_hd1389513992_ (##car _e1389413989_))
                                       (_tl1389613994_ (##cdr _e1389413989_)))
                                   (if (gx#identifier? _hd1389513992_)
                                       (if (gx#stx-eq? '%#quote _hd1389513992_)
                                           (if (gx#stx-pair? _tl1389613994_)
                                               (let ((_e1389713997_
                                                      (gx#stx-e
                                                       _tl1389613994_)))
                                                 (let ((_hd1389814000_
                                                        (##car _e1389713997_))
                                                       (_tl1389914002_
                                                        (##cdr _e1389713997_)))
                                                   (if (gx#stx-null?
                                                        _tl1389914002_)
                                                       (if (gx#stx-pair?
                                                            _tl1389313986_)
                                                           (let ((_e1390014005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1389313986_)))
                     (let ((_hd1390114008_ (##car _e1390014005_))
                           (_tl1390214010_ (##cdr _e1390014005_)))
                       (if (gx#stx-pair? _hd1390114008_)
                           (let ((_e1390314013_ (gx#stx-e _hd1390114008_)))
                             (let ((_hd1390414016_ (##car _e1390314013_))
                                   (_tl1390514018_ (##cdr _e1390314013_)))
                               (if (gx#identifier? _hd1390414016_)
                                   (if (gx#stx-eq? '%#ref _hd1390414016_)
                                       (if (gx#stx-pair? _tl1390514018_)
                                           (let ((_e1390614021_
                                                  (gx#stx-e _tl1390514018_)))
                                             (let ((_hd1390714024_
                                                    (##car _e1390614021_))
                                                   (_tl1390814026_
                                                    (##cdr _e1390614021_)))
                                               (if (gx#stx-null?
                                                    _tl1390814026_)
                                                   (if (gx#stx-null?
                                                        _tl1390214010_)
                                                       ((lambda (_L14029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14030_
                         _L14031_
                         _L14032_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda19134
                       (gxc#generate-runtime-binding-id _L14031_)
                       (gx#stx-e _L14030_)
                       (gxc#generate-runtime-binding-id _L14029_)
                       '#f)
                      (_g1381013920_ _g1381213923_)))
                _hd1390714024_
                _hd1389814000_
                _hd1388913976_
                _hd1388013952_)
               (_g1381013920_ _g1381213923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381013920_
                                                    _g1381213923_))))
                                           (_g1381013920_ _g1381213923_))
                                       (_g1381013920_ _g1381213923_))
                                   (_g1381013920_ _g1381213923_))))
                           (_g1381013920_ _g1381213923_))))
                   (_g1381013920_ _g1381213923_))
               (_g1381013920_ _g1381213923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1381013920_ _g1381213923_))
                                           (_g1381013920_ _g1381213923_))
                                       (_g1381013920_ _g1381213923_))))
                               (_g1381013920_ _g1381213923_))))
                       (_g1381013920_ _g1381213923_))
                   (_g1381013920_ _g1381213923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381013920_
                                                    _g1381213923_))
                                               (_g1381013920_ _g1381213923_))
                                           (_g1381013920_ _g1381213923_))))
                                   (_g1381013920_ _g1381213923_))))
                           (_g1381013920_ _g1381213923_))
                       (_g1381013920_ _g1381213923_))))
               (_g1381013920_ _g1381213923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1381013920_
                                                    _g1381213923_))
                                               (_g1381013920_ _g1381213923_))))
                                       (_g1381013920_ _g1381213923_))))
                               (_g1381013920_ _g1381213923_))))
                       (_g1381013920_ _g1381213923_)))))
            (let ((_g1380814250_
                   (lambda (_g1381214073_)
                     (if (gx#stx-pair? _g1381214073_)
                         (let ((_e1381814075_ (gx#stx-e _g1381214073_)))
                           (let ((_hd1381914078_ (##car _e1381814075_))
                                 (_tl1382014080_ (##cdr _e1381814075_)))
                             (if (gx#stx-pair? _tl1382014080_)
                                 (let ((_e1382114083_
                                        (gx#stx-e _tl1382014080_)))
                                   (let ((_hd1382214086_ (##car _e1382114083_))
                                         (_tl1382314088_
                                          (##cdr _e1382114083_)))
                                     (if (gx#stx-pair? _hd1382214086_)
                                         (let ((_e1382414091_
                                                (gx#stx-e _hd1382214086_)))
                                           (let ((_hd1382514094_
                                                  (##car _e1382414091_))
                                                 (_tl1382614096_
                                                  (##cdr _e1382414091_)))
                                             (if (gx#identifier?
                                                  _hd1382514094_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1382514094_)
                                                     (if (gx#stx-pair?
                                                          _tl1382614096_)
                                                         (let ((_e1382714099_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1382614096_)))
                   (let ((_hd1382814102_ (##car _e1382714099_))
                         (_tl1382914104_ (##cdr _e1382714099_)))
                     (if (gx#stx-null? _tl1382914104_)
                         (if (gx#stx-pair? _tl1382314088_)
                             (let ((_e1383014107_ (gx#stx-e _tl1382314088_)))
                               (let ((_hd1383114110_ (##car _e1383014107_))
                                     (_tl1383214112_ (##cdr _e1383014107_)))
                                 (if (gx#stx-pair? _hd1383114110_)
                                     (let ((_e1383314115_
                                            (gx#stx-e _hd1383114110_)))
                                       (let ((_hd1383414118_
                                              (##car _e1383314115_))
                                             (_tl1383514120_
                                              (##cdr _e1383314115_)))
                                         (if (gx#identifier? _hd1383414118_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1383414118_)
                                                 (if (gx#stx-pair?
                                                      _tl1383514120_)
                                                     (let ((_e1383614123_
                                                            (gx#stx-e
                                                             _tl1383514120_)))
                                                       (let ((_hd1383714126_
                                                              (##car _e1383614123_))
                                                             (_tl1383814128_
                                                              (##cdr _e1383614123_)))
                                                         (if (gx#stx-null?
                                                              _tl1383814128_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1383214112_)
                         (let ((_e1383914131_ (gx#stx-e _tl1383214112_)))
                           (let ((_hd1384014134_ (##car _e1383914131_))
                                 (_tl1384114136_ (##cdr _e1383914131_)))
                             (if (gx#stx-pair? _hd1384014134_)
                                 (let ((_e1384214139_
                                        (gx#stx-e _hd1384014134_)))
                                   (let ((_hd1384314142_ (##car _e1384214139_))
                                         (_tl1384414144_
                                          (##cdr _e1384214139_)))
                                     (if (gx#identifier? _hd1384314142_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1384314142_)
                                             (if (gx#stx-pair? _tl1384414144_)
                                                 (let ((_e1384514147_
                                                        (gx#stx-e
                                                         _tl1384414144_)))
                                                   (let ((_hd1384614150_
                                                          (##car _e1384514147_))
                                                         (_tl1384714152_
                                                          (##cdr _e1384514147_)))
                                                     (if (gx#stx-null?
                                                          _tl1384714152_)
                                                         (if (gx#stx-pair?
                                                              _tl1384114136_)
                                                             (let ((_e1384814155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1384114136_)))
                       (let ((_hd1384914158_ (##car _e1384814155_))
                             (_tl1385014160_ (##cdr _e1384814155_)))
                         (if (gx#stx-pair? _hd1384914158_)
                             (let ((_e1385114163_ (gx#stx-e _hd1384914158_)))
                               (let ((_hd1385214166_ (##car _e1385114163_))
                                     (_tl1385314168_ (##cdr _e1385114163_)))
                                 (if (gx#identifier? _hd1385214166_)
                                     (if (gx#stx-eq? '%#ref _hd1385214166_)
                                         (if (gx#stx-pair? _tl1385314168_)
                                             (let ((_e1385414171_
                                                    (gx#stx-e _tl1385314168_)))
                                               (let ((_hd1385514174_
                                                      (##car _e1385414171_))
                                                     (_tl1385614176_
                                                      (##cdr _e1385414171_)))
                                                 (if (gx#stx-null?
                                                      _tl1385614176_)
                                                     (if (gx#stx-pair?
                                                          _tl1385014160_)
                                                         (let ((_e1385714179_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1385014160_)))
                   (let ((_hd1385814182_ (##car _e1385714179_))
                         (_tl1385914184_ (##cdr _e1385714179_)))
                     (if (gx#stx-pair? _hd1385814182_)
                         (let ((_e1386014187_ (gx#stx-e _hd1385814182_)))
                           (let ((_hd1386114190_ (##car _e1386014187_))
                                 (_tl1386214192_ (##cdr _e1386014187_)))
                             (if (gx#identifier? _hd1386114190_)
                                 (if (gx#stx-eq? '%#quote _hd1386114190_)
                                     (if (gx#stx-pair? _tl1386214192_)
                                         (let ((_e1386314195_
                                                (gx#stx-e _tl1386214192_)))
                                           (let ((_hd1386414198_
                                                  (##car _e1386314195_))
                                                 (_tl1386514200_
                                                  (##cdr _e1386314195_)))
                                             (if (gx#stx-null? _tl1386514200_)
                                                 (if (gx#stx-null?
                                                      _tl1385914184_)
                                                     ((lambda (_L14203_
                                                               _L14204_
                                                               _L14205_
                                                               _L14206_
                                                               _L14207_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14207_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda19134
                     (gxc#generate-runtime-binding-id _L14206_)
                     (gx#stx-e _L14205_)
                     (gxc#generate-runtime-binding-id _L14204_)
                     (gx#stx-e _L14203_))
                    (_g1380914070_ _g1381214073_)))
              _hd1386414198_
              _hd1385514174_
              _hd1384614150_
              _hd1383714126_
              _hd1382814102_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380914070_
                                                      _g1381214073_))
                                                 (_g1380914070_
                                                  _g1381214073_))))
                                         (_g1380914070_ _g1381214073_))
                                     (_g1380914070_ _g1381214073_))
                                 (_g1380914070_ _g1381214073_))))
                         (_g1380914070_ _g1381214073_))))
                 (_g1380914070_ _g1381214073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380914070_
                                                      _g1381214073_))))
                                             (_g1380914070_ _g1381214073_))
                                         (_g1380914070_ _g1381214073_))
                                     (_g1380914070_ _g1381214073_))))
                             (_g1380914070_ _g1381214073_))))
                     (_g1380914070_ _g1381214073_))
                 (_g1380914070_ _g1381214073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1380914070_ _g1381214073_))
                                             (_g1380914070_ _g1381214073_))
                                         (_g1380914070_ _g1381214073_))))
                                 (_g1380914070_ _g1381214073_))))
                         (_g1380914070_ _g1381214073_))
                     (_g1380914070_ _g1381214073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380914070_
                                                      _g1381214073_))
                                                 (_g1380914070_ _g1381214073_))
                                             (_g1380914070_ _g1381214073_))))
                                     (_g1380914070_ _g1381214073_))))
                             (_g1380914070_ _g1381214073_))
                         (_g1380914070_ _g1381214073_))))
                 (_g1380914070_ _g1381214073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1380914070_
                                                      _g1381214073_))
                                                 (_g1380914070_
                                                  _g1381214073_))))
                                         (_g1380914070_ _g1381214073_))))
                                 (_g1380914070_ _g1381214073_))))
                         (_g1380914070_ _g1381214073_)))))
              (_g1380814250_ _stx13807_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13747_)
      (let ((_g1375013763_
             (lambda (_g1375113760_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1375113760_))))
        (let ((_g1374913770_ (lambda (_g1375113766_) ((lambda () '#f)))))
          (let ((_g1374813804_
                 (lambda (_g1375113773_)
                   (if (gx#stx-pair? _g1375113773_)
                       (let ((_e1375313775_ (gx#stx-e _g1375113773_)))
                         (let ((_hd1375413778_ (##car _e1375313775_))
                               (_tl1375513780_ (##cdr _e1375313775_)))
                           (if (gx#stx-pair? _tl1375513780_)
                               (let ((_e1375613783_ (gx#stx-e _tl1375513780_)))
                                 (let ((_hd1375713786_ (##car _e1375613783_))
                                       (_tl1375813788_ (##cdr _e1375613783_)))
                                   (if (gx#stx-null? _tl1375813788_)
                                       ((lambda (_L13791_)
                                          (gxc#compile-e _L13791_))
                                        _hd1375713786_)
                                       (_g1374913770_ _g1375113773_))))
                               (_g1374913770_ _g1375113773_))))
                       (_g1374913770_ _g1375113773_)))))
            (_g1374813804_ _stx13747_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13172_)
      (let ((_g1317713298_
             (lambda (_g1317813295_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1317813295_))))
        (let ((_g1317613305_ (lambda (_g1317813301_) ((lambda () '#f)))))
          (let ((_g1317513329_
                 (lambda (_g1317813308_)
                   (if (gx#stx-pair? _g1317813308_)
                       (let ((_e1329113310_ (gx#stx-e _g1317813308_)))
                         (let ((_hd1329213313_ (##car _e1329113310_))
                               (_tl1329313315_ (##cdr _e1329113310_)))
                           ((lambda (_L13318_)
                              (if (gxc#dispatch-lambda-form? _L13318_)
                                  (let ((__obj19386
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19386
                                       'lambda
                                       (gxc#lambda-form-arity _L13318_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13318_))
                                      __obj19386))
                                  (_g1317613305_ _g1317813308_)))
                            _tl1329313315_)))
                       (_g1317613305_ _g1317813308_)))))
            (let ((_g1317413559_
                   (lambda (_g1317813332_)
                     (if (gx#stx-pair? _g1317813332_)
                         (let ((_e1323613334_ (gx#stx-e _g1317813332_)))
                           (let ((_hd1323713337_ (##car _e1323613334_))
                                 (_tl1323813339_ (##cdr _e1323613334_)))
                             (if (gx#stx-pair? _tl1323813339_)
                                 (let ((_e1323913342_
                                        (gx#stx-e _tl1323813339_)))
                                   (let ((_hd1324013345_ (##car _e1323913342_))
                                         (_tl1324113347_
                                          (##cdr _e1323913342_)))
                                     (if (gx#stx-pair/null? _hd1324013345_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1324013345_)
                                                   '0)
                                             (let ((_g19448_
                                                    (gx#syntax-split-splice
                                                     _hd1324013345_
                                                     '0)))
                                               (begin
                                                 (let ((_g19449_
                                                        (values-count
                                                         _g19448_)))
                                                   (if (not (fx= _g19449_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19449_)))
                                                 (let ((_target1324213350_
                                                        (values-ref
                                                         _g19448_
                                                         0))
                                                       (_tl1324413352_
                                                        (values-ref
                                                         _g19448_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1324413352_)
                                                       (letrec ((_loop1324513355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1324313358_ _arg1324913360_)
                           (if (gx#stx-pair? _hd1324313358_)
                               (let ((_e1324613363_ (gx#stx-e _hd1324313358_)))
                                 (let ((_lp-hd1324713366_
                                        (##car _e1324613363_))
                                       (_lp-tl1324813368_
                                        (##cdr _e1324613363_)))
                                   (_loop1324513355_
                                    _lp-tl1324813368_
                                    (cons _lp-hd1324713366_ _arg1324913360_))))
                               (let ((_arg1325013371_
                                      (reverse _arg1324913360_)))
                                 (if (gx#stx-pair? _tl1324113347_)
                                     (let ((_e1325113374_
                                            (gx#stx-e _tl1324113347_)))
                                       (let ((_hd1325213377_
                                              (##car _e1325113374_))
                                             (_tl1325313379_
                                              (##cdr _e1325113374_)))
                                         (if (gx#stx-pair? _hd1325213377_)
                                             (let ((_e1325413382_
                                                    (gx#stx-e _hd1325213377_)))
                                               (let ((_hd1325513385_
                                                      (##car _e1325413382_))
                                                     (_tl1325613387_
                                                      (##cdr _e1325413382_)))
                                                 (if (gx#identifier?
                                                      _hd1325513385_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1325513385_)
                                                         (if (gx#stx-pair?
                                                              _tl1325613387_)
                                                             (let ((_e1325713390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1325613387_)))
                       (let ((_hd1325813393_ (##car _e1325713390_))
                             (_tl1325913395_ (##cdr _e1325713390_)))
                         (if (gx#stx-pair? _hd1325813393_)
                             (let ((_e1326013398_ (gx#stx-e _hd1325813393_)))
                               (let ((_hd1326113401_ (##car _e1326013398_))
                                     (_tl1326213403_ (##cdr _e1326013398_)))
                                 (if (gx#identifier? _hd1326113401_)
                                     (if (gx#stx-eq? '%#ref _hd1326113401_)
                                         (if (gx#stx-pair? _tl1326213403_)
                                             (let ((_e1326313406_
                                                    (gx#stx-e _tl1326213403_)))
                                               (let ((_hd1326413409_
                                                      (##car _e1326313406_))
                                                     (_tl1326513411_
                                                      (##cdr _e1326313406_)))
                                                 (if (gx#stx-null?
                                                      _tl1326513411_)
                                                     (if (gx#stx-pair?
                                                          _tl1325913395_)
                                                         (let ((_e1326613414_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1325913395_)))
                   (let ((_hd1326713417_ (##car _e1326613414_))
                         (_tl1326813419_ (##cdr _e1326613414_)))
                     (if (gx#stx-pair? _hd1326713417_)
                         (let ((_e1326913422_ (gx#stx-e _hd1326713417_)))
                           (let ((_hd1327013425_ (##car _e1326913422_))
                                 (_tl1327113427_ (##cdr _e1326913422_)))
                             (if (gx#identifier? _hd1327013425_)
                                 (if (gx#stx-eq? '%#ref _hd1327013425_)
                                     (if (gx#stx-pair? _tl1327113427_)
                                         (let ((_e1327213430_
                                                (gx#stx-e _tl1327113427_)))
                                           (let ((_hd1327313433_
                                                  (##car _e1327213430_))
                                                 (_tl1327413435_
                                                  (##cdr _e1327213430_)))
                                             (if (gx#stx-null? _tl1327413435_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1326813419_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1326813419_)
                                                               '0)
                                                         (let ((_g19450_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1326813419_
                         '0)))
                   (begin
                     (let ((_g19451_ (values-count _g19450_)))
                       (if (not (fx= _g19451_ 2))
                           (error "Context expects 2 values" _g19451_)))
                     (let ((_target1327513438_ (values-ref _g19450_ 0))
                           (_tl1327713440_ (values-ref _g19450_ 1)))
                       (if (gx#stx-null? _tl1327713440_)
                           (letrec ((_loop1327813443_
                                     (lambda (_hd1327613446_ _xarg1328213448_)
                                       (if (gx#stx-pair? _hd1327613446_)
                                           (let ((_e1327913451_
                                                  (gx#stx-e _hd1327613446_)))
                                             (let ((_lp-hd1328013454_
                                                    (##car _e1327913451_))
                                                   (_lp-tl1328113456_
                                                    (##cdr _e1327913451_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1328013454_)
                                                   (let ((_e1328413459_
                                                          (gx#stx-e
                                                           _lp-hd1328013454_)))
                                                     (let ((_hd1328513462_
                                                            (##car _e1328413459_))
                                                           (_tl1328613464_
                                                            (##cdr _e1328413459_)))
                                                       (if (gx#identifier?
                                                            _hd1328513462_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1328513462_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1328613464_)
                           (let ((_e1328713467_ (gx#stx-e _tl1328613464_)))
                             (let ((_hd1328813470_ (##car _e1328713467_))
                                   (_tl1328913472_ (##cdr _e1328713467_)))
                               (if (gx#stx-null? _tl1328913472_)
                                   (_loop1327813443_
                                    _lp-tl1328113456_
                                    (cons _hd1328813470_ _xarg1328213448_))
                                   (_g1317513329_ _g1317813332_))))
                           (_g1317513329_ _g1317813332_))
                       (_g1317513329_ _g1317813332_))
                   (_g1317513329_ _g1317813332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317513329_
                                                    _g1317813332_))))
                                           (let ((_xarg1328313475_
                                                  (reverse _xarg1328213448_)))
                                             (if (gx#stx-null? _tl1325313379_)
                                                 ((lambda (_L13478_
                                                           _L13479_
                                                           _L13480_
                                                           _L13481_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1351813521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1351913523_)
                                 (cons _g1351813521_ _g1351913523_))
                               '()
                               _L13481_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13480_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1352513528_
                                                            _g1352613530_)
                                                     (cons _g1352513528_
                                                           _g1352613530_))
                                                   '()
                                                   _L13481_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1353213535_
                                                            _g1353313537_)
                                                     (cons _g1353213535_
                                                           _g1353313537_))
                                                   '()
                                                   _L13478_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1353913542_
                                                       _g1354013544_)
                                                (cons _g1353913542_
                                                      _g1354013544_))
                                              '()
                                              _L13481_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1354613549_
                                                       _g1354713551_)
                                                (cons _g1354613549_
                                                      _g1354713551_))
                                              '()
                                              _L13478_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13554_
                       (gxc#generate-runtime-binding-id _L13479_)))
                  (let ((_type13556_
                         (gxc#optimizer-resolve-type _type-t13554_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13556_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13554_)
                          '#f))))
                (_g1317513329_ _g1317813332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1328313475_
                                                  _hd1327313433_
                                                  _hd1326413409_
                                                  _arg1325013371_)
                                                 (_g1317513329_
                                                  _g1317813332_)))))))
                             (_loop1327813443_ _target1327513438_ '()))
                           (_g1317513329_ _g1317813332_)))))
                 (_g1317513329_ _g1317813332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317513329_
                                                      _g1317813332_))
                                                 (_g1317513329_
                                                  _g1317813332_))))
                                         (_g1317513329_ _g1317813332_))
                                     (_g1317513329_ _g1317813332_))
                                 (_g1317513329_ _g1317813332_))))
                         (_g1317513329_ _g1317813332_))))
                 (_g1317513329_ _g1317813332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317513329_
                                                      _g1317813332_))))
                                             (_g1317513329_ _g1317813332_))
                                         (_g1317513329_ _g1317813332_))
                                     (_g1317513329_ _g1317813332_))))
                             (_g1317513329_ _g1317813332_))))
                     (_g1317513329_ _g1317813332_))
                 (_g1317513329_ _g1317813332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1317513329_
                                                      _g1317813332_))))
                                             (_g1317513329_ _g1317813332_))))
                                     (_g1317513329_ _g1317813332_)))))))
                 (_loop1324513355_ _target1324213350_ '()))
               (_g1317513329_ _g1317813332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1317513329_ _g1317813332_))
                                         (_g1317513329_ _g1317813332_))))
                                 (_g1317513329_ _g1317813332_))))
                         (_g1317513329_ _g1317813332_)))))
              (let ((_g1317313744_
                     (lambda (_g1317813562_)
                       (if (gx#stx-pair? _g1317813562_)
                           (let ((_e1318413564_ (gx#stx-e _g1317813562_)))
                             (let ((_hd1318513567_ (##car _e1318413564_))
                                   (_tl1318613569_ (##cdr _e1318413564_)))
                               (if (gx#stx-pair? _tl1318613569_)
                                   (let ((_e1318713572_
                                          (gx#stx-e _tl1318613569_)))
                                     (let ((_hd1318813575_
                                            (##car _e1318713572_))
                                           (_tl1318913577_
                                            (##cdr _e1318713572_)))
                                       (if (gx#stx-pair? _tl1318913577_)
                                           (let ((_e1319013580_
                                                  (gx#stx-e _tl1318913577_)))
                                             (let ((_hd1319113583_
                                                    (##car _e1319013580_))
                                                   (_tl1319213585_
                                                    (##cdr _e1319013580_)))
                                               (if (gx#stx-pair?
                                                    _hd1319113583_)
                                                   (let ((_e1319313588_
                                                          (gx#stx-e
                                                           _hd1319113583_)))
                                                     (let ((_hd1319413591_
                                                            (##car _e1319313588_))
                                                           (_tl1319513593_
                                                            (##cdr _e1319313588_)))
                                                       (if (gx#identifier?
                                                            _hd1319413591_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1319413591_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1319513593_)
                           (let ((_e1319613596_ (gx#stx-e _tl1319513593_)))
                             (let ((_hd1319713599_ (##car _e1319613596_))
                                   (_tl1319813601_ (##cdr _e1319613596_)))
                               (if (gx#stx-pair? _hd1319713599_)
                                   (let ((_e1319913604_
                                          (gx#stx-e _hd1319713599_)))
                                     (let ((_hd1320013607_
                                            (##car _e1319913604_))
                                           (_tl1320113609_
                                            (##cdr _e1319913604_)))
                                       (if (gx#identifier? _hd1320013607_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1320013607_)
                                               (if (gx#stx-pair?
                                                    _tl1320113609_)
                                                   (let ((_e1320213612_
                                                          (gx#stx-e
                                                           _tl1320113609_)))
                                                     (let ((_hd1320313615_
                                                            (##car _e1320213612_))
                                                           (_tl1320413617_
                                                            (##cdr _e1320213612_)))
                                                       (if (gx#stx-null?
                                                            _tl1320413617_)
                                                           (if (gx#stx-pair?
                                                                _tl1319813601_)
                                                               (let ((_e1320513620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1319813601_)))
                         (let ((_hd1320613623_ (##car _e1320513620_))
                               (_tl1320713625_ (##cdr _e1320513620_)))
                           (if (gx#stx-pair? _hd1320613623_)
                               (let ((_e1320813628_ (gx#stx-e _hd1320613623_)))
                                 (let ((_hd1320913631_ (##car _e1320813628_))
                                       (_tl1321013633_ (##cdr _e1320813628_)))
                                   (if (gx#identifier? _hd1320913631_)
                                       (if (gx#stx-eq? '%#ref _hd1320913631_)
                                           (if (gx#stx-pair? _tl1321013633_)
                                               (let ((_e1321113636_
                                                      (gx#stx-e
                                                       _tl1321013633_)))
                                                 (let ((_hd1321213639_
                                                        (##car _e1321113636_))
                                                       (_tl1321313641_
                                                        (##cdr _e1321113636_)))
                                                   (if (gx#stx-null?
                                                        _tl1321313641_)
                                                       (if (gx#stx-pair?
                                                            _tl1320713625_)
                                                           (let ((_e1321413644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1320713625_)))
                     (let ((_hd1321513647_ (##car _e1321413644_))
                           (_tl1321613649_ (##cdr _e1321413644_)))
                       (if (gx#stx-pair? _hd1321513647_)
                           (let ((_e1321713652_ (gx#stx-e _hd1321513647_)))
                             (let ((_hd1321813655_ (##car _e1321713652_))
                                   (_tl1321913657_ (##cdr _e1321713652_)))
                               (if (gx#identifier? _hd1321813655_)
                                   (if (gx#stx-eq? '%#ref _hd1321813655_)
                                       (if (gx#stx-pair? _tl1321913657_)
                                           (let ((_e1322013660_
                                                  (gx#stx-e _tl1321913657_)))
                                             (let ((_hd1322113663_
                                                    (##car _e1322013660_))
                                                   (_tl1322213665_
                                                    (##cdr _e1322013660_)))
                                               (if (gx#stx-null?
                                                    _tl1322213665_)
                                                   (if (gx#stx-pair?
                                                        _tl1321613649_)
                                                       (let ((_e1322313668_
                                                              (gx#stx-e
                                                               _tl1321613649_)))
                                                         (let ((_hd1322413671_
                                                                (##car _e1322313668_))
                                                               (_tl1322513673_
                                                                (##cdr _e1322313668_)))
                                                           (if (gx#stx-pair?
                                                                _hd1322413671_)
                                                               (let ((_e1322613676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1322413671_)))
                         (let ((_hd1322713679_ (##car _e1322613676_))
                               (_tl1322813681_ (##cdr _e1322613676_)))
                           (if (gx#identifier? _hd1322713679_)
                               (if (gx#stx-eq? '%#ref _hd1322713679_)
                                   (if (gx#stx-pair? _tl1322813681_)
                                       (let ((_e1322913684_
                                              (gx#stx-e _tl1322813681_)))
                                         (let ((_hd1323013687_
                                                (##car _e1322913684_))
                                               (_tl1323113689_
                                                (##cdr _e1322913684_)))
                                           (if (gx#stx-null? _tl1323113689_)
                                               (if (gx#stx-null?
                                                    _tl1322513673_)
                                                   (if (gx#stx-null?
                                                        _tl1319213585_)
                                                       ((lambda (_L13692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13693_
                         _L13694_
                         _L13695_
                         _L13696_)
                  (if (if (gx#identifier? _L13696_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13695_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13694_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13696_ _L13692_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13739_
                             (gxc#generate-runtime-binding-id _L13693_)))
                        (let ((_type13741_
                               (gxc#optimizer-resolve-type _type-t13739_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13741_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13739_)
                                '#f))))
                      (_g1317413559_ _g1317813562_)))
                _hd1323013687_
                _hd1322113663_
                _hd1321213639_
                _hd1320313615_
                _hd1318813575_)
               (_g1317413559_ _g1317813562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317413559_
                                                    _g1317813562_))
                                               (_g1317413559_ _g1317813562_))))
                                       (_g1317413559_ _g1317813562_))
                                   (_g1317413559_ _g1317813562_))
                               (_g1317413559_ _g1317813562_))))
                       (_g1317413559_ _g1317813562_))))
               (_g1317413559_ _g1317813562_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317413559_
                                                    _g1317813562_))))
                                           (_g1317413559_ _g1317813562_))
                                       (_g1317413559_ _g1317813562_))
                                   (_g1317413559_ _g1317813562_))))
                           (_g1317413559_ _g1317813562_))))
                   (_g1317413559_ _g1317813562_))
               (_g1317413559_ _g1317813562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1317413559_ _g1317813562_))
                                           (_g1317413559_ _g1317813562_))
                                       (_g1317413559_ _g1317813562_))))
                               (_g1317413559_ _g1317813562_))))
                       (_g1317413559_ _g1317813562_))
                   (_g1317413559_ _g1317813562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317413559_
                                                    _g1317813562_))
                                               (_g1317413559_ _g1317813562_))
                                           (_g1317413559_ _g1317813562_))))
                                   (_g1317413559_ _g1317813562_))))
                           (_g1317413559_ _g1317813562_))
                       (_g1317413559_ _g1317813562_))
                   (_g1317413559_ _g1317813562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1317413559_
                                                    _g1317813562_))))
                                           (_g1317413559_ _g1317813562_))))
                                   (_g1317413559_ _g1317813562_))))
                           (_g1317413559_ _g1317813562_)))))
                (_g1317313744_ _stx13172_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx13118_)
      (let ((_clause-e13120_
             (lambda (_form13170_)
               (let ((__obj19387 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19387
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13170_)
                    (gxc#dispatch-lambda-form-delegate _form13170_))
                   __obj19387)))))
        (let ((_g1312313133_
               (lambda (_g1312413130_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1312413130_))))
          (let ((_g1312213140_ (lambda (_g1312413136_) ((lambda () '#f)))))
            (let ((_g1312113167_
                   (lambda (_g1312413143_)
                     (if (gx#stx-pair? _g1312413143_)
                         (let ((_e1312613145_ (gx#stx-e _g1312413143_)))
                           (let ((_hd1312713148_ (##car _e1312613145_))
                                 (_tl1312813150_ (##cdr _e1312613145_)))
                             ((lambda (_L13153_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L13153_)
                                    (let ((_clauses13165_
                                           (map _clause-e13120_ _L13153_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses13165_))
                                    (_g1312213140_ _g1312413143_)))
                              _tl1312813150_)))
                         (_g1312213140_ _g1312413143_)))))
              (_g1312113167_ _stx13118_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx13023_)
      (let ((_g1302613046_
             (lambda (_g1302713043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1302713043_))))
        (let ((_g1302513053_ (lambda (_g1302713049_) ((lambda () '#f)))))
          (let ((_g1302413115_
                 (lambda (_g1302713056_)
                   (if (gx#stx-pair? _g1302713056_)
                       (let ((_e1303013058_ (gx#stx-e _g1302713056_)))
                         (let ((_hd1303113061_ (##car _e1303013058_))
                               (_tl1303213063_ (##cdr _e1303013058_)))
                           (if (gx#stx-pair? _tl1303213063_)
                               (let ((_e1303313066_ (gx#stx-e _tl1303213063_)))
                                 (let ((_hd1303413069_ (##car _e1303313066_))
                                       (_tl1303513071_ (##cdr _e1303313066_)))
                                   (if (gx#stx-pair? _hd1303413069_)
                                       (let ((_e1303613074_
                                              (gx#stx-e _hd1303413069_)))
                                         (let ((_hd1303713077_
                                                (##car _e1303613074_))
                                               (_tl1303813079_
                                                (##cdr _e1303613074_)))
                                           (if (gx#identifier? _hd1303713077_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1303713077_)
                                                   (if (gx#stx-pair?
                                                        _tl1303813079_)
                                                       (let ((_e1303913082_
                                                              (gx#stx-e
                                                               _tl1303813079_)))
                                                         (let ((_hd1304013085_
                                                                (##car _e1303913082_))
                                                               (_tl1304113087_
                                                                (##cdr _e1303913082_)))
                                                           (if (gx#stx-null?
                                                                _tl1304113087_)
                                                               ((lambda (_L13090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13091_)
                          (let ((_type-e1310813110_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L13091_)
                                  '#f)))
                            (if _type-e1310813110_
                                (let ((_type-e13113_ _type-e1310813110_))
                                  (_type-e13113_ _stx13023_ _L13090_))
                                '#f)))
                        _tl1303513071_
                        _hd1304013085_)
                       (_g1302513053_ _g1302713056_))))
               (_g1302513053_ _g1302713056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1302513053_
                                                    _g1302713056_))
                                               (_g1302513053_ _g1302713056_))))
                                       (_g1302513053_ _g1302713056_))))
                               (_g1302513053_ _g1302713056_))))
                       (_g1302513053_ _g1302713056_)))))
            (_g1302413115_ _stx13023_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12508_ _args12509_)
      (let ((_g1251312626_
             (lambda (_g1251412623_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1251412623_))))
        (let ((_g1251212633_
               (lambda (_g1251412629_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12508_))
                      '#f))))))
          (let ((_g1251112840_
                 (lambda (_g1251412636_)
                   (if (gx#stx-pair? _g1251412636_)
                       (let ((_e1257412638_ (gx#stx-e _g1251412636_)))
                         (let ((_hd1257512641_ (##car _e1257412638_))
                               (_tl1257612643_ (##cdr _e1257412638_)))
                           (if (gx#stx-pair? _hd1257512641_)
                               (let ((_e1257712646_ (gx#stx-e _hd1257512641_)))
                                 (let ((_hd1257812649_ (##car _e1257712646_))
                                       (_tl1257912651_ (##cdr _e1257712646_)))
                                   (if (gx#identifier? _hd1257812649_)
                                       (if (gx#stx-eq? '%#quote _hd1257812649_)
                                           (if (gx#stx-pair? _tl1257912651_)
                                               (let ((_e1258012654_
                                                      (gx#stx-e
                                                       _tl1257912651_)))
                                                 (let ((_hd1258112657_
                                                        (##car _e1258012654_))
                                                       (_tl1258212659_
                                                        (##cdr _e1258012654_)))
                                                   (if (gx#stx-null?
                                                        _tl1258212659_)
                                                       (if (gx#stx-pair?
                                                            _tl1257612643_)
                                                           (let ((_e1258312662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1257612643_)))
                     (let ((_hd1258412665_ (##car _e1258312662_))
                           (_tl1258512667_ (##cdr _e1258312662_)))
                       (if (gx#stx-pair? _hd1258412665_)
                           (let ((_e1258612670_ (gx#stx-e _hd1258412665_)))
                             (let ((_hd1258712673_ (##car _e1258612670_))
                                   (_tl1258812675_ (##cdr _e1258612670_)))
                               (if (gx#identifier? _hd1258712673_)
                                   (if (gx#stx-eq? '%#ref _hd1258712673_)
                                       (if (gx#stx-pair? _tl1258812675_)
                                           (let ((_e1258912678_
                                                  (gx#stx-e _tl1258812675_)))
                                             (let ((_hd1259012681_
                                                    (##car _e1258912678_))
                                                   (_tl1259112683_
                                                    (##cdr _e1258912678_)))
                                               (if (gx#stx-null?
                                                    _tl1259112683_)
                                                   (if (gx#stx-pair?
                                                        _tl1258512667_)
                                                       (let ((_e1259212686_
                                                              (gx#stx-e
                                                               _tl1258512667_)))
                                                         (let ((_hd1259312689_
                                                                (##car _e1259212686_))
                                                               (_tl1259412691_
                                                                (##cdr _e1259212686_)))
                                                           (if (gx#stx-pair?
                                                                _hd1259312689_)
                                                               (let ((_e1259512694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1259312689_)))
                         (let ((_hd1259612697_ (##car _e1259512694_))
                               (_tl1259712699_ (##cdr _e1259512694_)))
                           (if (gx#identifier? _hd1259612697_)
                               (if (gx#stx-eq? '%#quote _hd1259612697_)
                                   (if (gx#stx-pair? _tl1259712699_)
                                       (let ((_e1259812702_
                                              (gx#stx-e _tl1259712699_)))
                                         (let ((_hd1259912705_
                                                (##car _e1259812702_))
                                               (_tl1260012707_
                                                (##cdr _e1259812702_)))
                                           (if (gx#stx-null? _tl1260012707_)
                                               (if (gx#stx-pair?
                                                    _tl1259412691_)
                                                   (let ((_e1260112710_
                                                          (gx#stx-e
                                                           _tl1259412691_)))
                                                     (let ((_hd1260212713_
                                                            (##car _e1260112710_))
                                                           (_tl1260312715_
                                                            (##cdr _e1260112710_)))
                                                       (if (gx#stx-pair?
                                                            _tl1260312715_)
                                                           (let ((_e1260412718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1260312715_)))
                     (let ((_hd1260512721_ (##car _e1260412718_))
                           (_tl1260612723_ (##cdr _e1260412718_)))
                       (if (gx#stx-pair? _hd1260512721_)
                           (let ((_e1260712726_ (gx#stx-e _hd1260512721_)))
                             (let ((_hd1260812729_ (##car _e1260712726_))
                                   (_tl1260912731_ (##cdr _e1260712726_)))
                               (if (gx#identifier? _hd1260812729_)
                                   (if (gx#stx-eq? '%#quote _hd1260812729_)
                                       (if (gx#stx-pair? _tl1260912731_)
                                           (let ((_e1261012734_
                                                  (gx#stx-e _tl1260912731_)))
                                             (let ((_hd1261112737_
                                                    (##car _e1261012734_))
                                                   (_tl1261212739_
                                                    (##cdr _e1261012734_)))
                                               (if (gx#stx-null?
                                                    _tl1261212739_)
                                                   (if (gx#stx-pair?
                                                        _tl1260612723_)
                                                       (let ((_e1261312742_
                                                              (gx#stx-e
                                                               _tl1260612723_)))
                                                         (let ((_hd1261412745_
                                                                (##car _e1261312742_))
                                                               (_tl1261512747_
                                                                (##cdr _e1261312742_)))
                                                           (if (gx#stx-pair?
                                                                _hd1261412745_)
                                                               (let ((_e1261612750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1261412745_)))
                         (let ((_hd1261712753_ (##car _e1261612750_))
                               (_tl1261812755_ (##cdr _e1261612750_)))
                           (if (gx#identifier? _hd1261712753_)
                               (if (gx#stx-eq? '%#quote _hd1261712753_)
                                   (if (gx#stx-pair? _tl1261812755_)
                                       (let ((_e1261912758_
                                              (gx#stx-e _tl1261812755_)))
                                         (let ((_hd1262012761_
                                                (##car _e1261912758_))
                                               (_tl1262112763_
                                                (##cdr _e1261912758_)))
                                           (if (gx#stx-null? _tl1262112763_)
                                               (if (gx#stx-null?
                                                    _tl1261512747_)
                                                   ((lambda (_L12766_
                                                             _L12767_
                                                             _L12768_
                                                             _L12769_
                                                             _L12770_
                                                             _L12771_)
                                                      (let ((_super-t12817_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12770_)
                         (gxc#generate-runtime-binding-id _L12770_)
                         '#f)))
                (let ((_super-type12819_
                       (if _super-t12817_
                           (gxc#optimizer-resolve-type _super-t12817_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12819_
                              (not (##structure-instance-of?
                                    _super-type12819_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12508_
                           _L12770_)
                          '#!void)
                      (let ((_fields12835_ (gx#stx-e _L12769_))
                            (_xfields12836_
                             (if _super-type12819_
                                 (let ((_super-fields1282112824_
                                        (##structure-ref
                                         _super-type12819_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1282212826_
                                        (##structure-ref
                                         _super-type12819_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1282112824_
                                       (if _super-xfields1282212826_
                                           (let ((_super-fields12829_
                                                  _super-fields1282112824_)
                                                 (_super-xfields12830_
                                                  _super-xfields1282212826_))
                                             (fx+ _super-fields12829_
                                                  _super-xfields12830_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12837_ (gx#stx-e _L12767_))
                            (_ctor12838_
                             (let ((_$e12832_ (gx#stx-e _L12766_)))
                               (if _$e12832_
                                   (values _$e12832_)
                                   (if _super-type12819_
                                       (##structure-ref
                                        _super-type12819_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12817_ '#!void '#f))))))
                        (let ((__obj19388
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19388
                             (gx#stx-e _L12771_)
                             _super-t12817_
                             _fields12835_
                             _xfields12836_
                             _ctor12838_
                             _plist12837_)
                            __obj19388))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1262012761_
                                                    _hd1261112737_
                                                    _hd1260212713_
                                                    _hd1259912705_
                                                    _hd1259012681_
                                                    _hd1258112657_)
                                                   (_g1251212633_
                                                    _g1251412636_))
                                               (_g1251212633_ _g1251412636_))))
                                       (_g1251212633_ _g1251412636_))
                                   (_g1251212633_ _g1251412636_))
                               (_g1251212633_ _g1251412636_))))
                       (_g1251212633_ _g1251412636_))))
               (_g1251212633_ _g1251412636_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251212633_
                                                    _g1251412636_))))
                                           (_g1251212633_ _g1251412636_))
                                       (_g1251212633_ _g1251412636_))
                                   (_g1251212633_ _g1251412636_))))
                           (_g1251212633_ _g1251412636_))))
                   (_g1251212633_ _g1251412636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251212633_
                                                    _g1251412636_))
                                               (_g1251212633_ _g1251412636_))))
                                       (_g1251212633_ _g1251412636_))
                                   (_g1251212633_ _g1251412636_))
                               (_g1251212633_ _g1251412636_))))
                       (_g1251212633_ _g1251412636_))))
               (_g1251212633_ _g1251412636_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1251212633_
                                                    _g1251412636_))))
                                           (_g1251212633_ _g1251412636_))
                                       (_g1251212633_ _g1251412636_))
                                   (_g1251212633_ _g1251412636_))))
                           (_g1251212633_ _g1251412636_))))
                   (_g1251212633_ _g1251412636_))
               (_g1251212633_ _g1251412636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1251212633_ _g1251412636_))
                                           (_g1251212633_ _g1251412636_))
                                       (_g1251212633_ _g1251412636_))))
                               (_g1251212633_ _g1251412636_))))
                       (_g1251212633_ _g1251412636_)))))
            (let ((_g1251013020_
                   (lambda (_g1251412843_)
                     (if (gx#stx-pair? _g1251412843_)
                         (let ((_e1252012845_ (gx#stx-e _g1251412843_)))
                           (let ((_hd1252112848_ (##car _e1252012845_))
                                 (_tl1252212850_ (##cdr _e1252012845_)))
                             (if (gx#stx-pair? _hd1252112848_)
                                 (let ((_e1252312853_
                                        (gx#stx-e _hd1252112848_)))
                                   (let ((_hd1252412856_ (##car _e1252312853_))
                                         (_tl1252512858_
                                          (##cdr _e1252312853_)))
                                     (if (gx#identifier? _hd1252412856_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1252412856_)
                                             (if (gx#stx-pair? _tl1252512858_)
                                                 (let ((_e1252612861_
                                                        (gx#stx-e
                                                         _tl1252512858_)))
                                                   (let ((_hd1252712864_
                                                          (##car _e1252612861_))
                                                         (_tl1252812866_
                                                          (##cdr _e1252612861_)))
                                                     (if (gx#stx-null?
                                                          _tl1252812866_)
                                                         (if (gx#stx-pair?
                                                              _tl1252212850_)
                                                             (let ((_e1252912869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1252212850_)))
                       (let ((_hd1253012872_ (##car _e1252912869_))
                             (_tl1253112874_ (##cdr _e1252912869_)))
                         (if (gx#stx-pair? _hd1253012872_)
                             (let ((_e1253212877_ (gx#stx-e _hd1253012872_)))
                               (let ((_hd1253312880_ (##car _e1253212877_))
                                     (_tl1253412882_ (##cdr _e1253212877_)))
                                 (if (gx#identifier? _hd1253312880_)
                                     (if (gx#stx-eq? '%#quote _hd1253312880_)
                                         (if (gx#stx-pair? _tl1253412882_)
                                             (let ((_e1253512885_
                                                    (gx#stx-e _tl1253412882_)))
                                               (let ((_hd1253612888_
                                                      (##car _e1253512885_))
                                                     (_tl1253712890_
                                                      (##cdr _e1253512885_)))
                                                 (if (gx#stx-datum?
                                                      _hd1253612888_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1253612888_)
                         '#f)
                 (if (gx#stx-null? _tl1253712890_)
                     (if (gx#stx-pair? _tl1253112874_)
                         (let ((_e1253812893_ (gx#stx-e _tl1253112874_)))
                           (let ((_hd1253912896_ (##car _e1253812893_))
                                 (_tl1254012898_ (##cdr _e1253812893_)))
                             (if (gx#stx-pair? _hd1253912896_)
                                 (let ((_e1254112901_
                                        (gx#stx-e _hd1253912896_)))
                                   (let ((_hd1254212904_ (##car _e1254112901_))
                                         (_tl1254312906_
                                          (##cdr _e1254112901_)))
                                     (if (gx#identifier? _hd1254212904_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1254212904_)
                                             (if (gx#stx-pair? _tl1254312906_)
                                                 (let ((_e1254412909_
                                                        (gx#stx-e
                                                         _tl1254312906_)))
                                                   (let ((_hd1254512912_
                                                          (##car _e1254412909_))
                                                         (_tl1254612914_
                                                          (##cdr _e1254412909_)))
                                                     (if (gx#stx-null?
                                                          _tl1254612914_)
                                                         (if (gx#stx-pair?
                                                              _tl1254012898_)
                                                             (let ((_e1254712917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1254012898_)))
                       (let ((_hd1254812920_ (##car _e1254712917_))
                             (_tl1254912922_ (##cdr _e1254712917_)))
                         (if (gx#stx-pair? _tl1254912922_)
                             (let ((_e1255012925_ (gx#stx-e _tl1254912922_)))
                               (let ((_hd1255112928_ (##car _e1255012925_))
                                     (_tl1255212930_ (##cdr _e1255012925_)))
                                 (if (gx#stx-pair? _hd1255112928_)
                                     (let ((_e1255312933_
                                            (gx#stx-e _hd1255112928_)))
                                       (let ((_hd1255412936_
                                              (##car _e1255312933_))
                                             (_tl1255512938_
                                              (##cdr _e1255312933_)))
                                         (if (gx#identifier? _hd1255412936_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1255412936_)
                                                 (if (gx#stx-pair?
                                                      _tl1255512938_)
                                                     (let ((_e1255612941_
                                                            (gx#stx-e
                                                             _tl1255512938_)))
                                                       (let ((_hd1255712944_
                                                              (##car _e1255612941_))
                                                             (_tl1255812946_
                                                              (##cdr _e1255612941_)))
                                                         (if (gx#stx-null?
                                                              _tl1255812946_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1255212930_)
                         (let ((_e1255912949_ (gx#stx-e _tl1255212930_)))
                           (let ((_hd1256012952_ (##car _e1255912949_))
                                 (_tl1256112954_ (##cdr _e1255912949_)))
                             (if (gx#stx-pair? _hd1256012952_)
                                 (let ((_e1256212957_
                                        (gx#stx-e _hd1256012952_)))
                                   (let ((_hd1256312960_ (##car _e1256212957_))
                                         (_tl1256412962_
                                          (##cdr _e1256212957_)))
                                     (if (gx#identifier? _hd1256312960_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1256312960_)
                                             (if (gx#stx-pair? _tl1256412962_)
                                                 (let ((_e1256512965_
                                                        (gx#stx-e
                                                         _tl1256412962_)))
                                                   (let ((_hd1256612968_
                                                          (##car _e1256512965_))
                                                         (_tl1256712970_
                                                          (##cdr _e1256512965_)))
                                                     (if (gx#stx-null?
                                                          _tl1256712970_)
                                                         (if (gx#stx-null?
                                                              _tl1256112954_)
                                                             ((lambda (_L12973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12974_
                               _L12975_
                               _L12976_
                               _L12977_)
                        (let ((__obj19389
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19389
                             (gx#stx-e _L12977_)
                             '#f
                             (gx#stx-e _L12976_)
                             '0
                             (gx#stx-e _L12973_)
                             (gx#stx-e _L12974_))
                            __obj19389)))
                      _hd1256612968_
                      _hd1255712944_
                      _hd1254812920_
                      _hd1254512912_
                      _hd1252712864_)
                     (_g1251112840_ _g1251412843_))
                 (_g1251112840_ _g1251412843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251112840_ _g1251412843_))
                                             (_g1251112840_ _g1251412843_))
                                         (_g1251112840_ _g1251412843_))))
                                 (_g1251112840_ _g1251412843_))))
                         (_g1251112840_ _g1251412843_))
                     (_g1251112840_ _g1251412843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1251112840_
                                                      _g1251412843_))
                                                 (_g1251112840_ _g1251412843_))
                                             (_g1251112840_ _g1251412843_))))
                                     (_g1251112840_ _g1251412843_))))
                             (_g1251112840_ _g1251412843_))))
                     (_g1251112840_ _g1251412843_))
                 (_g1251112840_ _g1251412843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251112840_ _g1251412843_))
                                             (_g1251112840_ _g1251412843_))
                                         (_g1251112840_ _g1251412843_))))
                                 (_g1251112840_ _g1251412843_))))
                         (_g1251112840_ _g1251412843_))
                     (_g1251112840_ _g1251412843_))
                 (_g1251112840_ _g1251412843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1251112840_
                                                      _g1251412843_))))
                                             (_g1251112840_ _g1251412843_))
                                         (_g1251112840_ _g1251412843_))
                                     (_g1251112840_ _g1251412843_))))
                             (_g1251112840_ _g1251412843_))))
                     (_g1251112840_ _g1251412843_))
                 (_g1251112840_ _g1251412843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251112840_ _g1251412843_))
                                             (_g1251112840_ _g1251412843_))
                                         (_g1251112840_ _g1251412843_))))
                                 (_g1251112840_ _g1251412843_))))
                         (_g1251112840_ _g1251412843_)))))
              (_g1251013020_ _args12509_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12434_ _args12435_)
      (let ((_g1243812454_
             (lambda (_g1243912451_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1243912451_))))
        (let ((_g1243712461_ (lambda (_g1243912457_) ((lambda () '#f)))))
          (let ((_g1243612505_
                 (lambda (_g1243912464_)
                   (if (gx#stx-pair? _g1243912464_)
                       (let ((_e1244112466_ (gx#stx-e _g1243912464_)))
                         (let ((_hd1244212469_ (##car _e1244112466_))
                               (_tl1244312471_ (##cdr _e1244112466_)))
                           (if (gx#stx-pair? _hd1244212469_)
                               (let ((_e1244412474_ (gx#stx-e _hd1244212469_)))
                                 (let ((_hd1244512477_ (##car _e1244412474_))
                                       (_tl1244612479_ (##cdr _e1244412474_)))
                                   (if (gx#identifier? _hd1244512477_)
                                       (if (gx#stx-eq? '%#ref _hd1244512477_)
                                           (if (gx#stx-pair? _tl1244612479_)
                                               (let ((_e1244712482_
                                                      (gx#stx-e
                                                       _tl1244612479_)))
                                                 (let ((_hd1244812485_
                                                        (##car _e1244712482_))
                                                       (_tl1244912487_
                                                        (##cdr _e1244712482_)))
                                                   (if (gx#stx-null?
                                                        _tl1244912487_)
                                                       (if (gx#stx-null?
                                                            _tl1244312471_)
                                                           ((lambda (_L12490_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12490_)))
                                                            _hd1244812485_)
                                                           (_g1243712461_
                                                            _g1243912464_))
                                                       (_g1243712461_
                                                        _g1243912464_))))
                                               (_g1243712461_ _g1243912464_))
                                           (_g1243712461_ _g1243912464_))
                                       (_g1243712461_ _g1243912464_))))
                               (_g1243712461_ _g1243912464_))))
                       (_g1243712461_ _g1243912464_)))))
            (_g1243612505_ _args12435_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12318_ _args12319_)
      (let ((_g1232212348_
             (lambda (_g1232312345_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1232312345_))))
        (let ((_g1232112355_ (lambda (_g1232312351_) ((lambda () '#f)))))
          (let ((_g1232012431_
                 (lambda (_g1232312358_)
                   (if (gx#stx-pair? _g1232312358_)
                       (let ((_e1232612360_ (gx#stx-e _g1232312358_)))
                         (let ((_hd1232712363_ (##car _e1232612360_))
                               (_tl1232812365_ (##cdr _e1232612360_)))
                           (if (gx#stx-pair? _hd1232712363_)
                               (let ((_e1232912368_ (gx#stx-e _hd1232712363_)))
                                 (let ((_hd1233012371_ (##car _e1232912368_))
                                       (_tl1233112373_ (##cdr _e1232912368_)))
                                   (if (gx#identifier? _hd1233012371_)
                                       (if (gx#stx-eq? '%#ref _hd1233012371_)
                                           (if (gx#stx-pair? _tl1233112373_)
                                               (let ((_e1233212376_
                                                      (gx#stx-e
                                                       _tl1233112373_)))
                                                 (let ((_hd1233312379_
                                                        (##car _e1233212376_))
                                                       (_tl1233412381_
                                                        (##cdr _e1233212376_)))
                                                   (if (gx#stx-null?
                                                        _tl1233412381_)
                                                       (if (gx#stx-pair?
                                                            _tl1232812365_)
                                                           (let ((_e1233512384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1232812365_)))
                     (let ((_hd1233612387_ (##car _e1233512384_))
                           (_tl1233712389_ (##cdr _e1233512384_)))
                       (if (gx#stx-pair? _hd1233612387_)
                           (let ((_e1233812392_ (gx#stx-e _hd1233612387_)))
                             (let ((_hd1233912395_ (##car _e1233812392_))
                                   (_tl1234012397_ (##cdr _e1233812392_)))
                               (if (gx#identifier? _hd1233912395_)
                                   (if (gx#stx-eq? '%#quote _hd1233912395_)
                                       (if (gx#stx-pair? _tl1234012397_)
                                           (let ((_e1234112400_
                                                  (gx#stx-e _tl1234012397_)))
                                             (let ((_hd1234212403_
                                                    (##car _e1234112400_))
                                                   (_tl1234312405_
                                                    (##cdr _e1234112400_)))
                                               (if (gx#stx-null?
                                                    _tl1234312405_)
                                                   (if (gx#stx-null?
                                                        _tl1233712389_)
                                                       ((lambda (_L12408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12409_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12409_)
                   (gx#stx-e _L12408_)))
                _hd1234212403_
                _hd1233312379_)
               (_g1232112355_ _g1232312358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1232112355_
                                                    _g1232312358_))))
                                           (_g1232112355_ _g1232312358_))
                                       (_g1232112355_ _g1232312358_))
                                   (_g1232112355_ _g1232312358_))))
                           (_g1232112355_ _g1232312358_))))
                   (_g1232112355_ _g1232312358_))
               (_g1232112355_ _g1232312358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1232112355_ _g1232312358_))
                                           (_g1232112355_ _g1232312358_))
                                       (_g1232112355_ _g1232312358_))))
                               (_g1232112355_ _g1232312358_))))
                       (_g1232112355_ _g1232312358_)))))
            (_g1232012431_ _args12319_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12202_ _args12203_)
      (let ((_g1220612232_
             (lambda (_g1220712229_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1220712229_))))
        (let ((_g1220512239_ (lambda (_g1220712235_) ((lambda () '#f)))))
          (let ((_g1220412315_
                 (lambda (_g1220712242_)
                   (if (gx#stx-pair? _g1220712242_)
                       (let ((_e1221012244_ (gx#stx-e _g1220712242_)))
                         (let ((_hd1221112247_ (##car _e1221012244_))
                               (_tl1221212249_ (##cdr _e1221012244_)))
                           (if (gx#stx-pair? _hd1221112247_)
                               (let ((_e1221312252_ (gx#stx-e _hd1221112247_)))
                                 (let ((_hd1221412255_ (##car _e1221312252_))
                                       (_tl1221512257_ (##cdr _e1221312252_)))
                                   (if (gx#identifier? _hd1221412255_)
                                       (if (gx#stx-eq? '%#ref _hd1221412255_)
                                           (if (gx#stx-pair? _tl1221512257_)
                                               (let ((_e1221612260_
                                                      (gx#stx-e
                                                       _tl1221512257_)))
                                                 (let ((_hd1221712263_
                                                        (##car _e1221612260_))
                                                       (_tl1221812265_
                                                        (##cdr _e1221612260_)))
                                                   (if (gx#stx-null?
                                                        _tl1221812265_)
                                                       (if (gx#stx-pair?
                                                            _tl1221212249_)
                                                           (let ((_e1221912268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1221212249_)))
                     (let ((_hd1222012271_ (##car _e1221912268_))
                           (_tl1222112273_ (##cdr _e1221912268_)))
                       (if (gx#stx-pair? _hd1222012271_)
                           (let ((_e1222212276_ (gx#stx-e _hd1222012271_)))
                             (let ((_hd1222312279_ (##car _e1222212276_))
                                   (_tl1222412281_ (##cdr _e1222212276_)))
                               (if (gx#identifier? _hd1222312279_)
                                   (if (gx#stx-eq? '%#quote _hd1222312279_)
                                       (if (gx#stx-pair? _tl1222412281_)
                                           (let ((_e1222512284_
                                                  (gx#stx-e _tl1222412281_)))
                                             (let ((_hd1222612287_
                                                    (##car _e1222512284_))
                                                   (_tl1222712289_
                                                    (##cdr _e1222512284_)))
                                               (if (gx#stx-null?
                                                    _tl1222712289_)
                                                   (if (gx#stx-null?
                                                        _tl1222112273_)
                                                       ((lambda (_L12292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12293_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12293_)
                   (gx#stx-e _L12292_)))
                _hd1222612287_
                _hd1221712263_)
               (_g1220512239_ _g1220712242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1220512239_
                                                    _g1220712242_))))
                                           (_g1220512239_ _g1220712242_))
                                       (_g1220512239_ _g1220712242_))
                                   (_g1220512239_ _g1220712242_))))
                           (_g1220512239_ _g1220712242_))))
                   (_g1220512239_ _g1220712242_))
               (_g1220512239_ _g1220712242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1220512239_ _g1220712242_))
                                           (_g1220512239_ _g1220712242_))
                                       (_g1220512239_ _g1220712242_))))
                               (_g1220512239_ _g1220712242_))))
                       (_g1220512239_ _g1220712242_)))))
            (_g1220412315_ _args12203_))))))
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
    (lambda (_stx12151_)
      (let ((_g1215312166_
             (lambda (_g1215412163_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215412163_))))
        (let ((_g1215212199_
               (lambda (_g1215412169_)
                 (if (gx#stx-pair? _g1215412169_)
                     (let ((_e1215612171_ (gx#stx-e _g1215412169_)))
                       (let ((_hd1215712174_ (##car _e1215612171_))
                             (_tl1215812176_ (##cdr _e1215612171_)))
                         (if (gx#stx-pair? _tl1215812176_)
                             (let ((_e1215912179_ (gx#stx-e _tl1215812176_)))
                               (let ((_hd1216012182_ (##car _e1215912179_))
                                     (_tl1216112184_ (##cdr _e1215912179_)))
                                 (if (gx#stx-null? _tl1216112184_)
                                     ((lambda (_L12187_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12187_)))
                                      _hd1216012182_)
                                     (_g1215312166_ _g1215412169_))))
                             (_g1215312166_ _g1215412169_))))
                     (_g1215312166_ _g1215412169_)))))
          (_g1215212199_ _stx12151_)))))
  (define gxc#optimize-call%
    (lambda (_stx12057_)
      (let ((_g1206012080_
             (lambda (_g1206112077_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1206112077_))))
        (let ((_g1205912087_
               (lambda (_g1206112083_)
                 ((lambda () (gxc#xform-call% _stx12057_))))))
          (let ((_g1205812148_
                 (lambda (_g1206112090_)
                   (if (gx#stx-pair? _g1206112090_)
                       (let ((_e1206412092_ (gx#stx-e _g1206112090_)))
                         (let ((_hd1206512095_ (##car _e1206412092_))
                               (_tl1206612097_ (##cdr _e1206412092_)))
                           (if (gx#stx-pair? _tl1206612097_)
                               (let ((_e1206712100_ (gx#stx-e _tl1206612097_)))
                                 (let ((_hd1206812103_ (##car _e1206712100_))
                                       (_tl1206912105_ (##cdr _e1206712100_)))
                                   (if (gx#stx-pair? _hd1206812103_)
                                       (let ((_e1207012108_
                                              (gx#stx-e _hd1206812103_)))
                                         (let ((_hd1207112111_
                                                (##car _e1207012108_))
                                               (_tl1207212113_
                                                (##cdr _e1207012108_)))
                                           (if (gx#identifier? _hd1207112111_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1207112111_)
                                                   (if (gx#stx-pair?
                                                        _tl1207212113_)
                                                       (let ((_e1207312116_
                                                              (gx#stx-e
                                                               _tl1207212113_)))
                                                         (let ((_hd1207412119_
                                                                (##car _e1207312116_))
                                                               (_tl1207512121_
                                                                (##cdr _e1207312116_)))
                                                           (if (gx#stx-null?
                                                                _tl1207512121_)
                                                               ((lambda (_L12124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12125_)
                          (let ((_rator-id12143_
                                 (gxc#generate-runtime-binding-id _L12125_)))
                            (let ((_rator-type12145_
                                   (gxc#optimizer-resolve-type
                                    _rator-id12143_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type12145_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id12143_
                                       '" => "
                                       _rator-type12145_
                                       '" "
                                       (##structure-ref
                                        _rator-type12145_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type12145_
                                       'optimize-call
                                       _stx12057_
                                       _L12124_))
                                    (if (not _rator-type12145_)
                                        (gxc#xform-call% _stx12057_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx12057_
                                         _rator-type12145_)))))))
                        _tl1206912105_
                        _hd1207412119_)
                       (_g1205912087_ _g1206112090_))))
               (_g1205912087_ _g1206112090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1205912087_
                                                    _g1206112090_))
                                               (_g1205912087_ _g1206112090_))))
                                       (_g1205912087_ _g1206112090_))))
                               (_g1205912087_ _g1206112090_))))
                       (_g1205912087_ _g1206112090_)))))
            (_g1205812148_ _stx12057_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11912_ _stx11913_ _args11914_)
      (let ((_self1191511921_ _self11912_))
        (let ((_E1191711925_
               (lambda () (error '"No clause matching" _self1191511921_))))
          (let ((_K1191812049_
                 (lambda (_struct-t11928_)
                   (let ((_struct-type11930_
                          (gxc#optimizer-resolve-type _struct-t11928_)))
                     (let ((_struct-type1193111945_ _struct-type11930_))
                       (let ((_E1193511949_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1193111945_))))
                         (let ((_else1193411953_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11913_
                                   _struct-t11928_
                                   _struct-type11930_))))
                           (let ((_try-match1193311961_
                                  (lambda ()
                                    (let ((_K1193611958_
                                           (lambda ()
                                             (gxc#xform-call% _stx11913_))))
                                      (if (##eq? _struct-type1193111945_ '#f)
                                          (_K1193611958_)
                                          (_else1193411953_))))))
                             (let ((_K1193712024_
                                    (lambda (_plist11964_
                                             _struct-type-id11965_)
                                      (let ((_g1196811978_
                                             (lambda (_g1196911975_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1196911975_))))
                                        (let ((_g1196711985_
                                               (lambda (_g1196911981_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11913_))))))
                                          (let ((_g1196612021_
                                                 (lambda (_g1196911988_)
                                                   (if (gx#stx-pair?
                                                        _g1196911988_)
                                                       (let ((_e1197111990_
                                                              (gx#stx-e
                                                               _g1196911988_)))
                                                         (let ((_hd1197211993_
                                                                (##car _e1197111990_))
                                                               (_tl1197311995_
                                                                (##cdr _e1197111990_)))
                                                           (if (gx#stx-null?
                                                                _tl1197311995_)
                                                               ((lambda (_L11998_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr12018_ (gxc#compile-e _L11998_))
                                (_op12019_
                                 (if (if _plist11964_
                                         (assgetq 'final: _plist11964_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op12019_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11965_
                                                     '()))
                                         (cons _expr12018_ '())))
                             _stx11913_)))
                        _hd1197211993_)
                       (_g1196711985_ _g1196911988_))))
               (_g1196711985_ _g1196911988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1196612021_ _args11914_)))))))
                               (if (##structure-instance-of?
                                    _struct-type1193111945_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1193812027_
                                          (##vector-ref
                                           _struct-type1193111945_
                                           '1)))
                                     (let ((_struct-type-id12030_
                                            _e1193812027_))
                                       (let ((_e1193912032_
                                              (##vector-ref
                                               _struct-type1193111945_
                                               '2)))
                                         (let ((_e1194012035_
                                                (##vector-ref
                                                 _struct-type1193111945_
                                                 '3)))
                                           (let ((_e1194112038_
                                                  (##vector-ref
                                                   _struct-type1193111945_
                                                   '4)))
                                             (let ((_e1194212041_
                                                    (##vector-ref
                                                     _struct-type1193111945_
                                                     '5)))
                                               (let ((_e1194312044_
                                                      (##vector-ref
                                                       _struct-type1193111945_
                                                       '6)))
                                                 (let ((_plist12047_
                                                        _e1194312044_))
                                                   (_K1193712024_
                                                    _plist12047_
                                                    _struct-type-id12030_)))))))))
                                   (_try-match1193311961_)))))))))))
            (if (##structure-instance-of?
                 _self1191511921_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1191912052_ (##vector-ref _self1191511921_ '1)))
                  (let ((_struct-t12055_ _e1191912052_))
                    (_K1191812049_ _struct-t12055_)))
                (_E1191711925_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11808_ _stx11809_ _args11810_)
      (let ((_self1181111817_ _self11808_))
        (let ((_E1181311821_
               (lambda () (error '"No clause matching" _self1181111817_))))
          (let ((_K1181411904_
                 (lambda (_struct-t11824_)
                   (let ((_struct-type11826_
                          (gxc#optimizer-resolve-type _struct-t11824_)))
                     (let ((_struct-type1182711840_ _struct-type11826_))
                       (let ((_E1183111844_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1182711840_))))
                         (let ((_else1183011848_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11809_
                                   _struct-t11824_
                                   _struct-type11826_))))
                           (let ((_try-match1182911856_
                                  (lambda ()
                                    (let ((_K1183211853_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11824_)
                                               (gxc#xform-call% _stx11809_)))))
                                      (if (##eq? _struct-type1182711840_ '#f)
                                          (_K1183211853_)
                                          (_else1183011848_))))))
                             (let ((_K1183311878_
                                    (lambda (_ctor11859_
                                             _xfields11860_
                                             _fields11861_
                                             _type-id11862_)
                                      (let ((_args11864_
                                             (map gxc#compile-e _args11810_)))
                                        (let ((_$e11866_
                                               (if _ctor11859_
                                                   (if _xfields11860_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11826_
                                                        _ctor11859_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11866_
                                              ((lambda (_kons11869_)
                                                 (let ((_$obj11871_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11824_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11861_ _xfields11860_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11871_ '())) _args11864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11809_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11871_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11809_)))
                                               _$e11866_)
                                              (if (let ((_$e11873_
                                                         _ctor11859_))
                                                    (if _$e11873_
                                                        _$e11873_
                                                        (not _xfields11860_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11824_ '()))
                             _args11864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11809_)
                                                  (let ((_arity11876_
                                                         (fx+ _fields11861_
                                                              _xfields11860_)))
                                                    (if (fx= _arity11876_
                                                             (length _args11864_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11824_ '()))
                                   _args11864_)))
                 _stx11809_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11809_
                 _struct-t11824_
                 _arity11876_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (##structure-instance-of?
                                    _struct-type1182711840_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1183411881_
                                          (##vector-ref
                                           _struct-type1182711840_
                                           '1)))
                                     (let ((_type-id11884_ _e1183411881_))
                                       (let ((_e1183511886_
                                              (##vector-ref
                                               _struct-type1182711840_
                                               '2)))
                                         (let ((_e1183611889_
                                                (##vector-ref
                                                 _struct-type1182711840_
                                                 '3)))
                                           (let ((_fields11892_ _e1183611889_))
                                             (let ((_e1183711894_
                                                    (##vector-ref
                                                     _struct-type1182711840_
                                                     '4)))
                                               (let ((_xfields11897_
                                                      _e1183711894_))
                                                 (let ((_e1183811899_
                                                        (##vector-ref
                                                         _struct-type1182711840_
                                                         '5)))
                                                   (let ((_ctor11902_
                                                          _e1183811899_))
                                                     (_K1183311878_
                                                      _ctor11902_
                                                      _xfields11897_
                                                      _fields11892_
                                                      _type-id11884_))))))))))
                                   (_try-match1182911856_)))))))))))
            (if (##structure-instance-of?
                 _self1181111817_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1181511907_ (##vector-ref _self1181111817_ '1)))
                  (let ((_struct-t11910_ _e1181511907_))
                    (_K1181411904_ _struct-t11910_)))
                (_E1181311821_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11661_ _stx11662_ _args11663_)
      (let ((_self1166411671_ _self11661_))
        (let ((_E1166611675_
               (lambda () (error '"No clause matching" _self1166411671_))))
          (let ((_K1166711795_
                 (lambda (_off11678_ _struct-t11679_)
                   (let ((_struct-type11681_
                          (gxc#optimizer-resolve-type _struct-t11679_)))
                     (let ((_struct-type1168211694_ _struct-type11681_))
                       (let ((_E1168611698_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1168211694_))))
                         (let ((_else1168511702_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11662_
                                   _struct-t11679_
                                   _struct-type11681_))))
                           (let ((_try-match1168411710_
                                  (lambda ()
                                    (let ((_K1168711707_
                                           (lambda ()
                                             (gxc#xform-call% _stx11662_))))
                                      (if (##eq? _struct-type1168211694_ '#f)
                                          (_K1168711707_)
                                          (_else1168511702_))))))
                             (let ((_K1168811774_
                                    (lambda (_xfields11713_
                                             _fields11714_
                                             _struct-type-id11715_)
                                      (if _xfields11713_
                                          (let ((_g1171811728_
                                                 (lambda (_g1171911725_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1171911725_))))
                                            (let ((_g1171711735_
                                                   (lambda (_g1171911731_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11662_))))))
                                              (let ((_g1171611771_
                                                     (lambda (_g1171911738_)
                                                       (if (gx#stx-pair?
                                                            _g1171911738_)
                                                           (let ((_e1172111740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1171911738_)))
                     (let ((_hd1172211743_ (##car _e1172111740_))
                           (_tl1172311745_ (##cdr _e1172111740_)))
                       (if (gx#stx-null? _tl1172311745_)
                           ((lambda (_L11748_)
                              (let ((_expr11768_ (gxc#compile-e _L11748_))
                                    (_off11769_
                                     (fx+ _off11678_ _xfields11713_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11679_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11769_ '()))
                                                   (cons _expr11768_ '()))))
                                 _stx11662_)))
                            _hd1172211743_)
                           (_g1171711735_ _g1171911738_))))
                   (_g1171711735_ _g1171911738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1171611771_ _args11663_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11715_)
                                            (gxc#xform-call% _stx11662_))))))
                               (if (##structure-instance-of?
                                    _struct-type1168211694_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1168911777_
                                          (##vector-ref
                                           _struct-type1168211694_
                                           '1)))
                                     (let ((_struct-type-id11780_
                                            _e1168911777_))
                                       (let ((_e1169011782_
                                              (##vector-ref
                                               _struct-type1168211694_
                                               '2)))
                                         (let ((_e1169111785_
                                                (##vector-ref
                                                 _struct-type1168211694_
                                                 '3)))
                                           (let ((_fields11788_ _e1169111785_))
                                             (let ((_e1169211790_
                                                    (##vector-ref
                                                     _struct-type1168211694_
                                                     '4)))
                                               (let ((_xfields11793_
                                                      _e1169211790_))
                                                 (_K1168811774_
                                                  _xfields11793_
                                                  _fields11788_
                                                  _struct-type-id11780_))))))))
                                   (_try-match1168411710_)))))))))))
            (if (##structure-instance-of?
                 _self1166411671_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1166811798_ (##vector-ref _self1166411671_ '1)))
                  (let ((_struct-t11801_ _e1166811798_))
                    (let ((_e1166911803_ (##vector-ref _self1166411671_ '2)))
                      (let ((_off11806_ _e1166911803_))
                        (_K1166711795_ _off11806_ _struct-t11801_)))))
                (_E1166611675_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11497_ _stx11498_ _args11499_)
      (let ((_self1150011507_ _self11497_))
        (let ((_E1150211511_
               (lambda () (error '"No clause matching" _self1150011507_))))
          (let ((_K1150311648_
                 (lambda (_off11514_ _struct-t11515_)
                   (let ((_struct-type11517_
                          (gxc#optimizer-resolve-type _struct-t11515_)))
                     (let ((_struct-type1151811530_ _struct-type11517_))
                       (let ((_E1152211534_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1151811530_))))
                         (let ((_else1152111538_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11498_
                                   _struct-t11515_
                                   _struct-type11517_))))
                           (let ((_try-match1152011546_
                                  (lambda ()
                                    (let ((_K1152311543_
                                           (lambda ()
                                             (gxc#xform-call% _stx11498_))))
                                      (if (##eq? _struct-type1151811530_ '#f)
                                          (_K1152311543_)
                                          (_else1152111538_))))))
                             (let ((_K1152411627_
                                    (lambda (_xfields11549_
                                             _fields11550_
                                             _struct-type-id11551_)
                                      (if _xfields11549_
                                          (let ((_g1155411568_
                                                 (lambda (_g1155511565_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1155511565_))))
                                            (let ((_g1155311575_
                                                   (lambda (_g1155511571_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11498_))))))
                                              (let ((_g1155211624_
                                                     (lambda (_g1155511578_)
                                                       (if (gx#stx-pair?
                                                            _g1155511578_)
                                                           (let ((_e1155811580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1155511578_)))
                     (let ((_hd1155911583_ (##car _e1155811580_))
                           (_tl1156011585_ (##cdr _e1155811580_)))
                       (if (gx#stx-pair? _tl1156011585_)
                           (let ((_e1156111588_ (gx#stx-e _tl1156011585_)))
                             (let ((_hd1156211591_ (##car _e1156111588_))
                                   (_tl1156311593_ (##cdr _e1156111588_)))
                               (if (gx#stx-null? _tl1156311593_)
                                   ((lambda (_L11596_ _L11597_)
                                      (let ((_expr11620_
                                             (gxc#compile-e _L11597_))
                                            (_val11621_
                                             (gxc#compile-e _L11596_))
                                            (_off11622_
                                             (fx+ _off11514_
                                                  _xfields11549_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11622_ '()))
                   (cons _expr11620_ (cons _val11621_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11498_)))
                                    _hd1156211591_
                                    _hd1155911583_)
                                   (_g1155311575_ _g1155511578_))))
                           (_g1155311575_ _g1155511578_))))
                   (_g1155311575_ _g1155511578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1155211624_ _args11499_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11551_)
                                            (gxc#xform-call% _stx11498_))))))
                               (if (##structure-instance-of?
                                    _struct-type1151811530_
                                    (##type-id gxc#!struct-type::t))
                                   (let ((_e1152511630_
                                          (##vector-ref
                                           _struct-type1151811530_
                                           '1)))
                                     (let ((_struct-type-id11633_
                                            _e1152511630_))
                                       (let ((_e1152611635_
                                              (##vector-ref
                                               _struct-type1151811530_
                                               '2)))
                                         (let ((_e1152711638_
                                                (##vector-ref
                                                 _struct-type1151811530_
                                                 '3)))
                                           (let ((_fields11641_ _e1152711638_))
                                             (let ((_e1152811643_
                                                    (##vector-ref
                                                     _struct-type1151811530_
                                                     '4)))
                                               (let ((_xfields11646_
                                                      _e1152811643_))
                                                 (_K1152411627_
                                                  _xfields11646_
                                                  _fields11641_
                                                  _struct-type-id11633_))))))))
                                   (_try-match1152011546_)))))))))))
            (if (##structure-instance-of?
                 _self1150011507_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1150411651_ (##vector-ref _self1150011507_ '1)))
                  (let ((_struct-t11654_ _e1150411651_))
                    (let ((_e1150511656_ (##vector-ref _self1150011507_ '2)))
                      (let ((_off11659_ _e1150511656_))
                        (_K1150311648_ _off11659_ _struct-t11654_)))))
                (_E1150211511_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11453_ _stx11454_ _args11455_)
      (let ((_self1145611465_ _self11453_))
        (let ((_E1145811469_
               (lambda () (error '"No clause matching" _self1145611465_))))
          (let ((_K1145911476_
                 (lambda (_inline11472_ _dispatch11473_ _arity11474_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11453_ _args11455_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11454_
                          _arity11474_))
                     (if _inline11472_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11472_ _stx11454_)
                             _stx11454_)))
                         (if _dispatch11473_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11473_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11473_ '()))
                                             _args11455_))
                                 _stx11454_)))
                             (gxc#xform-call% _stx11454_)))))))
            (if (##structure-instance-of?
                 _self1145611465_
                 (##type-id gxc#!lambda::t))
                (let ((_e1146011479_ (##vector-ref _self1145611465_ '1)))
                  (let ((_e1146111482_ (##vector-ref _self1145611465_ '2)))
                    (let ((_arity11485_ _e1146111482_))
                      (let ((_e1146211487_ (##vector-ref _self1145611465_ '3)))
                        (let ((_dispatch11490_ _e1146211487_))
                          (let ((_e1146311492_
                                 (##vector-ref _self1145611465_ '4)))
                            (let ((_inline11495_ _e1146311492_))
                              (_K1145911476_
                               _inline11495_
                               _dispatch11490_
                               _arity11485_))))))))
                (_E1145811469_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11413_ _stx11414_ _args11415_)
      (let ((_self1141611423_ _self11413_))
        (let ((_E1141811427_
               (lambda () (error '"No clause matching" _self1141611423_))))
          (let ((_K1141911442_
                 (lambda (_clauses11430_)
                   (let ((_$e11436_
                          (find (lambda (_g1143111433_)
                                  (gxc#!lambda-arity-match?
                                   _g1143111433_
                                   _args11415_))
                                _clauses11430_)))
                     (if _$e11436_
                         ((lambda (_clause11439_)
                            (call-method
                             _clause11439_
                             'optimize-call
                             _stx11414_
                             _args11415_))
                          _$e11436_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11414_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11430_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11430_)))))))
            (if (##structure-instance-of?
                 _self1141611423_
                 (##type-id gxc#!case-lambda::t))
                (let ((_e1142011445_ (##vector-ref _self1141611423_ '1)))
                  (let ((_e1142111448_ (##vector-ref _self1141611423_ '2)))
                    (let ((_clauses11451_ _e1142111448_))
                      (_K1141911442_ _clauses11451_))))
                (_E1141811427_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11349_ _args11350_)
      (let ((_self1135111358_ _self11349_))
        (let ((_E1135311362_
               (lambda () (error '"No clause matching" _self1135111358_))))
          (let ((_K1135411402_
                 (lambda (_arity11365_)
                   (let ((_arity1136611375_ _arity11365_))
                     (let ((_E1136911379_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1136611375_))))
                       (let ((_try-match1136811395_
                              (lambda ()
                                (let ((_K1137011385_
                                       (lambda (_arity11383_)
                                         (fx>= (length _args11350_)
                                               _arity11383_))))
                                  (if (##pair? _arity1136611375_)
                                      (let ((_hd1137111388_
                                             (##car _arity1136611375_))
                                            (_tl1137211390_
                                             (##cdr _arity1136611375_)))
                                        (let ((_arity11393_ _hd1137111388_))
                                          (if (##null? _tl1137211390_)
                                              (_K1137011385_ _arity11393_)
                                              (_E1136911379_))))
                                      (_E1136911379_))))))
                         (let ((_K1137311399_
                                (lambda ()
                                  (fx= (length _args11350_) _arity11365_))))
                           (if (fixnum? _arity1136611375_)
                               (_K1137311399_)
                               (_try-match1136811395_)))))))))
            (if (##structure-instance-of?
                 _self1135111358_
                 (##type-id gxc#!lambda::t))
                (let ((_e1135511405_ (##vector-ref _self1135111358_ '1)))
                  (let ((_e1135611408_ (##vector-ref _self1135111358_ '2)))
                    (let ((_arity11411_ _e1135611408_))
                      (_K1135411402_ _arity11411_))))
                (_E1135311362_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11289_)
      (let ((_g1129111305_
             (lambda (_g1129211302_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1129211302_))))
        (let ((_g1129011346_
               (lambda (_g1129211308_)
                 (if (gx#stx-pair? _g1129211308_)
                     (let ((_e1129511310_ (gx#stx-e _g1129211308_)))
                       (let ((_hd1129611313_ (##car _e1129511310_))
                             (_tl1129711315_ (##cdr _e1129511310_)))
                         (if (gx#stx-pair? _tl1129711315_)
                             (let ((_e1129811318_ (gx#stx-e _tl1129711315_)))
                               (let ((_hd1129911321_ (##car _e1129811318_))
                                     (_tl1130011323_ (##cdr _e1129811318_)))
                                 ((lambda (_L11326_ _L11327_)
                                    (let ((_ctx11340_
                                           (gx#syntax-local-e__0 _L11327_)))
                                      (let ((_code11342_
                                             (##structure-ref
                                              _ctx11340_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11342_))
                                           gx#current-expander-context
                                           _ctx11340_)))))
                                  _tl1130011323_
                                  _hd1129911321_)))
                             (_g1129111305_ _g1129211308_))))
                     (_g1129111305_ _g1129211308_)))))
          (_g1129011346_ _stx11289_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx11099_)
      (let ((_generate-e11101_
             (lambda (_id11278_)
               (let ((_sym11280_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11278_)
                          '#f)))
                 (let ((_$e11282_
                        (if _sym11280_
                            (gxc#optimizer-lookup-type _sym11280_)
                            '#f)))
                   (if _$e11282_
                       ((lambda (_type11285_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11280_)
                            (let ((_typedecl11287_
                                   (call-method _type11285_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11280_
                                          (cons _typedecl11287_ '()))))))
                        _$e11282_)
                       '(begin)))))))
        (let ((_g1110411142_
               (lambda (_g1110511139_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1110511139_))))
          (let ((_g1110311223_
                 (lambda (_g1110511145_)
                   (if (gx#stx-pair? _g1110511145_)
                       (let ((_e1112011147_ (gx#stx-e _g1110511145_)))
                         (let ((_hd1112111150_ (##car _e1112011147_))
                               (_tl1112211152_ (##cdr _e1112011147_)))
                           (if (gx#stx-pair? _tl1112211152_)
                               (let ((_e1112311155_ (gx#stx-e _tl1112211152_)))
                                 (let ((_hd1112411158_ (##car _e1112311155_))
                                       (_tl1112511160_ (##cdr _e1112311155_)))
                                   (if (gx#stx-pair/null? _hd1112411158_)
                                       (if (fx>= (gx#stx-length _hd1112411158_)
                                                 '0)
                                           (let ((_g19452_
                                                  (gx#syntax-split-splice
                                                   _hd1112411158_
                                                   '0)))
                                             (begin
                                               (let ((_g19453_
                                                      (values-count _g19452_)))
                                                 (if (not (fx= _g19453_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19453_)))
                                               (let ((_target1112611163_
                                                      (values-ref _g19452_ 0))
                                                     (_tl1112811165_
                                                      (values-ref _g19452_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1112811165_)
                                                     (letrec ((_loop1112911168_
                                                               (lambda (_hd1112711171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1113311173_)
                         (if (gx#stx-pair? _hd1112711171_)
                             (let ((_e1113011176_ (gx#stx-e _hd1112711171_)))
                               (let ((_lp-hd1113111179_ (##car _e1113011176_))
                                     (_lp-tl1113211181_ (##cdr _e1113011176_)))
                                 (_loop1112911168_
                                  _lp-tl1113211181_
                                  (cons _lp-hd1113111179_ _id1113311173_))))
                             (let ((_id1113411184_ (reverse _id1113311173_)))
                               (if (gx#stx-pair? _tl1112511160_)
                                   (let ((_e1113511187_
                                          (gx#stx-e _tl1112511160_)))
                                     (let ((_hd1113611190_
                                            (##car _e1113511187_))
                                           (_tl1113711192_
                                            (##cdr _e1113511187_)))
                                       (if (gx#stx-null? _tl1113711192_)
                                           ((lambda (_L11195_)
                                              (let ((_types11221_
                                                     (map _generate-e11101_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1121311216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1121411218_)
                              (cons _g1121311216_ _g1121411218_))
                            '()
                            _L11195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11221_)))
                                            _id1113411184_)
                                           (_g1110411142_ _g1110511145_))))
                                   (_g1110411142_ _g1110511145_)))))))
               (_loop1112911168_ _target1112611163_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110411142_
                                                      _g1110511145_)))))
                                           (_g1110411142_ _g1110511145_))
                                       (_g1110411142_ _g1110511145_))))
                               (_g1110411142_ _g1110511145_))))
                       (_g1110411142_ _g1110511145_)))))
            (let ((_g1110211275_
                   (lambda (_g1110511226_)
                     (if (gx#stx-pair? _g1110511226_)
                         (let ((_e1110711228_ (gx#stx-e _g1110511226_)))
                           (let ((_hd1110811231_ (##car _e1110711228_))
                                 (_tl1110911233_ (##cdr _e1110711228_)))
                             (if (gx#stx-pair? _tl1110911233_)
                                 (let ((_e1111011236_
                                        (gx#stx-e _tl1110911233_)))
                                   (let ((_hd1111111239_ (##car _e1111011236_))
                                         (_tl1111211241_
                                          (##cdr _e1111011236_)))
                                     (if (gx#stx-pair? _hd1111111239_)
                                         (let ((_e1111311244_
                                                (gx#stx-e _hd1111111239_)))
                                           (let ((_hd1111411247_
                                                  (##car _e1111311244_))
                                                 (_tl1111511249_
                                                  (##cdr _e1111311244_)))
                                             (if (gx#stx-null? _tl1111511249_)
                                                 (if (gx#stx-pair?
                                                      _tl1111211241_)
                                                     (let ((_e1111611252_
                                                            (gx#stx-e
                                                             _tl1111211241_)))
                                                       (let ((_hd1111711255_
                                                              (##car _e1111611252_))
                                                             (_tl1111811257_
                                                              (##cdr _e1111611252_)))
                                                         (if (gx#stx-null?
                                                              _tl1111811257_)
                                                             ((lambda (_L11260_)
                                                                (_generate-e11101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11260_))
                      _hd1111411247_)
                     (_g1110311223_ _g1110511226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1110311223_
                                                      _g1110511226_))
                                                 (_g1110311223_
                                                  _g1110511226_))))
                                         (_g1110311223_ _g1110511226_))))
                                 (_g1110311223_ _g1110511226_))))
                         (_g1110311223_ _g1110511226_)))))
              (_g1110211275_ _stx11099_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10653_)
      (let ((_g1065710759_
             (lambda (_g1065810756_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1065810756_))))
        (let ((_g1065610766_ (lambda (_g1065810762_) ((lambda () '(begin))))))
          (let ((_g1065510916_
                 (lambda (_g1065810769_)
                   (if (gx#stx-pair? _g1065810769_)
                       (let ((_e1071610771_ (gx#stx-e _g1065810769_)))
                         (let ((_hd1071710774_ (##car _e1071610771_))
                               (_tl1071810776_ (##cdr _e1071610771_)))
                           (if (gx#stx-pair? _tl1071810776_)
                               (let ((_e1071910779_ (gx#stx-e _tl1071810776_)))
                                 (let ((_hd1072010782_ (##car _e1071910779_))
                                       (_tl1072110784_ (##cdr _e1071910779_)))
                                   (if (gx#stx-pair? _hd1072010782_)
                                       (let ((_e1072210787_
                                              (gx#stx-e _hd1072010782_)))
                                         (let ((_hd1072310790_
                                                (##car _e1072210787_))
                                               (_tl1072410792_
                                                (##cdr _e1072210787_)))
                                           (if (gx#identifier? _hd1072310790_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1072310790_)
                                                   (if (gx#stx-pair?
                                                        _tl1072410792_)
                                                       (let ((_e1072510795_
                                                              (gx#stx-e
                                                               _tl1072410792_)))
                                                         (let ((_hd1072610798_
                                                                (##car _e1072510795_))
                                                               (_tl1072710800_
                                                                (##cdr _e1072510795_)))
                                                           (if (gx#stx-null?
                                                                _tl1072710800_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1072110784_)
                           (let ((_e1072810803_ (gx#stx-e _tl1072110784_)))
                             (let ((_hd1072910806_ (##car _e1072810803_))
                                   (_tl1073010808_ (##cdr _e1072810803_)))
                               (if (gx#stx-pair? _hd1072910806_)
                                   (let ((_e1073110811_
                                          (gx#stx-e _hd1072910806_)))
                                     (let ((_hd1073210814_
                                            (##car _e1073110811_))
                                           (_tl1073310816_
                                            (##cdr _e1073110811_)))
                                       (if (gx#identifier? _hd1073210814_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1073210814_)
                                               (if (gx#stx-pair?
                                                    _tl1073310816_)
                                                   (let ((_e1073410819_
                                                          (gx#stx-e
                                                           _tl1073310816_)))
                                                     (let ((_hd1073510822_
                                                            (##car _e1073410819_))
                                                           (_tl1073610824_
                                                            (##cdr _e1073410819_)))
                                                       (if (gx#stx-null?
                                                            _tl1073610824_)
                                                           (if (gx#stx-pair?
                                                                _tl1073010808_)
                                                               (let ((_e1073710827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1073010808_)))
                         (let ((_hd1073810830_ (##car _e1073710827_))
                               (_tl1073910832_ (##cdr _e1073710827_)))
                           (if (gx#stx-pair? _hd1073810830_)
                               (let ((_e1074010835_ (gx#stx-e _hd1073810830_)))
                                 (let ((_hd1074110838_ (##car _e1074010835_))
                                       (_tl1074210840_ (##cdr _e1074010835_)))
                                   (if (gx#identifier? _hd1074110838_)
                                       (if (gx#stx-eq? '%#quote _hd1074110838_)
                                           (if (gx#stx-pair? _tl1074210840_)
                                               (let ((_e1074310843_
                                                      (gx#stx-e
                                                       _tl1074210840_)))
                                                 (let ((_hd1074410846_
                                                        (##car _e1074310843_))
                                                       (_tl1074510848_
                                                        (##cdr _e1074310843_)))
                                                   (if (gx#stx-null?
                                                        _tl1074510848_)
                                                       (if (gx#stx-pair?
                                                            _tl1073910832_)
                                                           (let ((_e1074610851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1073910832_)))
                     (let ((_hd1074710854_ (##car _e1074610851_))
                           (_tl1074810856_ (##cdr _e1074610851_)))
                       (if (gx#stx-pair? _hd1074710854_)
                           (let ((_e1074910859_ (gx#stx-e _hd1074710854_)))
                             (let ((_hd1075010862_ (##car _e1074910859_))
                                   (_tl1075110864_ (##cdr _e1074910859_)))
                               (if (gx#identifier? _hd1075010862_)
                                   (if (gx#stx-eq? '%#ref _hd1075010862_)
                                       (if (gx#stx-pair? _tl1075110864_)
                                           (let ((_e1075210867_
                                                  (gx#stx-e _tl1075110864_)))
                                             (let ((_hd1075310870_
                                                    (##car _e1075210867_))
                                                   (_tl1075410872_
                                                    (##cdr _e1075210867_)))
                                               (if (gx#stx-null?
                                                    _tl1075410872_)
                                                   (if (gx#stx-null?
                                                        _tl1074810856_)
                                                       ((lambda (_L10875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10876_
                         _L10877_
                         _L10878_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10877_)
                                  (cons (gx#stx-e _L10876_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10875_)
                                              (cons '#f '())))))
                      (_g1065610766_ _g1065810769_)))
                _hd1075310870_
                _hd1074410846_
                _hd1073510822_
                _hd1072610798_)
               (_g1065610766_ _g1065810769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065610766_
                                                    _g1065810769_))))
                                           (_g1065610766_ _g1065810769_))
                                       (_g1065610766_ _g1065810769_))
                                   (_g1065610766_ _g1065810769_))))
                           (_g1065610766_ _g1065810769_))))
                   (_g1065610766_ _g1065810769_))
               (_g1065610766_ _g1065810769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1065610766_ _g1065810769_))
                                           (_g1065610766_ _g1065810769_))
                                       (_g1065610766_ _g1065810769_))))
                               (_g1065610766_ _g1065810769_))))
                       (_g1065610766_ _g1065810769_))
                   (_g1065610766_ _g1065810769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065610766_
                                                    _g1065810769_))
                                               (_g1065610766_ _g1065810769_))
                                           (_g1065610766_ _g1065810769_))))
                                   (_g1065610766_ _g1065810769_))))
                           (_g1065610766_ _g1065810769_))
                       (_g1065610766_ _g1065810769_))))
               (_g1065610766_ _g1065810769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1065610766_
                                                    _g1065810769_))
                                               (_g1065610766_ _g1065810769_))))
                                       (_g1065610766_ _g1065810769_))))
                               (_g1065610766_ _g1065810769_))))
                       (_g1065610766_ _g1065810769_)))))
            (let ((_g1065411096_
                   (lambda (_g1065810919_)
                     (if (gx#stx-pair? _g1065810919_)
                         (let ((_e1066410921_ (gx#stx-e _g1065810919_)))
                           (let ((_hd1066510924_ (##car _e1066410921_))
                                 (_tl1066610926_ (##cdr _e1066410921_)))
                             (if (gx#stx-pair? _tl1066610926_)
                                 (let ((_e1066710929_
                                        (gx#stx-e _tl1066610926_)))
                                   (let ((_hd1066810932_ (##car _e1066710929_))
                                         (_tl1066910934_
                                          (##cdr _e1066710929_)))
                                     (if (gx#stx-pair? _hd1066810932_)
                                         (let ((_e1067010937_
                                                (gx#stx-e _hd1066810932_)))
                                           (let ((_hd1067110940_
                                                  (##car _e1067010937_))
                                                 (_tl1067210942_
                                                  (##cdr _e1067010937_)))
                                             (if (gx#identifier?
                                                  _hd1067110940_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1067110940_)
                                                     (if (gx#stx-pair?
                                                          _tl1067210942_)
                                                         (let ((_e1067310945_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1067210942_)))
                   (let ((_hd1067410948_ (##car _e1067310945_))
                         (_tl1067510950_ (##cdr _e1067310945_)))
                     (if (gx#stx-null? _tl1067510950_)
                         (if (gx#stx-pair? _tl1066910934_)
                             (let ((_e1067610953_ (gx#stx-e _tl1066910934_)))
                               (let ((_hd1067710956_ (##car _e1067610953_))
                                     (_tl1067810958_ (##cdr _e1067610953_)))
                                 (if (gx#stx-pair? _hd1067710956_)
                                     (let ((_e1067910961_
                                            (gx#stx-e _hd1067710956_)))
                                       (let ((_hd1068010964_
                                              (##car _e1067910961_))
                                             (_tl1068110966_
                                              (##cdr _e1067910961_)))
                                         (if (gx#identifier? _hd1068010964_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1068010964_)
                                                 (if (gx#stx-pair?
                                                      _tl1068110966_)
                                                     (let ((_e1068210969_
                                                            (gx#stx-e
                                                             _tl1068110966_)))
                                                       (let ((_hd1068310972_
                                                              (##car _e1068210969_))
                                                             (_tl1068410974_
                                                              (##cdr _e1068210969_)))
                                                         (if (gx#stx-null?
                                                              _tl1068410974_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1067810958_)
                         (let ((_e1068510977_ (gx#stx-e _tl1067810958_)))
                           (let ((_hd1068610980_ (##car _e1068510977_))
                                 (_tl1068710982_ (##cdr _e1068510977_)))
                             (if (gx#stx-pair? _hd1068610980_)
                                 (let ((_e1068810985_
                                        (gx#stx-e _hd1068610980_)))
                                   (let ((_hd1068910988_ (##car _e1068810985_))
                                         (_tl1069010990_
                                          (##cdr _e1068810985_)))
                                     (if (gx#identifier? _hd1068910988_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1068910988_)
                                             (if (gx#stx-pair? _tl1069010990_)
                                                 (let ((_e1069110993_
                                                        (gx#stx-e
                                                         _tl1069010990_)))
                                                   (let ((_hd1069210996_
                                                          (##car _e1069110993_))
                                                         (_tl1069310998_
                                                          (##cdr _e1069110993_)))
                                                     (if (gx#stx-null?
                                                          _tl1069310998_)
                                                         (if (gx#stx-pair?
                                                              _tl1068710982_)
                                                             (let ((_e1069411001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1068710982_)))
                       (let ((_hd1069511004_ (##car _e1069411001_))
                             (_tl1069611006_ (##cdr _e1069411001_)))
                         (if (gx#stx-pair? _hd1069511004_)
                             (let ((_e1069711009_ (gx#stx-e _hd1069511004_)))
                               (let ((_hd1069811012_ (##car _e1069711009_))
                                     (_tl1069911014_ (##cdr _e1069711009_)))
                                 (if (gx#identifier? _hd1069811012_)
                                     (if (gx#stx-eq? '%#ref _hd1069811012_)
                                         (if (gx#stx-pair? _tl1069911014_)
                                             (let ((_e1070011017_
                                                    (gx#stx-e _tl1069911014_)))
                                               (let ((_hd1070111020_
                                                      (##car _e1070011017_))
                                                     (_tl1070211022_
                                                      (##cdr _e1070011017_)))
                                                 (if (gx#stx-null?
                                                      _tl1070211022_)
                                                     (if (gx#stx-pair?
                                                          _tl1069611006_)
                                                         (let ((_e1070311025_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1069611006_)))
                   (let ((_hd1070411028_ (##car _e1070311025_))
                         (_tl1070511030_ (##cdr _e1070311025_)))
                     (if (gx#stx-pair? _hd1070411028_)
                         (let ((_e1070611033_ (gx#stx-e _hd1070411028_)))
                           (let ((_hd1070711036_ (##car _e1070611033_))
                                 (_tl1070811038_ (##cdr _e1070611033_)))
                             (if (gx#identifier? _hd1070711036_)
                                 (if (gx#stx-eq? '%#quote _hd1070711036_)
                                     (if (gx#stx-pair? _tl1070811038_)
                                         (let ((_e1070911041_
                                                (gx#stx-e _tl1070811038_)))
                                           (let ((_hd1071011044_
                                                  (##car _e1070911041_))
                                                 (_tl1071111046_
                                                  (##cdr _e1070911041_)))
                                             (if (gx#stx-null? _tl1071111046_)
                                                 (if (gx#stx-null?
                                                      _tl1070511030_)
                                                     ((lambda (_L11049_
                                                               _L11050_
                                                               _L11051_
                                                               _L11052_
                                                               _L11053_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11053_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L11052_)
                                (cons (gx#stx-e _L11051_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L11050_)
                                            (cons (gx#stx-e _L11049_) '())))))
                    (_g1065510916_ _g1065810919_)))
              _hd1071011044_
              _hd1070111020_
              _hd1069210996_
              _hd1068310972_
              _hd1067410948_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065510916_
                                                      _g1065810919_))
                                                 (_g1065510916_
                                                  _g1065810919_))))
                                         (_g1065510916_ _g1065810919_))
                                     (_g1065510916_ _g1065810919_))
                                 (_g1065510916_ _g1065810919_))))
                         (_g1065510916_ _g1065810919_))))
                 (_g1065510916_ _g1065810919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065510916_
                                                      _g1065810919_))))
                                             (_g1065510916_ _g1065810919_))
                                         (_g1065510916_ _g1065810919_))
                                     (_g1065510916_ _g1065810919_))))
                             (_g1065510916_ _g1065810919_))))
                     (_g1065510916_ _g1065810919_))
                 (_g1065510916_ _g1065810919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1065510916_ _g1065810919_))
                                             (_g1065510916_ _g1065810919_))
                                         (_g1065510916_ _g1065810919_))))
                                 (_g1065510916_ _g1065810919_))))
                         (_g1065510916_ _g1065810919_))
                     (_g1065510916_ _g1065810919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065510916_
                                                      _g1065810919_))
                                                 (_g1065510916_ _g1065810919_))
                                             (_g1065510916_ _g1065810919_))))
                                     (_g1065510916_ _g1065810919_))))
                             (_g1065510916_ _g1065810919_))
                         (_g1065510916_ _g1065810919_))))
                 (_g1065510916_ _g1065810919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1065510916_
                                                      _g1065810919_))
                                                 (_g1065510916_
                                                  _g1065810919_))))
                                         (_g1065510916_ _g1065810919_))))
                                 (_g1065510916_ _g1065810919_))))
                         (_g1065510916_ _g1065810919_)))))
              (_g1065411096_ _stx10653_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10629_)
      (let ((_self1063010636_ _self10629_))
        (let ((_E1063210640_
               (lambda () (error '"No clause matching" _self1063010636_))))
          (let ((_K1063310645_
                 (lambda (_alias-id10643_)
                   (cons '@alias (cons _alias-id10643_ '())))))
            (if (##structure-instance-of?
                 _self1063010636_
                 (##type-id gxc#!alias::t))
                (let ((_e1063410648_ (##vector-ref _self1063010636_ '1)))
                  (let ((_alias-id10651_ _e1063410648_))
                    (_K1063310645_ _alias-id10651_)))
                (_E1063210640_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10573_)
      (let ((_self1057410585_ _self10573_))
        (let ((_E1057610589_
               (lambda () (error '"No clause matching" _self1057410585_))))
          (let ((_K1057710598_
                 (lambda (_plist10592_
                          _ctor10593_
                          _fields10594_
                          _super10595_
                          _type-id10596_)
                   (cons '@struct-type
                         (cons _type-id10596_
                               (cons _super10595_
                                     (cons _fields10594_
                                           (cons _ctor10593_
                                                 (cons _plist10592_
                                                       '())))))))))
            (if (##structure-instance-of?
                 _self1057410585_
                 (##type-id gxc#!struct-type::t))
                (let ((_e1057810601_ (##vector-ref _self1057410585_ '1)))
                  (let ((_type-id10604_ _e1057810601_))
                    (let ((_e1057910606_ (##vector-ref _self1057410585_ '2)))
                      (let ((_super10609_ _e1057910606_))
                        (let ((_e1058010611_
                               (##vector-ref _self1057410585_ '3)))
                          (let ((_fields10614_ _e1058010611_))
                            (let ((_e1058110616_
                                   (##vector-ref _self1057410585_ '4)))
                              (let ((_e1058210619_
                                     (##vector-ref _self1057410585_ '5)))
                                (let ((_ctor10622_ _e1058210619_))
                                  (let ((_e1058310624_
                                         (##vector-ref _self1057410585_ '6)))
                                    (let ((_plist10627_ _e1058310624_))
                                      (_K1057710598_
                                       _plist10627_
                                       _ctor10622_
                                       _fields10614_
                                       _super10609_
                                       _type-id10604_))))))))))))
                (_E1057610589_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10549_)
      (let ((_self1055010556_ _self10549_))
        (let ((_E1055210560_
               (lambda () (error '"No clause matching" _self1055010556_))))
          (let ((_K1055310565_
                 (lambda (_struct-t10563_)
                   (cons '@struct-pred (cons _struct-t10563_ '())))))
            (if (##structure-instance-of?
                 _self1055010556_
                 (##type-id gxc#!struct-pred::t))
                (let ((_e1055410568_ (##vector-ref _self1055010556_ '1)))
                  (let ((_struct-t10571_ _e1055410568_))
                    (_K1055310565_ _struct-t10571_)))
                (_E1055210560_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10525_)
      (let ((_self1052610532_ _self10525_))
        (let ((_E1052810536_
               (lambda () (error '"No clause matching" _self1052610532_))))
          (let ((_K1052910541_
                 (lambda (_struct-t10539_)
                   (cons '@struct-cons (cons _struct-t10539_ '())))))
            (if (##structure-instance-of?
                 _self1052610532_
                 (##type-id gxc#!struct-cons::t))
                (let ((_e1053010544_ (##vector-ref _self1052610532_ '1)))
                  (let ((_struct-t10547_ _e1053010544_))
                    (_K1052910541_ _struct-t10547_)))
                (_E1052810536_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10494_)
      (let ((_self1049510502_ _self10494_))
        (let ((_E1049710506_
               (lambda () (error '"No clause matching" _self1049510502_))))
          (let ((_K1049810512_
                 (lambda (_off10509_ _struct-t10510_)
                   (cons '@struct-getf
                         (cons _struct-t10510_ (cons _off10509_ '()))))))
            (if (##structure-instance-of?
                 _self1049510502_
                 (##type-id gxc#!struct-getf::t))
                (let ((_e1049910515_ (##vector-ref _self1049510502_ '1)))
                  (let ((_struct-t10518_ _e1049910515_))
                    (let ((_e1050010520_ (##vector-ref _self1049510502_ '2)))
                      (let ((_off10523_ _e1050010520_))
                        (_K1049810512_ _off10523_ _struct-t10518_)))))
                (_E1049710506_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10463_)
      (let ((_self1046410471_ _self10463_))
        (let ((_E1046610475_
               (lambda () (error '"No clause matching" _self1046410471_))))
          (let ((_K1046710481_
                 (lambda (_off10478_ _struct-t10479_)
                   (cons '@struct-setf
                         (cons _struct-t10479_ (cons _off10478_ '()))))))
            (if (##structure-instance-of?
                 _self1046410471_
                 (##type-id gxc#!struct-setf::t))
                (let ((_e1046810484_ (##vector-ref _self1046410471_ '1)))
                  (let ((_struct-t10487_ _e1046810484_))
                    (let ((_e1046910489_ (##vector-ref _self1046410471_ '2)))
                      (let ((_off10492_ _e1046910489_))
                        (_K1046710481_ _off10492_ _struct-t10487_)))))
                (_E1046610475_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10411_)
      (let ((_self1041210422_ _self10411_))
        (let ((_E1041410426_
               (lambda () (error '"No clause matching" _self1041210422_))))
          (let ((_K1041510437_
                 (lambda (_typedecl10429_
                          _inline10430_
                          _dispatch10431_
                          _arity10432_)
                   (if _inline10430_
                       (let ((_$e10434_ _typedecl10429_))
                         (if _$e10434_
                             _$e10434_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10432_
                                   (cons _dispatch10431_ '())))))))
            (if (##structure-instance-of?
                 _self1041210422_
                 (##type-id gxc#!lambda::t))
                (let ((_e1041610440_ (##vector-ref _self1041210422_ '1)))
                  (let ((_e1041710443_ (##vector-ref _self1041210422_ '2)))
                    (let ((_arity10446_ _e1041710443_))
                      (let ((_e1041810448_ (##vector-ref _self1041210422_ '3)))
                        (let ((_dispatch10451_ _e1041810448_))
                          (let ((_e1041910453_
                                 (##vector-ref _self1041210422_ '4)))
                            (let ((_inline10456_ _e1041910453_))
                              (let ((_e1042010458_
                                     (##vector-ref _self1041210422_ '5)))
                                (let ((_typedecl10461_ _e1042010458_))
                                  (_K1041510437_
                                   _typedecl10461_
                                   _inline10456_
                                   _dispatch10451_
                                   _arity10446_))))))))))
                (_E1041410426_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10344_)
      (let ((_clause-e10346_
             (lambda (_clause10376_)
               (let ((_clause1037710385_ _clause10376_))
                 (let ((_E1037910389_
                        (lambda ()
                          (error '"No clause matching" _clause1037710385_))))
                   (let ((_K1038010395_
                          (lambda (_dispatch10392_ _arity10393_)
                            (cons _arity10393_ (cons _dispatch10392_ '())))))
                     (if (##structure-instance-of?
                          _clause1037710385_
                          (##type-id gxc#!lambda::t))
                         (let ((_e1038110398_
                                (##vector-ref _clause1037710385_ '1)))
                           (let ((_e1038210401_
                                  (##vector-ref _clause1037710385_ '2)))
                             (let ((_arity10404_ _e1038210401_))
                               (let ((_e1038310406_
                                      (##vector-ref _clause1037710385_ '3)))
                                 (let ((_dispatch10409_ _e1038310406_))
                                   (_K1038010395_
                                    _dispatch10409_
                                    _arity10404_))))))
                         (_E1037910389_))))))))
        (let ((_self1034710354_ _self10344_))
          (let ((_E1034910358_
                 (lambda () (error '"No clause matching" _self1034710354_))))
            (let ((_K1035010365_
                   (lambda (_clauses10361_)
                     (let ((_clauses10363_
                            (map _clause-e10346_ _clauses10361_)))
                       (cons '@case-lambda _clauses10363_)))))
              (if (##structure-instance-of?
                   _self1034710354_
                   (##type-id gxc#!case-lambda::t))
                  (let ((_e1035110368_ (##vector-ref _self1034710354_ '1)))
                    (let ((_e1035210371_ (##vector-ref _self1034710354_ '2)))
                      (let ((_clauses10374_ _e1035210371_))
                        (_K1035010365_ _clauses10374_))))
                  (_E1034910358_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10342_) (gxc#generate-runtime-binding-id _stx10342_))))
