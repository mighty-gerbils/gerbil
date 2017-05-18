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
    (lambda _$args19205_
      (apply make-struct-instance gxc#optimizer-info::t _$args19205_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self19203_)
      (direct-struct-instance-init!
       _self19203_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj19217 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj19217) __obj19217))))))
  (define gxc#optimize!
    (lambda (_ctx19197_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx19197_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx19197_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code19200_
                  (gxc#optimize-source
                   (##structure-ref _ctx19197_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx19197_
              _code19200_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx19142_)
      (let ((_deps19144_
             (let ((_imports19188_
                    (##structure-ref _ctx19142_ '8 gx#module-context::t '#f)))
               (let ((_$e19190_
                      (gx#core-context-prelude__opt-lambda10983 _ctx19142_)))
                 (if _$e19190_
                     ((lambda (_g1919219194_)
                        (cons _g1919219194_ _imports19188_))
                      _$e19190_)
                     _imports19188_)))))
        ((letrec ((_lp19146_
                   (lambda (_rest19148_)
                     (let ((_rest1914919157_ _rest19148_))
                       (let ((_E1915219161_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1914919157_))))
                         (let ((_else1915119165_ (lambda () '#!void)))
                           (let ((_K1915319176_
                                  (lambda (_rest19168_ _hd19169_)
                                    (if (##structure-instance-of?
                                         _hd19169_
                                         'gx#module-context::t)
                                        (begin
                                          (if (table-ref
                                               (##structure-ref
                                                (gxc#current-compile-optimizer-info)
                                                '2
                                                gxc#optimizer-info::t
                                                '#f)
                                               (##structure-ref
                                                _hd19169_
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '#f)
                                              '#!void
                                              (begin
                                                (let ((_$e19171_
                                                       (gx#core-context-prelude__opt-lambda10983
                                                        _hd19169_)))
                                                  (if _$e19171_
                                                      ((lambda (_pre19174_)
                                                         (_lp19146_
                                                          (cons _pre19174_
                                                                (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd19169_
                         '8
                         gx#module-context::t
                         '#f))))
               _$e19171_)
              (_lp19146_
               (##structure-ref _hd19169_ '8 gx#module-context::t '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#optimizer-load-ssxi
                                                 _hd19169_)))
                                          (_lp19146_ _rest19168_))
                                        (if (##structure-instance-of?
                                             _hd19169_
                                             'gx#prelude-context::t)
                                            (begin
                                              (if (table-ref
                                                   (##structure-ref
                                                    (gxc#current-compile-optimizer-info)
                                                    '2
                                                    gxc#optimizer-info::t
                                                    '#f)
                                                   (##structure-ref
                                                    _hd19169_
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   '#f)
                                                  '#!void
                                                  (begin
                                                    (_lp19146_
                                                     (##structure-ref
                                                      _hd19169_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f))
                                                    (gxc#optimizer-load-ssxi
                                                     _hd19169_)))
                                              (_lp19146_ _rest19168_))
                                            (if (##structure-direct-instance-of?
                                                 _hd19169_
                                                 'gx#module-import::t)
                                                (_lp19146_
                                                 (cons (##structure-ref
                                                        _hd19169_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       _rest19168_))
                                                (if (##structure-direct-instance-of?
                                                     _hd19169_
                                                     'gx#module-export::t)
                                                    (_lp19146_
                                                     (cons (##structure-ref
                                                            _hd19169_
                                                            '1
                                                            gx#module-export::t
                                                            '#f)
                                                           _rest19168_))
                                                    (if (##structure-direct-instance-of?
                                                         _hd19169_
                                                         'gx#import-set::t)
                                                        (_lp19146_
                                                         (cons (##structure-ref
                                                                _hd19169_
                                                                '1
                                                                gx#import-set::t
                                                                '#f)
                                                               _rest19168_))
                                                        (error '"Unexpected module import"
                                                               _hd19169_)))))))))
                             (if (##pair? _rest1914919157_)
                                 (let ((_hd1915419179_
                                        (##car _rest1914919157_))
                                       (_tl1915519181_
                                        (##cdr _rest1914919157_)))
                                   (let ((_hd19184_ _hd1915419179_))
                                     (let ((_rest19186_ _tl1915519181_))
                                       (_K1915319176_ _rest19186_ _hd19184_))))
                                 (_else1915119165_)))))))))
           _lp19146_)
         _deps19144_))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx19122_)
      (if (if (##structure-instance-of? _ctx19122_ 'gx#module-context::t)
              (list? (##structure-ref _ctx19122_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let ((_ht19124_
                 (##structure-ref
                  (gxc#current-compile-optimizer-info)
                  '2
                  gxc#optimizer-info::t
                  '#f)))
            (let ((_id19126_
                   (##structure-ref _ctx19122_ '1 gx#expander-context::t '#f)))
              (let ((_mod19128_ (table-ref _ht19124_ _id19126_ '#f)))
                (let ()
                  (let ((_$e19131_ _mod19128_))
                    (if _$e19131_
                        _$e19131_
                        (let ((_mod19134_
                               (gxc#optimizer-import-ssxi _ctx19122_)))
                          (let ((_val19139_
                                 (let ((_$e19136_ _mod19134_))
                                   (if _$e19136_ _$e19136_ '#!void))))
                            (let ()
                              (begin
                                (table-set! _ht19124_ _id19126_ _val19139_)
                                _val19139_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx19099_)
      (let ((_catch-e19101_
             (lambda (_exn19120_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (##structure-ref
                         _ctx19099_
                         '1
                         gx#expander-context::t
                         '#f))
                       (display-exception _exn19120_))
                     '#!void)
                 '#f))))
        (let ((_import-e19102_
               (lambda ()
                 (let ((_str-id19105_
                        (string-append
                         (symbol->string
                          (##structure-ref
                           _ctx19099_
                           '1
                           gx#expander-context::t
                           '#f))
                         '".ssxi")))
                   (let ((_artefact-path19113_
                          (let ((_odir1910619108_
                                 (gxc#current-compile-output-dir)))
                            (if _odir1910619108_
                                (let ((_odir19111_ _odir1910619108_))
                                  (path-expand
                                   (string-append _str-id19105_ '".ss")
                                   _odir19111_))
                                '#f))))
                     (let ((_library-path19115_
                            (string->symbol
                             (string-append '":" _str-id19105_))))
                       (let ((_ssxi-path19117_
                              (if (if _artefact-path19113_
                                      (file-exists? _artefact-path19113_)
                                      '#f)
                                  _artefact-path19113_
                                  _library-path19115_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path19117_)
                             (gx#import-module__opt-lambda11018
                              _ssxi-path19117_
                              '#t
                              '#t))))))))))
          (if (##structure-ref _ctx19099_ '1 gx#expander-context::t '#f)
              (with-catch _catch-e19101_ _import-e19102_)
              '#f)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args19096_
      (apply make-struct-instance gxc#!type::t _$args19096_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args19093_
      (apply make-struct-instance gxc#!alias::t _$args19093_)))
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
    (lambda _$args19090_
      (apply make-struct-instance gxc#!struct-type::t _$args19090_)))
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
    (lambda _$args19087_
      (apply make-struct-instance gxc#!procedure::t _$args19087_)))
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
    (lambda _$args19084_
      (apply make-struct-instance gxc#!struct-pred::t _$args19084_)))
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
    (lambda _$args19081_
      (apply make-struct-instance gxc#!struct-cons::t _$args19081_)))
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
    (lambda _$args19078_
      (apply make-struct-instance gxc#!struct-getf::t _$args19078_)))
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
    (lambda _$args19075_
      (apply make-struct-instance gxc#!struct-setf::t _$args19075_)))
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
    (lambda _$args19072_
      (apply make-struct-instance gxc#!lambda::t _$args19072_)))
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
    (lambda _$args19069_
      (apply make-struct-instance gxc#!case-lambda::t _$args19069_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!struct-type:::init!
    (lambda (_self19061_
             _id19062_
             _super19063_
             _fields19064_
             _xfields19065_
             _ctor19066_
             _plist19067_)
      (direct-struct-instance-init!
       _self19061_
       _id19062_
       _super19063_
       _fields19064_
       _xfields19065_
       _ctor19066_
       _plist19067_
       '#f)))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__opt-lambda19025
      (lambda (_self19027_
               _id19028_
               _arity19029_
               _dispatch19030_
               _inline19031_
               _typedecl19032_)
        (direct-struct-instance-init!
         _self19027_
         _id19028_
         _arity19029_
         _dispatch19030_
         _inline19031_
         _typedecl19032_)))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self19037_ _id19038_ _arity19039_ _dispatch19040_)
          (let ((_inline19042_ '#f))
            (let ((_typedecl19044_ '#f))
              (direct-struct-instance-init!
               _self19037_
               _id19038_
               _arity19039_
               _dispatch19040_
               _inline19042_
               _typedecl19044_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self19046_
                 _id19047_
                 _arity19048_
                 _dispatch19049_
                 _inline19050_)
          (let ((_typedecl19052_ '#f))
            (direct-struct-instance-init!
             _self19046_
             _id19047_
             _arity19048_
             _dispatch19049_
             _inline19050_
             _typedecl19052_))))
      (define gxc#!lambda:::init!
        (lambda _g19225_
          (let ((_g19224_ (length _g19225_)))
            (cond ((fx= _g19224_ 4) (apply gxc#!lambda:::init!__0 _g19225_))
                  ((fx= _g19224_ 5) (apply gxc#!lambda:::init!__1 _g19225_))
                  ((fx= _g19224_ 6)
                   (apply direct-struct-instance-init! _g19225_))
                  (else (error "No clause matching arguments" _g19225_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type19019_)
      (let ((_$e19021_
             (##structure-ref _type19019_ '7 gxc#!struct-type::t '#f)))
        (if _$e19021_
            (values _$e19021_)
            (let ((_vtab19024_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type19019_
                 _vtab19024_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19024_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type19010_ _method19011_)
      (let ((_vtab1901219014_
             (##structure-ref _type19010_ '7 gxc#!struct-type::t '#f)))
        (if _vtab1901219014_
            (let ((_vtab19017_ _vtab1901219014_))
              (table-ref _vtab19017_ _method19011_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__opt-lambda18992
      (lambda (_sym18994_ _type18995_ _local?18996_)
        (begin
          (if (##structure-instance-of? _type18995_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym18994_
                     _type18995_))
          (gxc#verbose
           '"declare-type "
           _sym18994_
           '" "
           (##vector->list _type18995_))
          (table-set!
           (if _local?18996_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym18994_
           _type18995_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym19001_ _type19002_)
          (let ((_local?19004_ '#f))
            (gxc#optimizer-declare-type!__opt-lambda18992
             _sym19001_
             _type19002_
             _local?19004_))))
      (define gxc#optimizer-declare-type!
        (lambda _g19227_
          (let ((_g19226_ (length _g19227_)))
            (cond ((fx= _g19226_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g19227_))
                  ((fx= _g19226_ 3)
                   (apply gxc#optimizer-declare-type!__opt-lambda18992
                          _g19227_))
                  (else (error "No clause matching arguments" _g19227_))))))))
  (begin
    (define gxc#optimizer-declare-method!__opt-lambda18968
      (lambda (_type-t18970_ _method18971_ _sym18972_ _rebind?18973_)
        (let ((_type18975_ (gxc#optimizer-resolve-type _type-t18970_)))
          (if (##structure-instance-of? _type18975_ 'gxc#!struct-type::t)
              (let ((_vtab18977_ (gxc#!struct-type-vtab _type18975_)))
                (if _rebind?18973_
                    (if (hash-key? _vtab18977_ _method18971_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t18970_
                         '" "
                         _method18971_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t18970_
                         '" "
                         _method18971_))
                    (if (hash-key? _vtab18977_ _method18971_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t18970_
                           '" "
                           _method18971_
                           '" => "
                           _sym18972_)
                          (table-set! _vtab18977_ _method18971_ _sym18972_)))))
              (if (not _type18975_)
                  (gxc#verbose '"declare-method: unknown type " _type-t18970_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18970_
                         _type18975_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t18982_ _method18983_ _sym18984_)
          (let ((_rebind?18986_ '#f))
            (gxc#optimizer-declare-method!__opt-lambda18968
             _type-t18982_
             _method18983_
             _sym18984_
             _rebind?18986_))))
      (define gxc#optimizer-declare-method!
        (lambda _g19229_
          (let ((_g19228_ (length _g19229_)))
            (cond ((fx= _g19228_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g19229_))
                  ((fx= _g19228_ 4)
                   (apply gxc#optimizer-declare-method!__opt-lambda18968
                          _g19229_))
                  (else (error "No clause matching arguments" _g19229_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym18958_)
      (let ((_$e18966_
             (let ((_ht1895918961_ (gxc#current-compile-local-type)))
               (if _ht1895918961_
                   (let ((_ht18964_ _ht1895918961_))
                     (table-ref _ht18964_ _sym18958_ '#f))
                   '#f))))
        (if _$e18966_
            _$e18966_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym18958_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym18950_)
      (let ((_type1895118953_ (gxc#optimizer-lookup-type _sym18950_)))
        (if _type1895118953_
            (let ((_type18956_ _type1895118953_))
              (if (##structure-instance-of? _type18956_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type18956_ '1 gxc#!type::t '#f))
                  _type18956_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t18945_ _method18946_)
      (let ((_type18948_ (gxc#optimizer-resolve-type _type-t18945_)))
        (if (##structure-instance-of? _type18948_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type18948_ _method18946_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx18941_)
      (begin
        (gxc#apply-collect-mutators _stx18941_)
        (let ((_stx18943_ (gxc#apply-lift-top-lambdas _stx18941_)))
          (begin
            (gxc#apply-collect-type-info _stx18943_)
            (gxc#apply-optimize-call _stx18943_))))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl18938_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18938_ '%#lambda false)
           (table-set! _tbl18938_ '%#case-lambda false)
           (table-set! _tbl18938_ '%#let-values false)
           (table-set! _tbl18938_ '%#letrec-values false)
           (table-set! _tbl18938_ '%#letrec*-values false)
           (table-set! _tbl18938_ '%#quote false)
           (table-set! _tbl18938_ '%#quote-syntax false)
           (table-set! _tbl18938_ '%#call false)
           (table-set! _tbl18938_ '%#if false)
           (table-set! _tbl18938_ '%#ref false)
           (table-set! _tbl18938_ '%#set! false)
           (table-set! _tbl18938_ '%#struct-instance? false)
           (table-set! _tbl18938_ '%#struct-direct-instance? false)
           (table-set! _tbl18938_ '%#struct-ref false)
           (table-set! _tbl18938_ '%#struct-set! false)
           _tbl18938_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18934_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18934_ '%#begin false)
           (table-set! _tbl18934_ '%#begin-syntax false)
           (table-set! _tbl18934_ '%#begin-foreign false)
           (table-set! _tbl18934_ '%#module false)
           (table-set! _tbl18934_ '%#import false)
           (table-set! _tbl18934_ '%#export false)
           (table-set! _tbl18934_ '%#provide false)
           (table-set! _tbl18934_ '%#extern false)
           (table-set! _tbl18934_ '%#define-values false)
           (table-set! _tbl18934_ '%#define-syntax false)
           (table-set! _tbl18934_ '%#define-alias false)
           (table-set! _tbl18934_ '%#declare false)
           _tbl18934_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl18930_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18930_ (force gxc#&false-special-form))
           (hash-copy! _tbl18930_ (force gxc#&false-expression))
           _tbl18930_)))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18926_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18926_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18926_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18926_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18926_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18926_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18926_ '%#quote gxc#xform-identity)
           (table-set! _tbl18926_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18926_ '%#call gxc#xform-identity)
           (table-set! _tbl18926_ '%#if gxc#xform-identity)
           (table-set! _tbl18926_ '%#ref gxc#xform-identity)
           (table-set! _tbl18926_ '%#set! gxc#xform-identity)
           (table-set! _tbl18926_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18926_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18926_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18926_ '%#struct-set! gxc#xform-identity)
           _tbl18926_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18922_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18922_ '%#begin gxc#xform-identity)
           (table-set! _tbl18922_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18922_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18922_ '%#module gxc#xform-identity)
           (table-set! _tbl18922_ '%#import gxc#xform-identity)
           (table-set! _tbl18922_ '%#export gxc#xform-identity)
           (table-set! _tbl18922_ '%#provide gxc#xform-identity)
           (table-set! _tbl18922_ '%#extern gxc#xform-identity)
           (table-set! _tbl18922_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18922_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18922_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18922_ '%#declare gxc#xform-identity)
           _tbl18922_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18918_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18918_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18918_ (force gxc#&identity-expression))
           _tbl18918_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18914_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl18914_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18914_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18914_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18914_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18914_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18914_ '%#quote gxc#xform-identity)
           (table-set! _tbl18914_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18914_ '%#call gxc#xform-operands)
           (table-set! _tbl18914_ '%#if gxc#xform-operands)
           (table-set! _tbl18914_ '%#ref gxc#xform-identity)
           (table-set! _tbl18914_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18914_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18914_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18914_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18914_ '%#struct-set! gxc#xform-operands)
           _tbl18914_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18910_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18910_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18910_ (force gxc#&identity))
           (table-set! _tbl18910_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18910_ '%#module gxc#xform-module%)
           (table-set! _tbl18910_ '%#define-values gxc#xform-define-values%)
           _tbl18910_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18906_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18906_ (force gxc#&void))
           (table-set! _tbl18906_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18906_ '%#module gxc#collect-module%)
           (table-set! _tbl18906_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18906_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18906_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18906_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18906_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18906_ '%#call gxc#collect-operands)
           (table-set! _tbl18906_ '%#if gxc#collect-operands)
           (table-set! _tbl18906_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18906_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18906_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18906_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18906_ '%#struct-set! gxc#collect-operands)
           _tbl18906_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18899_ . _args18901_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18899_ _args18901_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl18896_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18896_ (force gxc#&basic-xform))
           (table-set!
            _tbl18896_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl18896_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl18896_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl18896_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl18896_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx18889_ . _args18891_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18889_ _args18891_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18886_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18886_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18886_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18886_ '%#ref gxc#expression-subst-ref%)
           _tbl18886_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18879_ . _args18881_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18879_ _args18881_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl18876_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18876_ (force gxc#&void))
           (table-set! _tbl18876_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18876_ '%#module gxc#collect-module%)
           (table-set!
            _tbl18876_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set! _tbl18876_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18876_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18876_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl18876_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl18876_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl18876_ '%#call gxc#collect-type-call%)
           (table-set! _tbl18876_ '%#if gxc#collect-operands)
           (table-set! _tbl18876_ '%#set! gxc#collect-body-setq%)
           _tbl18876_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx18869_ . _args18871_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18869_ _args18871_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl18866_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18866_ (force gxc#&false))
           (table-set! _tbl18866_ '%#begin gxc#basic-expression-type-begin%)
           (table-set! _tbl18866_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl18866_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl18866_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl18866_ '%#ref gxc#basic-expression-type-ref%)
           _tbl18866_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx18859_ . _args18861_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18859_ _args18861_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl18856_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18856_ (force gxc#&basic-xform))
           (table-set! _tbl18856_ '%#call gxc#optimize-call%)
           _tbl18856_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx18849_ . _args18851_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18849_ _args18851_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl18846_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl18846_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl18846_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl18846_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl18846_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl18846_ '%#call gxc#generate-ssxi-call%)
           _tbl18846_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx18839_ . _args18841_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18839_ _args18841_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx18836_ . _args18837_) _stx18836_))
  (define gxc#xform-wrap-source
    (lambda (_stx18833_ _src-stx18834_)
      (gx#stx-wrap-source _stx18833_ (gx#stx-source _src-stx18834_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18827_)
      (lambda (_g1882818830_)
        (apply gxc#compile-e _g1882818830_ _args18827_))))
  (define gxc#xform-begin%
    (lambda (_stx18786_ . _args18787_)
      (let ((_g1878918799_
             (lambda (_g1879018796_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1879018796_))))
        (let ((_g1878818824_
               (lambda (_g1879018802_)
                 (if (gx#stx-pair? _g1879018802_)
                     (let ((_e1879218804_ (gx#stx-e _g1879018802_)))
                       (let ((_hd1879318807_ (##car _e1879218804_))
                             (_tl1879418809_ (##cdr _e1879218804_)))
                         ((lambda (_L18812_)
                            (let ((_forms18822_
                                   (map (gxc#xform-apply-compile-e _args18787_)
                                        _L18812_)))
                              (gxc#xform-wrap-source
                               (cons '%#begin _forms18822_)
                               _stx18786_)))
                          _tl1879418809_)))
                     (_g1878918799_ _g1879018802_)))))
          (_g1878818824_ _stx18786_)))))
  (define gxc#xform-module%
    (lambda (_stx18723_ . _args18724_)
      (let ((_g1872618740_
             (lambda (_g1872718737_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1872718737_))))
        (let ((_g1872518783_
               (lambda (_g1872718743_)
                 (if (gx#stx-pair? _g1872718743_)
                     (let ((_e1873018745_ (gx#stx-e _g1872718743_)))
                       (let ((_hd1873118748_ (##car _e1873018745_))
                             (_tl1873218750_ (##cdr _e1873018745_)))
                         (if (gx#stx-pair? _tl1873218750_)
                             (let ((_e1873318753_ (gx#stx-e _tl1873218750_)))
                               (let ((_hd1873418756_ (##car _e1873318753_))
                                     (_tl1873518758_ (##cdr _e1873318753_)))
                                 ((lambda (_L18761_ _L18762_)
                                    (let ((_ctx18775_
                                           (gx#syntax-local-e__0 _L18762_)))
                                      (let ((_code18777_
                                             (##structure-ref
                                              _ctx18775_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ((_code18780_
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _code18777_
                                                         _args18724_))
                                                gx#current-expander-context
                                                _ctx18775_)))
                                          (let ()
                                            (begin
                                              (##structure-set!
                                               _ctx18775_
                                               _code18780_
                                               '11
                                               gx#module-context::t
                                               '#f)
                                              (gxc#xform-wrap-source
                                               (cons '%#module
                                                     (cons _L18762_
                                                           (cons _code18780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18723_)))))))
                                  _tl1873518758_
                                  _hd1873418756_)))
                             (_g1872618740_ _g1872718743_))))
                     (_g1872618740_ _g1872718743_)))))
          (_g1872518783_ _stx18723_)))))
  (define gxc#xform-define-values%
    (lambda (_stx18653_ . _args18654_)
      (let ((_g1865618673_
             (lambda (_g1865718670_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1865718670_))))
        (let ((_g1865518720_
               (lambda (_g1865718676_)
                 (if (gx#stx-pair? _g1865718676_)
                     (let ((_e1866018678_ (gx#stx-e _g1865718676_)))
                       (let ((_hd1866118681_ (##car _e1866018678_))
                             (_tl1866218683_ (##cdr _e1866018678_)))
                         (if (gx#stx-pair? _tl1866218683_)
                             (let ((_e1866318686_ (gx#stx-e _tl1866218683_)))
                               (let ((_hd1866418689_ (##car _e1866318686_))
                                     (_tl1866518691_ (##cdr _e1866318686_)))
                                 (if (gx#stx-pair? _tl1866518691_)
                                     (let ((_e1866618694_
                                            (gx#stx-e _tl1866518691_)))
                                       (let ((_hd1866718697_
                                              (##car _e1866618694_))
                                             (_tl1866818699_
                                              (##cdr _e1866618694_)))
                                         (if (gx#stx-null? _tl1866818699_)
                                             ((lambda (_L18702_ _L18703_)
                                                (let ((_expr18718_
                                                       (apply gxc#compile-e
                                                              _L18702_
                                                              _args18654_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L18703_
                                                               (cons _expr18718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18653_)))
                                              _hd1866718697_
                                              _hd1866418689_)
                                             (_g1865618673_ _g1865718676_))))
                                     (_g1865618673_ _g1865718676_))))
                             (_g1865618673_ _g1865718676_))))
                     (_g1865618673_ _g1865718676_)))))
          (_g1865518720_ _stx18653_)))))
  (define gxc#xform-lambda%
    (lambda (_stx18596_ . _args18597_)
      (let ((_g1859918613_
             (lambda (_g1860018610_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1860018610_))))
        (let ((_g1859818650_
               (lambda (_g1860018616_)
                 (if (gx#stx-pair? _g1860018616_)
                     (let ((_e1860318618_ (gx#stx-e _g1860018616_)))
                       (let ((_hd1860418621_ (##car _e1860318618_))
                             (_tl1860518623_ (##cdr _e1860318618_)))
                         (if (gx#stx-pair? _tl1860518623_)
                             (let ((_e1860618626_ (gx#stx-e _tl1860518623_)))
                               (let ((_hd1860718629_ (##car _e1860618626_))
                                     (_tl1860818631_ (##cdr _e1860618626_)))
                                 ((lambda (_L18634_ _L18635_)
                                    (let ((_body18648_
                                           (map (gxc#xform-apply-compile-e
                                                 _args18597_)
                                                _L18634_)))
                                      (gxc#xform-wrap-source
                                       (cons '%#lambda
                                             (cons _L18635_ _body18648_))
                                       _stx18596_)))
                                  _tl1860818631_
                                  _hd1860718629_)))
                             (_g1859918613_ _g1860018616_))))
                     (_g1859918613_ _g1860018616_)))))
          (_g1859818650_ _stx18596_)))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18509_ . _args18510_)
      (let ((_clause-e18512_
             (lambda (_clause18553_)
               (let ((_g1855518566_
                      (lambda (_g1855618563_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1855618563_))))
                 (let ((_g1855418593_
                        (lambda (_g1855618569_)
                          (if (gx#stx-pair? _g1855618569_)
                              (let ((_e1855918571_ (gx#stx-e _g1855618569_)))
                                (let ((_hd1856018574_ (##car _e1855918571_))
                                      (_tl1856118576_ (##cdr _e1855918571_)))
                                  ((lambda (_L18579_ _L18580_)
                                     (let ((_body18591_
                                            (map (gxc#xform-apply-compile-e
                                                  _args18510_)
                                                 _L18579_)))
                                       (cons _L18580_ _body18591_)))
                                   _tl1856118576_
                                   _hd1856018574_)))
                              (_g1855518566_ _g1855618569_)))))
                   (_g1855418593_ _clause18553_))))))
        (let ((_g1851418524_
               (lambda (_g1851518521_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1851518521_))))
          (let ((_g1851318550_
                 (lambda (_g1851518527_)
                   (if (gx#stx-pair? _g1851518527_)
                       (let ((_e1851718529_ (gx#stx-e _g1851518527_)))
                         (let ((_hd1851818532_ (##car _e1851718529_))
                               (_tl1851918534_ (##cdr _e1851718529_)))
                           ((lambda (_L18537_)
                              (let ((_clauses18548_
                                     (map _clause-e18512_ _L18537_)))
                                (gxc#xform-wrap-source
                                 (cons '%#case-lambda _clauses18548_)
                                 _stx18509_)))
                            _tl1851918534_)))
                       (_g1851418524_ _g1851518527_)))))
            (_g1851318550_ _stx18509_))))))
  (define gxc#xform-let-values%
    (lambda (_stx18303_ . _args18304_)
      (let ((_g1830618339_
             (lambda (_g1830718336_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1830718336_))))
        (let ((_g1830518506_
               (lambda (_g1830718342_)
                 (if (gx#stx-pair? _g1830718342_)
                     (let ((_e1831218344_ (gx#stx-e _g1830718342_)))
                       (let ((_hd1831318347_ (##car _e1831218344_))
                             (_tl1831418349_ (##cdr _e1831218344_)))
                         (if (gx#stx-pair? _tl1831418349_)
                             (let ((_e1831518352_ (gx#stx-e _tl1831418349_)))
                               (let ((_hd1831618355_ (##car _e1831518352_))
                                     (_tl1831718357_ (##cdr _e1831518352_)))
                                 (if (gx#stx-pair/null? _hd1831618355_)
                                     (if (fx>= (gx#stx-length _hd1831618355_)
                                               '0)
                                         (let ((_g19230_
                                                (gx#syntax-split-splice
                                                 _hd1831618355_
                                                 '0)))
                                           (begin
                                             (let ((_g19231_
                                                    (values-count _g19230_)))
                                               (if (not (fx= _g19231_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19231_)))
                                             (let ((_target1831818360_
                                                    (values-ref _g19230_ 0))
                                                   (_tl1832018362_
                                                    (values-ref _g19230_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1832018362_)
                                                   (letrec ((_loop1832118365_
                                                             (lambda (_hd1831918368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1832518370_
                              _hd1832618372_)
                       (if (gx#stx-pair? _hd1831918368_)
                           (let ((_e1832218375_ (gx#stx-e _hd1831918368_)))
                             (let ((_lp-hd1832318378_ (##car _e1832218375_))
                                   (_lp-tl1832418380_ (##cdr _e1832218375_)))
                               (if (gx#stx-pair? _lp-hd1832318378_)
                                   (let ((_e1832918383_
                                          (gx#stx-e _lp-hd1832318378_)))
                                     (let ((_hd1833018386_
                                            (##car _e1832918383_))
                                           (_tl1833118388_
                                            (##cdr _e1832918383_)))
                                       (if (gx#stx-pair? _tl1833118388_)
                                           (let ((_e1833218391_
                                                  (gx#stx-e _tl1833118388_)))
                                             (let ((_hd1833318394_
                                                    (##car _e1833218391_))
                                                   (_tl1833418396_
                                                    (##cdr _e1833218391_)))
                                               (if (gx#stx-null?
                                                    _tl1833418396_)
                                                   (_loop1832118365_
                                                    _lp-tl1832418380_
                                                    (cons _hd1833318394_
                                                          _expr1832518370_)
                                                    (cons _hd1833018386_
                                                          _hd1832618372_))
                                                   (_g1830618339_
                                                    _g1830718342_))))
                                           (_g1830618339_ _g1830718342_))))
                                   (_g1830618339_ _g1830718342_))))
                           (let ((_expr1832718399_ (reverse _expr1832518370_))
                                 (_hd1832818401_ (reverse _hd1832618372_)))
                             ((lambda (_L18404_ _L18405_ _L18406_ _L18407_)
                                (let ((_g1842618442_
                                       (lambda (_g1842718439_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1842718439_))))
                                  (let ((_g1842518496_
                                         (lambda (_g1842718445_)
                                           (if (gx#stx-pair/null?
                                                _g1842718445_)
                                               (if (fx>= (gx#stx-length
                                                          _g1842718445_)
                                                         '0)
                                                   (let ((_g19232_
                                                          (gx#syntax-split-splice
                                                           _g1842718445_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19233_
                                                              (values-count
                                                               _g19232_)))
                                                         (if (not (fx= _g19233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19233_)))
               (let ((_target1842918447_ (values-ref _g19232_ 0))
                     (_tl1843118449_ (values-ref _g19232_ 1)))
                 (if (gx#stx-null? _tl1843118449_)
                     (letrec ((_loop1843218452_
                               (lambda (_hd1843018455_ _expr1843618457_)
                                 (if (gx#stx-pair? _hd1843018455_)
                                     (let ((_e1843318460_
                                            (gx#syntax-e _hd1843018455_)))
                                       (let ((_lp-hd1843418463_
                                              (##car _e1843318460_))
                                             (_lp-tl1843518465_
                                              (##cdr _e1843318460_)))
                                         (_loop1843218452_
                                          _lp-tl1843518465_
                                          (cons _lp-hd1843418463_
                                                _expr1843618457_))))
                                     (let ((_expr1843718468_
                                            (reverse _expr1843618457_)))
                                       ((lambda (_L18471_)
                                          (let ()
                                            (let ((_body18484_
                                                   (map (gxc#xform-apply-compile-e
                                                         _args18304_)
                                                        _L18404_)))
                                              (gxc#xform-wrap-source
                                               (cons _L18407_
                                                     (cons (begin
                                                             (gx#syntax-check-splice-targets
                                                              _L18471_
                                                              _L18406_)
                                                             (foldr (lambda (_g1848518489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1848618491_
                                     _g1848718493_)
                              (cons (cons _g1848618491_
                                          (cons _g1848518489_ '()))
                                    _g1848718493_))
                            '()
                            _L18471_
                            _L18406_))
                   _body18484_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx18303_))))
                                        _expr1843718468_))))))
                       (_loop1843218452_ _target1842918447_ '()))
                     (_g1842618442_ _g1842718445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1842618442_
                                                    _g1842718445_))
                                               (_g1842618442_
                                                _g1842718445_)))))
                                    (_g1842518496_
                                     (map (gxc#xform-apply-compile-e
                                           _args18304_)
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1849818501_
                                                             _g1849918503_)
                                                      (cons _g1849818501_
                                                            _g1849918503_))
                                                    '()
                                                    _L18405_)))))))
                              _tl1831718357_
                              _expr1832718399_
                              _hd1832818401_
                              _hd1831318347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1832118365_
                                                      _target1831818360_
                                                      '()
                                                      '()))
                                                   (_g1830618339_
                                                    _g1830718342_)))))
                                         (_g1830618339_ _g1830718342_))
                                     (_g1830618339_ _g1830718342_))))
                             (_g1830618339_ _g1830718342_))))
                     (_g1830618339_ _g1830718342_)))))
          (_g1830518506_ _stx18303_)))))
  (define gxc#xform-operands
    (lambda (_stx18259_ . _args18260_)
      (let ((_g1826218273_
             (lambda (_g1826318270_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1826318270_))))
        (let ((_g1826118300_
               (lambda (_g1826318276_)
                 (if (gx#stx-pair? _g1826318276_)
                     (let ((_e1826618278_ (gx#stx-e _g1826318276_)))
                       (let ((_hd1826718281_ (##car _e1826618278_))
                             (_tl1826818283_ (##cdr _e1826618278_)))
                         ((lambda (_L18286_ _L18287_)
                            (let ((_rands18298_
                                   (map (gxc#xform-apply-compile-e _args18260_)
                                        _L18286_)))
                              (gxc#xform-wrap-source
                               (cons _L18287_ _rands18298_)
                               _stx18259_)))
                          _tl1826818283_
                          _hd1826718281_)))
                     (_g1826218273_ _g1826318276_)))))
          (_g1826118300_ _stx18259_)))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18189_ . _args18190_)
      (let ((_g1819218209_
             (lambda (_g1819318206_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1819318206_))))
        (let ((_g1819118256_
               (lambda (_g1819318212_)
                 (if (gx#stx-pair? _g1819318212_)
                     (let ((_e1819618214_ (gx#stx-e _g1819318212_)))
                       (let ((_hd1819718217_ (##car _e1819618214_))
                             (_tl1819818219_ (##cdr _e1819618214_)))
                         (if (gx#stx-pair? _tl1819818219_)
                             (let ((_e1819918222_ (gx#stx-e _tl1819818219_)))
                               (let ((_hd1820018225_ (##car _e1819918222_))
                                     (_tl1820118227_ (##cdr _e1819918222_)))
                                 (if (gx#stx-pair? _tl1820118227_)
                                     (let ((_e1820218230_
                                            (gx#stx-e _tl1820118227_)))
                                       (let ((_hd1820318233_
                                              (##car _e1820218230_))
                                             (_tl1820418235_
                                              (##cdr _e1820218230_)))
                                         (if (gx#stx-null? _tl1820418235_)
                                             ((lambda (_L18238_ _L18239_)
                                                (let ((_expr18254_
                                                       (apply gxc#compile-e
                                                              _L18238_
                                                              _args18190_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#set!
                                                         (cons _L18239_
                                                               (cons _expr18254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx18189_)))
                                              _hd1820318233_
                                              _hd1820018225_)
                                             (_g1819218209_ _g1819318212_))))
                                     (_g1819218209_ _g1819318212_))))
                             (_g1819218209_ _g1819318212_))))
                     (_g1819218209_ _g1819318212_)))))
          (_g1819118256_ _stx18189_)))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18120_)
      (let ((_g1812218139_
             (lambda (_g1812318136_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1812318136_))))
        (let ((_g1812118186_
               (lambda (_g1812318142_)
                 (if (gx#stx-pair? _g1812318142_)
                     (let ((_e1812618144_ (gx#stx-e _g1812318142_)))
                       (let ((_hd1812718147_ (##car _e1812618144_))
                             (_tl1812818149_ (##cdr _e1812618144_)))
                         (if (gx#stx-pair? _tl1812818149_)
                             (let ((_e1812918152_ (gx#stx-e _tl1812818149_)))
                               (let ((_hd1813018155_ (##car _e1812918152_))
                                     (_tl1813118157_ (##cdr _e1812918152_)))
                                 (if (gx#stx-pair? _tl1813118157_)
                                     (let ((_e1813218160_
                                            (gx#stx-e _tl1813118157_)))
                                       (let ((_hd1813318163_
                                              (##car _e1813218160_))
                                             (_tl1813418165_
                                              (##cdr _e1813218160_)))
                                         (if (gx#stx-null? _tl1813418165_)
                                             ((lambda (_L18168_ _L18169_)
                                                (let ((_sym18184_
                                                       (gxc#generate-runtime-binding-id
                                                        _L18169_)))
                                                  (begin
                                                    (gxc#verbose
                                                     '"collect mutator "
                                                     _sym18184_)
                                                    (table-set!
                                                     (gxc#current-compile-mutators)
                                                     _sym18184_
                                                     '#t)
                                                    (gxc#compile-e _L18168_))))
                                              _hd1813318163_
                                              _hd1813018155_)
                                             (_g1812218139_ _g1812318142_))))
                                     (_g1812218139_ _g1812318142_))))
                             (_g1812218139_ _g1812318142_))))
                     (_g1812218139_ _g1812318142_)))))
          (_g1812118186_ _stx18120_)))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form17354_)
      (let ((_g1735917516_
             (lambda (_g1736017513_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1736017513_))))
        (let ((_g1735817523_ (lambda (_g1736017519_) ((lambda () '#f)))))
          (let ((_g1735717663_
                 (lambda (_g1736017526_)
                   (if (gx#stx-pair? _g1736017526_)
                       (let ((_e1747617528_ (gx#stx-e _g1736017526_)))
                         (let ((_hd1747717531_ (##car _e1747617528_))
                               (_tl1747817533_ (##cdr _e1747617528_)))
                           (if (gx#stx-pair? _tl1747817533_)
                               (let ((_e1747917536_ (gx#stx-e _tl1747817533_)))
                                 (let ((_hd1748017539_ (##car _e1747917536_))
                                       (_tl1748117541_ (##cdr _e1747917536_)))
                                   (if (gx#stx-pair? _hd1748017539_)
                                       (let ((_e1748217544_
                                              (gx#stx-e _hd1748017539_)))
                                         (let ((_hd1748317547_
                                                (##car _e1748217544_))
                                               (_tl1748417549_
                                                (##cdr _e1748217544_)))
                                           (if (gx#identifier? _hd1748317547_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1748317547_)
                                                   (if (gx#stx-pair?
                                                        _tl1748417549_)
                                                       (let ((_e1748517552_
                                                              (gx#stx-e
                                                               _tl1748417549_)))
                                                         (let ((_hd1748617555_
                                                                (##car _e1748517552_))
                                                               (_tl1748717557_
                                                                (##cdr _e1748517552_)))
                                                           (if (gx#stx-pair?
                                                                _hd1748617555_)
                                                               (let ((_e1748817560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1748617555_)))
                         (let ((_hd1748917563_ (##car _e1748817560_))
                               (_tl1749017565_ (##cdr _e1748817560_)))
                           (if (gx#identifier? _hd1748917563_)
                               (if (gx#stx-eq? '%#ref _hd1748917563_)
                                   (if (gx#stx-pair? _tl1749017565_)
                                       (let ((_e1749117568_
                                              (gx#stx-e _tl1749017565_)))
                                         (let ((_hd1749217571_
                                                (##car _e1749117568_))
                                               (_tl1749317573_
                                                (##cdr _e1749117568_)))
                                           (if (gx#stx-null? _tl1749317573_)
                                               (if (gx#stx-pair?
                                                    _tl1748717557_)
                                                   (let ((_e1749417576_
                                                          (gx#stx-e
                                                           _tl1748717557_)))
                                                     (let ((_hd1749517579_
                                                            (##car _e1749417576_))
                                                           (_tl1749617581_
                                                            (##cdr _e1749417576_)))
                                                       (if (gx#stx-pair?
                                                            _hd1749517579_)
                                                           (let ((_e1749717584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1749517579_)))
                     (let ((_hd1749817587_ (##car _e1749717584_))
                           (_tl1749917589_ (##cdr _e1749717584_)))
                       (if (gx#identifier? _hd1749817587_)
                           (if (gx#stx-eq? '%#ref _hd1749817587_)
                               (if (gx#stx-pair? _tl1749917589_)
                                   (let ((_e1750017592_
                                          (gx#stx-e _tl1749917589_)))
                                     (let ((_hd1750117595_
                                            (##car _e1750017592_))
                                           (_tl1750217597_
                                            (##cdr _e1750017592_)))
                                       (if (gx#stx-null? _tl1750217597_)
                                           (if (gx#stx-pair? _tl1749617581_)
                                               (let ((_e1750317600_
                                                      (gx#stx-e
                                                       _tl1749617581_)))
                                                 (let ((_hd1750417603_
                                                        (##car _e1750317600_))
                                                       (_tl1750517605_
                                                        (##cdr _e1750317600_)))
                                                   (if (gx#stx-pair?
                                                        _hd1750417603_)
                                                       (let ((_e1750617608_
                                                              (gx#stx-e
                                                               _hd1750417603_)))
                                                         (let ((_hd1750717611_
                                                                (##car _e1750617608_))
                                                               (_tl1750817613_
                                                                (##cdr _e1750617608_)))
                                                           (if (gx#identifier?
                                                                _hd1750717611_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1750717611_)
                           (if (gx#stx-pair? _tl1750817613_)
                               (let ((_e1750917616_ (gx#stx-e _tl1750817613_)))
                                 (let ((_hd1751017619_ (##car _e1750917616_))
                                       (_tl1751117621_ (##cdr _e1750917616_)))
                                   (if (gx#stx-null? _tl1751117621_)
                                       (if (gx#stx-null? _tl1750517605_)
                                           (if (gx#stx-null? _tl1748117541_)
                                               ((lambda (_L17624_
                                                         _L17625_
                                                         _L17626_
                                                         _L17627_)
                                                  (if (if (gx#identifier?
                                                           _L17627_)
                                                          (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17626_)
                           'apply)
                      (if (gx#free-identifier=? _L17627_ _L17624_)
                          (not (gx#free-identifier=? _L17625_ _L17627_))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1735817523_ _g1736017526_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1751017619_
                                                _hd1750117595_
                                                _hd1749217571_
                                                _hd1747717531_)
                                               (_g1735817523_ _g1736017526_))
                                           (_g1735817523_ _g1736017526_))
                                       (_g1735817523_ _g1736017526_))))
                               (_g1735817523_ _g1736017526_))
                           (_g1735817523_ _g1736017526_))
                       (_g1735817523_ _g1736017526_))))
               (_g1735817523_ _g1736017526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1735817523_ _g1736017526_))
                                           (_g1735817523_ _g1736017526_))))
                                   (_g1735817523_ _g1736017526_))
                               (_g1735817523_ _g1736017526_))
                           (_g1735817523_ _g1736017526_))))
                   (_g1735817523_ _g1736017526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735817523_
                                                    _g1736017526_))
                                               (_g1735817523_ _g1736017526_))))
                                       (_g1735817523_ _g1736017526_))
                                   (_g1735817523_ _g1736017526_))
                               (_g1735817523_ _g1736017526_))))
                       (_g1735817523_ _g1736017526_))))
               (_g1735817523_ _g1736017526_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735817523_
                                                    _g1736017526_))
                                               (_g1735817523_ _g1736017526_))))
                                       (_g1735817523_ _g1736017526_))))
                               (_g1735817523_ _g1736017526_))))
                       (_g1735817523_ _g1736017526_)))))
            (let ((_g1735617923_
                   (lambda (_g1736017666_)
                     (if (gx#stx-pair? _g1736017666_)
                         (let ((_e1741217668_ (gx#stx-e _g1736017666_)))
                           (let ((_hd1741317671_ (##car _e1741217668_))
                                 (_tl1741417673_ (##cdr _e1741217668_)))
                             (if (gx#stx-pair/null? _hd1741317671_)
                                 (if (fx>= (gx#stx-length _hd1741317671_) '0)
                                     (let ((_g19234_
                                            (gx#syntax-split-splice
                                             _hd1741317671_
                                             '0)))
                                       (begin
                                         (let ((_g19235_
                                                (values-count _g19234_)))
                                           (if (not (fx= _g19235_ 2))
                                               (error "Context expects 2 values"
                                                      _g19235_)))
                                         (let ((_target1741517676_
                                                (values-ref _g19234_ 0))
                                               (_tl1741717678_
                                                (values-ref _g19234_ 1)))
                                           (letrec ((_loop1741817681_
                                                     (lambda (_hd1741617684_
                                                              _arg1742217686_)
                                                       (if (gx#stx-pair?
                                                            _hd1741617684_)
                                                           (let ((_e1741917689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1741617684_)))
                     (let ((_lp-hd1742017692_ (##car _e1741917689_))
                           (_lp-tl1742117694_ (##cdr _e1741917689_)))
                       (_loop1741817681_
                        _lp-tl1742117694_
                        (cons _lp-hd1742017692_ _arg1742217686_))))
                   (let ((_arg1742317697_ (reverse _arg1742217686_)))
                     (if (gx#stx-pair? _tl1741417673_)
                         (let ((_e1742417700_ (gx#stx-e _tl1741417673_)))
                           (let ((_hd1742517703_ (##car _e1742417700_))
                                 (_tl1742617705_ (##cdr _e1742417700_)))
                             (if (gx#stx-pair? _hd1742517703_)
                                 (let ((_e1742717708_
                                        (gx#stx-e _hd1742517703_)))
                                   (let ((_hd1742817711_ (##car _e1742717708_))
                                         (_tl1742917713_
                                          (##cdr _e1742717708_)))
                                     (if (gx#identifier? _hd1742817711_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1742817711_)
                                             (if (gx#stx-pair? _tl1742917713_)
                                                 (let ((_e1743017716_
                                                        (gx#stx-e
                                                         _tl1742917713_)))
                                                   (let ((_hd1743117719_
                                                          (##car _e1743017716_))
                                                         (_tl1743217721_
                                                          (##cdr _e1743017716_)))
                                                     (if (gx#stx-pair?
                                                          _hd1743117719_)
                                                         (let ((_e1743317724_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1743117719_)))
                   (let ((_hd1743417727_ (##car _e1743317724_))
                         (_tl1743517729_ (##cdr _e1743317724_)))
                     (if (gx#identifier? _hd1743417727_)
                         (if (gx#stx-eq? '%#ref _hd1743417727_)
                             (if (gx#stx-pair? _tl1743517729_)
                                 (let ((_e1743617732_
                                        (gx#stx-e _tl1743517729_)))
                                   (let ((_hd1743717735_ (##car _e1743617732_))
                                         (_tl1743817737_
                                          (##cdr _e1743617732_)))
                                     (if (gx#stx-null? _tl1743817737_)
                                         (if (gx#stx-pair? _tl1743217721_)
                                             (let ((_e1743917740_
                                                    (gx#stx-e _tl1743217721_)))
                                               (let ((_hd1744017743_
                                                      (##car _e1743917740_))
                                                     (_tl1744117745_
                                                      (##cdr _e1743917740_)))
                                                 (if (gx#stx-pair?
                                                      _hd1744017743_)
                                                     (let ((_e1744217748_
                                                            (gx#stx-e
                                                             _hd1744017743_)))
                                                       (let ((_hd1744317751_
                                                              (##car _e1744217748_))
                                                             (_tl1744417753_
                                                              (##cdr _e1744217748_)))
                                                         (if (gx#identifier?
                                                              _hd1744317751_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1744317751_)
                         (if (gx#stx-pair? _tl1744417753_)
                             (let ((_e1744517756_ (gx#stx-e _tl1744417753_)))
                               (let ((_hd1744617759_ (##car _e1744517756_))
                                     (_tl1744717761_ (##cdr _e1744517756_)))
                                 (if (gx#stx-null? _tl1744717761_)
                                     (if (gx#stx-pair/null? _tl1744117745_)
                                         (if (fx>= (gx#stx-length
                                                    _tl1744117745_)
                                                   '1)
                                             (let ((_g19236_
                                                    (gx#syntax-split-splice
                                                     _tl1744117745_
                                                     '1)))
                                               (begin
                                                 (let ((_g19237_
                                                        (values-count
                                                         _g19236_)))
                                                   (if (not (fx= _g19237_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19237_)))
                                                 (let ((_target1744817764_
                                                        (values-ref
                                                         _g19236_
                                                         0))
                                                       (_tl1745017766_
                                                        (values-ref
                                                         _g19236_
                                                         1)))
                                                   (if (gx#stx-pair?
                                                        _tl1745017766_)
                                                       (let ((_e1745717769_
                                                              (gx#stx-e
                                                               _tl1745017766_)))
                                                         (let ((_hd1745817772_
                                                                (##car _e1745717769_))
                                                               (_tl1745917774_
                                                                (##cdr _e1745717769_)))
                                                           (if (gx#stx-pair?
                                                                _hd1745817772_)
                                                               (let ((_e1746017777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1745817772_)))
                         (let ((_hd1746117780_ (##car _e1746017777_))
                               (_tl1746217782_ (##cdr _e1746017777_)))
                           (if (gx#identifier? _hd1746117780_)
                               (if (gx#stx-eq? '%#ref _hd1746117780_)
                                   (if (gx#stx-pair? _tl1746217782_)
                                       (let ((_e1746317785_
                                              (gx#stx-e _tl1746217782_)))
                                         (let ((_hd1746417788_
                                                (##car _e1746317785_))
                                               (_tl1746517790_
                                                (##cdr _e1746317785_)))
                                           (if (gx#stx-null? _tl1746517790_)
                                               (if (gx#stx-null?
                                                    _tl1745917774_)
                                                   (letrec ((_loop1745117793_
                                                             (lambda (_hd1744917796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xarg1745517798_)
                       (if (gx#stx-pair? _hd1744917796_)
                           (let ((_e1745217801_ (gx#stx-e _hd1744917796_)))
                             (let ((_lp-hd1745317804_ (##car _e1745217801_))
                                   (_lp-tl1745417806_ (##cdr _e1745217801_)))
                               (if (gx#stx-pair? _lp-hd1745317804_)
                                   (let ((_e1746617809_
                                          (gx#stx-e _lp-hd1745317804_)))
                                     (let ((_hd1746717812_
                                            (##car _e1746617809_))
                                           (_tl1746817814_
                                            (##cdr _e1746617809_)))
                                       (if (gx#identifier? _hd1746717812_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1746717812_)
                                               (if (gx#stx-pair?
                                                    _tl1746817814_)
                                                   (let ((_e1746917817_
                                                          (gx#stx-e
                                                           _tl1746817814_)))
                                                     (let ((_hd1747017820_
                                                            (##car _e1746917817_))
                                                           (_tl1747117822_
                                                            (##cdr _e1746917817_)))
                                                       (if (gx#stx-null?
                                                            _tl1747117822_)
                                                           (_loop1745117793_
                                                            _lp-tl1745417806_
                                                            (cons _hd1747017820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xarg1745517798_))
                   (_g1735717663_ _g1736017666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735717663_
                                                    _g1736017666_))
                                               (_g1735717663_ _g1736017666_))
                                           (_g1735717663_ _g1736017666_))))
                                   (_g1735717663_ _g1736017666_))))
                           (let ((_xarg1745617825_ (reverse _xarg1745517798_)))
                             (if (gx#stx-null? _tl1742617705_)
                                 ((lambda (_L17828_
                                           _L17829_
                                           _L17830_
                                           _L17831_
                                           _L17832_
                                           _L17833_)
                                    (if (if (gx#identifier-list?
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1787617879_
                                                                _g1787717881_)
                                                         (cons _g1787617879_
                                                               _g1787717881_))
                                                       '()
                                                       _L17833_)))
                                            (if (gx#identifier? _L17832_)
                                                (if (eq? (gxc#generate-runtime-binding-id
                                                          _L17831_)
                                                         'apply)
                                                    (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr1 (lambda (_g1788317886_ _g1788417888_)
                                         (cons _g1788317886_ _g1788417888_))
                                       '()
                                       _L17833_)))
                     (length (begin
                               '#!void
                               (foldr1 (lambda (_g1789017893_ _g1789117895_)
                                         (cons _g1789017893_ _g1789117895_))
                                       '()
                                       _L17829_))))
                (if (andmap gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1789717900_ _g1789817902_)
                                        (cons _g1789717900_ _g1789817902_))
                                      '()
                                      _L17833_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g1790417907_ _g1790517909_)
                                        (cons _g1790417907_ _g1790517909_))
                                      '()
                                      _L17829_)))
                    (if (gx#free-identifier=? _L17832_ _L17828_)
                        (not (find (lambda (_g1791117913_)
                                     (gx#free-identifier=?
                                      _g1791117913_
                                      _L17830_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1791517918_
                                                      _g1791617920_)
                                               (cons _g1791517918_
                                                     _g1791617920_))
                                             (cons _L17832_ '())
                                             _L17833_))))
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                '#f)
                                            '#f)
                                        '#t
                                        (_g1735717663_ _g1736017666_)))
                                  _hd1746417788_
                                  _xarg1745617825_
                                  _hd1744617759_
                                  _hd1743717735_
                                  _tl1741717678_
                                  _arg1742317697_)
                                 (_g1735717663_ _g1736017666_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1745117793_
                                                      _target1744817764_
                                                      '()))
                                                   (_g1735717663_
                                                    _g1736017666_))
                                               (_g1735717663_ _g1736017666_))))
                                       (_g1735717663_ _g1736017666_))
                                   (_g1735717663_ _g1736017666_))
                               (_g1735717663_ _g1736017666_))))
                       (_g1735717663_ _g1736017666_))))
               (_g1735717663_ _g1736017666_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1735717663_ _g1736017666_))
                                         (_g1735717663_ _g1736017666_))
                                     (_g1735717663_ _g1736017666_))))
                             (_g1735717663_ _g1736017666_))
                         (_g1735717663_ _g1736017666_))
                     (_g1735717663_ _g1736017666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1735717663_
                                                      _g1736017666_))))
                                             (_g1735717663_ _g1736017666_))
                                         (_g1735717663_ _g1736017666_))))
                                 (_g1735717663_ _g1736017666_))
                             (_g1735717663_ _g1736017666_))
                         (_g1735717663_ _g1736017666_))))
                 (_g1735717663_ _g1736017666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1735717663_ _g1736017666_))
                                             (_g1735717663_ _g1736017666_))
                                         (_g1735717663_ _g1736017666_))))
                                 (_g1735717663_ _g1736017666_))))
                         (_g1735717663_ _g1736017666_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1741817681_
                                              _target1741517676_
                                              '())))))
                                     (_g1735717663_ _g1736017666_))
                                 (_g1735717663_ _g1736017666_))))
                         (_g1735717663_ _g1736017666_)))))
              (let ((_g1735518117_
                     (lambda (_g1736017926_)
                       (if (gx#stx-pair? _g1736017926_)
                           (let ((_e1736417928_ (gx#stx-e _g1736017926_)))
                             (let ((_hd1736517931_ (##car _e1736417928_))
                                   (_tl1736617933_ (##cdr _e1736417928_)))
                               (if (gx#stx-pair/null? _hd1736517931_)
                                   (if (fx>= (gx#stx-length _hd1736517931_) '0)
                                       (let ((_g19238_
                                              (gx#syntax-split-splice
                                               _hd1736517931_
                                               '0)))
                                         (begin
                                           (let ((_g19239_
                                                  (values-count _g19238_)))
                                             (if (not (fx= _g19239_ 2))
                                                 (error "Context expects 2 values"
                                                        _g19239_)))
                                           (let ((_target1736717936_
                                                  (values-ref _g19238_ 0))
                                                 (_tl1736917938_
                                                  (values-ref _g19238_ 1)))
                                             (if (gx#stx-null? _tl1736917938_)
                                                 (letrec ((_loop1737017941_
                                                           (lambda (_hd1736817944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg1737417946_)
                     (if (gx#stx-pair? _hd1736817944_)
                         (let ((_e1737117949_ (gx#stx-e _hd1736817944_)))
                           (let ((_lp-hd1737217952_ (##car _e1737117949_))
                                 (_lp-tl1737317954_ (##cdr _e1737117949_)))
                             (_loop1737017941_
                              _lp-tl1737317954_
                              (cons _lp-hd1737217952_ _arg1737417946_))))
                         (let ((_arg1737517957_ (reverse _arg1737417946_)))
                           (if (gx#stx-pair? _tl1736617933_)
                               (let ((_e1737617960_ (gx#stx-e _tl1736617933_)))
                                 (let ((_hd1737717963_ (##car _e1737617960_))
                                       (_tl1737817965_ (##cdr _e1737617960_)))
                                   (if (gx#stx-pair? _hd1737717963_)
                                       (let ((_e1737917968_
                                              (gx#stx-e _hd1737717963_)))
                                         (let ((_hd1738017971_
                                                (##car _e1737917968_))
                                               (_tl1738117973_
                                                (##cdr _e1737917968_)))
                                           (if (gx#identifier? _hd1738017971_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1738017971_)
                                                   (if (gx#stx-pair?
                                                        _tl1738117973_)
                                                       (let ((_e1738217976_
                                                              (gx#stx-e
                                                               _tl1738117973_)))
                                                         (let ((_hd1738317979_
                                                                (##car _e1738217976_))
                                                               (_tl1738417981_
                                                                (##cdr _e1738217976_)))
                                                           (if (gx#stx-pair?
                                                                _hd1738317979_)
                                                               (let ((_e1738517984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1738317979_)))
                         (let ((_hd1738617987_ (##car _e1738517984_))
                               (_tl1738717989_ (##cdr _e1738517984_)))
                           (if (gx#identifier? _hd1738617987_)
                               (if (gx#stx-eq? '%#ref _hd1738617987_)
                                   (if (gx#stx-pair? _tl1738717989_)
                                       (let ((_e1738817992_
                                              (gx#stx-e _tl1738717989_)))
                                         (let ((_hd1738917995_
                                                (##car _e1738817992_))
                                               (_tl1739017997_
                                                (##cdr _e1738817992_)))
                                           (if (gx#stx-null? _tl1739017997_)
                                               (if (gx#stx-pair/null?
                                                    _tl1738417981_)
                                                   (if (fx>= (gx#stx-length
                                                              _tl1738417981_)
                                                             '0)
                                                       (let ((_g19240_
                                                              (gx#syntax-split-splice
                                                               _tl1738417981_
                                                               '0)))
                                                         (begin
                                                           (let ((_g19241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g19240_)))
                     (if (not (fx= _g19241_ 2))
                         (error "Context expects 2 values" _g19241_)))
                   (let ((_target1739118000_ (values-ref _g19240_ 0))
                         (_tl1739318002_ (values-ref _g19240_ 1)))
                     (if (gx#stx-null? _tl1739318002_)
                         (letrec ((_loop1739418005_
                                   (lambda (_hd1739218008_ _xarg1739818010_)
                                     (if (gx#stx-pair? _hd1739218008_)
                                         (let ((_e1739518013_
                                                (gx#stx-e _hd1739218008_)))
                                           (let ((_lp-hd1739618016_
                                                  (##car _e1739518013_))
                                                 (_lp-tl1739718018_
                                                  (##cdr _e1739518013_)))
                                             (if (gx#stx-pair?
                                                  _lp-hd1739618016_)
                                                 (let ((_e1740018021_
                                                        (gx#stx-e
                                                         _lp-hd1739618016_)))
                                                   (let ((_hd1740118024_
                                                          (##car _e1740018021_))
                                                         (_tl1740218026_
                                                          (##cdr _e1740018021_)))
                                                     (if (gx#identifier?
                                                          _hd1740118024_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd1740118024_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1740218026_)
                         (let ((_e1740318029_ (gx#stx-e _tl1740218026_)))
                           (let ((_hd1740418032_ (##car _e1740318029_))
                                 (_tl1740518034_ (##cdr _e1740318029_)))
                             (if (gx#stx-null? _tl1740518034_)
                                 (_loop1739418005_
                                  _lp-tl1739718018_
                                  (cons _hd1740418032_ _xarg1739818010_))
                                 (_g1735617923_ _g1736017926_))))
                         (_g1735617923_ _g1736017926_))
                     (_g1735617923_ _g1736017926_))
                 (_g1735617923_ _g1736017926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1735617923_
                                                  _g1736017926_))))
                                         (let ((_xarg1739918037_
                                                (reverse _xarg1739818010_)))
                                           (if (gx#stx-null? _tl1737817965_)
                                               ((lambda (_L18040_
                                                         _L18041_
                                                         _L18042_)
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g1807018073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1807118075_)
                               (cons _g1807018073_ _g1807118075_))
                             '()
                             _L18042_)))
                  (if (fx= (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1807718080_
                                                      _g1807818082_)
                                               (cons _g1807718080_
                                                     _g1807818082_))
                                             '()
                                             _L18042_)))
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g1808418087_
                                                      _g1808518089_)
                                               (cons _g1808418087_
                                                     _g1808518089_))
                                             '()
                                             _L18040_))))
                      (if (andmap gx#free-identifier=?
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1809118094_
                                                     _g1809218096_)
                                              (cons _g1809118094_
                                                    _g1809218096_))
                                            '()
                                            _L18042_))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1809818101_
                                                     _g1809918103_)
                                              (cons _g1809818101_
                                                    _g1809918103_))
                                            '()
                                            _L18040_)))
                          (not (find (lambda (_g1810518107_)
                                       (gx#free-identifier=?
                                        _g1810518107_
                                        _L18041_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g1810918112_
                                                        _g1811018114_)
                                                 (cons _g1810918112_
                                                       _g1811018114_))
                                               '()
                                               _L18042_))))
                          '#f)
                      '#f)
                  '#f)
              '#t
              (_g1735617923_ _g1736017926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _xarg1739918037_
                                                _hd1738917995_
                                                _arg1737517957_)
                                               (_g1735617923_
                                                _g1736017926_)))))))
                           (_loop1739418005_ _target1739118000_ '()))
                         (_g1735617923_ _g1736017926_)))))
               (_g1735617923_ _g1736017926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735617923_
                                                    _g1736017926_))
                                               (_g1735617923_ _g1736017926_))))
                                       (_g1735617923_ _g1736017926_))
                                   (_g1735617923_ _g1736017926_))
                               (_g1735617923_ _g1736017926_))))
                       (_g1735617923_ _g1736017926_))))
               (_g1735617923_ _g1736017926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1735617923_
                                                    _g1736017926_))
                                               (_g1735617923_ _g1736017926_))))
                                       (_g1735617923_ _g1736017926_))))
                               (_g1735617923_ _g1736017926_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1737017941_
                                                    _target1736717936_
                                                    '()))
                                                 (_g1735617923_
                                                  _g1736017926_)))))
                                       (_g1735617923_ _g1736017926_))
                                   (_g1735617923_ _g1736017926_))))
                           (_g1735617923_ _g1736017926_)))))
                (_g1735518117_ _form17354_))))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form16822_)
      (let ((_g1682616950_
             (lambda (_g1682716947_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1682716947_))))
        (let ((_g1682517067_
               (lambda (_g1682716953_)
                 (if (gx#stx-pair? _g1682716953_)
                     (let ((_e1691616955_ (gx#stx-e _g1682716953_)))
                       (let ((_hd1691716958_ (##car _e1691616955_))
                             (_tl1691816960_ (##cdr _e1691616955_)))
                         (if (gx#stx-pair? _tl1691816960_)
                             (let ((_e1691916963_ (gx#stx-e _tl1691816960_)))
                               (let ((_hd1692016966_ (##car _e1691916963_))
                                     (_tl1692116968_ (##cdr _e1691916963_)))
                                 (if (gx#stx-pair? _hd1692016966_)
                                     (let ((_e1692216971_
                                            (gx#stx-e _hd1692016966_)))
                                       (let ((_hd1692316974_
                                              (##car _e1692216971_))
                                             (_tl1692416976_
                                              (##cdr _e1692216971_)))
                                         (if (gx#identifier? _hd1692316974_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1692316974_)
                                                 (if (gx#stx-pair?
                                                      _tl1692416976_)
                                                     (let ((_e1692516979_
                                                            (gx#stx-e
                                                             _tl1692416976_)))
                                                       (let ((_hd1692616982_
                                                              (##car _e1692516979_))
                                                             (_tl1692716984_
                                                              (##cdr _e1692516979_)))
                                                         (if (gx#stx-pair?
                                                              _hd1692616982_)
                                                             (let ((_e1692816987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1692616982_)))
                       (let ((_hd1692916990_ (##car _e1692816987_))
                             (_tl1693016992_ (##cdr _e1692816987_)))
                         (if (gx#identifier? _hd1692916990_)
                             (if (gx#stx-eq? '%#ref _hd1692916990_)
                                 (if (gx#stx-pair? _tl1693016992_)
                                     (let ((_e1693116995_
                                            (gx#stx-e _tl1693016992_)))
                                       (let ((_hd1693216998_
                                              (##car _e1693116995_))
                                             (_tl1693317000_
                                              (##cdr _e1693116995_)))
                                         (if (gx#stx-null? _tl1693317000_)
                                             (if (gx#stx-pair? _tl1692716984_)
                                                 (let ((_e1693417003_
                                                        (gx#stx-e
                                                         _tl1692716984_)))
                                                   (let ((_hd1693517006_
                                                          (##car _e1693417003_))
                                                         (_tl1693617008_
                                                          (##cdr _e1693417003_)))
                                                     (if (gx#stx-pair?
                                                          _hd1693517006_)
                                                         (let ((_e1693717011_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1693517006_)))
                   (let ((_hd1693817014_ (##car _e1693717011_))
                         (_tl1693917016_ (##cdr _e1693717011_)))
                     (if (gx#identifier? _hd1693817014_)
                         (if (gx#stx-eq? '%#ref _hd1693817014_)
                             (if (gx#stx-pair? _tl1693917016_)
                                 (let ((_e1694017019_
                                        (gx#stx-e _tl1693917016_)))
                                   (let ((_hd1694117022_ (##car _e1694017019_))
                                         (_tl1694217024_
                                          (##cdr _e1694017019_)))
                                     (if (gx#stx-null? _tl1694217024_)
                                         (if (gx#stx-pair? _tl1693617008_)
                                             (let ((_e1694317027_
                                                    (gx#stx-e _tl1693617008_)))
                                               (let ((_hd1694417030_
                                                      (##car _e1694317027_))
                                                     (_tl1694517032_
                                                      (##cdr _e1694317027_)))
                                                 (if (gx#stx-null?
                                                      _tl1694517032_)
                                                     (if (gx#stx-null?
                                                          _tl1692116968_)
                                                         ((lambda (_L17035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L17036_
                           _L17037_)
                    (gxc#generate-runtime-binding-id _L17035_))
                  _hd1694117022_
                  _hd1693216998_
                  _hd1691716958_)
                 (_g1682616950_ _g1682716953_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682616950_
                                                      _g1682716953_))))
                                             (_g1682616950_ _g1682716953_))
                                         (_g1682616950_ _g1682716953_))))
                                 (_g1682616950_ _g1682716953_))
                             (_g1682616950_ _g1682716953_))
                         (_g1682616950_ _g1682716953_))))
                 (_g1682616950_ _g1682716953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1682616950_ _g1682716953_))
                                             (_g1682616950_ _g1682716953_))))
                                     (_g1682616950_ _g1682716953_))
                                 (_g1682616950_ _g1682716953_))
                             (_g1682616950_ _g1682716953_))))
                     (_g1682616950_ _g1682716953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682616950_
                                                      _g1682716953_))
                                                 (_g1682616950_ _g1682716953_))
                                             (_g1682616950_ _g1682716953_))))
                                     (_g1682616950_ _g1682716953_))))
                             (_g1682616950_ _g1682716953_))))
                     (_g1682616950_ _g1682716953_)))))
          (let ((_g1682417203_
                 (lambda (_g1682717070_)
                   (if (gx#stx-pair? _g1682717070_)
                       (let ((_e1687717072_ (gx#stx-e _g1682717070_)))
                         (let ((_hd1687817075_ (##car _e1687717072_))
                               (_tl1687917077_ (##cdr _e1687717072_)))
                           (if (gx#stx-pair/null? _hd1687817075_)
                               (if (fx>= (gx#stx-length _hd1687817075_) '0)
                                   (let ((_g19242_
                                          (gx#syntax-split-splice
                                           _hd1687817075_
                                           '0)))
                                     (begin
                                       (let ((_g19243_
                                              (values-count _g19242_)))
                                         (if (not (fx= _g19243_ 2))
                                             (error "Context expects 2 values"
                                                    _g19243_)))
                                       (let ((_target1688017080_
                                              (values-ref _g19242_ 0))
                                             (_tl1688217082_
                                              (values-ref _g19242_ 1)))
                                         (letrec ((_loop1688317085_
                                                   (lambda (_hd1688117088_
                                                            _arg1688717090_)
                                                     (if (gx#stx-pair?
                                                          _hd1688117088_)
                                                         (let ((_e1688417093_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1688117088_)))
                   (let ((_lp-hd1688517096_ (##car _e1688417093_))
                         (_lp-tl1688617098_ (##cdr _e1688417093_)))
                     (_loop1688317085_
                      _lp-tl1688617098_
                      (cons _lp-hd1688517096_ _arg1688717090_))))
                 (let ((_arg1688817101_ (reverse _arg1688717090_)))
                   (if (gx#stx-pair? _tl1687917077_)
                       (let ((_e1688917104_ (gx#stx-e _tl1687917077_)))
                         (let ((_hd1689017107_ (##car _e1688917104_))
                               (_tl1689117109_ (##cdr _e1688917104_)))
                           (if (gx#stx-pair? _hd1689017107_)
                               (let ((_e1689217112_ (gx#stx-e _hd1689017107_)))
                                 (let ((_hd1689317115_ (##car _e1689217112_))
                                       (_tl1689417117_ (##cdr _e1689217112_)))
                                   (if (gx#identifier? _hd1689317115_)
                                       (if (gx#stx-eq? '%#call _hd1689317115_)
                                           (if (gx#stx-pair? _tl1689417117_)
                                               (let ((_e1689517120_
                                                      (gx#stx-e
                                                       _tl1689417117_)))
                                                 (let ((_hd1689617123_
                                                        (##car _e1689517120_))
                                                       (_tl1689717125_
                                                        (##cdr _e1689517120_)))
                                                   (if (gx#stx-pair?
                                                        _hd1689617123_)
                                                       (let ((_e1689817128_
                                                              (gx#stx-e
                                                               _hd1689617123_)))
                                                         (let ((_hd1689917131_
                                                                (##car _e1689817128_))
                                                               (_tl1690017133_
                                                                (##cdr _e1689817128_)))
                                                           (if (gx#identifier?
                                                                _hd1689917131_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd1689917131_)
                           (if (gx#stx-pair? _tl1690017133_)
                               (let ((_e1690117136_ (gx#stx-e _tl1690017133_)))
                                 (let ((_hd1690217139_ (##car _e1690117136_))
                                       (_tl1690317141_ (##cdr _e1690117136_)))
                                   (if (gx#stx-null? _tl1690317141_)
                                       (if (gx#stx-pair? _tl1689717125_)
                                           (let ((_e1690417144_
                                                  (gx#stx-e _tl1689717125_)))
                                             (let ((_hd1690517147_
                                                    (##car _e1690417144_))
                                                   (_tl1690617149_
                                                    (##cdr _e1690417144_)))
                                               (if (gx#stx-pair?
                                                    _hd1690517147_)
                                                   (let ((_e1690717152_
                                                          (gx#stx-e
                                                           _hd1690517147_)))
                                                     (let ((_hd1690817155_
                                                            (##car _e1690717152_))
                                                           (_tl1690917157_
                                                            (##cdr _e1690717152_)))
                                                       (if (gx#identifier?
                                                            _hd1690817155_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1690817155_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1690917157_)
                           (let ((_e1691017160_ (gx#stx-e _tl1690917157_)))
                             (let ((_hd1691117163_ (##car _e1691017160_))
                                   (_tl1691217165_ (##cdr _e1691017160_)))
                               (if (gx#stx-null? _tl1691217165_)
                                   (if (gx#stx-null? _tl1689117109_)
                                       ((lambda (_L17168_
                                                 _L17169_
                                                 _L17170_
                                                 _L17171_)
                                          (gxc#generate-runtime-binding-id
                                           _L17168_))
                                        _hd1691117163_
                                        _hd1690217139_
                                        _tl1688217082_
                                        _arg1688817101_)
                                       (_g1682517067_ _g1682717070_))
                                   (_g1682517067_ _g1682717070_))))
                           (_g1682517067_ _g1682717070_))
                       (_g1682517067_ _g1682717070_))
                   (_g1682517067_ _g1682717070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1682517067_
                                                    _g1682717070_))))
                                           (_g1682517067_ _g1682717070_))
                                       (_g1682517067_ _g1682717070_))))
                               (_g1682517067_ _g1682717070_))
                           (_g1682517067_ _g1682717070_))
                       (_g1682517067_ _g1682717070_))))
               (_g1682517067_ _g1682717070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1682517067_ _g1682717070_))
                                           (_g1682517067_ _g1682717070_))
                                       (_g1682517067_ _g1682717070_))))
                               (_g1682517067_ _g1682717070_))))
                       (_g1682517067_ _g1682717070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1688317085_
                                            _target1688017080_
                                            '())))))
                                   (_g1682517067_ _g1682717070_))
                               (_g1682517067_ _g1682717070_))))
                       (_g1682517067_ _g1682717070_)))))
            (let ((_g1682317351_
                   (lambda (_g1682717206_)
                     (if (gx#stx-pair? _g1682717206_)
                         (let ((_e1683117208_ (gx#stx-e _g1682717206_)))
                           (let ((_hd1683217211_ (##car _e1683117208_))
                                 (_tl1683317213_ (##cdr _e1683117208_)))
                             (if (gx#stx-pair/null? _hd1683217211_)
                                 (if (fx>= (gx#stx-length _hd1683217211_) '0)
                                     (let ((_g19244_
                                            (gx#syntax-split-splice
                                             _hd1683217211_
                                             '0)))
                                       (begin
                                         (let ((_g19245_
                                                (values-count _g19244_)))
                                           (if (not (fx= _g19245_ 2))
                                               (error "Context expects 2 values"
                                                      _g19245_)))
                                         (let ((_target1683417216_
                                                (values-ref _g19244_ 0))
                                               (_tl1683617218_
                                                (values-ref _g19244_ 1)))
                                           (if (gx#stx-null? _tl1683617218_)
                                               (letrec ((_loop1683717221_
                                                         (lambda (_hd1683517224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg1684117226_)
                   (if (gx#stx-pair? _hd1683517224_)
                       (let ((_e1683817229_ (gx#stx-e _hd1683517224_)))
                         (let ((_lp-hd1683917232_ (##car _e1683817229_))
                               (_lp-tl1684017234_ (##cdr _e1683817229_)))
                           (_loop1683717221_
                            _lp-tl1684017234_
                            (cons _lp-hd1683917232_ _arg1684117226_))))
                       (let ((_arg1684217237_ (reverse _arg1684117226_)))
                         (if (gx#stx-pair? _tl1683317213_)
                             (let ((_e1684317240_ (gx#stx-e _tl1683317213_)))
                               (let ((_hd1684417243_ (##car _e1684317240_))
                                     (_tl1684517245_ (##cdr _e1684317240_)))
                                 (if (gx#stx-pair? _hd1684417243_)
                                     (let ((_e1684617248_
                                            (gx#stx-e _hd1684417243_)))
                                       (let ((_hd1684717251_
                                              (##car _e1684617248_))
                                             (_tl1684817253_
                                              (##cdr _e1684617248_)))
                                         (if (gx#identifier? _hd1684717251_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd1684717251_)
                                                 (if (gx#stx-pair?
                                                      _tl1684817253_)
                                                     (let ((_e1684917256_
                                                            (gx#stx-e
                                                             _tl1684817253_)))
                                                       (let ((_hd1685017259_
                                                              (##car _e1684917256_))
                                                             (_tl1685117261_
                                                              (##cdr _e1684917256_)))
                                                         (if (gx#stx-pair?
                                                              _hd1685017259_)
                                                             (let ((_e1685217264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1685017259_)))
                       (let ((_hd1685317267_ (##car _e1685217264_))
                             (_tl1685417269_ (##cdr _e1685217264_)))
                         (if (gx#identifier? _hd1685317267_)
                             (if (gx#stx-eq? '%#ref _hd1685317267_)
                                 (if (gx#stx-pair? _tl1685417269_)
                                     (let ((_e1685517272_
                                            (gx#stx-e _tl1685417269_)))
                                       (let ((_hd1685617275_
                                              (##car _e1685517272_))
                                             (_tl1685717277_
                                              (##cdr _e1685517272_)))
                                         (if (gx#stx-null? _tl1685717277_)
                                             (if (gx#stx-pair/null?
                                                  _tl1685117261_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl1685117261_)
                                                           '0)
                                                     (let ((_g19246_
                                                            (gx#syntax-split-splice
                                                             _tl1685117261_
                                                             '0)))
                                                       (begin
                                                         (let ((_g19247_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g19246_)))
                   (if (not (fx= _g19247_ 2))
                       (error "Context expects 2 values" _g19247_)))
                 (let ((_target1685817280_ (values-ref _g19246_ 0))
                       (_tl1686017282_ (values-ref _g19246_ 1)))
                   (if (gx#stx-null? _tl1686017282_)
                       (letrec ((_loop1686117285_
                                 (lambda (_hd1685917288_ _xarg1686517290_)
                                   (if (gx#stx-pair? _hd1685917288_)
                                       (let ((_e1686217293_
                                              (gx#stx-e _hd1685917288_)))
                                         (let ((_lp-hd1686317296_
                                                (##car _e1686217293_))
                                               (_lp-tl1686417298_
                                                (##cdr _e1686217293_)))
                                           (if (gx#stx-pair? _lp-hd1686317296_)
                                               (let ((_e1686717301_
                                                      (gx#stx-e
                                                       _lp-hd1686317296_)))
                                                 (let ((_hd1686817304_
                                                        (##car _e1686717301_))
                                                       (_tl1686917306_
                                                        (##cdr _e1686717301_)))
                                                   (if (gx#identifier?
                                                        _hd1686817304_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd1686817304_)
                                                           (if (gx#stx-pair?
                                                                _tl1686917306_)
                                                               (let ((_e1687017309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1686917306_)))
                         (let ((_hd1687117312_ (##car _e1687017309_))
                               (_tl1687217314_ (##cdr _e1687017309_)))
                           (if (gx#stx-null? _tl1687217314_)
                               (_loop1686117285_
                                _lp-tl1686417298_
                                (cons _hd1687117312_ _xarg1686517290_))
                               (_g1682417203_ _g1682717206_))))
                       (_g1682417203_ _g1682717206_))
                   (_g1682417203_ _g1682717206_))
               (_g1682417203_ _g1682717206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1682417203_ _g1682717206_))))
                                       (let ((_xarg1686617317_
                                              (reverse _xarg1686517290_)))
                                         (if (gx#stx-null? _tl1684517245_)
                                             ((lambda (_L17320_
                                                       _L17321_
                                                       _L17322_)
                                                (gxc#generate-runtime-binding-id
                                                 _L17321_))
                                              _xarg1686617317_
                                              _hd1685617275_
                                              _arg1684217237_)
                                             (_g1682417203_
                                              _g1682717206_)))))))
                         (_loop1686117285_ _target1685817280_ '()))
                       (_g1682417203_ _g1682717206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682417203_
                                                      _g1682717206_))
                                                 (_g1682417203_ _g1682717206_))
                                             (_g1682417203_ _g1682717206_))))
                                     (_g1682417203_ _g1682717206_))
                                 (_g1682417203_ _g1682717206_))
                             (_g1682417203_ _g1682717206_))))
                     (_g1682417203_ _g1682717206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1682417203_
                                                      _g1682717206_))
                                                 (_g1682417203_ _g1682717206_))
                                             (_g1682417203_ _g1682717206_))))
                                     (_g1682417203_ _g1682717206_))))
                             (_g1682417203_ _g1682717206_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1683717221_
                                                  _target1683417216_
                                                  '()))
                                               (_g1682417203_
                                                _g1682717206_)))))
                                     (_g1682417203_ _g1682717206_))
                                 (_g1682417203_ _g1682717206_))))
                         (_g1682417203_ _g1682717206_)))))
              (_g1682317351_ _form16822_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form16626_)
      (let ((_g1662816642_
             (lambda (_g1662916639_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1662916639_))))
        (let ((_g1662716819_
               (lambda (_g1662916645_)
                 (if (gx#stx-pair? _g1662916645_)
                     (let ((_e1663216647_ (gx#stx-e _g1662916645_)))
                       (let ((_hd1663316650_ (##car _e1663216647_))
                             (_tl1663416652_ (##cdr _e1663216647_)))
                         (if (gx#stx-pair? _tl1663416652_)
                             (let ((_e1663516655_ (gx#stx-e _tl1663416652_)))
                               (let ((_hd1663616658_ (##car _e1663516655_))
                                     (_tl1663716660_ (##cdr _e1663516655_)))
                                 (if (gx#stx-null? _tl1663716660_)
                                     ((lambda (_L16663_ _L16664_)
                                        (let ((_g1667916707_
                                               (lambda (_g1668016704_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1668016704_))))
                                          (let ((_g1667816720_
                                                 (lambda (_g1668016710_)
                                                   ((lambda (_L16712_)
                                                      (cons '0 '()))
                                                    _g1668016710_))))
                                            (let ((_g1667716769_
                                                   (lambda (_g1668016723_)
                                                     (if (gx#stx-pair/null?
                                                          _g1668016723_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1668016723_)
                           '0)
                     (let ((_g19248_
                            (gx#syntax-split-splice _g1668016723_ '0)))
                       (begin
                         (let ((_g19249_ (values-count _g19248_)))
                           (if (not (fx= _g19249_ 2))
                               (error "Context expects 2 values" _g19249_)))
                         (let ((_target1669316725_ (values-ref _g19248_ 0))
                               (_tl1669516727_ (values-ref _g19248_ 1)))
                           (letrec ((_loop1669616730_
                                     (lambda (_hd1669416733_ _arg1670016735_)
                                       (if (gx#stx-pair? _hd1669416733_)
                                           (let ((_e1669716738_
                                                  (gx#stx-e _hd1669416733_)))
                                             (let ((_lp-hd1669816741_
                                                    (##car _e1669716738_))
                                                   (_lp-tl1669916743_
                                                    (##cdr _e1669716738_)))
                                               (_loop1669616730_
                                                _lp-tl1669916743_
                                                (cons _lp-hd1669816741_
                                                      _arg1670016735_))))
                                           (let ((_arg1670116746_
                                                  (reverse _arg1670016735_)))
                                             ((lambda (_L16749_ _L16750_)
                                                (cons (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1676116764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1676216766_)
                                  (cons _g1676116764_ _g1676216766_))
                                '()
                                _L16750_)))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _tl1669516727_
                                              _arg1670116746_))))))
                             (_loop1669616730_ _target1669316725_ '())))))
                     (_g1667816720_ _g1668016723_))
                 (_g1667816720_ _g1668016723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1667616816_
                                                     (lambda (_g1668016772_)
                                                       (if (gx#stx-pair/null?
                                                            _g1668016772_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1668016772_)
                             '0)
                       (let ((_g19250_
                              (gx#syntax-split-splice _g1668016772_ '0)))
                         (begin
                           (let ((_g19251_ (values-count _g19250_)))
                             (if (not (fx= _g19251_ 2))
                                 (error "Context expects 2 values" _g19251_)))
                           (let ((_target1668216774_ (values-ref _g19250_ 0))
                                 (_tl1668416776_ (values-ref _g19250_ 1)))
                             (if (gx#stx-null? _tl1668416776_)
                                 (letrec ((_loop1668516779_
                                           (lambda (_hd1668316782_
                                                    _arg1668916784_)
                                             (if (gx#stx-pair? _hd1668316782_)
                                                 (let ((_e1668616787_
                                                        (gx#stx-e
                                                         _hd1668316782_)))
                                                   (let ((_lp-hd1668716790_
                                                          (##car _e1668616787_))
                                                         (_lp-tl1668816792_
                                                          (##cdr _e1668616787_)))
                                                     (_loop1668516779_
                                                      _lp-tl1668816792_
                                                      (cons _lp-hd1668716790_
                                                            _arg1668916784_))))
                                                 (let ((_arg1669016795_
                                                        (reverse _arg1668916784_)))
                                                   ((lambda (_L16798_)
                                                      (length (begin
                                                                '#!void
                                                                (foldr1 (lambda (_g1680816811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g1680916813_)
                                  (cons _g1680816811_ _g1680916813_))
                                '()
                                _L16798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg1669016795_))))))
                                   (_loop1668516779_ _target1668216774_ '()))
                                 (_g1667716769_ _g1668016772_)))))
                       (_g1667716769_ _g1668016772_))
                   (_g1667716769_ _g1668016772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1667616816_ _L16664_))))))
                                      _hd1663616658_
                                      _hd1663316650_)
                                     (_g1662816642_ _g1662916645_))))
                             (_g1662816642_ _g1662916645_))))
                     (_g1662816642_ _g1662916645_)))))
          (_g1662716819_ _form16626_)))))
  (define gxc#lambda-expr?
    (lambda (_expr16579_)
      (let ((_g1658216592_
             (lambda (_g1658316589_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1658316589_))))
        (let ((_g1658116599_ (lambda (_g1658316595_) ((lambda () '#f)))))
          (let ((_g1658016623_
                 (lambda (_g1658316602_)
                   (if (gx#stx-pair? _g1658316602_)
                       (let ((_e1658516604_ (gx#stx-e _g1658316602_)))
                         (let ((_hd1658616607_ (##car _e1658516604_))
                               (_tl1658716609_ (##cdr _e1658516604_)))
                           (if (gx#identifier? _hd1658616607_)
                               (if (gx#stx-eq? '%#lambda _hd1658616607_)
                                   ((lambda (_L16612_) '#t) _tl1658716609_)
                                   (_g1658116599_ _g1658316602_))
                               (_g1658116599_ _g1658316602_))))
                       (_g1658116599_ _g1658316602_)))))
            (_g1658016623_ _expr16579_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr16532_)
      (let ((_g1653516545_
             (lambda (_g1653616542_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1653616542_))))
        (let ((_g1653416552_ (lambda (_g1653616548_) ((lambda () '#f)))))
          (let ((_g1653316576_
                 (lambda (_g1653616555_)
                   (if (gx#stx-pair? _g1653616555_)
                       (let ((_e1653816557_ (gx#stx-e _g1653616555_)))
                         (let ((_hd1653916560_ (##car _e1653816557_))
                               (_tl1654016562_ (##cdr _e1653816557_)))
                           (if (gx#identifier? _hd1653916560_)
                               (if (gx#stx-eq? '%#case-lambda _hd1653916560_)
                                   ((lambda (_L16565_) '#t) _tl1654016562_)
                                   (_g1653416552_ _g1653616555_))
                               (_g1653416552_ _g1653616555_))))
                       (_g1653416552_ _g1653616555_)))))
            (_g1653316576_ _expr16532_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr16401_)
      (let ((_g1640416434_
             (lambda (_g1640516431_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1640516431_))))
        (let ((_g1640316441_ (lambda (_g1640516437_) ((lambda () '#f)))))
          (let ((_g1640216529_
                 (lambda (_g1640516444_)
                   (if (gx#stx-pair? _g1640516444_)
                       (let ((_e1640916446_ (gx#stx-e _g1640516444_)))
                         (let ((_hd1641016449_ (##car _e1640916446_))
                               (_tl1641116451_ (##cdr _e1640916446_)))
                           (if (gx#identifier? _hd1641016449_)
                               (if (gx#stx-eq? '%#let-values _hd1641016449_)
                                   (if (gx#stx-pair? _tl1641116451_)
                                       (let ((_e1641216454_
                                              (gx#stx-e _tl1641116451_)))
                                         (let ((_hd1641316457_
                                                (##car _e1641216454_))
                                               (_tl1641416459_
                                                (##cdr _e1641216454_)))
                                           (if (gx#stx-pair? _hd1641316457_)
                                               (let ((_e1641516462_
                                                      (gx#stx-e
                                                       _hd1641316457_)))
                                                 (let ((_hd1641616465_
                                                        (##car _e1641516462_))
                                                       (_tl1641716467_
                                                        (##cdr _e1641516462_)))
                                                   (if (gx#stx-pair?
                                                        _hd1641616465_)
                                                       (let ((_e1641816470_
                                                              (gx#stx-e
                                                               _hd1641616465_)))
                                                         (let ((_hd1641916473_
                                                                (##car _e1641816470_))
                                                               (_tl1642016475_
                                                                (##cdr _e1641816470_)))
                                                           (if (gx#stx-pair?
                                                                _hd1641916473_)
                                                               (let ((_e1642116478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1641916473_)))
                         (let ((_hd1642216481_ (##car _e1642116478_))
                               (_tl1642316483_ (##cdr _e1642116478_)))
                           (if (gx#stx-null? _tl1642316483_)
                               (if (gx#stx-pair? _tl1642016475_)
                                   (let ((_e1642416486_
                                          (gx#stx-e _tl1642016475_)))
                                     (let ((_hd1642516489_
                                            (##car _e1642416486_))
                                           (_tl1642616491_
                                            (##cdr _e1642416486_)))
                                       (if (gx#stx-null? _tl1642616491_)
                                           (if (gx#stx-null? _tl1641716467_)
                                               (if (gx#stx-pair?
                                                    _tl1641416459_)
                                                   (let ((_e1642716494_
                                                          (gx#stx-e
                                                           _tl1641416459_)))
                                                     (let ((_hd1642816497_
                                                            (##car _e1642716494_))
                                                           (_tl1642916499_
                                                            (##cdr _e1642716494_)))
                                                       (if (gx#stx-null?
                                                            _tl1642916499_)
                                                           ((lambda (_L16502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16503_
                             _L16504_)
                      (if (gx#identifier? _L16504_)
                          (if (gxc#lambda-expr? _L16503_)
                              (gxc#case-lambda-expr? _L16502_)
                              '#f)
                          '#f))
                    _hd1642816497_
                    _hd1642516489_
                    _hd1642216481_)
                   (_g1640316441_ _g1640516444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1640316441_
                                                    _g1640516444_))
                                               (_g1640316441_ _g1640516444_))
                                           (_g1640316441_ _g1640516444_))))
                                   (_g1640316441_ _g1640516444_))
                               (_g1640316441_ _g1640516444_))))
                       (_g1640316441_ _g1640516444_))))
               (_g1640316441_ _g1640516444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1640316441_ _g1640516444_))))
                                       (_g1640316441_ _g1640516444_))
                                   (_g1640316441_ _g1640516444_))
                               (_g1640316441_ _g1640516444_))))
                       (_g1640316441_ _g1640516444_)))))
            (_g1640216529_ _expr16401_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__opt-lambda16141
      (lambda (_stx16143_ _id16144_ _clauses16145_ _gensym?16146_)
        ((letrec ((_lp16148_
                   (lambda (_rest16150_ _ids16151_ _impls16152_ _clauses16153_)
                     (let ((_rest1615416162_ _rest16150_))
                       (let ((_E1615716166_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1615416162_))))
                         (let ((_else1615616170_
                                (lambda ()
                                  (values (reverse _ids16151_)
                                          (reverse _impls16152_)
                                          (reverse _clauses16153_)))))
                           (let ((_K1615816375_
                                  (lambda (_rest16173_ _clause16174_)
                                    (if (gxc#dispatch-lambda-form?
                                         _clause16174_)
                                        (_lp16148_
                                         _rest16173_
                                         _ids16151_
                                         _impls16152_
                                         (cons _clause16174_ _clauses16153_))
                                        (let ((_g1617616187_
                                               (lambda (_g1617716184_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1617716184_))))
                                          (let ((_g1617516372_
                                                 (lambda (_g1617716190_)
                                                   (if (gx#stx-pair?
                                                        _g1617716190_)
                                                       (let ((_e1618016192_
                                                              (gx#stx-e
                                                               _g1617716190_)))
                                                         (let ((_hd1618116195_
                                                                (##car _e1618016192_))
                                                               (_tl1618216197_
                                                                (##cdr _e1618016192_)))
                                                           ((lambda (_L16200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16201_)
                      (let ((_id16218_
                             (make-symbol
                              (gx#stx-e _id16144_)
                              '"__"
                              (length _clauses16153_)
                              (if _gensym?16146_ (gensym '__) '""))))
                        (let ((_id16220_
                               (gx#core-quote-syntax__1
                                _id16218_
                                (gx#stx-source _stx16143_))))
                          (let ((_impl16222_
                                 (gxc#xform-wrap-source
                                  (cons (gx#datum->syntax__0 '#f '%#lambda)
                                        (cons _L16201_ _L16200_))
                                  _stx16143_)))
                            (let ((_clause16369_
                                   (let ((_g1622616254_
                                          (lambda (_g1622716251_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1622716251_))))
                                     (let ((_g1622516270_
                                            (lambda (_g1622716257_)
                                              ((lambda (_L16259_)
                                                 (cons _L16201_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'apply '()))
                                  (cons (cons '%#ref (cons _id16220_ '()))
                                        (cons (cons (gx#datum->syntax__0
                                                     '#f
                                                     '%#ref)
                                                    (cons _L16259_ '()))
                                              '()))))
                      _stx16143_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g1622716257_))))
                                       (let ((_g1622416319_
                                              (lambda (_g1622716273_)
                                                (if (gx#stx-pair/null?
                                                     _g1622716273_)
                                                    (if (fx>= (gx#stx-length
                                                               _g1622716273_)
                                                              '0)
                                                        (let ((_g19252_
                                                               (gx#syntax-split-splice
                                                                _g1622716273_
                                                                '0)))
                                                          (begin
                                                            (let ((_g19253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (values-count _g19252_)))
                      (if (not (fx= _g19253_ 2))
                          (error "Context expects 2 values" _g19253_)))
                    (let ((_target1624016275_ (values-ref _g19252_ 0))
                          (_tl1624216277_ (values-ref _g19252_ 1)))
                      (letrec ((_loop1624316280_
                                (lambda (_hd1624116283_ _arg1624716285_)
                                  (if (gx#stx-pair? _hd1624116283_)
                                      (let ((_e1624416288_
                                             (gx#stx-e _hd1624116283_)))
                                        (let ((_lp-hd1624516291_
                                               (##car _e1624416288_))
                                              (_lp-tl1624616293_
                                               (##cdr _e1624416288_)))
                                          (_loop1624316280_
                                           _lp-tl1624616293_
                                           (cons _lp-hd1624516291_
                                                 _arg1624716285_))))
                                      (let ((_arg1624816296_
                                             (reverse _arg1624716285_)))
                                        ((lambda (_L16299_ _L16300_)
                                           (cons _L16201_
                                                 (cons (gxc#xform-wrap-source
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'apply '()))
                            (cons (cons '%#ref (cons _id16220_ '()))
                                  (foldr1 cons
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L16299_ '()))
                                                '())
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1631116314_
                                                             _g1631216316_)
                                                      (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#ref)
                          (cons _g1631116314_ '()))
                    _g1631216316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L16300_))))))
                _stx16143_)
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl1624216277_
                                         _arg1624816296_))))))
                        (_loop1624316280_ _target1624016275_ '())))))
                (_g1622516270_ _g1622716273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1622516270_
                                                     _g1622716273_)))))
                                         (let ((_g1622316366_
                                                (lambda (_g1622716322_)
                                                  (if (gx#stx-pair/null?
                                                       _g1622716322_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1622716322_)
                        '0)
                  (let ((_g19254_ (gx#syntax-split-splice _g1622716322_ '0)))
                    (begin
                      (let ((_g19255_ (values-count _g19254_)))
                        (if (not (fx= _g19255_ 2))
                            (error "Context expects 2 values" _g19255_)))
                      (let ((_target1622916324_ (values-ref _g19254_ 0))
                            (_tl1623116326_ (values-ref _g19254_ 1)))
                        (if (gx#stx-null? _tl1623116326_)
                            (letrec ((_loop1623216329_
                                      (lambda (_hd1623016332_ _arg1623616334_)
                                        (if (gx#stx-pair? _hd1623016332_)
                                            (let ((_e1623316337_
                                                   (gx#stx-e _hd1623016332_)))
                                              (let ((_lp-hd1623416340_
                                                     (##car _e1623316337_))
                                                    (_lp-tl1623516342_
                                                     (##cdr _e1623316337_)))
                                                (_loop1623216329_
                                                 _lp-tl1623516342_
                                                 (cons _lp-hd1623416340_
                                                       _arg1623616334_))))
                                            (let ((_arg1623716345_
                                                   (reverse _arg1623616334_)))
                                              ((lambda (_L16348_)
                                                 (cons _L16201_
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _id16220_ '()))
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1635816361_
                                                     _g1635916363_)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _g1635816361_
                                                                '()))
                                                    _g1635916363_))
                                            '()
                                            _L16348_))))
                      _stx16143_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _arg1623716345_))))))
                              (_loop1623216329_ _target1622916324_ '()))
                            (_g1622416319_ _g1622716322_)))))
                  (_g1622416319_ _g1622716322_))
              (_g1622416319_ _g1622716322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1622316366_ _L16201_)))))))
                              (let ()
                                (_lp16148_
                                 _rest16173_
                                 (cons _id16220_ _ids16151_)
                                 (cons _impl16222_ _impls16152_)
                                 (cons _clause16369_ _clauses16153_))))))))
                    _tl1618216197_
                    _hd1618116195_)))
               (_g1617616187_ _g1617716190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1617516372_ _clause16174_)))))))
                             (if (##pair? _rest1615416162_)
                                 (let ((_hd1615916378_
                                        (##car _rest1615416162_))
                                       (_tl1616016380_
                                        (##cdr _rest1615416162_)))
                                   (let ((_clause16383_ _hd1615916378_))
                                     (let ((_rest16385_ _tl1616016380_))
                                       (_K1615816375_
                                        _rest16385_
                                        _clause16383_))))
                                 (_else1615616170_)))))))))
           _lp16148_)
         _clauses16145_
         '()
         '()
         '())))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx16390_ _id16391_ _clauses16392_)
          (let ((_gensym?16394_ '#f))
            (gxc#lift-case-lambda-clauses__opt-lambda16141
             _stx16390_
             _id16391_
             _clauses16392_
             _gensym?16394_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g19257_
          (let ((_g19256_ (length _g19257_)))
            (cond ((fx= _g19256_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g19257_))
                  ((fx= _g19256_ 4)
                   (apply gxc#lift-case-lambda-clauses__opt-lambda16141
                          _g19257_))
                  (else (error "No clause matching arguments" _g19257_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx15732_)
      (let ((_case-lambda-clause-def15734_
             (lambda (_id16139_ _impl16140_)
               (gxc#xform-wrap-source
                (cons '%#define-values
                      (cons (cons _id16139_ '())
                            (cons (gxc#compile-e _impl16140_) '())))
                _stx15732_))))
        (let ((_g1573815783_
               (lambda (_g1573915780_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1573915780_))))
          (let ((_g1573715829_
                 (lambda (_g1573915786_)
                   (if (gx#stx-pair? _g1573915786_)
                       (let ((_e1577015788_ (gx#stx-e _g1573915786_)))
                         (let ((_hd1577115791_ (##car _e1577015788_))
                               (_tl1577215793_ (##cdr _e1577015788_)))
                           (if (gx#stx-pair? _tl1577215793_)
                               (let ((_e1577315796_ (gx#stx-e _tl1577215793_)))
                                 (let ((_hd1577415799_ (##car _e1577315796_))
                                       (_tl1577515801_ (##cdr _e1577315796_)))
                                   (if (gx#stx-pair? _tl1577515801_)
                                       (let ((_e1577615804_
                                              (gx#stx-e _tl1577515801_)))
                                         (let ((_hd1577715807_
                                                (##car _e1577615804_))
                                               (_tl1577815809_
                                                (##cdr _e1577615804_)))
                                           (if (gx#stx-null? _tl1577815809_)
                                               ((lambda (_L15812_ _L15813_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#define-values
                                                         (cons _L15813_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L15812_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15732_))
                                                _hd1577715807_
                                                _hd1577415799_)
                                               (_g1573815783_ _g1573915786_))))
                                       (_g1573815783_ _g1573915786_))))
                               (_g1573815783_ _g1573915786_))))
                       (_g1573815783_ _g1573915786_)))))
            (let ((_g1573616011_
                   (lambda (_g1573915832_)
                     (if (gx#stx-pair? _g1573915832_)
                         (let ((_e1575615834_ (gx#stx-e _g1573915832_)))
                           (let ((_hd1575715837_ (##car _e1575615834_))
                                 (_tl1575815839_ (##cdr _e1575615834_)))
                             (if (gx#stx-pair? _tl1575815839_)
                                 (let ((_e1575915842_
                                        (gx#stx-e _tl1575815839_)))
                                   (let ((_hd1576015845_ (##car _e1575915842_))
                                         (_tl1576115847_
                                          (##cdr _e1575915842_)))
                                     (if (gx#stx-pair? _hd1576015845_)
                                         (let ((_e1576215850_
                                                (gx#stx-e _hd1576015845_)))
                                           (let ((_hd1576315853_
                                                  (##car _e1576215850_))
                                                 (_tl1576415855_
                                                  (##cdr _e1576215850_)))
                                             (if (gx#stx-null? _tl1576415855_)
                                                 (if (gx#stx-pair?
                                                      _tl1576115847_)
                                                     (let ((_e1576515858_
                                                            (gx#stx-e
                                                             _tl1576115847_)))
                                                       (let ((_hd1576615861_
                                                              (##car _e1576515858_))
                                                             (_tl1576715863_
                                                              (##cdr _e1576515858_)))
                                                         (if (gx#stx-null?
                                                              _tl1576715863_)
                                                             ((lambda (_L15866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15867_)
                        (if (if (gx#identifier? _L15867_)
                                (gxc#opt-lambda-expr? _L15866_)
                                '#f)
                            (let ((_g1588315913_
                                   (lambda (_g1588415910_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1588415910_))))
                              (let ((_g1588216008_
                                     (lambda (_g1588415916_)
                                       (if (gx#stx-pair? _g1588415916_)
                                           (let ((_e1588815918_
                                                  (gx#stx-e _g1588415916_)))
                                             (let ((_hd1588915921_
                                                    (##car _e1588815918_))
                                                   (_tl1589015923_
                                                    (##cdr _e1588815918_)))
                                               (if (gx#stx-pair?
                                                    _tl1589015923_)
                                                   (let ((_e1589115926_
                                                          (gx#stx-e
                                                           _tl1589015923_)))
                                                     (let ((_hd1589215929_
                                                            (##car _e1589115926_))
                                                           (_tl1589315931_
                                                            (##cdr _e1589115926_)))
                                                       (if (gx#stx-pair?
                                                            _hd1589215929_)
                                                           (let ((_e1589415934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1589215929_)))
                     (let ((_hd1589515937_ (##car _e1589415934_))
                           (_tl1589615939_ (##cdr _e1589415934_)))
                       (if (gx#stx-pair? _hd1589515937_)
                           (let ((_e1589715942_ (gx#stx-e _hd1589515937_)))
                             (let ((_hd1589815945_ (##car _e1589715942_))
                                   (_tl1589915947_ (##cdr _e1589715942_)))
                               (if (gx#stx-pair? _hd1589815945_)
                                   (let ((_e1590015950_
                                          (gx#stx-e _hd1589815945_)))
                                     (let ((_hd1590115953_
                                            (##car _e1590015950_))
                                           (_tl1590215955_
                                            (##cdr _e1590015950_)))
                                       (if (gx#stx-null? _tl1590215955_)
                                           (if (gx#stx-pair? _tl1589915947_)
                                               (let ((_e1590315958_
                                                      (gx#stx-e
                                                       _tl1589915947_)))
                                                 (let ((_hd1590415961_
                                                        (##car _e1590315958_))
                                                       (_tl1590515963_
                                                        (##cdr _e1590315958_)))
                                                   (if (gx#stx-null?
                                                        _tl1590515963_)
                                                       (if (gx#stx-null?
                                                            _tl1589615939_)
                                                           (if (gx#stx-pair?
                                                                _tl1589315931_)
                                                               (let ((_e1590615966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1589315931_)))
                         (let ((_hd1590715969_ (##car _e1590615966_))
                               (_tl1590815971_ (##cdr _e1590615966_)))
                           (if (gx#stx-null? _tl1590815971_)
                               ((lambda (_L15974_ _L15975_ _L15976_)
                                  (let ((_lambda-id16000_
                                         (make-symbol
                                          (gx#stx-e _L15867_)
                                          '"__"
                                          (gx#stx-e _L15976_))))
                                    (let ((_lambda-id16002_
                                           (gx#core-quote-syntax__1
                                            _lambda-id16000_
                                            (gx#stx-source _stx15732_))))
                                      (let ((_g19258_
                                             (gx#core-bind-runtime!__0
                                              _lambda-id16002_)))
                                        (let ((_new-case-lambda-expr16005_
                                               (gxc#apply-expression-subst
                                                _L15974_
                                                _L15976_
                                                _lambda-id16002_)))
                                          (let ()
                                            (begin
                                              (gxc#verbose
                                               '"lift opt-lambda dispatch "
                                               (gxc#generate-runtime-binding-id
                                                _L15867_)
                                               '" => "
                                               (gxc#generate-runtime-binding-id
                                                _lambda-id16002_))
                                              (gxc#xform-wrap-source
                                               (cons '%#begin
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _lambda-id16002_ '())
                                (cons (gxc#compile-e _L15975_) '())))
                    _stx15732_)
                   (cons (gxc#lift-top-lambda-define-values%
                          (gxc#xform-wrap-source
                           (cons '%#define-values
                                 (cons (cons _L15867_ '())
                                       (cons _new-case-lambda-expr16005_ '())))
                           _stx15732_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx15732_))))))))
                                _hd1590715969_
                                _hd1590415961_
                                _hd1590115953_)
                               (_g1588315913_ _g1588415916_))))
                       (_g1588315913_ _g1588415916_))
                   (_g1588315913_ _g1588415916_))
               (_g1588315913_ _g1588415916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1588315913_ _g1588415916_))
                                           (_g1588315913_ _g1588415916_))))
                                   (_g1588315913_ _g1588415916_))))
                           (_g1588315913_ _g1588415916_))))
                   (_g1588315913_ _g1588415916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1588315913_
                                                    _g1588415916_))))
                                           (_g1588315913_ _g1588415916_)))))
                                (_g1588216008_ _L15866_)))
                            (_g1573715829_ _g1573915832_)))
                      _hd1576615861_
                      _hd1576315853_)
                     (_g1573715829_ _g1573915832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1573715829_
                                                      _g1573915832_))
                                                 (_g1573715829_
                                                  _g1573915832_))))
                                         (_g1573715829_ _g1573915832_))))
                                 (_g1573715829_ _g1573915832_))))
                         (_g1573715829_ _g1573915832_)))))
              (let ((_g1573516136_
                     (lambda (_g1573916014_)
                       (if (gx#stx-pair? _g1573916014_)
                           (let ((_e1574216016_ (gx#stx-e _g1573916014_)))
                             (let ((_hd1574316019_ (##car _e1574216016_))
                                   (_tl1574416021_ (##cdr _e1574216016_)))
                               (if (gx#stx-pair? _tl1574416021_)
                                   (let ((_e1574516024_
                                          (gx#stx-e _tl1574416021_)))
                                     (let ((_hd1574616027_
                                            (##car _e1574516024_))
                                           (_tl1574716029_
                                            (##cdr _e1574516024_)))
                                       (if (gx#stx-pair? _hd1574616027_)
                                           (let ((_e1574816032_
                                                  (gx#stx-e _hd1574616027_)))
                                             (let ((_hd1574916035_
                                                    (##car _e1574816032_))
                                                   (_tl1575016037_
                                                    (##cdr _e1574816032_)))
                                               (if (gx#stx-null?
                                                    _tl1575016037_)
                                                   (if (gx#stx-pair?
                                                        _tl1574716029_)
                                                       (let ((_e1575116040_
                                                              (gx#stx-e
                                                               _tl1574716029_)))
                                                         (let ((_hd1575216043_
                                                                (##car _e1575116040_))
                                                               (_tl1575316045_
                                                                (##cdr _e1575116040_)))
                                                           (if (gx#stx-null?
                                                                _tl1575316045_)
                                                               ((lambda (_L16048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L16049_)
                          (if (if (gx#identifier? _L16049_)
                                  (gxc#case-lambda-expr? _L16048_)
                                  '#f)
                              (let ((_g1606616080_
                                     (lambda (_g1606716077_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1606716077_))))
                                (let ((_g1606516111_
                                       (lambda (_g1606716083_)
                                         (if (gx#stx-pair? _g1606716083_)
                                             (let ((_e1607316085_
                                                    (gx#stx-e _g1606716083_)))
                                               (let ((_hd1607416088_
                                                      (##car _e1607316085_))
                                                     (_tl1607516090_
                                                      (##cdr _e1607316085_)))
                                                 ((lambda (_L16093_)
                                                    (let ((_g19259_
                                                           (gxc#lift-case-lambda-clauses__0
                                                            _stx15732_
                                                            _L16049_
                                                            _L16093_)))
                                                      (begin
                                                        (let ((_g19260_
                                                               (values-count
                                                                _g19259_)))
                                                          (if (not (fx= _g19260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                3))
                      (error "Context expects 3 values" _g19260_)))
                (let ((_ids16103_ (values-ref _g19259_ 0))
                      (_impls16104_ (values-ref _g19259_ 1))
                      (_clauses16105_ (values-ref _g19259_ 2)))
                  (let ((_g19261_ (for-each gx#core-bind-runtime! _ids16103_)))
                    (let ((_defs16108_
                           (map _case-lambda-clause-def15734_
                                _ids16103_
                                _impls16104_)))
                      (let ()
                        (begin
                          (gxc#verbose
                           '"lift case-lambda clauses "
                           (gxc#generate-runtime-binding-id _L16049_)
                           '" => "
                           (map gxc#identifier-symbol _ids16103_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (foldr1 cons
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _L16049_ '())
                                                            (cons (gxc#xform-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#case-lambda _clauses16105_)
                           (gx#datum->syntax__0 '#f 'case-lambda-expr))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx15732_)
                                               '())
                                         _defs16108_))
                           _stx15732_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1607516090_)))
                                             (_g1606616080_ _g1606716083_)))))
                                  (let ((_g1606416133_
                                         (lambda (_g1606716114_)
                                           (if (gx#stx-pair? _g1606716114_)
                                               (let ((_e1606916116_
                                                      (gx#stx-e
                                                       _g1606716114_)))
                                                 (let ((_hd1607016119_
                                                        (##car _e1606916116_))
                                                       (_tl1607116121_
                                                        (##cdr _e1606916116_)))
                                                   ((lambda (_L16124_)
                                                      (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L16124_)
                  _stx15732_
                  (_g1606516111_ _g1606716114_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1607116121_)))
                                               (_g1606516111_
                                                _g1606716114_)))))
                                    (_g1606416133_ _L16048_))))
                              (_g1573616011_ _g1573916014_)))
                        _hd1575216043_
                        _hd1574916035_)
                       (_g1573616011_ _g1573916014_))))
               (_g1573616011_ _g1573916014_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1573616011_
                                                    _g1573916014_))))
                                           (_g1573616011_ _g1573916014_))))
                                   (_g1573616011_ _g1573916014_))))
                           (_g1573616011_ _g1573916014_)))))
                (_g1573516136_ _stx15732_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx15155_)
      (let ((_bind-e__opt-lambda15714__1920819209_
             (lambda (_id15716_ _expr15717_ _compile?15718_)
               (cons (cons _id15716_ '())
                     (cons (if _compile?15718_
                               (gxc#compile-e _expr15717_)
                               _expr15717_)
                           '())))))
        (let ((_bind-e__0__1921019211_
               (lambda (_id15723_ _expr15724_)
                 (let ((_compile?15726_ '#t))
                   (_bind-e__opt-lambda15714__1920819209_
                    _id15723_
                    _expr15724_
                    _compile?15726_)))))
          (let ((_bind-e15157_
                 (lambda _g19271_
                   (let ((_g19270_ (length _g19271_)))
                     (cond ((fx= _g19270_ 2)
                            (apply _bind-e__0__1921019211_ _g19271_))
                           ((fx= _g19270_ 3)
                            (apply _bind-e__opt-lambda15714__1920819209_
                                   _g19271_))
                           (else
                            (error "No clause matching arguments"
                                   _g19271_)))))))
            (let ((_compile-bindings15158_
                   (lambda (_rest15300_)
                     ((letrec ((_lp15302_
                                (lambda (_rest15304_
                                         _lift115305_
                                         _lift215306_
                                         _bind15307_)
                                  (let ((_rest1530815316_ _rest15304_))
                                    (let ((_E1531115320_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1530815316_))))
                                      (let ((_else1531015324_
                                             (lambda ()
                                               (values (reverse _lift115305_)
                                                       (reverse _lift215306_)
                                                       (reverse _bind15307_)))))
                                        (let ((_K1531215703_
                                               (lambda (_rest15327_ _hd15328_)
                                                 (let ((_g1533215368_
                                                        (lambda (_g1533315365_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1533315365_))))
                                                   (let ((_g1533115409_
                                                          (lambda (_g1533315371_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1533315371_)
                        (let ((_e1535815373_ (gx#stx-e _g1533315371_)))
                          (let ((_hd1535915376_ (##car _e1535815373_))
                                (_tl1536015378_ (##cdr _e1535815373_)))
                            (if (gx#stx-pair? _tl1536015378_)
                                (let ((_e1536115381_
                                       (gx#stx-e _tl1536015378_)))
                                  (let ((_hd1536215384_ (##car _e1536115381_))
                                        (_tl1536315386_ (##cdr _e1536115381_)))
                                    (if (gx#stx-null? _tl1536315386_)
                                        ((lambda (_L15389_ _L15390_)
                                           (_lp15302_
                                            _rest15327_
                                            _lift115305_
                                            _lift215306_
                                            (cons (cons _L15390_
                                                        (cons (gxc#compile-e
                                                               _L15389_)
                                                              '()))
                                                  _bind15307_)))
                                         _hd1536215384_
                                         _hd1535915376_)
                                        (_g1533215368_ _g1533315371_))))
                                (_g1533215368_ _g1533315371_))))
                        (_g1533215368_ _g1533315371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1533015581_
                                                            (lambda (_g1533315412_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1533315412_)
                          (let ((_e1534715414_ (gx#stx-e _g1533315412_)))
                            (let ((_hd1534815417_ (##car _e1534715414_))
                                  (_tl1534915419_ (##cdr _e1534715414_)))
                              (if (gx#stx-pair? _hd1534815417_)
                                  (let ((_e1535015422_
                                         (gx#stx-e _hd1534815417_)))
                                    (let ((_hd1535115425_
                                           (##car _e1535015422_))
                                          (_tl1535215427_
                                           (##cdr _e1535015422_)))
                                      (if (gx#stx-null? _tl1535215427_)
                                          (if (gx#stx-pair? _tl1534915419_)
                                              (let ((_e1535315430_
                                                     (gx#stx-e
                                                      _tl1534915419_)))
                                                (let ((_hd1535415433_
                                                       (##car _e1535315430_))
                                                      (_tl1535515435_
                                                       (##cdr _e1535315430_)))
                                                  (if (gx#stx-null?
                                                       _tl1535515435_)
                                                      ((lambda (_L15438_
                                                                _L15439_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15439_)
                         (gxc#opt-lambda-expr? _L15438_)
                         '#f)
                     (let ((_g1545315483_
                            (lambda (_g1545415480_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1545415480_))))
                       (let ((_g1545215578_
                              (lambda (_g1545415486_)
                                (if (gx#stx-pair? _g1545415486_)
                                    (let ((_e1545815488_
                                           (gx#stx-e _g1545415486_)))
                                      (let ((_hd1545915491_
                                             (##car _e1545815488_))
                                            (_tl1546015493_
                                             (##cdr _e1545815488_)))
                                        (if (gx#stx-pair? _tl1546015493_)
                                            (let ((_e1546115496_
                                                   (gx#stx-e _tl1546015493_)))
                                              (let ((_hd1546215499_
                                                     (##car _e1546115496_))
                                                    (_tl1546315501_
                                                     (##cdr _e1546115496_)))
                                                (if (gx#stx-pair?
                                                     _hd1546215499_)
                                                    (let ((_e1546415504_
                                                           (gx#stx-e
                                                            _hd1546215499_)))
                                                      (let ((_hd1546515507_
                                                             (##car _e1546415504_))
                                                            (_tl1546615509_
                                                             (##cdr _e1546415504_)))
                                                        (if (gx#stx-pair?
                                                             _hd1546515507_)
                                                            (let ((_e1546715512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1546515507_)))
                      (let ((_hd1546815515_ (##car _e1546715512_))
                            (_tl1546915517_ (##cdr _e1546715512_)))
                        (if (gx#stx-pair? _hd1546815515_)
                            (let ((_e1547015520_ (gx#stx-e _hd1546815515_)))
                              (let ((_hd1547115523_ (##car _e1547015520_))
                                    (_tl1547215525_ (##cdr _e1547015520_)))
                                (if (gx#stx-null? _tl1547215525_)
                                    (if (gx#stx-pair? _tl1546915517_)
                                        (let ((_e1547315528_
                                               (gx#stx-e _tl1546915517_)))
                                          (let ((_hd1547415531_
                                                 (##car _e1547315528_))
                                                (_tl1547515533_
                                                 (##cdr _e1547315528_)))
                                            (if (gx#stx-null? _tl1547515533_)
                                                (if (gx#stx-null?
                                                     _tl1546615509_)
                                                    (if (gx#stx-pair?
                                                         _tl1546315501_)
                                                        (let ((_e1547615536_
                                                               (gx#stx-e
                                                                _tl1546315501_)))
                                                          (let ((_hd1547715539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1547615536_))
                        (_tl1547815541_ (##cdr _e1547615536_)))
                    (if (gx#stx-null? _tl1547815541_)
                        ((lambda (_L15544_ _L15545_ _L15546_)
                           (let ((_lambda-id15570_
                                  (make-symbol
                                   (gx#stx-e _L15439_)
                                   '"__"
                                   (gx#stx-e _L15546_)
                                   (gensym '__))))
                             (let ((_lambda-id15572_
                                    (gx#core-quote-syntax__1
                                     _lambda-id15570_
                                     (gx#stx-source _stx15155_))))
                               (let ((_g19266_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id15572_)))
                                 (let ((_new-case-lambda-expr15575_
                                        (gxc#apply-expression-subst
                                         _L15544_
                                         _L15546_
                                         _lambda-id15572_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L15439_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id15572_))
                                       (_lp15302_
                                        (cons (_bind-e__opt-lambda15714__1920819209_
                                               _L15439_
                                               _new-case-lambda-expr15575_
                                               '#f)
                                              _rest15327_)
                                        (cons (_bind-e__0__1921019211_
                                               _lambda-id15572_
                                               _L15545_)
                                              _lift115305_)
                                        _lift215306_
                                        _bind15307_))))))))
                         _hd1547715539_
                         _hd1547415531_
                         _hd1547115523_)
                        (_g1545315483_ _g1545415486_))))
                (_g1545315483_ _g1545415486_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1545315483_
                                                     _g1545415486_))
                                                (_g1545315483_
                                                 _g1545415486_))))
                                        (_g1545315483_ _g1545415486_))
                                    (_g1545315483_ _g1545415486_))))
                            (_g1545315483_ _g1545415486_))))
                    (_g1545315483_ _g1545415486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1545315483_
                                                     _g1545415486_))))
                                            (_g1545315483_ _g1545415486_))))
                                    (_g1545315483_ _g1545415486_)))))
                         (_g1545215578_ _L15438_)))
                     (_g1533115409_ _g1533315412_)))
               _hd1535415433_
               _hd1535115425_)
              (_g1533115409_ _g1533315412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1533115409_ _g1533315412_))
                                          (_g1533115409_ _g1533315412_))))
                                  (_g1533115409_ _g1533315412_))))
                          (_g1533115409_ _g1533315412_)))))
               (let ((_g1532915700_
                      (lambda (_g1533315584_)
                        (if (gx#stx-pair? _g1533315584_)
                            (let ((_e1533615586_ (gx#stx-e _g1533315584_)))
                              (let ((_hd1533715589_ (##car _e1533615586_))
                                    (_tl1533815591_ (##cdr _e1533615586_)))
                                (if (gx#stx-pair? _hd1533715589_)
                                    (let ((_e1533915594_
                                           (gx#stx-e _hd1533715589_)))
                                      (let ((_hd1534015597_
                                             (##car _e1533915594_))
                                            (_tl1534115599_
                                             (##cdr _e1533915594_)))
                                        (if (gx#stx-null? _tl1534115599_)
                                            (if (gx#stx-pair? _tl1533815591_)
                                                (let ((_e1534215602_
                                                       (gx#stx-e
                                                        _tl1533815591_)))
                                                  (let ((_hd1534315605_
                                                         (##car _e1534215602_))
                                                        (_tl1534415607_
                                                         (##cdr _e1534215602_)))
                                                    (if (gx#stx-null?
                                                         _tl1534415607_)
                                                        ((lambda (_L15610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15611_)
                   (if (if (gx#identifier? _L15611_)
                           (gxc#case-lambda-expr? _L15610_)
                           '#f)
                       (let ((_g1562615640_
                              (lambda (_g1562715637_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1562715637_))))
                         (let ((_g1562515675_
                                (lambda (_g1562715643_)
                                  (if (gx#stx-pair? _g1562715643_)
                                      (let ((_e1563315645_
                                             (gx#stx-e _g1562715643_)))
                                        (let ((_hd1563415648_
                                               (##car _e1563315645_))
                                              (_tl1563515650_
                                               (##cdr _e1563315645_)))
                                          ((lambda (_L15653_)
                                             (let ((_g19267_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16141
                                                     _stx15155_
                                                     _L15611_
                                                     _L15653_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19268_
                                                        (values-count
                                                         _g19267_)))
                                                   (if (not (fx= _g19268_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19268_)))
                                                 (let ((_ids15663_
                                                        (values-ref
                                                         _g19267_
                                                         0))
                                                       (_impls15664_
                                                        (values-ref
                                                         _g19267_
                                                         1))
                                                       (_clauses15665_
                                                        (values-ref
                                                         _g19267_
                                                         2)))
                                                   (let ((_g19269_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15663_)))
                                                     (let ((_xbind15668_
                                                            (map _bind-e15157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15663_
                         _impls15664_)))
               (let ((_expr*15670_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15665_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15672_
                        (_bind-e__opt-lambda15714__1920819209_
                         _L15611_
                         _expr*15670_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15611_)
                        '" => "
                        (map gxc#identifier-symbol _ids15663_))
                       (_lp15302_
                        _rest15327_
                        _lift115305_
                        (foldl1 cons _lift215306_ _xbind15668_)
                        (cons _bind*15672_ _bind15307_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1563515650_)))
                                      (_g1562615640_ _g1562715643_)))))
                           (let ((_g1562415697_
                                  (lambda (_g1562715678_)
                                    (if (gx#stx-pair? _g1562715678_)
                                        (let ((_e1562915680_
                                               (gx#stx-e _g1562715678_)))
                                          (let ((_hd1563015683_
                                                 (##car _e1562915680_))
                                                (_tl1563115685_
                                                 (##cdr _e1562915680_)))
                                            ((lambda (_L15688_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15688_)
                                                   (_lp15302_
                                                    _rest15327_
                                                    _lift115305_
                                                    _lift215306_
                                                    (cons (_bind-e__opt-lambda15714__1920819209_
                                                           _L15611_
                                                           _L15610_
                                                           '#f)
                                                          _bind15307_))
                                                   (_g1562515675_
                                                    _g1562715678_)))
                                             _tl1563115685_)))
                                        (_g1562515675_ _g1562715678_)))))
                             (_g1562415697_ _L15610_))))
                       (_g1533015581_ _g1533315584_)))
                 _hd1534315605_
                 _hd1534015597_)
                (_g1533015581_ _g1533315584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1533015581_ _g1533315584_))
                                            (_g1533015581_ _g1533315584_))))
                                    (_g1533015581_ _g1533315584_))))
                            (_g1533015581_ _g1533315584_)))))
                 (_g1532915700_ _hd15328_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1530815316_)
                                              (let ((_hd1531315706_
                                                     (##car _rest1530815316_))
                                                    (_tl1531415708_
                                                     (##cdr _rest1530815316_)))
                                                (let ((_hd15711_
                                                       _hd1531315706_))
                                                  (let ((_rest15713_
                                                         _tl1531415708_))
                                                    (_K1531215703_
                                                     _rest15713_
                                                     _hd15711_))))
                                              (_else1531015324_)))))))))
                        _lp15302_)
                      _rest15300_
                      '()
                      '()
                      '()))))
              (let ((_g1516115187_
                     (lambda (_g1516215184_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1516215184_))))
                (let ((_g1516015194_
                       (lambda (_g1516215190_)
                         ((lambda () (gxc#xform-let-values% _stx15155_))))))
                  (let ((_g1515915297_
                         (lambda (_g1516215197_)
                           (if (gx#stx-pair? _g1516215197_)
                               (let ((_e1516515199_ (gx#stx-e _g1516215197_)))
                                 (let ((_hd1516615202_ (##car _e1516515199_))
                                       (_tl1516715204_ (##cdr _e1516515199_)))
                                   (if (gx#stx-pair? _tl1516715204_)
                                       (let ((_e1516815207_
                                              (gx#stx-e _tl1516715204_)))
                                         (let ((_hd1516915210_
                                                (##car _e1516815207_))
                                               (_tl1517015212_
                                                (##cdr _e1516815207_)))
                                           (if (gx#stx-pair/null?
                                                _hd1516915210_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1516915210_)
                                                         '0)
                                                   (let ((_g19262_
                                                          (gx#syntax-split-splice
                                                           _hd1516915210_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19263_
                                                              (values-count
                                                               _g19262_)))
                                                         (if (not (fx= _g19263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19263_)))
               (let ((_target1517115215_ (values-ref _g19262_ 0))
                     (_tl1517315217_ (values-ref _g19262_ 1)))
                 (if (gx#stx-null? _tl1517315217_)
                     (letrec ((_loop1517415220_
                               (lambda (_hd1517215223_ _bind1517815225_)
                                 (if (gx#stx-pair? _hd1517215223_)
                                     (let ((_e1517515228_
                                            (gx#stx-e _hd1517215223_)))
                                       (let ((_lp-hd1517615231_
                                              (##car _e1517515228_))
                                             (_lp-tl1517715233_
                                              (##cdr _e1517515228_)))
                                         (_loop1517415220_
                                          _lp-tl1517715233_
                                          (cons _lp-hd1517615231_
                                                _bind1517815225_))))
                                     (let ((_bind1517915236_
                                            (reverse _bind1517815225_)))
                                       (if (gx#stx-pair? _tl1517015212_)
                                           (let ((_e1518015239_
                                                  (gx#stx-e _tl1517015212_)))
                                             (let ((_hd1518115242_
                                                    (##car _e1518015239_))
                                                   (_tl1518215244_
                                                    (##cdr _e1518015239_)))
                                               (if (gx#stx-null?
                                                    _tl1518215244_)
                                                   ((lambda (_L15247_ _L15248_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1526815271_ _g1526915273_)
                                      (cons _g1526815271_ _g1526915273_))
                                    '()
                                    _L15248_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_g19264_
                            (_compile-bindings15158_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1527615279_ _g1527715281_)
                                         (cons _g1527615279_ _g1527715281_))
                                       '()
                                       _L15248_)))))
                       (begin
                         (let ((_g19265_ (values-count _g19264_)))
                           (if (not (fx= _g19265_ 3))
                               (error "Context expects 3 values" _g19265_)))
                         (let ((_lift115284_ (values-ref _g19264_ 0))
                               (_lift215285_ (values-ref _g19264_ 1))
                               (_hd15286_ (values-ref _g19264_ 2)))
                           (let ((_body15288_ (gxc#compile-e _L15247_)))
                             (let ((_expr15290_
                                    (gxc#xform-wrap-source
                                     (cons '%#let-values
                                           (cons _hd15286_
                                                 (cons _body15288_ '())))
                                     _stx15155_)))
                               (let ((_expr15292_
                                      (if (null? _lift215285_)
                                          _expr15290_
                                          (gxc#xform-wrap-source
                                           (cons '%#let-values
                                                 (cons _lift215285_
                                                       (cons _expr15290_ '())))
                                           _stx15155_))))
                                 (let ((_expr15294_
                                        (if (null? _lift115284_)
                                            _expr15292_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift115284_
                                                         (cons _expr15292_
                                                               '())))
                                             _stx15155_))))
                                   (let () _expr15294_)))))))))
                   gx#current-expander-context
                   (let ((__obj19218 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19218)
                       __obj19218)))
                  (_g1516015194_ _g1516215197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1518115242_
                                                    _bind1517915236_)
                                                   (_g1516015194_
                                                    _g1516215197_))))
                                           (_g1516015194_ _g1516215197_)))))))
                       (_loop1517415220_ _target1517115215_ '()))
                     (_g1516015194_ _g1516215197_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1516015194_
                                                    _g1516215197_))
                                               (_g1516015194_ _g1516215197_))))
                                       (_g1516015194_ _g1516215197_))))
                               (_g1516015194_ _g1516215197_)))))
                    (_g1515915297_ _stx15155_))))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx14587_)
      (let ((_bind-e__opt-lambda15137__1921319214_
             (lambda (_id15139_ _expr15140_ _compile?15141_)
               (cons (cons _id15139_ '())
                     (cons (if _compile?15141_
                               (gxc#compile-e _expr15140_)
                               _expr15140_)
                           '())))))
        (let ((_bind-e__0__1921519216_
               (lambda (_id15146_ _expr15147_)
                 (let ((_compile?15149_ '#t))
                   (_bind-e__opt-lambda15137__1921319214_
                    _id15146_
                    _expr15147_
                    _compile?15149_)))))
          (let ((_bind-e14589_
                 (lambda _g19279_
                   (let ((_g19278_ (length _g19279_)))
                     (cond ((fx= _g19278_ 2)
                            (apply _bind-e__0__1921519216_ _g19279_))
                           ((fx= _g19278_ 3)
                            (apply _bind-e__opt-lambda15137__1921319214_
                                   _g19279_))
                           (else
                            (error "No clause matching arguments"
                                   _g19279_)))))))
            (let ((_compile-bindings14590_
                   (lambda (_rest14725_)
                     ((letrec ((_lp14727_
                                (lambda (_rest14729_ _bind14730_)
                                  (let ((_rest1473114739_ _rest14729_))
                                    (let ((_E1473414743_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest1473114739_))))
                                      (let ((_else1473314747_
                                             (lambda ()
                                               (reverse _bind14730_))))
                                        (let ((_K1473515126_
                                               (lambda (_rest14750_ _hd14751_)
                                                 (let ((_g1475514791_
                                                        (lambda (_g1475614788_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1475614788_))))
                                                   (let ((_g1475414832_
                                                          (lambda (_g1475614794_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1475614794_)
                        (let ((_e1478114796_ (gx#stx-e _g1475614794_)))
                          (let ((_hd1478214799_ (##car _e1478114796_))
                                (_tl1478314801_ (##cdr _e1478114796_)))
                            (if (gx#stx-pair? _tl1478314801_)
                                (let ((_e1478414804_
                                       (gx#stx-e _tl1478314801_)))
                                  (let ((_hd1478514807_ (##car _e1478414804_))
                                        (_tl1478614809_ (##cdr _e1478414804_)))
                                    (if (gx#stx-null? _tl1478614809_)
                                        ((lambda (_L14812_ _L14813_)
                                           (_lp14727_
                                            _rest14750_
                                            (cons (cons _L14813_
                                                        (cons (gxc#compile-e
                                                               _L14812_)
                                                              '()))
                                                  _bind14730_)))
                                         _hd1478514807_
                                         _hd1478214799_)
                                        (_g1475514791_ _g1475614794_))))
                                (_g1475514791_ _g1475614794_))))
                        (_g1475514791_ _g1475614794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g1475315004_
                                                            (lambda (_g1475614835_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1475614835_)
                          (let ((_e1477014837_ (gx#stx-e _g1475614835_)))
                            (let ((_hd1477114840_ (##car _e1477014837_))
                                  (_tl1477214842_ (##cdr _e1477014837_)))
                              (if (gx#stx-pair? _hd1477114840_)
                                  (let ((_e1477314845_
                                         (gx#stx-e _hd1477114840_)))
                                    (let ((_hd1477414848_
                                           (##car _e1477314845_))
                                          (_tl1477514850_
                                           (##cdr _e1477314845_)))
                                      (if (gx#stx-null? _tl1477514850_)
                                          (if (gx#stx-pair? _tl1477214842_)
                                              (let ((_e1477614853_
                                                     (gx#stx-e
                                                      _tl1477214842_)))
                                                (let ((_hd1477714856_
                                                       (##car _e1477614853_))
                                                      (_tl1477814858_
                                                       (##cdr _e1477614853_)))
                                                  (if (gx#stx-null?
                                                       _tl1477814858_)
                                                      ((lambda (_L14861_
                                                                _L14862_)
                                                         (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14862_)
                         (gxc#opt-lambda-expr? _L14861_)
                         '#f)
                     (let ((_g1487614906_
                            (lambda (_g1487714903_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1487714903_))))
                       (let ((_g1487515001_
                              (lambda (_g1487714909_)
                                (if (gx#stx-pair? _g1487714909_)
                                    (let ((_e1488114911_
                                           (gx#stx-e _g1487714909_)))
                                      (let ((_hd1488214914_
                                             (##car _e1488114911_))
                                            (_tl1488314916_
                                             (##cdr _e1488114911_)))
                                        (if (gx#stx-pair? _tl1488314916_)
                                            (let ((_e1488414919_
                                                   (gx#stx-e _tl1488314916_)))
                                              (let ((_hd1488514922_
                                                     (##car _e1488414919_))
                                                    (_tl1488614924_
                                                     (##cdr _e1488414919_)))
                                                (if (gx#stx-pair?
                                                     _hd1488514922_)
                                                    (let ((_e1488714927_
                                                           (gx#stx-e
                                                            _hd1488514922_)))
                                                      (let ((_hd1488814930_
                                                             (##car _e1488714927_))
                                                            (_tl1488914932_
                                                             (##cdr _e1488714927_)))
                                                        (if (gx#stx-pair?
                                                             _hd1488814930_)
                                                            (let ((_e1489014935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1488814930_)))
                      (let ((_hd1489114938_ (##car _e1489014935_))
                            (_tl1489214940_ (##cdr _e1489014935_)))
                        (if (gx#stx-pair? _hd1489114938_)
                            (let ((_e1489314943_ (gx#stx-e _hd1489114938_)))
                              (let ((_hd1489414946_ (##car _e1489314943_))
                                    (_tl1489514948_ (##cdr _e1489314943_)))
                                (if (gx#stx-null? _tl1489514948_)
                                    (if (gx#stx-pair? _tl1489214940_)
                                        (let ((_e1489614951_
                                               (gx#stx-e _tl1489214940_)))
                                          (let ((_hd1489714954_
                                                 (##car _e1489614951_))
                                                (_tl1489814956_
                                                 (##cdr _e1489614951_)))
                                            (if (gx#stx-null? _tl1489814956_)
                                                (if (gx#stx-null?
                                                     _tl1488914932_)
                                                    (if (gx#stx-pair?
                                                         _tl1488614924_)
                                                        (let ((_e1489914959_
                                                               (gx#stx-e
                                                                _tl1488614924_)))
                                                          (let ((_hd1490014962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1489914959_))
                        (_tl1490114964_ (##cdr _e1489914959_)))
                    (if (gx#stx-null? _tl1490114964_)
                        ((lambda (_L14967_ _L14968_ _L14969_)
                           (let ((_lambda-id14993_
                                  (make-symbol
                                   (gx#stx-e _L14862_)
                                   '"__"
                                   (gx#stx-e _L14969_)
                                   (gensym '__))))
                             (let ((_lambda-id14995_
                                    (gx#core-quote-syntax__1
                                     _lambda-id14993_
                                     (gx#stx-source _stx14587_))))
                               (let ((_g19274_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id14995_)))
                                 (let ((_new-case-lambda-expr14998_
                                        (gxc#apply-expression-subst
                                         _L14967_
                                         _L14969_
                                         _lambda-id14995_)))
                                   (let ()
                                     (begin
                                       (gxc#verbose
                                        '"lift opt-lambda dispatch "
                                        (gxc#generate-runtime-binding-id
                                         _L14862_)
                                        '" => "
                                        (gxc#generate-runtime-binding-id
                                         _lambda-id14995_))
                                       (_lp14727_
                                        (cons (_bind-e__opt-lambda15137__1921319214_
                                               _L14862_
                                               _new-case-lambda-expr14998_
                                               '#f)
                                              _rest14750_)
                                        (cons (_bind-e__0__1921519216_
                                               _lambda-id14995_
                                               _L14968_)
                                              _bind14730_)))))))))
                         _hd1490014962_
                         _hd1489714954_
                         _hd1489414946_)
                        (_g1487614906_ _g1487714909_))))
                (_g1487614906_ _g1487714909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1487614906_
                                                     _g1487714909_))
                                                (_g1487614906_
                                                 _g1487714909_))))
                                        (_g1487614906_ _g1487714909_))
                                    (_g1487614906_ _g1487714909_))))
                            (_g1487614906_ _g1487714909_))))
                    (_g1487614906_ _g1487714909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1487614906_
                                                     _g1487714909_))))
                                            (_g1487614906_ _g1487714909_))))
                                    (_g1487614906_ _g1487714909_)))))
                         (_g1487515001_ _L14861_)))
                     (_g1475414832_ _g1475614835_)))
               _hd1477714856_
               _hd1477414848_)
              (_g1475414832_ _g1475614835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1475414832_ _g1475614835_))
                                          (_g1475414832_ _g1475614835_))))
                                  (_g1475414832_ _g1475614835_))))
                          (_g1475414832_ _g1475614835_)))))
               (let ((_g1475215123_
                      (lambda (_g1475615007_)
                        (if (gx#stx-pair? _g1475615007_)
                            (let ((_e1475915009_ (gx#stx-e _g1475615007_)))
                              (let ((_hd1476015012_ (##car _e1475915009_))
                                    (_tl1476115014_ (##cdr _e1475915009_)))
                                (if (gx#stx-pair? _hd1476015012_)
                                    (let ((_e1476215017_
                                           (gx#stx-e _hd1476015012_)))
                                      (let ((_hd1476315020_
                                             (##car _e1476215017_))
                                            (_tl1476415022_
                                             (##cdr _e1476215017_)))
                                        (if (gx#stx-null? _tl1476415022_)
                                            (if (gx#stx-pair? _tl1476115014_)
                                                (let ((_e1476515025_
                                                       (gx#stx-e
                                                        _tl1476115014_)))
                                                  (let ((_hd1476615028_
                                                         (##car _e1476515025_))
                                                        (_tl1476715030_
                                                         (##cdr _e1476515025_)))
                                                    (if (gx#stx-null?
                                                         _tl1476715030_)
                                                        ((lambda (_L15033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15034_)
                   (if (if (gx#identifier? _L15034_)
                           (gxc#case-lambda-expr? _L15033_)
                           '#f)
                       (let ((_g1504915063_
                              (lambda (_g1505015060_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1505015060_))))
                         (let ((_g1504815098_
                                (lambda (_g1505015066_)
                                  (if (gx#stx-pair? _g1505015066_)
                                      (let ((_e1505615068_
                                             (gx#stx-e _g1505015066_)))
                                        (let ((_hd1505715071_
                                               (##car _e1505615068_))
                                              (_tl1505815073_
                                               (##cdr _e1505615068_)))
                                          ((lambda (_L15076_)
                                             (let ((_g19275_
                                                    (gxc#lift-case-lambda-clauses__opt-lambda16141
                                                     _stx14587_
                                                     _L15034_
                                                     _L15076_
                                                     '#t)))
                                               (begin
                                                 (let ((_g19276_
                                                        (values-count
                                                         _g19275_)))
                                                   (if (not (fx= _g19276_ 3))
                                                       (error "Context expects 3 values"
                                                              _g19276_)))
                                                 (let ((_ids15086_
                                                        (values-ref
                                                         _g19275_
                                                         0))
                                                       (_impls15087_
                                                        (values-ref
                                                         _g19275_
                                                         1))
                                                       (_clauses15088_
                                                        (values-ref
                                                         _g19275_
                                                         2)))
                                                   (let ((_g19277_
                                                          (for-each
                                                           gx#core-bind-runtime!
                                                           _ids15086_)))
                                                     (let ((_xbind15091_
                                                            (map _bind-e14589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids15086_
                         _impls15087_)))
               (let ((_expr*15093_
                      (gxc#xform-wrap-source
                       (cons '%#case-lambda _clauses15088_)
                       (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                 (let ((_bind*15095_
                        (_bind-e__opt-lambda15137__1921319214_
                         _L15034_
                         _expr*15093_
                         '#f)))
                   (let ()
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#generate-runtime-binding-id _L15034_)
                        '" => "
                        (map gxc#identifier-symbol _ids15086_))
                       (_lp14727_
                        _rest14750_
                        (cons _bind*15095_
                              (foldl1 cons
                                      _bind14730_
                                      _xbind15091_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl1505815073_)))
                                      (_g1504915063_ _g1505015066_)))))
                           (let ((_g1504715120_
                                  (lambda (_g1505015101_)
                                    (if (gx#stx-pair? _g1505015101_)
                                        (let ((_e1505215103_
                                               (gx#stx-e _g1505015101_)))
                                          (let ((_hd1505315106_
                                                 (##car _e1505215103_))
                                                (_tl1505415108_
                                                 (##cdr _e1505215103_)))
                                            ((lambda (_L15111_)
                                               (if (andmap1 gxc#dispatch-lambda-form?
                                                            _L15111_)
                                                   (_lp14727_
                                                    _rest14750_
                                                    (cons (_bind-e__opt-lambda15137__1921319214_
                                                           _L15034_
                                                           _L15033_
                                                           '#f)
                                                          _bind14730_))
                                                   (_g1504815098_
                                                    _g1505015101_)))
                                             _tl1505415108_)))
                                        (_g1504815098_ _g1505015101_)))))
                             (_g1504715120_ _L15033_))))
                       (_g1475315004_ _g1475615007_)))
                 _hd1476615028_
                 _hd1476315020_)
                (_g1475315004_ _g1475615007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1475315004_ _g1475615007_))
                                            (_g1475315004_ _g1475615007_))))
                                    (_g1475315004_ _g1475615007_))))
                            (_g1475315004_ _g1475615007_)))))
                 (_g1475215123_ _hd14751_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1473114739_)
                                              (let ((_hd1473615129_
                                                     (##car _rest1473114739_))
                                                    (_tl1473715131_
                                                     (##cdr _rest1473114739_)))
                                                (let ((_hd15134_
                                                       _hd1473615129_))
                                                  (let ((_rest15136_
                                                         _tl1473715131_))
                                                    (_K1473515126_
                                                     _rest15136_
                                                     _hd15134_))))
                                              (_else1473314747_)))))))))
                        _lp14727_)
                      _rest14725_
                      '()))))
              (let ((_g1459314620_
                     (lambda (_g1459414617_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax"
                        _g1459414617_))))
                (let ((_g1459214627_
                       (lambda (_g1459414623_)
                         ((lambda () (gxc#xform-let-values% _stx14587_))))))
                  (let ((_g1459114722_
                         (lambda (_g1459414630_)
                           (if (gx#stx-pair? _g1459414630_)
                               (let ((_e1459814632_ (gx#stx-e _g1459414630_)))
                                 (let ((_hd1459914635_ (##car _e1459814632_))
                                       (_tl1460014637_ (##cdr _e1459814632_)))
                                   (if (gx#stx-pair? _tl1460014637_)
                                       (let ((_e1460114640_
                                              (gx#stx-e _tl1460014637_)))
                                         (let ((_hd1460214643_
                                                (##car _e1460114640_))
                                               (_tl1460314645_
                                                (##cdr _e1460114640_)))
                                           (if (gx#stx-pair/null?
                                                _hd1460214643_)
                                               (if (fx>= (gx#stx-length
                                                          _hd1460214643_)
                                                         '0)
                                                   (let ((_g19272_
                                                          (gx#syntax-split-splice
                                                           _hd1460214643_
                                                           '0)))
                                                     (begin
                                                       (let ((_g19273_
                                                              (values-count
                                                               _g19272_)))
                                                         (if (not (fx= _g19273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g19273_)))
               (let ((_target1460414648_ (values-ref _g19272_ 0))
                     (_tl1460614650_ (values-ref _g19272_ 1)))
                 (if (gx#stx-null? _tl1460614650_)
                     (letrec ((_loop1460714653_
                               (lambda (_hd1460514656_ _bind1461114658_)
                                 (if (gx#stx-pair? _hd1460514656_)
                                     (let ((_e1460814661_
                                            (gx#stx-e _hd1460514656_)))
                                       (let ((_lp-hd1460914664_
                                              (##car _e1460814661_))
                                             (_lp-tl1461014666_
                                              (##cdr _e1460814661_)))
                                         (_loop1460714653_
                                          _lp-tl1461014666_
                                          (cons _lp-hd1460914664_
                                                _bind1461114658_))))
                                     (let ((_bind1461214669_
                                            (reverse _bind1461114658_)))
                                       (if (gx#stx-pair? _tl1460314645_)
                                           (let ((_e1461314672_
                                                  (gx#stx-e _tl1460314645_)))
                                             (let ((_hd1461414675_
                                                    (##car _e1461314672_))
                                                   (_tl1461514677_
                                                    (##cdr _e1461314672_)))
                                               (if (gx#stx-null?
                                                    _tl1461514677_)
                                                   ((lambda (_L14680_
                                                             _L14681_
                                                             _L14682_)
                                                      (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr1 (lambda (_g1470314706_ _g1470414708_)
                                      (cons _g1470314706_ _g1470414708_))
                                    '()
                                    _L14681_)))
                  (call-with-parameters
                   (lambda ()
                     (let ((_hd14719_
                            (_compile-bindings14590_
                             (begin
                               '#!void
                               (foldr1 (lambda (_g1471114714_ _g1471214716_)
                                         (cons _g1471114714_ _g1471214716_))
                                       '()
                                       _L14681_))))
                           (_body14720_ (gxc#compile-e _L14680_)))
                       (gxc#xform-wrap-source
                        (cons _L14682_ (cons _hd14719_ (cons _body14720_ '())))
                        _stx14587_)))
                   gx#current-expander-context
                   (let ((__obj19219 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj19219)
                       __obj19219)))
                  (_g1459214627_ _g1459414630_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1461414675_
                                                    _bind1461214669_
                                                    _hd1459914635_)
                                                   (_g1459214627_
                                                    _g1459414630_))))
                                           (_g1459214627_ _g1459414630_)))))))
                       (_loop1460714653_ _target1460414648_ '()))
                     (_g1459214627_ _g1459414630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1459214627_
                                                    _g1459414630_))
                                               (_g1459214627_ _g1459414630_))))
                                       (_g1459214627_ _g1459414630_))))
                               (_g1459214627_ _g1459414630_)))))
                    (_g1459114722_ _stx14587_))))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind14508_)
      (let ((_g1451114528_
             (lambda (_g1451214525_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1451214525_))))
        (let ((_g1451014535_ (lambda (_g1451214531_) ((lambda () '#f)))))
          (let ((_g1450914584_
                 (lambda (_g1451214538_)
                   (if (gx#stx-pair? _g1451214538_)
                       (let ((_e1451514540_ (gx#stx-e _g1451214538_)))
                         (let ((_hd1451614543_ (##car _e1451514540_))
                               (_tl1451714545_ (##cdr _e1451514540_)))
                           (if (gx#stx-pair? _hd1451614543_)
                               (let ((_e1451814548_ (gx#stx-e _hd1451614543_)))
                                 (let ((_hd1451914551_ (##car _e1451814548_))
                                       (_tl1452014553_ (##cdr _e1451814548_)))
                                   (if (gx#stx-null? _tl1452014553_)
                                       (if (gx#stx-pair? _tl1451714545_)
                                           (let ((_e1452114556_
                                                  (gx#stx-e _tl1451714545_)))
                                             (let ((_hd1452214559_
                                                    (##car _e1452114556_))
                                                   (_tl1452314561_
                                                    (##cdr _e1452114556_)))
                                               (if (gx#stx-null?
                                                    _tl1452314561_)
                                                   ((lambda (_L14564_ _L14565_)
                                                      (if (gx#identifier?
                                                           _L14565_)
                                                          (let ((_$e14581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#case-lambda-expr? _L14564_)))
                    (if _$e14581_ _$e14581_ (gxc#opt-lambda-expr? _L14564_)))
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1452214559_
                                                    _hd1451914551_)
                                                   (_g1451014535_
                                                    _g1451214538_))))
                                           (_g1451014535_ _g1451214538_))
                                       (_g1451014535_ _g1451214538_))))
                               (_g1451014535_ _g1451214538_))))
                       (_g1451014535_ _g1451214538_)))))
            (_g1450914584_ _bind14508_))))))
  (define gxc#expression-subst-ref%
    (lambda (_stx14446_ _id14447_ _new-id14448_)
      (let ((_g1445114464_
             (lambda (_g1445214461_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1445214461_))))
        (let ((_g1445014471_
               (lambda (_g1445214467_) ((lambda () _stx14446_)))))
          (let ((_g1444914505_
                 (lambda (_g1445214474_)
                   (if (gx#stx-pair? _g1445214474_)
                       (let ((_e1445414476_ (gx#stx-e _g1445214474_)))
                         (let ((_hd1445514479_ (##car _e1445414476_))
                               (_tl1445614481_ (##cdr _e1445414476_)))
                           (if (gx#stx-pair? _tl1445614481_)
                               (let ((_e1445714484_ (gx#stx-e _tl1445614481_)))
                                 (let ((_hd1445814487_ (##car _e1445714484_))
                                       (_tl1445914489_ (##cdr _e1445714484_)))
                                   (if (gx#stx-null? _tl1445914489_)
                                       ((lambda (_L14492_)
                                          (if (gx#free-identifier=?
                                               _L14492_
                                               _id14447_)
                                              (gxc#xform-wrap-source
                                               (cons '%#ref
                                                     (cons _new-id14448_ '()))
                                               _stx14446_)
                                              (_g1445014471_ _g1445214474_)))
                                        _hd1445814487_)
                                       (_g1445014471_ _g1445214474_))))
                               (_g1445014471_ _g1445214474_))))
                       (_g1445014471_ _g1445214474_)))))
            (_g1444914505_ _stx14446_))))))
  (define gxc#collect-type-define-values%
    (lambda (_stx14302_)
      (let ((_g1430514336_
             (lambda (_g1430614333_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1430614333_))))
        (let ((_g1430414381_
               (lambda (_g1430614339_)
                 (if (gx#stx-pair? _g1430614339_)
                     (let ((_e1432314341_ (gx#stx-e _g1430614339_)))
                       (let ((_hd1432414344_ (##car _e1432314341_))
                             (_tl1432514346_ (##cdr _e1432314341_)))
                         (if (gx#stx-pair? _tl1432514346_)
                             (let ((_e1432614349_ (gx#stx-e _tl1432514346_)))
                               (let ((_hd1432714352_ (##car _e1432614349_))
                                     (_tl1432814354_ (##cdr _e1432614349_)))
                                 (if (gx#stx-pair? _tl1432814354_)
                                     (let ((_e1432914357_
                                            (gx#stx-e _tl1432814354_)))
                                       (let ((_hd1433014360_
                                              (##car _e1432914357_))
                                             (_tl1433114362_
                                              (##cdr _e1432914357_)))
                                         (if (gx#stx-null? _tl1433114362_)
                                             ((lambda (_L14365_ _L14366_)
                                                (gxc#compile-e _L14365_))
                                              _hd1433014360_
                                              _hd1432714352_)
                                             (_g1430514336_ _g1430614339_))))
                                     (_g1430514336_ _g1430614339_))))
                             (_g1430514336_ _g1430614339_))))
                     (_g1430514336_ _g1430614339_)))))
          (let ((_g1430314443_
                 (lambda (_g1430614384_)
                   (if (gx#stx-pair? _g1430614384_)
                       (let ((_e1430914386_ (gx#stx-e _g1430614384_)))
                         (let ((_hd1431014389_ (##car _e1430914386_))
                               (_tl1431114391_ (##cdr _e1430914386_)))
                           (if (gx#stx-pair? _tl1431114391_)
                               (let ((_e1431214394_ (gx#stx-e _tl1431114391_)))
                                 (let ((_hd1431314397_ (##car _e1431214394_))
                                       (_tl1431414399_ (##cdr _e1431214394_)))
                                   (if (gx#stx-pair? _hd1431314397_)
                                       (let ((_e1431514402_
                                              (gx#stx-e _hd1431314397_)))
                                         (let ((_hd1431614405_
                                                (##car _e1431514402_))
                                               (_tl1431714407_
                                                (##cdr _e1431514402_)))
                                           (if (gx#stx-null? _tl1431714407_)
                                               (if (gx#stx-pair?
                                                    _tl1431414399_)
                                                   (let ((_e1431814410_
                                                          (gx#stx-e
                                                           _tl1431414399_)))
                                                     (let ((_hd1431914413_
                                                            (##car _e1431814410_))
                                                           (_tl1432014415_
                                                            (##cdr _e1431814410_)))
                                                       (if (gx#stx-null?
                                                            _tl1432014415_)
                                                           ((lambda (_L14418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L14419_)
                      (if (gx#identifier? _L14419_)
                          (let ((_sym14435_
                                 (gxc#generate-runtime-binding-id _L14419_)))
                            (begin
                              (if (table-ref
                                   (gxc#current-compile-mutators)
                                   _sym14435_
                                   '#f)
                                  (gxc#verbose
                                   '"skipping type declaration for mutable binding "
                                   _sym14435_)
                                  (let ((_type1443614438_
                                         (gxc#apply-basic-expression-type
                                          _L14418_)))
                                    (if _type1443614438_
                                        (let ((_type14441_ _type1443614438_))
                                          (gxc#optimizer-declare-type!__0
                                           _sym14435_
                                           _type14441_))
                                        '#f)))
                              (gxc#compile-e _L14418_)))
                          (_g1430414381_ _g1430614384_)))
                    _hd1431914413_
                    _hd1431614405_)
                   (_g1430414381_ _g1430614384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1430414381_
                                                    _g1430614384_))
                                               (_g1430414381_ _g1430614384_))))
                                       (_g1430414381_ _g1430614384_))))
                               (_g1430414381_ _g1430614384_))))
                       (_g1430414381_ _g1430614384_)))))
            (_g1430314443_ _stx14302_))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx14087_)
      (let ((_collect-e14089_
             (lambda (_hd14246_ _expr14247_)
               (let ((_g1425014260_
                      (lambda (_g1425114257_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1425114257_))))
                 (let ((_g1424914267_
                        (lambda (_g1425114263_) ((lambda () '#!void)))))
                   (let ((_g1424814299_
                          (lambda (_g1425114270_)
                            (if (gx#stx-pair? _g1425114270_)
                                (let ((_e1425314272_ (gx#stx-e _g1425114270_)))
                                  (let ((_hd1425414275_ (##car _e1425314272_))
                                        (_tl1425514277_ (##cdr _e1425314272_)))
                                    (if (gx#stx-null? _tl1425514277_)
                                        ((lambda (_L14280_)
                                           (if (gx#identifier? _L14280_)
                                               (let ((_sym14291_
                                                      (gxc#generate-runtime-binding-id
                                                       _L14280_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym14291_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym14291_)
                                                     (let ((_type1429214294_
                                                            (gxc#apply-basic-expression-type
                                                             _expr14247_)))
                                                       (if _type1429214294_
                                                           (let ((_type14297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type1429214294_))
                     (gxc#optimizer-declare-type!__opt-lambda18992
                      _sym14291_
                      _type14297_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1424914267_ _g1425114270_)))
                                         _hd1425414275_)
                                        (_g1424914267_ _g1425114270_))))
                                (_g1424914267_ _g1425114270_)))))
                     (_g1424814299_ _hd14246_)))))))
        (let ((_g1409114126_
               (lambda (_g1409214123_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1409214123_))))
          (let ((_g1409014243_
                 (lambda (_g1409214129_)
                   (if (gx#stx-pair? _g1409214129_)
                       (let ((_e1409614131_ (gx#stx-e _g1409214129_)))
                         (let ((_hd1409714134_ (##car _e1409614131_))
                               (_tl1409814136_ (##cdr _e1409614131_)))
                           (if (gx#stx-pair? _tl1409814136_)
                               (let ((_e1409914139_ (gx#stx-e _tl1409814136_)))
                                 (let ((_hd1410014142_ (##car _e1409914139_))
                                       (_tl1410114144_ (##cdr _e1409914139_)))
                                   (if (gx#stx-pair/null? _hd1410014142_)
                                       (if (fx>= (gx#stx-length _hd1410014142_)
                                                 '0)
                                           (let ((_g19280_
                                                  (gx#syntax-split-splice
                                                   _hd1410014142_
                                                   '0)))
                                             (begin
                                               (let ((_g19281_
                                                      (values-count _g19280_)))
                                                 (if (not (fx= _g19281_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19281_)))
                                               (let ((_target1410214147_
                                                      (values-ref _g19280_ 0))
                                                     (_tl1410414149_
                                                      (values-ref _g19280_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1410414149_)
                                                     (letrec ((_loop1410514152_
                                                               (lambda (_hd1410314155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1410914157_
                                _hd1411014159_)
                         (if (gx#stx-pair? _hd1410314155_)
                             (let ((_e1410614162_ (gx#stx-e _hd1410314155_)))
                               (let ((_lp-hd1410714165_ (##car _e1410614162_))
                                     (_lp-tl1410814167_ (##cdr _e1410614162_)))
                                 (if (gx#stx-pair? _lp-hd1410714165_)
                                     (let ((_e1411314170_
                                            (gx#stx-e _lp-hd1410714165_)))
                                       (let ((_hd1411414173_
                                              (##car _e1411314170_))
                                             (_tl1411514175_
                                              (##cdr _e1411314170_)))
                                         (if (gx#stx-pair? _tl1411514175_)
                                             (let ((_e1411614178_
                                                    (gx#stx-e _tl1411514175_)))
                                               (let ((_hd1411714181_
                                                      (##car _e1411614178_))
                                                     (_tl1411814183_
                                                      (##cdr _e1411614178_)))
                                                 (if (gx#stx-null?
                                                      _tl1411814183_)
                                                     (_loop1410514152_
                                                      _lp-tl1410814167_
                                                      (cons _hd1411714181_
                                                            _expr1410914157_)
                                                      (cons _hd1411414173_
                                                            _hd1411014159_))
                                                     (_g1409114126_
                                                      _g1409214129_))))
                                             (_g1409114126_ _g1409214129_))))
                                     (_g1409114126_ _g1409214129_))))
                             (let ((_expr1411114186_
                                    (reverse _expr1410914157_))
                                   (_hd1411214188_ (reverse _hd1411014159_)))
                               (if (gx#stx-pair? _tl1410114144_)
                                   (let ((_e1411914191_
                                          (gx#stx-e _tl1410114144_)))
                                     (let ((_hd1412014194_
                                            (##car _e1411914191_))
                                           (_tl1412114196_
                                            (##cdr _e1411914191_)))
                                       (if (gx#stx-null? _tl1412114196_)
                                           ((lambda (_L14199_
                                                     _L14200_
                                                     _L14201_)
                                              (begin
                                                (for-each
                                                 _collect-e14089_
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1422114224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1422214226_)
                     (cons _g1422114224_ _g1422214226_))
                   '()
                   _L14201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1422814231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1422914233_)
                     (cons _g1422814231_ _g1422914233_))
                   '()
                   _L14200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 gxc#compile-e
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1423514238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1423614240_)
                     (cons _g1423514238_ _g1423614240_))
                   '()
                   _L14200_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e _L14199_)))
                                            _hd1412014194_
                                            _expr1411114186_
                                            _hd1411214188_)
                                           (_g1409114126_ _g1409214129_))))
                                   (_g1409114126_ _g1409214129_)))))))
               (_loop1410514152_ _target1410214147_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1409114126_
                                                      _g1409214129_)))))
                                           (_g1409114126_ _g1409214129_))
                                       (_g1409114126_ _g1409214129_))))
                               (_g1409114126_ _g1409214129_))))
                       (_g1409114126_ _g1409214129_)))))
            (_g1409014243_ _stx14087_))))))
  (define gxc#collect-type-call%
    (lambda (_stx13641_)
      (let ((_g1364513747_
             (lambda (_g1364613744_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1364613744_))))
        (let ((_g1364413754_ (lambda (_g1364613750_) ((lambda () '#!void)))))
          (let ((_g1364313904_
                 (lambda (_g1364613757_)
                   (if (gx#stx-pair? _g1364613757_)
                       (let ((_e1370413759_ (gx#stx-e _g1364613757_)))
                         (let ((_hd1370513762_ (##car _e1370413759_))
                               (_tl1370613764_ (##cdr _e1370413759_)))
                           (if (gx#stx-pair? _tl1370613764_)
                               (let ((_e1370713767_ (gx#stx-e _tl1370613764_)))
                                 (let ((_hd1370813770_ (##car _e1370713767_))
                                       (_tl1370913772_ (##cdr _e1370713767_)))
                                   (if (gx#stx-pair? _hd1370813770_)
                                       (let ((_e1371013775_
                                              (gx#stx-e _hd1370813770_)))
                                         (let ((_hd1371113778_
                                                (##car _e1371013775_))
                                               (_tl1371213780_
                                                (##cdr _e1371013775_)))
                                           (if (gx#identifier? _hd1371113778_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1371113778_)
                                                   (if (gx#stx-pair?
                                                        _tl1371213780_)
                                                       (let ((_e1371313783_
                                                              (gx#stx-e
                                                               _tl1371213780_)))
                                                         (let ((_hd1371413786_
                                                                (##car _e1371313783_))
                                                               (_tl1371513788_
                                                                (##cdr _e1371313783_)))
                                                           (if (gx#stx-null?
                                                                _tl1371513788_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1370913772_)
                           (let ((_e1371613791_ (gx#stx-e _tl1370913772_)))
                             (let ((_hd1371713794_ (##car _e1371613791_))
                                   (_tl1371813796_ (##cdr _e1371613791_)))
                               (if (gx#stx-pair? _hd1371713794_)
                                   (let ((_e1371913799_
                                          (gx#stx-e _hd1371713794_)))
                                     (let ((_hd1372013802_
                                            (##car _e1371913799_))
                                           (_tl1372113804_
                                            (##cdr _e1371913799_)))
                                       (if (gx#identifier? _hd1372013802_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1372013802_)
                                               (if (gx#stx-pair?
                                                    _tl1372113804_)
                                                   (let ((_e1372213807_
                                                          (gx#stx-e
                                                           _tl1372113804_)))
                                                     (let ((_hd1372313810_
                                                            (##car _e1372213807_))
                                                           (_tl1372413812_
                                                            (##cdr _e1372213807_)))
                                                       (if (gx#stx-null?
                                                            _tl1372413812_)
                                                           (if (gx#stx-pair?
                                                                _tl1371813796_)
                                                               (let ((_e1372513815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1371813796_)))
                         (let ((_hd1372613818_ (##car _e1372513815_))
                               (_tl1372713820_ (##cdr _e1372513815_)))
                           (if (gx#stx-pair? _hd1372613818_)
                               (let ((_e1372813823_ (gx#stx-e _hd1372613818_)))
                                 (let ((_hd1372913826_ (##car _e1372813823_))
                                       (_tl1373013828_ (##cdr _e1372813823_)))
                                   (if (gx#identifier? _hd1372913826_)
                                       (if (gx#stx-eq? '%#quote _hd1372913826_)
                                           (if (gx#stx-pair? _tl1373013828_)
                                               (let ((_e1373113831_
                                                      (gx#stx-e
                                                       _tl1373013828_)))
                                                 (let ((_hd1373213834_
                                                        (##car _e1373113831_))
                                                       (_tl1373313836_
                                                        (##cdr _e1373113831_)))
                                                   (if (gx#stx-null?
                                                        _tl1373313836_)
                                                       (if (gx#stx-pair?
                                                            _tl1372713820_)
                                                           (let ((_e1373413839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1372713820_)))
                     (let ((_hd1373513842_ (##car _e1373413839_))
                           (_tl1373613844_ (##cdr _e1373413839_)))
                       (if (gx#stx-pair? _hd1373513842_)
                           (let ((_e1373713847_ (gx#stx-e _hd1373513842_)))
                             (let ((_hd1373813850_ (##car _e1373713847_))
                                   (_tl1373913852_ (##cdr _e1373713847_)))
                               (if (gx#identifier? _hd1373813850_)
                                   (if (gx#stx-eq? '%#ref _hd1373813850_)
                                       (if (gx#stx-pair? _tl1373913852_)
                                           (let ((_e1374013855_
                                                  (gx#stx-e _tl1373913852_)))
                                             (let ((_hd1374113858_
                                                    (##car _e1374013855_))
                                                   (_tl1374213860_
                                                    (##cdr _e1374013855_)))
                                               (if (gx#stx-null?
                                                    _tl1374213860_)
                                                   (if (gx#stx-null?
                                                        _tl1373613844_)
                                                       ((lambda (_L13863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13864_
                         _L13865_
                         _L13866_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (gxc#optimizer-declare-method!__opt-lambda18968
                       (gxc#generate-runtime-binding-id _L13865_)
                       (gx#stx-e _L13864_)
                       (gxc#generate-runtime-binding-id _L13863_)
                       '#f)
                      (_g1364413754_ _g1364613757_)))
                _hd1374113858_
                _hd1373213834_
                _hd1372313810_
                _hd1371413786_)
               (_g1364413754_ _g1364613757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364413754_
                                                    _g1364613757_))))
                                           (_g1364413754_ _g1364613757_))
                                       (_g1364413754_ _g1364613757_))
                                   (_g1364413754_ _g1364613757_))))
                           (_g1364413754_ _g1364613757_))))
                   (_g1364413754_ _g1364613757_))
               (_g1364413754_ _g1364613757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1364413754_ _g1364613757_))
                                           (_g1364413754_ _g1364613757_))
                                       (_g1364413754_ _g1364613757_))))
                               (_g1364413754_ _g1364613757_))))
                       (_g1364413754_ _g1364613757_))
                   (_g1364413754_ _g1364613757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364413754_
                                                    _g1364613757_))
                                               (_g1364413754_ _g1364613757_))
                                           (_g1364413754_ _g1364613757_))))
                                   (_g1364413754_ _g1364613757_))))
                           (_g1364413754_ _g1364613757_))
                       (_g1364413754_ _g1364613757_))))
               (_g1364413754_ _g1364613757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1364413754_
                                                    _g1364613757_))
                                               (_g1364413754_ _g1364613757_))))
                                       (_g1364413754_ _g1364613757_))))
                               (_g1364413754_ _g1364613757_))))
                       (_g1364413754_ _g1364613757_)))))
            (let ((_g1364214084_
                   (lambda (_g1364613907_)
                     (if (gx#stx-pair? _g1364613907_)
                         (let ((_e1365213909_ (gx#stx-e _g1364613907_)))
                           (let ((_hd1365313912_ (##car _e1365213909_))
                                 (_tl1365413914_ (##cdr _e1365213909_)))
                             (if (gx#stx-pair? _tl1365413914_)
                                 (let ((_e1365513917_
                                        (gx#stx-e _tl1365413914_)))
                                   (let ((_hd1365613920_ (##car _e1365513917_))
                                         (_tl1365713922_
                                          (##cdr _e1365513917_)))
                                     (if (gx#stx-pair? _hd1365613920_)
                                         (let ((_e1365813925_
                                                (gx#stx-e _hd1365613920_)))
                                           (let ((_hd1365913928_
                                                  (##car _e1365813925_))
                                                 (_tl1366013930_
                                                  (##cdr _e1365813925_)))
                                             (if (gx#identifier?
                                                  _hd1365913928_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1365913928_)
                                                     (if (gx#stx-pair?
                                                          _tl1366013930_)
                                                         (let ((_e1366113933_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1366013930_)))
                   (let ((_hd1366213936_ (##car _e1366113933_))
                         (_tl1366313938_ (##cdr _e1366113933_)))
                     (if (gx#stx-null? _tl1366313938_)
                         (if (gx#stx-pair? _tl1365713922_)
                             (let ((_e1366413941_ (gx#stx-e _tl1365713922_)))
                               (let ((_hd1366513944_ (##car _e1366413941_))
                                     (_tl1366613946_ (##cdr _e1366413941_)))
                                 (if (gx#stx-pair? _hd1366513944_)
                                     (let ((_e1366713949_
                                            (gx#stx-e _hd1366513944_)))
                                       (let ((_hd1366813952_
                                              (##car _e1366713949_))
                                             (_tl1366913954_
                                              (##cdr _e1366713949_)))
                                         (if (gx#identifier? _hd1366813952_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1366813952_)
                                                 (if (gx#stx-pair?
                                                      _tl1366913954_)
                                                     (let ((_e1367013957_
                                                            (gx#stx-e
                                                             _tl1366913954_)))
                                                       (let ((_hd1367113960_
                                                              (##car _e1367013957_))
                                                             (_tl1367213962_
                                                              (##cdr _e1367013957_)))
                                                         (if (gx#stx-null?
                                                              _tl1367213962_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1366613946_)
                         (let ((_e1367313965_ (gx#stx-e _tl1366613946_)))
                           (let ((_hd1367413968_ (##car _e1367313965_))
                                 (_tl1367513970_ (##cdr _e1367313965_)))
                             (if (gx#stx-pair? _hd1367413968_)
                                 (let ((_e1367613973_
                                        (gx#stx-e _hd1367413968_)))
                                   (let ((_hd1367713976_ (##car _e1367613973_))
                                         (_tl1367813978_
                                          (##cdr _e1367613973_)))
                                     (if (gx#identifier? _hd1367713976_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1367713976_)
                                             (if (gx#stx-pair? _tl1367813978_)
                                                 (let ((_e1367913981_
                                                        (gx#stx-e
                                                         _tl1367813978_)))
                                                   (let ((_hd1368013984_
                                                          (##car _e1367913981_))
                                                         (_tl1368113986_
                                                          (##cdr _e1367913981_)))
                                                     (if (gx#stx-null?
                                                          _tl1368113986_)
                                                         (if (gx#stx-pair?
                                                              _tl1367513970_)
                                                             (let ((_e1368213989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1367513970_)))
                       (let ((_hd1368313992_ (##car _e1368213989_))
                             (_tl1368413994_ (##cdr _e1368213989_)))
                         (if (gx#stx-pair? _hd1368313992_)
                             (let ((_e1368513997_ (gx#stx-e _hd1368313992_)))
                               (let ((_hd1368614000_ (##car _e1368513997_))
                                     (_tl1368714002_ (##cdr _e1368513997_)))
                                 (if (gx#identifier? _hd1368614000_)
                                     (if (gx#stx-eq? '%#ref _hd1368614000_)
                                         (if (gx#stx-pair? _tl1368714002_)
                                             (let ((_e1368814005_
                                                    (gx#stx-e _tl1368714002_)))
                                               (let ((_hd1368914008_
                                                      (##car _e1368814005_))
                                                     (_tl1369014010_
                                                      (##cdr _e1368814005_)))
                                                 (if (gx#stx-null?
                                                      _tl1369014010_)
                                                     (if (gx#stx-pair?
                                                          _tl1368413994_)
                                                         (let ((_e1369114013_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1368413994_)))
                   (let ((_hd1369214016_ (##car _e1369114013_))
                         (_tl1369314018_ (##cdr _e1369114013_)))
                     (if (gx#stx-pair? _hd1369214016_)
                         (let ((_e1369414021_ (gx#stx-e _hd1369214016_)))
                           (let ((_hd1369514024_ (##car _e1369414021_))
                                 (_tl1369614026_ (##cdr _e1369414021_)))
                             (if (gx#identifier? _hd1369514024_)
                                 (if (gx#stx-eq? '%#quote _hd1369514024_)
                                     (if (gx#stx-pair? _tl1369614026_)
                                         (let ((_e1369714029_
                                                (gx#stx-e _tl1369614026_)))
                                           (let ((_hd1369814032_
                                                  (##car _e1369714029_))
                                                 (_tl1369914034_
                                                  (##cdr _e1369714029_)))
                                             (if (gx#stx-null? _tl1369914034_)
                                                 (if (gx#stx-null?
                                                      _tl1369314018_)
                                                     ((lambda (_L14037_
                                                               _L14038_
                                                               _L14039_
                                                               _L14040_
                                                               _L14041_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14041_)
                         'bind-method!)
                    (gxc#optimizer-declare-method!__opt-lambda18968
                     (gxc#generate-runtime-binding-id _L14040_)
                     (gx#stx-e _L14039_)
                     (gxc#generate-runtime-binding-id _L14038_)
                     (gx#stx-e _L14037_))
                    (_g1364313904_ _g1364613907_)))
              _hd1369814032_
              _hd1368914008_
              _hd1368013984_
              _hd1367113960_
              _hd1366213936_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364313904_
                                                      _g1364613907_))
                                                 (_g1364313904_
                                                  _g1364613907_))))
                                         (_g1364313904_ _g1364613907_))
                                     (_g1364313904_ _g1364613907_))
                                 (_g1364313904_ _g1364613907_))))
                         (_g1364313904_ _g1364613907_))))
                 (_g1364313904_ _g1364613907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364313904_
                                                      _g1364613907_))))
                                             (_g1364313904_ _g1364613907_))
                                         (_g1364313904_ _g1364613907_))
                                     (_g1364313904_ _g1364613907_))))
                             (_g1364313904_ _g1364613907_))))
                     (_g1364313904_ _g1364613907_))
                 (_g1364313904_ _g1364613907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1364313904_ _g1364613907_))
                                             (_g1364313904_ _g1364613907_))
                                         (_g1364313904_ _g1364613907_))))
                                 (_g1364313904_ _g1364613907_))))
                         (_g1364313904_ _g1364613907_))
                     (_g1364313904_ _g1364613907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364313904_
                                                      _g1364613907_))
                                                 (_g1364313904_ _g1364613907_))
                                             (_g1364313904_ _g1364613907_))))
                                     (_g1364313904_ _g1364613907_))))
                             (_g1364313904_ _g1364613907_))
                         (_g1364313904_ _g1364613907_))))
                 (_g1364313904_ _g1364613907_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364313904_
                                                      _g1364613907_))
                                                 (_g1364313904_
                                                  _g1364613907_))))
                                         (_g1364313904_ _g1364613907_))))
                                 (_g1364313904_ _g1364613907_))))
                         (_g1364313904_ _g1364613907_)))))
              (_g1364214084_ _stx13641_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx13581_)
      (let ((_g1358413597_
             (lambda (_g1358513594_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1358513594_))))
        (let ((_g1358313604_ (lambda (_g1358513600_) ((lambda () '#f)))))
          (let ((_g1358213638_
                 (lambda (_g1358513607_)
                   (if (gx#stx-pair? _g1358513607_)
                       (let ((_e1358713609_ (gx#stx-e _g1358513607_)))
                         (let ((_hd1358813612_ (##car _e1358713609_))
                               (_tl1358913614_ (##cdr _e1358713609_)))
                           (if (gx#stx-pair? _tl1358913614_)
                               (let ((_e1359013617_ (gx#stx-e _tl1358913614_)))
                                 (let ((_hd1359113620_ (##car _e1359013617_))
                                       (_tl1359213622_ (##cdr _e1359013617_)))
                                   (if (gx#stx-null? _tl1359213622_)
                                       ((lambda (_L13625_)
                                          (gxc#compile-e _L13625_))
                                        _hd1359113620_)
                                       (_g1358313604_ _g1358513607_))))
                               (_g1358313604_ _g1358513607_))))
                       (_g1358313604_ _g1358513607_)))))
            (_g1358213638_ _stx13581_))))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx13006_)
      (let ((_g1301113132_
             (lambda (_g1301213129_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1301213129_))))
        (let ((_g1301013139_ (lambda (_g1301213135_) ((lambda () '#f)))))
          (let ((_g1300913163_
                 (lambda (_g1301213142_)
                   (if (gx#stx-pair? _g1301213142_)
                       (let ((_e1312513144_ (gx#stx-e _g1301213142_)))
                         (let ((_hd1312613147_ (##car _e1312513144_))
                               (_tl1312713149_ (##cdr _e1312513144_)))
                           ((lambda (_L13152_)
                              (if (gxc#dispatch-lambda-form? _L13152_)
                                  (let ((__obj19220
                                         (make-object gxc#!lambda::t '5)))
                                    (begin
                                      (gxc#!lambda:::init!__0
                                       __obj19220
                                       'lambda
                                       (gxc#lambda-form-arity _L13152_)
                                       (gxc#dispatch-lambda-form-delegate
                                        _L13152_))
                                      __obj19220))
                                  (_g1301013139_ _g1301213142_)))
                            _tl1312713149_)))
                       (_g1301013139_ _g1301213142_)))))
            (let ((_g1300813393_
                   (lambda (_g1301213166_)
                     (if (gx#stx-pair? _g1301213166_)
                         (let ((_e1307013168_ (gx#stx-e _g1301213166_)))
                           (let ((_hd1307113171_ (##car _e1307013168_))
                                 (_tl1307213173_ (##cdr _e1307013168_)))
                             (if (gx#stx-pair? _tl1307213173_)
                                 (let ((_e1307313176_
                                        (gx#stx-e _tl1307213173_)))
                                   (let ((_hd1307413179_ (##car _e1307313176_))
                                         (_tl1307513181_
                                          (##cdr _e1307313176_)))
                                     (if (gx#stx-pair/null? _hd1307413179_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1307413179_)
                                                   '0)
                                             (let ((_g19282_
                                                    (gx#syntax-split-splice
                                                     _hd1307413179_
                                                     '0)))
                                               (begin
                                                 (let ((_g19283_
                                                        (values-count
                                                         _g19282_)))
                                                   (if (not (fx= _g19283_ 2))
                                                       (error "Context expects 2 values"
                                                              _g19283_)))
                                                 (let ((_target1307613184_
                                                        (values-ref
                                                         _g19282_
                                                         0))
                                                       (_tl1307813186_
                                                        (values-ref
                                                         _g19282_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1307813186_)
                                                       (letrec ((_loop1307913189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1307713192_ _arg1308313194_)
                           (if (gx#stx-pair? _hd1307713192_)
                               (let ((_e1308013197_ (gx#stx-e _hd1307713192_)))
                                 (let ((_lp-hd1308113200_
                                        (##car _e1308013197_))
                                       (_lp-tl1308213202_
                                        (##cdr _e1308013197_)))
                                   (_loop1307913189_
                                    _lp-tl1308213202_
                                    (cons _lp-hd1308113200_ _arg1308313194_))))
                               (let ((_arg1308413205_
                                      (reverse _arg1308313194_)))
                                 (if (gx#stx-pair? _tl1307513181_)
                                     (let ((_e1308513208_
                                            (gx#stx-e _tl1307513181_)))
                                       (let ((_hd1308613211_
                                              (##car _e1308513208_))
                                             (_tl1308713213_
                                              (##cdr _e1308513208_)))
                                         (if (gx#stx-pair? _hd1308613211_)
                                             (let ((_e1308813216_
                                                    (gx#stx-e _hd1308613211_)))
                                               (let ((_hd1308913219_
                                                      (##car _e1308813216_))
                                                     (_tl1309013221_
                                                      (##cdr _e1308813216_)))
                                                 (if (gx#identifier?
                                                      _hd1308913219_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd1308913219_)
                                                         (if (gx#stx-pair?
                                                              _tl1309013221_)
                                                             (let ((_e1309113224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1309013221_)))
                       (let ((_hd1309213227_ (##car _e1309113224_))
                             (_tl1309313229_ (##cdr _e1309113224_)))
                         (if (gx#stx-pair? _hd1309213227_)
                             (let ((_e1309413232_ (gx#stx-e _hd1309213227_)))
                               (let ((_hd1309513235_ (##car _e1309413232_))
                                     (_tl1309613237_ (##cdr _e1309413232_)))
                                 (if (gx#identifier? _hd1309513235_)
                                     (if (gx#stx-eq? '%#ref _hd1309513235_)
                                         (if (gx#stx-pair? _tl1309613237_)
                                             (let ((_e1309713240_
                                                    (gx#stx-e _tl1309613237_)))
                                               (let ((_hd1309813243_
                                                      (##car _e1309713240_))
                                                     (_tl1309913245_
                                                      (##cdr _e1309713240_)))
                                                 (if (gx#stx-null?
                                                      _tl1309913245_)
                                                     (if (gx#stx-pair?
                                                          _tl1309313229_)
                                                         (let ((_e1310013248_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1309313229_)))
                   (let ((_hd1310113251_ (##car _e1310013248_))
                         (_tl1310213253_ (##cdr _e1310013248_)))
                     (if (gx#stx-pair? _hd1310113251_)
                         (let ((_e1310313256_ (gx#stx-e _hd1310113251_)))
                           (let ((_hd1310413259_ (##car _e1310313256_))
                                 (_tl1310513261_ (##cdr _e1310313256_)))
                             (if (gx#identifier? _hd1310413259_)
                                 (if (gx#stx-eq? '%#ref _hd1310413259_)
                                     (if (gx#stx-pair? _tl1310513261_)
                                         (let ((_e1310613264_
                                                (gx#stx-e _tl1310513261_)))
                                           (let ((_hd1310713267_
                                                  (##car _e1310613264_))
                                                 (_tl1310813269_
                                                  (##cdr _e1310613264_)))
                                             (if (gx#stx-null? _tl1310813269_)
                                                 (if (gx#stx-pair/null?
                                                      _tl1310213253_)
                                                     (if (fx>= (gx#stx-length
                                                                _tl1310213253_)
                                                               '0)
                                                         (let ((_g19284_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1310213253_
                         '0)))
                   (begin
                     (let ((_g19285_ (values-count _g19284_)))
                       (if (not (fx= _g19285_ 2))
                           (error "Context expects 2 values" _g19285_)))
                     (let ((_target1310913272_ (values-ref _g19284_ 0))
                           (_tl1311113274_ (values-ref _g19284_ 1)))
                       (if (gx#stx-null? _tl1311113274_)
                           (letrec ((_loop1311213277_
                                     (lambda (_hd1311013280_ _xarg1311613282_)
                                       (if (gx#stx-pair? _hd1311013280_)
                                           (let ((_e1311313285_
                                                  (gx#stx-e _hd1311013280_)))
                                             (let ((_lp-hd1311413288_
                                                    (##car _e1311313285_))
                                                   (_lp-tl1311513290_
                                                    (##cdr _e1311313285_)))
                                               (if (gx#stx-pair?
                                                    _lp-hd1311413288_)
                                                   (let ((_e1311813293_
                                                          (gx#stx-e
                                                           _lp-hd1311413288_)))
                                                     (let ((_hd1311913296_
                                                            (##car _e1311813293_))
                                                           (_tl1312013298_
                                                            (##cdr _e1311813293_)))
                                                       (if (gx#identifier?
                                                            _hd1311913296_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd1311913296_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1312013298_)
                           (let ((_e1312113301_ (gx#stx-e _tl1312013298_)))
                             (let ((_hd1312213304_ (##car _e1312113301_))
                                   (_tl1312313306_ (##cdr _e1312113301_)))
                               (if (gx#stx-null? _tl1312313306_)
                                   (_loop1311213277_
                                    _lp-tl1311513290_
                                    (cons _hd1312213304_ _xarg1311613282_))
                                   (_g1300913163_ _g1301213166_))))
                           (_g1300913163_ _g1301213166_))
                       (_g1300913163_ _g1301213166_))
                   (_g1300913163_ _g1301213166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300913163_
                                                    _g1301213166_))))
                                           (let ((_xarg1311713309_
                                                  (reverse _xarg1311613282_)))
                                             (if (gx#stx-null? _tl1308713213_)
                                                 ((lambda (_L13312_
                                                           _L13313_
                                                           _L13314_
                                                           _L13315_)
                                                    (if (if (gx#identifier-list?
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1335213355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1335313357_)
                                 (cons _g1335213355_ _g1335313357_))
                               '()
                               _L13315_)))
                    (if (eq? (gxc#generate-runtime-binding-id _L13314_)
                             'make-struct-instance)
                        (if (fx= (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1335913362_
                                                            _g1336013364_)
                                                     (cons _g1335913362_
                                                           _g1336013364_))
                                                   '()
                                                   _L13315_)))
                                 (length (begin
                                           '#!void
                                           (foldr1 (lambda (_g1336613369_
                                                            _g1336713371_)
                                                     (cons _g1336613369_
                                                           _g1336713371_))
                                                   '()
                                                   _L13312_))))
                            (andmap gx#free-identifier=?
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1337313376_
                                                       _g1337413378_)
                                                (cons _g1337313376_
                                                      _g1337413378_))
                                              '()
                                              _L13315_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g1338013383_
                                                       _g1338113385_)
                                                (cons _g1338013383_
                                                      _g1338113385_))
                                              '()
                                              _L13312_)))
                            '#f)
                        '#f)
                    '#f)
                (let ((_type-t13388_
                       (gxc#generate-runtime-binding-id _L13313_)))
                  (let ((_type13390_
                         (gxc#optimizer-resolve-type _type-t13388_)))
                    (let ()
                      (if (##structure-instance-of?
                           _type13390_
                           'gxc#!struct-type::t)
                          (##structure gxc#!struct-cons::t _type-t13388_)
                          '#f))))
                (_g1300913163_ _g1301213166_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _xarg1311713309_
                                                  _hd1310713267_
                                                  _hd1309813243_
                                                  _arg1308413205_)
                                                 (_g1300913163_
                                                  _g1301213166_)))))))
                             (_loop1311213277_ _target1310913272_ '()))
                           (_g1300913163_ _g1301213166_)))))
                 (_g1300913163_ _g1301213166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1300913163_
                                                      _g1301213166_))
                                                 (_g1300913163_
                                                  _g1301213166_))))
                                         (_g1300913163_ _g1301213166_))
                                     (_g1300913163_ _g1301213166_))
                                 (_g1300913163_ _g1301213166_))))
                         (_g1300913163_ _g1301213166_))))
                 (_g1300913163_ _g1301213166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1300913163_
                                                      _g1301213166_))))
                                             (_g1300913163_ _g1301213166_))
                                         (_g1300913163_ _g1301213166_))
                                     (_g1300913163_ _g1301213166_))))
                             (_g1300913163_ _g1301213166_))))
                     (_g1300913163_ _g1301213166_))
                 (_g1300913163_ _g1301213166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1300913163_
                                                      _g1301213166_))))
                                             (_g1300913163_ _g1301213166_))))
                                     (_g1300913163_ _g1301213166_)))))))
                 (_loop1307913189_ _target1307613184_ '()))
               (_g1300913163_ _g1301213166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1300913163_ _g1301213166_))
                                         (_g1300913163_ _g1301213166_))))
                                 (_g1300913163_ _g1301213166_))))
                         (_g1300913163_ _g1301213166_)))))
              (let ((_g1300713578_
                     (lambda (_g1301213396_)
                       (if (gx#stx-pair? _g1301213396_)
                           (let ((_e1301813398_ (gx#stx-e _g1301213396_)))
                             (let ((_hd1301913401_ (##car _e1301813398_))
                                   (_tl1302013403_ (##cdr _e1301813398_)))
                               (if (gx#stx-pair? _tl1302013403_)
                                   (let ((_e1302113406_
                                          (gx#stx-e _tl1302013403_)))
                                     (let ((_hd1302213409_
                                            (##car _e1302113406_))
                                           (_tl1302313411_
                                            (##cdr _e1302113406_)))
                                       (if (gx#stx-pair? _tl1302313411_)
                                           (let ((_e1302413414_
                                                  (gx#stx-e _tl1302313411_)))
                                             (let ((_hd1302513417_
                                                    (##car _e1302413414_))
                                                   (_tl1302613419_
                                                    (##cdr _e1302413414_)))
                                               (if (gx#stx-pair?
                                                    _hd1302513417_)
                                                   (let ((_e1302713422_
                                                          (gx#stx-e
                                                           _hd1302513417_)))
                                                     (let ((_hd1302813425_
                                                            (##car _e1302713422_))
                                                           (_tl1302913427_
                                                            (##cdr _e1302713422_)))
                                                       (if (gx#identifier?
                                                            _hd1302813425_)
                                                           (if (gx#stx-eq?
                                                                '%#call
                                                                _hd1302813425_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1302913427_)
                           (let ((_e1303013430_ (gx#stx-e _tl1302913427_)))
                             (let ((_hd1303113433_ (##car _e1303013430_))
                                   (_tl1303213435_ (##cdr _e1303013430_)))
                               (if (gx#stx-pair? _hd1303113433_)
                                   (let ((_e1303313438_
                                          (gx#stx-e _hd1303113433_)))
                                     (let ((_hd1303413441_
                                            (##car _e1303313438_))
                                           (_tl1303513443_
                                            (##cdr _e1303313438_)))
                                       (if (gx#identifier? _hd1303413441_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1303413441_)
                                               (if (gx#stx-pair?
                                                    _tl1303513443_)
                                                   (let ((_e1303613446_
                                                          (gx#stx-e
                                                           _tl1303513443_)))
                                                     (let ((_hd1303713449_
                                                            (##car _e1303613446_))
                                                           (_tl1303813451_
                                                            (##cdr _e1303613446_)))
                                                       (if (gx#stx-null?
                                                            _tl1303813451_)
                                                           (if (gx#stx-pair?
                                                                _tl1303213435_)
                                                               (let ((_e1303913454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1303213435_)))
                         (let ((_hd1304013457_ (##car _e1303913454_))
                               (_tl1304113459_ (##cdr _e1303913454_)))
                           (if (gx#stx-pair? _hd1304013457_)
                               (let ((_e1304213462_ (gx#stx-e _hd1304013457_)))
                                 (let ((_hd1304313465_ (##car _e1304213462_))
                                       (_tl1304413467_ (##cdr _e1304213462_)))
                                   (if (gx#identifier? _hd1304313465_)
                                       (if (gx#stx-eq? '%#ref _hd1304313465_)
                                           (if (gx#stx-pair? _tl1304413467_)
                                               (let ((_e1304513470_
                                                      (gx#stx-e
                                                       _tl1304413467_)))
                                                 (let ((_hd1304613473_
                                                        (##car _e1304513470_))
                                                       (_tl1304713475_
                                                        (##cdr _e1304513470_)))
                                                   (if (gx#stx-null?
                                                        _tl1304713475_)
                                                       (if (gx#stx-pair?
                                                            _tl1304113459_)
                                                           (let ((_e1304813478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1304113459_)))
                     (let ((_hd1304913481_ (##car _e1304813478_))
                           (_tl1305013483_ (##cdr _e1304813478_)))
                       (if (gx#stx-pair? _hd1304913481_)
                           (let ((_e1305113486_ (gx#stx-e _hd1304913481_)))
                             (let ((_hd1305213489_ (##car _e1305113486_))
                                   (_tl1305313491_ (##cdr _e1305113486_)))
                               (if (gx#identifier? _hd1305213489_)
                                   (if (gx#stx-eq? '%#ref _hd1305213489_)
                                       (if (gx#stx-pair? _tl1305313491_)
                                           (let ((_e1305413494_
                                                  (gx#stx-e _tl1305313491_)))
                                             (let ((_hd1305513497_
                                                    (##car _e1305413494_))
                                                   (_tl1305613499_
                                                    (##cdr _e1305413494_)))
                                               (if (gx#stx-null?
                                                    _tl1305613499_)
                                                   (if (gx#stx-pair?
                                                        _tl1305013483_)
                                                       (let ((_e1305713502_
                                                              (gx#stx-e
                                                               _tl1305013483_)))
                                                         (let ((_hd1305813505_
                                                                (##car _e1305713502_))
                                                               (_tl1305913507_
                                                                (##cdr _e1305713502_)))
                                                           (if (gx#stx-pair?
                                                                _hd1305813505_)
                                                               (let ((_e1306013510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1305813505_)))
                         (let ((_hd1306113513_ (##car _e1306013510_))
                               (_tl1306213515_ (##cdr _e1306013510_)))
                           (if (gx#identifier? _hd1306113513_)
                               (if (gx#stx-eq? '%#ref _hd1306113513_)
                                   (if (gx#stx-pair? _tl1306213515_)
                                       (let ((_e1306313518_
                                              (gx#stx-e _tl1306213515_)))
                                         (let ((_hd1306413521_
                                                (##car _e1306313518_))
                                               (_tl1306513523_
                                                (##cdr _e1306313518_)))
                                           (if (gx#stx-null? _tl1306513523_)
                                               (if (gx#stx-null?
                                                    _tl1305913507_)
                                                   (if (gx#stx-null?
                                                        _tl1302613419_)
                                                       ((lambda (_L13526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L13527_
                         _L13528_
                         _L13529_
                         _L13530_)
                  (if (if (gx#identifier? _L13530_)
                          (if (eq? (gxc#generate-runtime-binding-id _L13529_)
                                   'apply)
                              (if (eq? (gxc#generate-runtime-binding-id
                                        _L13528_)
                                       'make-struct-instance)
                                  (gx#free-identifier=? _L13530_ _L13526_)
                                  '#f)
                              '#f)
                          '#f)
                      (let ((_type-t13573_
                             (gxc#generate-runtime-binding-id _L13527_)))
                        (let ((_type13575_
                               (gxc#optimizer-resolve-type _type-t13573_)))
                          (let ()
                            (if (##structure-instance-of?
                                 _type13575_
                                 'gxc#!struct-type::t)
                                (##structure gxc#!struct-cons::t _type-t13573_)
                                '#f))))
                      (_g1300813393_ _g1301213396_)))
                _hd1306413521_
                _hd1305513497_
                _hd1304613473_
                _hd1303713449_
                _hd1302213409_)
               (_g1300813393_ _g1301213396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300813393_
                                                    _g1301213396_))
                                               (_g1300813393_ _g1301213396_))))
                                       (_g1300813393_ _g1301213396_))
                                   (_g1300813393_ _g1301213396_))
                               (_g1300813393_ _g1301213396_))))
                       (_g1300813393_ _g1301213396_))))
               (_g1300813393_ _g1301213396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300813393_
                                                    _g1301213396_))))
                                           (_g1300813393_ _g1301213396_))
                                       (_g1300813393_ _g1301213396_))
                                   (_g1300813393_ _g1301213396_))))
                           (_g1300813393_ _g1301213396_))))
                   (_g1300813393_ _g1301213396_))
               (_g1300813393_ _g1301213396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1300813393_ _g1301213396_))
                                           (_g1300813393_ _g1301213396_))
                                       (_g1300813393_ _g1301213396_))))
                               (_g1300813393_ _g1301213396_))))
                       (_g1300813393_ _g1301213396_))
                   (_g1300813393_ _g1301213396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300813393_
                                                    _g1301213396_))
                                               (_g1300813393_ _g1301213396_))
                                           (_g1300813393_ _g1301213396_))))
                                   (_g1300813393_ _g1301213396_))))
                           (_g1300813393_ _g1301213396_))
                       (_g1300813393_ _g1301213396_))
                   (_g1300813393_ _g1301213396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1300813393_
                                                    _g1301213396_))))
                                           (_g1300813393_ _g1301213396_))))
                                   (_g1300813393_ _g1301213396_))))
                           (_g1300813393_ _g1301213396_)))))
                (_g1300713578_ _stx13006_))))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx12952_)
      (let ((_clause-e12954_
             (lambda (_form13004_)
               (let ((__obj19221 (make-object gxc#!lambda::t '5)))
                 (begin
                   (gxc#!lambda:::init!__0
                    __obj19221
                    'case-lambda-clause
                    (gxc#lambda-form-arity _form13004_)
                    (gxc#dispatch-lambda-form-delegate _form13004_))
                   __obj19221)))))
        (let ((_g1295712967_
               (lambda (_g1295812964_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1295812964_))))
          (let ((_g1295612974_ (lambda (_g1295812970_) ((lambda () '#f)))))
            (let ((_g1295513001_
                   (lambda (_g1295812977_)
                     (if (gx#stx-pair? _g1295812977_)
                         (let ((_e1296012979_ (gx#stx-e _g1295812977_)))
                           (let ((_hd1296112982_ (##car _e1296012979_))
                                 (_tl1296212984_ (##cdr _e1296012979_)))
                             ((lambda (_L12987_)
                                (if (andmap1 gxc#dispatch-lambda-form?
                                             _L12987_)
                                    (let ((_clauses12999_
                                           (map _clause-e12954_ _L12987_)))
                                      (##structure
                                       gxc#!case-lambda::t
                                       'case-lambda
                                       _clauses12999_))
                                    (_g1295612974_ _g1295812977_)))
                              _tl1296212984_)))
                         (_g1295612974_ _g1295812977_)))))
              (_g1295513001_ _stx12952_)))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx12857_)
      (let ((_g1286012880_
             (lambda (_g1286112877_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1286112877_))))
        (let ((_g1285912887_ (lambda (_g1286112883_) ((lambda () '#f)))))
          (let ((_g1285812949_
                 (lambda (_g1286112890_)
                   (if (gx#stx-pair? _g1286112890_)
                       (let ((_e1286412892_ (gx#stx-e _g1286112890_)))
                         (let ((_hd1286512895_ (##car _e1286412892_))
                               (_tl1286612897_ (##cdr _e1286412892_)))
                           (if (gx#stx-pair? _tl1286612897_)
                               (let ((_e1286712900_ (gx#stx-e _tl1286612897_)))
                                 (let ((_hd1286812903_ (##car _e1286712900_))
                                       (_tl1286912905_ (##cdr _e1286712900_)))
                                   (if (gx#stx-pair? _hd1286812903_)
                                       (let ((_e1287012908_
                                              (gx#stx-e _hd1286812903_)))
                                         (let ((_hd1287112911_
                                                (##car _e1287012908_))
                                               (_tl1287212913_
                                                (##cdr _e1287012908_)))
                                           (if (gx#identifier? _hd1287112911_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1287112911_)
                                                   (if (gx#stx-pair?
                                                        _tl1287212913_)
                                                       (let ((_e1287312916_
                                                              (gx#stx-e
                                                               _tl1287212913_)))
                                                         (let ((_hd1287412919_
                                                                (##car _e1287312916_))
                                                               (_tl1287512921_
                                                                (##cdr _e1287312916_)))
                                                           (if (gx#stx-null?
                                                                _tl1287512921_)
                                                               ((lambda (_L12924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12925_)
                          (let ((_type-e1294212944_
                                 (table-ref
                                  gxc#basic-expression-type-builtin
                                  (gxc#generate-runtime-binding-id _L12925_)
                                  '#f)))
                            (if _type-e1294212944_
                                (let ((_type-e12947_ _type-e1294212944_))
                                  (_type-e12947_ _stx12857_ _L12924_))
                                '#f)))
                        _tl1286912905_
                        _hd1287412919_)
                       (_g1285912887_ _g1286112890_))))
               (_g1285912887_ _g1286112890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1285912887_
                                                    _g1286112890_))
                                               (_g1285912887_ _g1286112890_))))
                                       (_g1285912887_ _g1286112890_))))
                               (_g1285912887_ _g1286112890_))))
                       (_g1285912887_ _g1286112890_)))))
            (_g1285812949_ _stx12857_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx12342_ _args12343_)
      (let ((_g1234712460_
             (lambda (_g1234812457_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1234812457_))))
        (let ((_g1234612467_
               (lambda (_g1234812463_)
                 ((lambda ()
                    (begin
                      (gxc#verbose
                       '"make-struct-type: can't infer type "
                       (gx#syntax->datum _stx12342_))
                      '#f))))))
          (let ((_g1234512674_
                 (lambda (_g1234812470_)
                   (if (gx#stx-pair? _g1234812470_)
                       (let ((_e1240812472_ (gx#stx-e _g1234812470_)))
                         (let ((_hd1240912475_ (##car _e1240812472_))
                               (_tl1241012477_ (##cdr _e1240812472_)))
                           (if (gx#stx-pair? _hd1240912475_)
                               (let ((_e1241112480_ (gx#stx-e _hd1240912475_)))
                                 (let ((_hd1241212483_ (##car _e1241112480_))
                                       (_tl1241312485_ (##cdr _e1241112480_)))
                                   (if (gx#identifier? _hd1241212483_)
                                       (if (gx#stx-eq? '%#quote _hd1241212483_)
                                           (if (gx#stx-pair? _tl1241312485_)
                                               (let ((_e1241412488_
                                                      (gx#stx-e
                                                       _tl1241312485_)))
                                                 (let ((_hd1241512491_
                                                        (##car _e1241412488_))
                                                       (_tl1241612493_
                                                        (##cdr _e1241412488_)))
                                                   (if (gx#stx-null?
                                                        _tl1241612493_)
                                                       (if (gx#stx-pair?
                                                            _tl1241012477_)
                                                           (let ((_e1241712496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1241012477_)))
                     (let ((_hd1241812499_ (##car _e1241712496_))
                           (_tl1241912501_ (##cdr _e1241712496_)))
                       (if (gx#stx-pair? _hd1241812499_)
                           (let ((_e1242012504_ (gx#stx-e _hd1241812499_)))
                             (let ((_hd1242112507_ (##car _e1242012504_))
                                   (_tl1242212509_ (##cdr _e1242012504_)))
                               (if (gx#identifier? _hd1242112507_)
                                   (if (gx#stx-eq? '%#ref _hd1242112507_)
                                       (if (gx#stx-pair? _tl1242212509_)
                                           (let ((_e1242312512_
                                                  (gx#stx-e _tl1242212509_)))
                                             (let ((_hd1242412515_
                                                    (##car _e1242312512_))
                                                   (_tl1242512517_
                                                    (##cdr _e1242312512_)))
                                               (if (gx#stx-null?
                                                    _tl1242512517_)
                                                   (if (gx#stx-pair?
                                                        _tl1241912501_)
                                                       (let ((_e1242612520_
                                                              (gx#stx-e
                                                               _tl1241912501_)))
                                                         (let ((_hd1242712523_
                                                                (##car _e1242612520_))
                                                               (_tl1242812525_
                                                                (##cdr _e1242612520_)))
                                                           (if (gx#stx-pair?
                                                                _hd1242712523_)
                                                               (let ((_e1242912528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1242712523_)))
                         (let ((_hd1243012531_ (##car _e1242912528_))
                               (_tl1243112533_ (##cdr _e1242912528_)))
                           (if (gx#identifier? _hd1243012531_)
                               (if (gx#stx-eq? '%#quote _hd1243012531_)
                                   (if (gx#stx-pair? _tl1243112533_)
                                       (let ((_e1243212536_
                                              (gx#stx-e _tl1243112533_)))
                                         (let ((_hd1243312539_
                                                (##car _e1243212536_))
                                               (_tl1243412541_
                                                (##cdr _e1243212536_)))
                                           (if (gx#stx-null? _tl1243412541_)
                                               (if (gx#stx-pair?
                                                    _tl1242812525_)
                                                   (let ((_e1243512544_
                                                          (gx#stx-e
                                                           _tl1242812525_)))
                                                     (let ((_hd1243612547_
                                                            (##car _e1243512544_))
                                                           (_tl1243712549_
                                                            (##cdr _e1243512544_)))
                                                       (if (gx#stx-pair?
                                                            _tl1243712549_)
                                                           (let ((_e1243812552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1243712549_)))
                     (let ((_hd1243912555_ (##car _e1243812552_))
                           (_tl1244012557_ (##cdr _e1243812552_)))
                       (if (gx#stx-pair? _hd1243912555_)
                           (let ((_e1244112560_ (gx#stx-e _hd1243912555_)))
                             (let ((_hd1244212563_ (##car _e1244112560_))
                                   (_tl1244312565_ (##cdr _e1244112560_)))
                               (if (gx#identifier? _hd1244212563_)
                                   (if (gx#stx-eq? '%#quote _hd1244212563_)
                                       (if (gx#stx-pair? _tl1244312565_)
                                           (let ((_e1244412568_
                                                  (gx#stx-e _tl1244312565_)))
                                             (let ((_hd1244512571_
                                                    (##car _e1244412568_))
                                                   (_tl1244612573_
                                                    (##cdr _e1244412568_)))
                                               (if (gx#stx-null?
                                                    _tl1244612573_)
                                                   (if (gx#stx-pair?
                                                        _tl1244012557_)
                                                       (let ((_e1244712576_
                                                              (gx#stx-e
                                                               _tl1244012557_)))
                                                         (let ((_hd1244812579_
                                                                (##car _e1244712576_))
                                                               (_tl1244912581_
                                                                (##cdr _e1244712576_)))
                                                           (if (gx#stx-pair?
                                                                _hd1244812579_)
                                                               (let ((_e1245012584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1244812579_)))
                         (let ((_hd1245112587_ (##car _e1245012584_))
                               (_tl1245212589_ (##cdr _e1245012584_)))
                           (if (gx#identifier? _hd1245112587_)
                               (if (gx#stx-eq? '%#quote _hd1245112587_)
                                   (if (gx#stx-pair? _tl1245212589_)
                                       (let ((_e1245312592_
                                              (gx#stx-e _tl1245212589_)))
                                         (let ((_hd1245412595_
                                                (##car _e1245312592_))
                                               (_tl1245512597_
                                                (##cdr _e1245312592_)))
                                           (if (gx#stx-null? _tl1245512597_)
                                               (if (gx#stx-null?
                                                    _tl1244912581_)
                                                   ((lambda (_L12600_
                                                             _L12601_
                                                             _L12602_
                                                             _L12603_
                                                             _L12604_
                                                             _L12605_)
                                                      (let ((_super-t12651_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12604_)
                         (gxc#generate-runtime-binding-id _L12604_)
                         '#f)))
                (let ((_super-type12653_
                       (if _super-t12651_
                           (gxc#optimizer-resolve-type _super-t12651_)
                           '#f)))
                  (let ()
                    (begin
                      (if (if _super-type12653_
                              (not (##structure-instance-of?
                                    _super-type12653_
                                    'gxc#!struct-type::t))
                              '#f)
                          (gxc#raise-compile-error
                           '"Illegal struct-type construction; invalid super type"
                           _stx12342_
                           _L12604_)
                          '#!void)
                      (let ((_fields12669_ (gx#stx-e _L12603_))
                            (_xfields12670_
                             (if _super-type12653_
                                 (let ((_super-fields1265512658_
                                        (##structure-ref
                                         _super-type12653_
                                         '3
                                         gxc#!struct-type::t
                                         '#f))
                                       (_super-xfields1265612660_
                                        (##structure-ref
                                         _super-type12653_
                                         '4
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _super-fields1265512658_
                                       (if _super-xfields1265612660_
                                           (let ((_super-fields12663_
                                                  _super-fields1265512658_)
                                                 (_super-xfields12664_
                                                  _super-xfields1265612660_))
                                             (fx+ _super-fields12663_
                                                  _super-xfields12664_))
                                           '#f)
                                       '#f))
                                 '#f))
                            (_plist12671_ (gx#stx-e _L12601_))
                            (_ctor12672_
                             (let ((_$e12666_ (gx#stx-e _L12600_)))
                               (if _$e12666_
                                   (values _$e12666_)
                                   (if _super-type12653_
                                       (##structure-ref
                                        _super-type12653_
                                        '5
                                        gxc#!struct-type::t
                                        '#f)
                                       (if _super-t12651_ '#!void '#f))))))
                        (let ((__obj19222
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19222
                             (gx#stx-e _L12605_)
                             _super-t12651_
                             _fields12669_
                             _xfields12670_
                             _ctor12672_
                             _plist12671_)
                            __obj19222))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1245412595_
                                                    _hd1244512571_
                                                    _hd1243612547_
                                                    _hd1243312539_
                                                    _hd1242412515_
                                                    _hd1241512491_)
                                                   (_g1234612467_
                                                    _g1234812470_))
                                               (_g1234612467_ _g1234812470_))))
                                       (_g1234612467_ _g1234812470_))
                                   (_g1234612467_ _g1234812470_))
                               (_g1234612467_ _g1234812470_))))
                       (_g1234612467_ _g1234812470_))))
               (_g1234612467_ _g1234812470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234612467_
                                                    _g1234812470_))))
                                           (_g1234612467_ _g1234812470_))
                                       (_g1234612467_ _g1234812470_))
                                   (_g1234612467_ _g1234812470_))))
                           (_g1234612467_ _g1234812470_))))
                   (_g1234612467_ _g1234812470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234612467_
                                                    _g1234812470_))
                                               (_g1234612467_ _g1234812470_))))
                                       (_g1234612467_ _g1234812470_))
                                   (_g1234612467_ _g1234812470_))
                               (_g1234612467_ _g1234812470_))))
                       (_g1234612467_ _g1234812470_))))
               (_g1234612467_ _g1234812470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1234612467_
                                                    _g1234812470_))))
                                           (_g1234612467_ _g1234812470_))
                                       (_g1234612467_ _g1234812470_))
                                   (_g1234612467_ _g1234812470_))))
                           (_g1234612467_ _g1234812470_))))
                   (_g1234612467_ _g1234812470_))
               (_g1234612467_ _g1234812470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1234612467_ _g1234812470_))
                                           (_g1234612467_ _g1234812470_))
                                       (_g1234612467_ _g1234812470_))))
                               (_g1234612467_ _g1234812470_))))
                       (_g1234612467_ _g1234812470_)))))
            (let ((_g1234412854_
                   (lambda (_g1234812677_)
                     (if (gx#stx-pair? _g1234812677_)
                         (let ((_e1235412679_ (gx#stx-e _g1234812677_)))
                           (let ((_hd1235512682_ (##car _e1235412679_))
                                 (_tl1235612684_ (##cdr _e1235412679_)))
                             (if (gx#stx-pair? _hd1235512682_)
                                 (let ((_e1235712687_
                                        (gx#stx-e _hd1235512682_)))
                                   (let ((_hd1235812690_ (##car _e1235712687_))
                                         (_tl1235912692_
                                          (##cdr _e1235712687_)))
                                     (if (gx#identifier? _hd1235812690_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1235812690_)
                                             (if (gx#stx-pair? _tl1235912692_)
                                                 (let ((_e1236012695_
                                                        (gx#stx-e
                                                         _tl1235912692_)))
                                                   (let ((_hd1236112698_
                                                          (##car _e1236012695_))
                                                         (_tl1236212700_
                                                          (##cdr _e1236012695_)))
                                                     (if (gx#stx-null?
                                                          _tl1236212700_)
                                                         (if (gx#stx-pair?
                                                              _tl1235612684_)
                                                             (let ((_e1236312703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1235612684_)))
                       (let ((_hd1236412706_ (##car _e1236312703_))
                             (_tl1236512708_ (##cdr _e1236312703_)))
                         (if (gx#stx-pair? _hd1236412706_)
                             (let ((_e1236612711_ (gx#stx-e _hd1236412706_)))
                               (let ((_hd1236712714_ (##car _e1236612711_))
                                     (_tl1236812716_ (##cdr _e1236612711_)))
                                 (if (gx#identifier? _hd1236712714_)
                                     (if (gx#stx-eq? '%#quote _hd1236712714_)
                                         (if (gx#stx-pair? _tl1236812716_)
                                             (let ((_e1236912719_
                                                    (gx#stx-e _tl1236812716_)))
                                               (let ((_hd1237012722_
                                                      (##car _e1236912719_))
                                                     (_tl1237112724_
                                                      (##cdr _e1236912719_)))
                                                 (if (gx#stx-datum?
                                                      _hd1237012722_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1237012722_)
                         '#f)
                 (if (gx#stx-null? _tl1237112724_)
                     (if (gx#stx-pair? _tl1236512708_)
                         (let ((_e1237212727_ (gx#stx-e _tl1236512708_)))
                           (let ((_hd1237312730_ (##car _e1237212727_))
                                 (_tl1237412732_ (##cdr _e1237212727_)))
                             (if (gx#stx-pair? _hd1237312730_)
                                 (let ((_e1237512735_
                                        (gx#stx-e _hd1237312730_)))
                                   (let ((_hd1237612738_ (##car _e1237512735_))
                                         (_tl1237712740_
                                          (##cdr _e1237512735_)))
                                     (if (gx#identifier? _hd1237612738_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1237612738_)
                                             (if (gx#stx-pair? _tl1237712740_)
                                                 (let ((_e1237812743_
                                                        (gx#stx-e
                                                         _tl1237712740_)))
                                                   (let ((_hd1237912746_
                                                          (##car _e1237812743_))
                                                         (_tl1238012748_
                                                          (##cdr _e1237812743_)))
                                                     (if (gx#stx-null?
                                                          _tl1238012748_)
                                                         (if (gx#stx-pair?
                                                              _tl1237412732_)
                                                             (let ((_e1238112751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1237412732_)))
                       (let ((_hd1238212754_ (##car _e1238112751_))
                             (_tl1238312756_ (##cdr _e1238112751_)))
                         (if (gx#stx-pair? _tl1238312756_)
                             (let ((_e1238412759_ (gx#stx-e _tl1238312756_)))
                               (let ((_hd1238512762_ (##car _e1238412759_))
                                     (_tl1238612764_ (##cdr _e1238412759_)))
                                 (if (gx#stx-pair? _hd1238512762_)
                                     (let ((_e1238712767_
                                            (gx#stx-e _hd1238512762_)))
                                       (let ((_hd1238812770_
                                              (##car _e1238712767_))
                                             (_tl1238912772_
                                              (##cdr _e1238712767_)))
                                         (if (gx#identifier? _hd1238812770_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd1238812770_)
                                                 (if (gx#stx-pair?
                                                      _tl1238912772_)
                                                     (let ((_e1239012775_
                                                            (gx#stx-e
                                                             _tl1238912772_)))
                                                       (let ((_hd1239112778_
                                                              (##car _e1239012775_))
                                                             (_tl1239212780_
                                                              (##cdr _e1239012775_)))
                                                         (if (gx#stx-null?
                                                              _tl1239212780_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1238612764_)
                         (let ((_e1239312783_ (gx#stx-e _tl1238612764_)))
                           (let ((_hd1239412786_ (##car _e1239312783_))
                                 (_tl1239512788_ (##cdr _e1239312783_)))
                             (if (gx#stx-pair? _hd1239412786_)
                                 (let ((_e1239612791_
                                        (gx#stx-e _hd1239412786_)))
                                   (let ((_hd1239712794_ (##car _e1239612791_))
                                         (_tl1239812796_
                                          (##cdr _e1239612791_)))
                                     (if (gx#identifier? _hd1239712794_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1239712794_)
                                             (if (gx#stx-pair? _tl1239812796_)
                                                 (let ((_e1239912799_
                                                        (gx#stx-e
                                                         _tl1239812796_)))
                                                   (let ((_hd1240012802_
                                                          (##car _e1239912799_))
                                                         (_tl1240112804_
                                                          (##cdr _e1239912799_)))
                                                     (if (gx#stx-null?
                                                          _tl1240112804_)
                                                         (if (gx#stx-null?
                                                              _tl1239512788_)
                                                             ((lambda (_L12807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L12808_
                               _L12809_
                               _L12810_
                               _L12811_)
                        (let ((__obj19223
                               (make-object gxc#!struct-type::t '7)))
                          (begin
                            (gxc#!struct-type:::init!
                             __obj19223
                             (gx#stx-e _L12811_)
                             '#f
                             (gx#stx-e _L12810_)
                             '0
                             (gx#stx-e _L12807_)
                             (gx#stx-e _L12808_))
                            __obj19223)))
                      _hd1240012802_
                      _hd1239112778_
                      _hd1238212754_
                      _hd1237912746_
                      _hd1236112698_)
                     (_g1234512674_ _g1234812677_))
                 (_g1234512674_ _g1234812677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234512674_ _g1234812677_))
                                             (_g1234512674_ _g1234812677_))
                                         (_g1234512674_ _g1234812677_))))
                                 (_g1234512674_ _g1234812677_))))
                         (_g1234512674_ _g1234812677_))
                     (_g1234512674_ _g1234812677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1234512674_
                                                      _g1234812677_))
                                                 (_g1234512674_ _g1234812677_))
                                             (_g1234512674_ _g1234812677_))))
                                     (_g1234512674_ _g1234812677_))))
                             (_g1234512674_ _g1234812677_))))
                     (_g1234512674_ _g1234812677_))
                 (_g1234512674_ _g1234812677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234512674_ _g1234812677_))
                                             (_g1234512674_ _g1234812677_))
                                         (_g1234512674_ _g1234812677_))))
                                 (_g1234512674_ _g1234812677_))))
                         (_g1234512674_ _g1234812677_))
                     (_g1234512674_ _g1234812677_))
                 (_g1234512674_ _g1234812677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1234512674_
                                                      _g1234812677_))))
                                             (_g1234512674_ _g1234812677_))
                                         (_g1234512674_ _g1234812677_))
                                     (_g1234512674_ _g1234812677_))))
                             (_g1234512674_ _g1234812677_))))
                     (_g1234512674_ _g1234812677_))
                 (_g1234512674_ _g1234812677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1234512674_ _g1234812677_))
                                             (_g1234512674_ _g1234812677_))
                                         (_g1234512674_ _g1234812677_))))
                                 (_g1234512674_ _g1234812677_))))
                         (_g1234512674_ _g1234812677_)))))
              (_g1234412854_ _args12343_)))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx12268_ _args12269_)
      (let ((_g1227212288_
             (lambda (_g1227312285_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1227312285_))))
        (let ((_g1227112295_ (lambda (_g1227312291_) ((lambda () '#f)))))
          (let ((_g1227012339_
                 (lambda (_g1227312298_)
                   (if (gx#stx-pair? _g1227312298_)
                       (let ((_e1227512300_ (gx#stx-e _g1227312298_)))
                         (let ((_hd1227612303_ (##car _e1227512300_))
                               (_tl1227712305_ (##cdr _e1227512300_)))
                           (if (gx#stx-pair? _hd1227612303_)
                               (let ((_e1227812308_ (gx#stx-e _hd1227612303_)))
                                 (let ((_hd1227912311_ (##car _e1227812308_))
                                       (_tl1228012313_ (##cdr _e1227812308_)))
                                   (if (gx#identifier? _hd1227912311_)
                                       (if (gx#stx-eq? '%#ref _hd1227912311_)
                                           (if (gx#stx-pair? _tl1228012313_)
                                               (let ((_e1228112316_
                                                      (gx#stx-e
                                                       _tl1228012313_)))
                                                 (let ((_hd1228212319_
                                                        (##car _e1228112316_))
                                                       (_tl1228312321_
                                                        (##cdr _e1228112316_)))
                                                   (if (gx#stx-null?
                                                        _tl1228312321_)
                                                       (if (gx#stx-null?
                                                            _tl1227712305_)
                                                           ((lambda (_L12324_)
                                                              (##structure
                                                               gxc#!struct-pred::t
                                                               (gxc#generate-runtime-binding-id
                                                                _L12324_)))
                                                            _hd1228212319_)
                                                           (_g1227112295_
                                                            _g1227312298_))
                                                       (_g1227112295_
                                                        _g1227312298_))))
                                               (_g1227112295_ _g1227312298_))
                                           (_g1227112295_ _g1227312298_))
                                       (_g1227112295_ _g1227312298_))))
                               (_g1227112295_ _g1227312298_))))
                       (_g1227112295_ _g1227312298_)))))
            (_g1227012339_ _args12269_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda (_stx12152_ _args12153_)
      (let ((_g1215612182_
             (lambda (_g1215712179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1215712179_))))
        (let ((_g1215512189_ (lambda (_g1215712185_) ((lambda () '#f)))))
          (let ((_g1215412265_
                 (lambda (_g1215712192_)
                   (if (gx#stx-pair? _g1215712192_)
                       (let ((_e1216012194_ (gx#stx-e _g1215712192_)))
                         (let ((_hd1216112197_ (##car _e1216012194_))
                               (_tl1216212199_ (##cdr _e1216012194_)))
                           (if (gx#stx-pair? _hd1216112197_)
                               (let ((_e1216312202_ (gx#stx-e _hd1216112197_)))
                                 (let ((_hd1216412205_ (##car _e1216312202_))
                                       (_tl1216512207_ (##cdr _e1216312202_)))
                                   (if (gx#identifier? _hd1216412205_)
                                       (if (gx#stx-eq? '%#ref _hd1216412205_)
                                           (if (gx#stx-pair? _tl1216512207_)
                                               (let ((_e1216612210_
                                                      (gx#stx-e
                                                       _tl1216512207_)))
                                                 (let ((_hd1216712213_
                                                        (##car _e1216612210_))
                                                       (_tl1216812215_
                                                        (##cdr _e1216612210_)))
                                                   (if (gx#stx-null?
                                                        _tl1216812215_)
                                                       (if (gx#stx-pair?
                                                            _tl1216212199_)
                                                           (let ((_e1216912218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1216212199_)))
                     (let ((_hd1217012221_ (##car _e1216912218_))
                           (_tl1217112223_ (##cdr _e1216912218_)))
                       (if (gx#stx-pair? _hd1217012221_)
                           (let ((_e1217212226_ (gx#stx-e _hd1217012221_)))
                             (let ((_hd1217312229_ (##car _e1217212226_))
                                   (_tl1217412231_ (##cdr _e1217212226_)))
                               (if (gx#identifier? _hd1217312229_)
                                   (if (gx#stx-eq? '%#quote _hd1217312229_)
                                       (if (gx#stx-pair? _tl1217412231_)
                                           (let ((_e1217512234_
                                                  (gx#stx-e _tl1217412231_)))
                                             (let ((_hd1217612237_
                                                    (##car _e1217512234_))
                                                   (_tl1217712239_
                                                    (##cdr _e1217512234_)))
                                               (if (gx#stx-null?
                                                    _tl1217712239_)
                                                   (if (gx#stx-null?
                                                        _tl1217112223_)
                                                       ((lambda (_L12242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12243_)
                  (##structure
                   gxc#!struct-getf::t
                   (gxc#generate-runtime-binding-id _L12243_)
                   (gx#stx-e _L12242_)))
                _hd1217612237_
                _hd1216712213_)
               (_g1215512189_ _g1215712192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1215512189_
                                                    _g1215712192_))))
                                           (_g1215512189_ _g1215712192_))
                                       (_g1215512189_ _g1215712192_))
                                   (_g1215512189_ _g1215712192_))))
                           (_g1215512189_ _g1215712192_))))
                   (_g1215512189_ _g1215712192_))
               (_g1215512189_ _g1215712192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1215512189_ _g1215712192_))
                                           (_g1215512189_ _g1215712192_))
                                       (_g1215512189_ _g1215712192_))))
                               (_g1215512189_ _g1215712192_))))
                       (_g1215512189_ _g1215712192_)))))
            (_g1215412265_ _args12153_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda (_stx12036_ _args12037_)
      (let ((_g1204012066_
             (lambda (_g1204112063_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1204112063_))))
        (let ((_g1203912073_ (lambda (_g1204112069_) ((lambda () '#f)))))
          (let ((_g1203812149_
                 (lambda (_g1204112076_)
                   (if (gx#stx-pair? _g1204112076_)
                       (let ((_e1204412078_ (gx#stx-e _g1204112076_)))
                         (let ((_hd1204512081_ (##car _e1204412078_))
                               (_tl1204612083_ (##cdr _e1204412078_)))
                           (if (gx#stx-pair? _hd1204512081_)
                               (let ((_e1204712086_ (gx#stx-e _hd1204512081_)))
                                 (let ((_hd1204812089_ (##car _e1204712086_))
                                       (_tl1204912091_ (##cdr _e1204712086_)))
                                   (if (gx#identifier? _hd1204812089_)
                                       (if (gx#stx-eq? '%#ref _hd1204812089_)
                                           (if (gx#stx-pair? _tl1204912091_)
                                               (let ((_e1205012094_
                                                      (gx#stx-e
                                                       _tl1204912091_)))
                                                 (let ((_hd1205112097_
                                                        (##car _e1205012094_))
                                                       (_tl1205212099_
                                                        (##cdr _e1205012094_)))
                                                   (if (gx#stx-null?
                                                        _tl1205212099_)
                                                       (if (gx#stx-pair?
                                                            _tl1204612083_)
                                                           (let ((_e1205312102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1204612083_)))
                     (let ((_hd1205412105_ (##car _e1205312102_))
                           (_tl1205512107_ (##cdr _e1205312102_)))
                       (if (gx#stx-pair? _hd1205412105_)
                           (let ((_e1205612110_ (gx#stx-e _hd1205412105_)))
                             (let ((_hd1205712113_ (##car _e1205612110_))
                                   (_tl1205812115_ (##cdr _e1205612110_)))
                               (if (gx#identifier? _hd1205712113_)
                                   (if (gx#stx-eq? '%#quote _hd1205712113_)
                                       (if (gx#stx-pair? _tl1205812115_)
                                           (let ((_e1205912118_
                                                  (gx#stx-e _tl1205812115_)))
                                             (let ((_hd1206012121_
                                                    (##car _e1205912118_))
                                                   (_tl1206112123_
                                                    (##cdr _e1205912118_)))
                                               (if (gx#stx-null?
                                                    _tl1206112123_)
                                                   (if (gx#stx-null?
                                                        _tl1205512107_)
                                                       ((lambda (_L12126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L12127_)
                  (##structure
                   gxc#!struct-setf::t
                   (gxc#generate-runtime-binding-id _L12127_)
                   (gx#stx-e _L12126_)))
                _hd1206012121_
                _hd1205112097_)
               (_g1203912073_ _g1204112076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1203912073_
                                                    _g1204112076_))))
                                           (_g1203912073_ _g1204112076_))
                                       (_g1203912073_ _g1204112076_))
                                   (_g1203912073_ _g1204112076_))))
                           (_g1203912073_ _g1204112076_))))
                   (_g1203912073_ _g1204112076_))
               (_g1203912073_ _g1204112076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1203912073_ _g1204112076_))
                                           (_g1203912073_ _g1204112076_))
                                       (_g1203912073_ _g1204112076_))))
                               (_g1203912073_ _g1204112076_))))
                       (_g1203912073_ _g1204112076_)))))
            (_g1203812149_ _args12037_))))))
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
    (lambda (_stx11985_)
      (let ((_g1198712000_
             (lambda (_g1198811997_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1198811997_))))
        (let ((_g1198612033_
               (lambda (_g1198812003_)
                 (if (gx#stx-pair? _g1198812003_)
                     (let ((_e1199012005_ (gx#stx-e _g1198812003_)))
                       (let ((_hd1199112008_ (##car _e1199012005_))
                             (_tl1199212010_ (##cdr _e1199012005_)))
                         (if (gx#stx-pair? _tl1199212010_)
                             (let ((_e1199312013_ (gx#stx-e _tl1199212010_)))
                               (let ((_hd1199412016_ (##car _e1199312013_))
                                     (_tl1199512018_ (##cdr _e1199312013_)))
                                 (if (gx#stx-null? _tl1199512018_)
                                     ((lambda (_L12021_)
                                        (gxc#optimizer-lookup-type
                                         (gxc#generate-runtime-binding-id
                                          _L12021_)))
                                      _hd1199412016_)
                                     (_g1198712000_ _g1198812003_))))
                             (_g1198712000_ _g1198812003_))))
                     (_g1198712000_ _g1198812003_)))))
          (_g1198612033_ _stx11985_)))))
  (define gxc#optimize-call%
    (lambda (_stx11891_)
      (let ((_g1189411914_
             (lambda (_g1189511911_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1189511911_))))
        (let ((_g1189311921_
               (lambda (_g1189511917_)
                 ((lambda () (gxc#xform-call% _stx11891_))))))
          (let ((_g1189211982_
                 (lambda (_g1189511924_)
                   (if (gx#stx-pair? _g1189511924_)
                       (let ((_e1189811926_ (gx#stx-e _g1189511924_)))
                         (let ((_hd1189911929_ (##car _e1189811926_))
                               (_tl1190011931_ (##cdr _e1189811926_)))
                           (if (gx#stx-pair? _tl1190011931_)
                               (let ((_e1190111934_ (gx#stx-e _tl1190011931_)))
                                 (let ((_hd1190211937_ (##car _e1190111934_))
                                       (_tl1190311939_ (##cdr _e1190111934_)))
                                   (if (gx#stx-pair? _hd1190211937_)
                                       (let ((_e1190411942_
                                              (gx#stx-e _hd1190211937_)))
                                         (let ((_hd1190511945_
                                                (##car _e1190411942_))
                                               (_tl1190611947_
                                                (##cdr _e1190411942_)))
                                           (if (gx#identifier? _hd1190511945_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1190511945_)
                                                   (if (gx#stx-pair?
                                                        _tl1190611947_)
                                                       (let ((_e1190711950_
                                                              (gx#stx-e
                                                               _tl1190611947_)))
                                                         (let ((_hd1190811953_
                                                                (##car _e1190711950_))
                                                               (_tl1190911955_
                                                                (##cdr _e1190711950_)))
                                                           (if (gx#stx-null?
                                                                _tl1190911955_)
                                                               ((lambda (_L11958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L11959_)
                          (let ((_rator-id11977_
                                 (gxc#generate-runtime-binding-id _L11959_)))
                            (let ((_rator-type11979_
                                   (gxc#optimizer-resolve-type
                                    _rator-id11977_)))
                              (let ()
                                (if (##structure-instance-of?
                                     _rator-type11979_
                                     'gxc#!procedure::t)
                                    (begin
                                      (gxc#verbose
                                       '"optimize-call "
                                       _rator-id11977_
                                       '" => "
                                       _rator-type11979_
                                       '" "
                                       (##structure-ref
                                        _rator-type11979_
                                        '1
                                        gxc#!type::t
                                        '#f))
                                      (call-method
                                       _rator-type11979_
                                       'optimize-call
                                       _stx11891_
                                       _L11958_))
                                    (if (not _rator-type11979_)
                                        (gxc#xform-call% _stx11891_)
                                        (gxc#raise-compile-error
                                         '"Illegal application; not a procedure"
                                         _stx11891_
                                         _rator-type11979_)))))))
                        _tl1190311939_
                        _hd1190811953_)
                       (_g1189311921_ _g1189511924_))))
               (_g1189311921_ _g1189511924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1189311921_
                                                    _g1189511924_))
                                               (_g1189311921_ _g1189511924_))))
                                       (_g1189311921_ _g1189511924_))))
                               (_g1189311921_ _g1189511924_))))
                       (_g1189311921_ _g1189511924_)))))
            (_g1189211982_ _stx11891_))))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self11746_ _stx11747_ _args11748_)
      (let ((_self1174911755_ _self11746_))
        (let ((_E1175111759_
               (lambda () (error '"No clause matching" _self1174911755_))))
          (let ((_K1175211883_
                 (lambda (_struct-t11762_)
                   (let ((_struct-type11764_
                          (gxc#optimizer-resolve-type _struct-t11762_)))
                     (let ((_struct-type1176511779_ _struct-type11764_))
                       (let ((_E1176911783_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1176511779_))))
                         (let ((_else1176811787_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11747_
                                   _struct-t11762_
                                   _struct-type11764_))))
                           (let ((_try-match1176711795_
                                  (lambda ()
                                    (let ((_K1177011792_
                                           (lambda ()
                                             (gxc#xform-call% _stx11747_))))
                                      (if (##eq? _struct-type1176511779_ '#f)
                                          (_K1177011792_)
                                          (_else1176811787_))))))
                             (let ((_K1177111858_
                                    (lambda (_plist11798_
                                             _struct-type-id11799_)
                                      (let ((_g1180211812_
                                             (lambda (_g1180311809_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1180311809_))))
                                        (let ((_g1180111819_
                                               (lambda (_g1180311815_)
                                                 ((lambda ()
                                                    (gxc#raise-compile-error
                                                     '"Illegal struct predicate application"
                                                     _stx11747_))))))
                                          (let ((_g1180011855_
                                                 (lambda (_g1180311822_)
                                                   (if (gx#stx-pair?
                                                        _g1180311822_)
                                                       (let ((_e1180511824_
                                                              (gx#stx-e
                                                               _g1180311822_)))
                                                         (let ((_hd1180611827_
                                                                (##car _e1180511824_))
                                                               (_tl1180711829_
                                                                (##cdr _e1180511824_)))
                                                           (if (gx#stx-null?
                                                                _tl1180711829_)
                                                               ((lambda (_L11832_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_expr11852_ (gxc#compile-e _L11832_))
                                (_op11853_
                                 (if (if _plist11798_
                                         (assgetq 'final: _plist11798_)
                                         '#f)
                                     '%#struct-direct-instance?
                                     '%#struct-instance?)))
                            (gxc#xform-wrap-source
                             (cons _op11853_
                                   (cons (cons '%#quote
                                               (cons _struct-type-id11799_
                                                     '()))
                                         (cons _expr11852_ '())))
                             _stx11747_)))
                        _hd1180611827_)
                       (_g1180111819_ _g1180311822_))))
               (_g1180111819_ _g1180311822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1180011855_ _args11748_)))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1176511779_)
                                   (let ((_e1177211861_
                                          (##vector-ref
                                           _struct-type1176511779_
                                           '1)))
                                     (let ((_struct-type-id11864_
                                            _e1177211861_))
                                       (let ((_e1177311866_
                                              (##vector-ref
                                               _struct-type1176511779_
                                               '2)))
                                         (let ((_e1177411869_
                                                (##vector-ref
                                                 _struct-type1176511779_
                                                 '3)))
                                           (let ((_e1177511872_
                                                  (##vector-ref
                                                   _struct-type1176511779_
                                                   '4)))
                                             (let ((_e1177611875_
                                                    (##vector-ref
                                                     _struct-type1176511779_
                                                     '5)))
                                               (let ((_e1177711878_
                                                      (##vector-ref
                                                       _struct-type1176511779_
                                                       '6)))
                                                 (let ((_plist11881_
                                                        _e1177711878_))
                                                   (_K1177111858_
                                                    _plist11881_
                                                    _struct-type-id11864_)))))))))
                                   (_try-match1176711795_)))))))))))
            (if (struct-instance? gxc#!struct-pred::t _self1174911755_)
                (let ((_e1175311886_ (##vector-ref _self1174911755_ '1)))
                  (let ((_struct-t11889_ _e1175311886_))
                    (_K1175211883_ _struct-t11889_)))
                (_E1175111759_)))))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self11642_ _stx11643_ _args11644_)
      (let ((_self1164511651_ _self11642_))
        (let ((_E1164711655_
               (lambda () (error '"No clause matching" _self1164511651_))))
          (let ((_K1164811738_
                 (lambda (_struct-t11658_)
                   (let ((_struct-type11660_
                          (gxc#optimizer-resolve-type _struct-t11658_)))
                     (let ((_struct-type1166111674_ _struct-type11660_))
                       (let ((_E1166511678_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1166111674_))))
                         (let ((_else1166411682_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct constructor application; not a struct type"
                                   _stx11643_
                                   _struct-t11658_
                                   _struct-type11660_))))
                           (let ((_try-match1166311690_
                                  (lambda ()
                                    (let ((_K1166611687_
                                           (lambda ()
                                             (begin
                                               (gxc#verbose
                                                '"cannot inline struct constructor; unknown struct type "
                                                _struct-t11658_)
                                               (gxc#xform-call% _stx11643_)))))
                                      (if (##eq? _struct-type1166111674_ '#f)
                                          (_K1166611687_)
                                          (_else1166411682_))))))
                             (let ((_K1166711712_
                                    (lambda (_ctor11693_
                                             _xfields11694_
                                             _fields11695_
                                             _type-id11696_)
                                      (let ((_args11698_
                                             (map gxc#compile-e _args11644_)))
                                        (let ((_$e11700_
                                               (if _ctor11693_
                                                   (if _xfields11694_
                                                       (gxc#!struct-type-lookup-method
                                                        _struct-type11660_
                                                        _ctor11693_)
                                                       '#f)
                                                   '#f)))
                                          (if _$e11700_
                                              ((lambda (_kons11703_)
                                                 (let ((_$obj11705_
                                                        (make-symbol
                                                         (gensym '__obj))))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _$obj11705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#call
                                                (cons (cons '%#ref
                                                            (cons 'make-object
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _struct-t11658_ '()))
                    (cons (cons '%#quote
                                (cons (fx+ _fields11695_ _xfields11694_) '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons (cons '%#begin
                                    (cons (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kons11703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _$obj11705_ '())) _args11698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx11643_))
                                          (cons (cons '%#ref
                                                      (cons _$obj11705_ '()))
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx11643_)))
                                               _$e11700_)
                                              (if (let ((_$e11707_
                                                         _ctor11693_))
                                                    (if _$e11707_
                                                        _$e11707_
                                                        (not _xfields11694_)))
                                                  (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'make-struct-instance '()))
                       (cons (cons '%#ref (cons _struct-t11658_ '()))
                             _args11698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx11643_)
                                                  (let ((_arity11710_
                                                         (fx+ _fields11695_
                                                              _xfields11694_)))
                                                    (if (fx= _arity11710_
                                                             (length _args11698_))
                                                        (gxc#xform-wrap-source
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '##structure '()))
                             (cons (cons '%#ref (cons _struct-t11658_ '()))
                                   _args11698_)))
                 _stx11643_)
                (gxc#raise-compile-error
                 '"Illegal struct constructor application; arity mismatch"
                 _stx11643_
                 _struct-t11658_
                 _arity11710_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1166111674_)
                                   (let ((_e1166811715_
                                          (##vector-ref
                                           _struct-type1166111674_
                                           '1)))
                                     (let ((_type-id11718_ _e1166811715_))
                                       (let ((_e1166911720_
                                              (##vector-ref
                                               _struct-type1166111674_
                                               '2)))
                                         (let ((_e1167011723_
                                                (##vector-ref
                                                 _struct-type1166111674_
                                                 '3)))
                                           (let ((_fields11726_ _e1167011723_))
                                             (let ((_e1167111728_
                                                    (##vector-ref
                                                     _struct-type1166111674_
                                                     '4)))
                                               (let ((_xfields11731_
                                                      _e1167111728_))
                                                 (let ((_e1167211733_
                                                        (##vector-ref
                                                         _struct-type1166111674_
                                                         '5)))
                                                   (let ((_ctor11736_
                                                          _e1167211733_))
                                                     (_K1166711712_
                                                      _ctor11736_
                                                      _xfields11731_
                                                      _fields11726_
                                                      _type-id11718_))))))))))
                                   (_try-match1166311690_)))))))))))
            (if (struct-instance? gxc#!struct-cons::t _self1164511651_)
                (let ((_e1164911741_ (##vector-ref _self1164511651_ '1)))
                  (let ((_struct-t11744_ _e1164911741_))
                    (_K1164811738_ _struct-t11744_)))
                (_E1164711655_)))))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self11495_ _stx11496_ _args11497_)
      (let ((_self1149811505_ _self11495_))
        (let ((_E1150011509_
               (lambda () (error '"No clause matching" _self1149811505_))))
          (let ((_K1150111629_
                 (lambda (_off11512_ _struct-t11513_)
                   (let ((_struct-type11515_
                          (gxc#optimizer-resolve-type _struct-t11513_)))
                     (let ((_struct-type1151611528_ _struct-type11515_))
                       (let ((_E1152011532_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1151611528_))))
                         (let ((_else1151911536_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11496_
                                   _struct-t11513_
                                   _struct-type11515_))))
                           (let ((_try-match1151811544_
                                  (lambda ()
                                    (let ((_K1152111541_
                                           (lambda ()
                                             (gxc#xform-call% _stx11496_))))
                                      (if (##eq? _struct-type1151611528_ '#f)
                                          (_K1152111541_)
                                          (_else1151911536_))))))
                             (let ((_K1152211608_
                                    (lambda (_xfields11547_
                                             _fields11548_
                                             _struct-type-id11549_)
                                      (if _xfields11547_
                                          (let ((_g1155211562_
                                                 (lambda (_g1155311559_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1155311559_))))
                                            (let ((_g1155111569_
                                                   (lambda (_g1155311565_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct accessor application"
                                                         _stx11496_))))))
                                              (let ((_g1155011605_
                                                     (lambda (_g1155311572_)
                                                       (if (gx#stx-pair?
                                                            _g1155311572_)
                                                           (let ((_e1155511574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1155311572_)))
                     (let ((_hd1155611577_ (##car _e1155511574_))
                           (_tl1155711579_ (##cdr _e1155511574_)))
                       (if (gx#stx-null? _tl1155711579_)
                           ((lambda (_L11582_)
                              (let ((_expr11602_ (gxc#compile-e _L11582_))
                                    (_off11603_
                                     (fx+ _off11512_ _xfields11547_ '1)))
                                (gxc#xform-wrap-source
                                 (cons '%#struct-ref
                                       (cons (cons '%#ref
                                                   (cons _struct-t11513_ '()))
                                             (cons (cons '%#quote
                                                         (cons _off11603_ '()))
                                                   (cons _expr11602_ '()))))
                                 _stx11496_)))
                            _hd1155611577_)
                           (_g1155111569_ _g1155311572_))))
                   (_g1155111569_ _g1155311572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1155011605_ _args11497_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-getf: incomplete struct "
                                             _struct-type-id11549_)
                                            (gxc#xform-call% _stx11496_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1151611528_)
                                   (let ((_e1152311611_
                                          (##vector-ref
                                           _struct-type1151611528_
                                           '1)))
                                     (let ((_struct-type-id11614_
                                            _e1152311611_))
                                       (let ((_e1152411616_
                                              (##vector-ref
                                               _struct-type1151611528_
                                               '2)))
                                         (let ((_e1152511619_
                                                (##vector-ref
                                                 _struct-type1151611528_
                                                 '3)))
                                           (let ((_fields11622_ _e1152511619_))
                                             (let ((_e1152611624_
                                                    (##vector-ref
                                                     _struct-type1151611528_
                                                     '4)))
                                               (let ((_xfields11627_
                                                      _e1152611624_))
                                                 (_K1152211608_
                                                  _xfields11627_
                                                  _fields11622_
                                                  _struct-type-id11614_))))))))
                                   (_try-match1151811544_)))))))))))
            (if (struct-instance? gxc#!struct-getf::t _self1149811505_)
                (let ((_e1150211632_ (##vector-ref _self1149811505_ '1)))
                  (let ((_struct-t11635_ _e1150211632_))
                    (let ((_e1150311637_ (##vector-ref _self1149811505_ '2)))
                      (let ((_off11640_ _e1150311637_))
                        (_K1150111629_ _off11640_ _struct-t11635_)))))
                (_E1150011509_)))))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self11331_ _stx11332_ _args11333_)
      (let ((_self1133411341_ _self11331_))
        (let ((_E1133611345_
               (lambda () (error '"No clause matching" _self1133411341_))))
          (let ((_K1133711482_
                 (lambda (_off11348_ _struct-t11349_)
                   (let ((_struct-type11351_
                          (gxc#optimizer-resolve-type _struct-t11349_)))
                     (let ((_struct-type1135211364_ _struct-type11351_))
                       (let ((_E1135611368_
                              (lambda ()
                                (error '"No clause matching"
                                       _struct-type1135211364_))))
                         (let ((_else1135511372_
                                (lambda ()
                                  (gxc#raise-compile-error
                                   '"Illegal struct predicate application; not a struct type"
                                   _stx11332_
                                   _struct-t11349_
                                   _struct-type11351_))))
                           (let ((_try-match1135411380_
                                  (lambda ()
                                    (let ((_K1135711377_
                                           (lambda ()
                                             (gxc#xform-call% _stx11332_))))
                                      (if (##eq? _struct-type1135211364_ '#f)
                                          (_K1135711377_)
                                          (_else1135511372_))))))
                             (let ((_K1135811461_
                                    (lambda (_xfields11383_
                                             _fields11384_
                                             _struct-type-id11385_)
                                      (if _xfields11383_
                                          (let ((_g1138811402_
                                                 (lambda (_g1138911399_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1138911399_))))
                                            (let ((_g1138711409_
                                                   (lambda (_g1138911405_)
                                                     ((lambda ()
                                                        (gxc#raise-compile-error
                                                         '"Illegal struct mutator application"
                                                         _stx11332_))))))
                                              (let ((_g1138611458_
                                                     (lambda (_g1138911412_)
                                                       (if (gx#stx-pair?
                                                            _g1138911412_)
                                                           (let ((_e1139211414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1138911412_)))
                     (let ((_hd1139311417_ (##car _e1139211414_))
                           (_tl1139411419_ (##cdr _e1139211414_)))
                       (if (gx#stx-pair? _tl1139411419_)
                           (let ((_e1139511422_ (gx#stx-e _tl1139411419_)))
                             (let ((_hd1139611425_ (##car _e1139511422_))
                                   (_tl1139711427_ (##cdr _e1139511422_)))
                               (if (gx#stx-null? _tl1139711427_)
                                   ((lambda (_L11430_ _L11431_)
                                      (let ((_expr11454_
                                             (gxc#compile-e _L11431_))
                                            (_val11455_
                                             (gxc#compile-e _L11430_))
                                            (_off11456_
                                             (fx+ _off11348_
                                                  _xfields11383_
                                                  '1)))
                                        (gxc#xform-wrap-source
                                         (cons '%#struct-set!
                                               (cons (cons '%#ref
                                                           (cons _struct-t11349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _off11456_ '()))
                   (cons _expr11454_ (cons _val11455_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx11332_)))
                                    _hd1139611425_
                                    _hd1139311417_)
                                   (_g1138711409_ _g1138911412_))))
                           (_g1138711409_ _g1138911412_))))
                   (_g1138711409_ _g1138911412_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1138611458_ _args11333_))))
                                          (begin
                                            (gxc#verbose
                                             '"struct-setf: incomplete struct "
                                             _struct-type-id11385_)
                                            (gxc#xform-call% _stx11332_))))))
                               (if (struct-instance?
                                    gxc#!struct-type::t
                                    _struct-type1135211364_)
                                   (let ((_e1135911464_
                                          (##vector-ref
                                           _struct-type1135211364_
                                           '1)))
                                     (let ((_struct-type-id11467_
                                            _e1135911464_))
                                       (let ((_e1136011469_
                                              (##vector-ref
                                               _struct-type1135211364_
                                               '2)))
                                         (let ((_e1136111472_
                                                (##vector-ref
                                                 _struct-type1135211364_
                                                 '3)))
                                           (let ((_fields11475_ _e1136111472_))
                                             (let ((_e1136211477_
                                                    (##vector-ref
                                                     _struct-type1135211364_
                                                     '4)))
                                               (let ((_xfields11480_
                                                      _e1136211477_))
                                                 (_K1135811461_
                                                  _xfields11480_
                                                  _fields11475_
                                                  _struct-type-id11467_))))))))
                                   (_try-match1135411380_)))))))))))
            (if (struct-instance? gxc#!struct-setf::t _self1133411341_)
                (let ((_e1133811485_ (##vector-ref _self1133411341_ '1)))
                  (let ((_struct-t11488_ _e1133811485_))
                    (let ((_e1133911490_ (##vector-ref _self1133411341_ '2)))
                      (let ((_off11493_ _e1133911490_))
                        (_K1133711482_ _off11493_ _struct-t11488_)))))
                (_E1133611345_)))))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self11287_ _stx11288_ _args11289_)
      (let ((_self1129011299_ _self11287_))
        (let ((_E1129211303_
               (lambda () (error '"No clause matching" _self1129011299_))))
          (let ((_K1129311310_
                 (lambda (_inline11306_ _dispatch11307_ _arity11308_)
                   (begin
                     (if (gxc#!lambda-arity-match? _self11287_ _args11289_)
                         '#!void
                         (gxc#raise-compile-error
                          '"Illegal lambda application; arity mismatch"
                          _stx11288_
                          _arity11308_))
                     (if _inline11306_
                         (begin
                           (gxc#verbose '"inline lambda")
                           (gxc#compile-e
                            (gxc#xform-wrap-source
                             (_inline11306_ _stx11288_)
                             _stx11288_)))
                         (if _dispatch11307_
                             (begin
                               (gxc#verbose
                                '"dispatch lambda => "
                                _dispatch11307_)
                               (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _dispatch11307_ '()))
                                             _args11289_))
                                 _stx11288_)))
                             (gxc#xform-call% _stx11288_)))))))
            (if (struct-instance? gxc#!lambda::t _self1129011299_)
                (let ((_e1129411313_ (##vector-ref _self1129011299_ '1)))
                  (let ((_e1129511316_ (##vector-ref _self1129011299_ '2)))
                    (let ((_arity11319_ _e1129511316_))
                      (let ((_e1129611321_ (##vector-ref _self1129011299_ '3)))
                        (let ((_dispatch11324_ _e1129611321_))
                          (let ((_e1129711326_
                                 (##vector-ref _self1129011299_ '4)))
                            (let ((_inline11329_ _e1129711326_))
                              (_K1129311310_
                               _inline11329_
                               _dispatch11324_
                               _arity11319_))))))))
                (_E1129211303_)))))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self11247_ _stx11248_ _args11249_)
      (let ((_self1125011257_ _self11247_))
        (let ((_E1125211261_
               (lambda () (error '"No clause matching" _self1125011257_))))
          (let ((_K1125311276_
                 (lambda (_clauses11264_)
                   (let ((_$e11270_
                          (find (lambda (_g1126511267_)
                                  (gxc#!lambda-arity-match?
                                   _g1126511267_
                                   _args11249_))
                                _clauses11264_)))
                     (if _$e11270_
                         ((lambda (_clause11273_)
                            (call-method
                             _clause11273_
                             'optimize-call
                             _stx11248_
                             _args11249_))
                          _$e11270_)
                         (gxc#raise-compile-error
                          '"Illegal case-lambda application; arity mismatch"
                          _stx11248_
                          (map (lambda ()
                                 (##structure-ref
                                  _clauses11264_
                                  '2
                                  gxc#!lambda::t
                                  '#f))
                               _clauses11264_)))))))
            (if (struct-instance? gxc#!case-lambda::t _self1125011257_)
                (let ((_e1125411279_ (##vector-ref _self1125011257_ '1)))
                  (let ((_e1125511282_ (##vector-ref _self1125011257_ '2)))
                    (let ((_clauses11285_ _e1125511282_))
                      (_K1125311276_ _clauses11285_))))
                (_E1125211261_)))))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self11183_ _args11184_)
      (let ((_self1118511192_ _self11183_))
        (let ((_E1118711196_
               (lambda () (error '"No clause matching" _self1118511192_))))
          (let ((_K1118811236_
                 (lambda (_arity11199_)
                   (let ((_arity1120011209_ _arity11199_))
                     (let ((_E1120311213_
                            (lambda ()
                              (error '"No clause matching"
                                     _arity1120011209_))))
                       (let ((_try-match1120211229_
                              (lambda ()
                                (let ((_K1120411219_
                                       (lambda (_arity11217_)
                                         (fx>= (length _args11184_)
                                               _arity11217_))))
                                  (if (##pair? _arity1120011209_)
                                      (let ((_hd1120511222_
                                             (##car _arity1120011209_))
                                            (_tl1120611224_
                                             (##cdr _arity1120011209_)))
                                        (let ((_arity11227_ _hd1120511222_))
                                          (if (##null? _tl1120611224_)
                                              (_K1120411219_ _arity11227_)
                                              (_E1120311213_))))
                                      (_E1120311213_))))))
                         (let ((_K1120711233_
                                (lambda ()
                                  (fx= (length _args11184_) _arity11199_))))
                           (if (fixnum? _arity1120011209_)
                               (_K1120711233_)
                               (_try-match1120211229_)))))))))
            (if (struct-instance? gxc#!lambda::t _self1118511192_)
                (let ((_e1118911239_ (##vector-ref _self1118511192_ '1)))
                  (let ((_e1119011242_ (##vector-ref _self1118511192_ '2)))
                    (let ((_arity11245_ _e1119011242_))
                      (_K1118811236_ _arity11245_))))
                (_E1118711196_)))))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx11123_)
      (let ((_g1112511139_
             (lambda (_g1112611136_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1112611136_))))
        (let ((_g1112411180_
               (lambda (_g1112611142_)
                 (if (gx#stx-pair? _g1112611142_)
                     (let ((_e1112911144_ (gx#stx-e _g1112611142_)))
                       (let ((_hd1113011147_ (##car _e1112911144_))
                             (_tl1113111149_ (##cdr _e1112911144_)))
                         (if (gx#stx-pair? _tl1113111149_)
                             (let ((_e1113211152_ (gx#stx-e _tl1113111149_)))
                               (let ((_hd1113311155_ (##car _e1113211152_))
                                     (_tl1113411157_ (##cdr _e1113211152_)))
                                 ((lambda (_L11160_ _L11161_)
                                    (let ((_ctx11174_
                                           (gx#syntax-local-e__0 _L11161_)))
                                      (let ((_code11176_
                                             (##structure-ref
                                              _ctx11174_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                        (let ()
                                          (call-with-parameters
                                           (lambda ()
                                             (gxc#compile-e _code11176_))
                                           gx#current-expander-context
                                           _ctx11174_)))))
                                  _tl1113411157_
                                  _hd1113311155_)))
                             (_g1112511139_ _g1112611142_))))
                     (_g1112511139_ _g1112611142_)))))
          (_g1112411180_ _stx11123_)))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx10933_)
      (let ((_generate-e10935_
             (lambda (_id11112_)
               (let ((_sym11114_
                      (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                          (gxc#generate-runtime-binding-id _id11112_)
                          '#f)))
                 (let ((_$e11116_
                        (if _sym11114_
                            (gxc#optimizer-lookup-type _sym11114_)
                            '#f)))
                   (if _$e11116_
                       ((lambda (_type11119_)
                          (begin
                            (gxc#verbose '"generate typedecl " _sym11114_)
                            (let ((_typedecl11121_
                                   (call-method _type11119_ 'typedecl)))
                              (cons 'declare-type
                                    (cons _sym11114_
                                          (cons _typedecl11121_ '()))))))
                        _$e11116_)
                       '(begin)))))))
        (let ((_g1093810976_
               (lambda (_g1093910973_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1093910973_))))
          (let ((_g1093711057_
                 (lambda (_g1093910979_)
                   (if (gx#stx-pair? _g1093910979_)
                       (let ((_e1095410981_ (gx#stx-e _g1093910979_)))
                         (let ((_hd1095510984_ (##car _e1095410981_))
                               (_tl1095610986_ (##cdr _e1095410981_)))
                           (if (gx#stx-pair? _tl1095610986_)
                               (let ((_e1095710989_ (gx#stx-e _tl1095610986_)))
                                 (let ((_hd1095810992_ (##car _e1095710989_))
                                       (_tl1095910994_ (##cdr _e1095710989_)))
                                   (if (gx#stx-pair/null? _hd1095810992_)
                                       (if (fx>= (gx#stx-length _hd1095810992_)
                                                 '0)
                                           (let ((_g19286_
                                                  (gx#syntax-split-splice
                                                   _hd1095810992_
                                                   '0)))
                                             (begin
                                               (let ((_g19287_
                                                      (values-count _g19286_)))
                                                 (if (not (fx= _g19287_ 2))
                                                     (error "Context expects 2 values"
                                                            _g19287_)))
                                               (let ((_target1096010997_
                                                      (values-ref _g19286_ 0))
                                                     (_tl1096210999_
                                                      (values-ref _g19286_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl1096210999_)
                                                     (letrec ((_loop1096311002_
                                                               (lambda (_hd1096111005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _id1096711007_)
                         (if (gx#stx-pair? _hd1096111005_)
                             (let ((_e1096411010_ (gx#stx-e _hd1096111005_)))
                               (let ((_lp-hd1096511013_ (##car _e1096411010_))
                                     (_lp-tl1096611015_ (##cdr _e1096411010_)))
                                 (_loop1096311002_
                                  _lp-tl1096611015_
                                  (cons _lp-hd1096511013_ _id1096711007_))))
                             (let ((_id1096811018_ (reverse _id1096711007_)))
                               (if (gx#stx-pair? _tl1095910994_)
                                   (let ((_e1096911021_
                                          (gx#stx-e _tl1095910994_)))
                                     (let ((_hd1097011024_
                                            (##car _e1096911021_))
                                           (_tl1097111026_
                                            (##cdr _e1096911021_)))
                                       (if (gx#stx-null? _tl1097111026_)
                                           ((lambda (_L11029_)
                                              (let ((_types11055_
                                                     (map _generate-e10935_
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1104711050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1104811052_)
                              (cons _g1104711050_ _g1104811052_))
                            '()
                            _L11029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons 'begin _types11055_)))
                                            _id1096811018_)
                                           (_g1093810976_ _g1093910979_))))
                                   (_g1093810976_ _g1093910979_)))))))
               (_loop1096311002_ _target1096010997_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1093810976_
                                                      _g1093910979_)))))
                                           (_g1093810976_ _g1093910979_))
                                       (_g1093810976_ _g1093910979_))))
                               (_g1093810976_ _g1093910979_))))
                       (_g1093810976_ _g1093910979_)))))
            (let ((_g1093611109_
                   (lambda (_g1093911060_)
                     (if (gx#stx-pair? _g1093911060_)
                         (let ((_e1094111062_ (gx#stx-e _g1093911060_)))
                           (let ((_hd1094211065_ (##car _e1094111062_))
                                 (_tl1094311067_ (##cdr _e1094111062_)))
                             (if (gx#stx-pair? _tl1094311067_)
                                 (let ((_e1094411070_
                                        (gx#stx-e _tl1094311067_)))
                                   (let ((_hd1094511073_ (##car _e1094411070_))
                                         (_tl1094611075_
                                          (##cdr _e1094411070_)))
                                     (if (gx#stx-pair? _hd1094511073_)
                                         (let ((_e1094711078_
                                                (gx#stx-e _hd1094511073_)))
                                           (let ((_hd1094811081_
                                                  (##car _e1094711078_))
                                                 (_tl1094911083_
                                                  (##cdr _e1094711078_)))
                                             (if (gx#stx-null? _tl1094911083_)
                                                 (if (gx#stx-pair?
                                                      _tl1094611075_)
                                                     (let ((_e1095011086_
                                                            (gx#stx-e
                                                             _tl1094611075_)))
                                                       (let ((_hd1095111089_
                                                              (##car _e1095011086_))
                                                             (_tl1095211091_
                                                              (##cdr _e1095011086_)))
                                                         (if (gx#stx-null?
                                                              _tl1095211091_)
                                                             ((lambda (_L11094_)
                                                                (_generate-e10935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11094_))
                      _hd1094811081_)
                     (_g1093711057_ _g1093911060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1093711057_
                                                      _g1093911060_))
                                                 (_g1093711057_
                                                  _g1093911060_))))
                                         (_g1093711057_ _g1093911060_))))
                                 (_g1093711057_ _g1093911060_))))
                         (_g1093711057_ _g1093911060_)))))
              (_g1093611109_ _stx10933_)))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx10487_)
      (let ((_g1049110593_
             (lambda (_g1049210590_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1049210590_))))
        (let ((_g1049010600_ (lambda (_g1049210596_) ((lambda () '(begin))))))
          (let ((_g1048910750_
                 (lambda (_g1049210603_)
                   (if (gx#stx-pair? _g1049210603_)
                       (let ((_e1055010605_ (gx#stx-e _g1049210603_)))
                         (let ((_hd1055110608_ (##car _e1055010605_))
                               (_tl1055210610_ (##cdr _e1055010605_)))
                           (if (gx#stx-pair? _tl1055210610_)
                               (let ((_e1055310613_ (gx#stx-e _tl1055210610_)))
                                 (let ((_hd1055410616_ (##car _e1055310613_))
                                       (_tl1055510618_ (##cdr _e1055310613_)))
                                   (if (gx#stx-pair? _hd1055410616_)
                                       (let ((_e1055610621_
                                              (gx#stx-e _hd1055410616_)))
                                         (let ((_hd1055710624_
                                                (##car _e1055610621_))
                                               (_tl1055810626_
                                                (##cdr _e1055610621_)))
                                           (if (gx#identifier? _hd1055710624_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1055710624_)
                                                   (if (gx#stx-pair?
                                                        _tl1055810626_)
                                                       (let ((_e1055910629_
                                                              (gx#stx-e
                                                               _tl1055810626_)))
                                                         (let ((_hd1056010632_
                                                                (##car _e1055910629_))
                                                               (_tl1056110634_
                                                                (##cdr _e1055910629_)))
                                                           (if (gx#stx-null?
                                                                _tl1056110634_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1055510618_)
                           (let ((_e1056210637_ (gx#stx-e _tl1055510618_)))
                             (let ((_hd1056310640_ (##car _e1056210637_))
                                   (_tl1056410642_ (##cdr _e1056210637_)))
                               (if (gx#stx-pair? _hd1056310640_)
                                   (let ((_e1056510645_
                                          (gx#stx-e _hd1056310640_)))
                                     (let ((_hd1056610648_
                                            (##car _e1056510645_))
                                           (_tl1056710650_
                                            (##cdr _e1056510645_)))
                                       (if (gx#identifier? _hd1056610648_)
                                           (if (gx#stx-eq?
                                                '%#ref
                                                _hd1056610648_)
                                               (if (gx#stx-pair?
                                                    _tl1056710650_)
                                                   (let ((_e1056810653_
                                                          (gx#stx-e
                                                           _tl1056710650_)))
                                                     (let ((_hd1056910656_
                                                            (##car _e1056810653_))
                                                           (_tl1057010658_
                                                            (##cdr _e1056810653_)))
                                                       (if (gx#stx-null?
                                                            _tl1057010658_)
                                                           (if (gx#stx-pair?
                                                                _tl1056410642_)
                                                               (let ((_e1057110661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl1056410642_)))
                         (let ((_hd1057210664_ (##car _e1057110661_))
                               (_tl1057310666_ (##cdr _e1057110661_)))
                           (if (gx#stx-pair? _hd1057210664_)
                               (let ((_e1057410669_ (gx#stx-e _hd1057210664_)))
                                 (let ((_hd1057510672_ (##car _e1057410669_))
                                       (_tl1057610674_ (##cdr _e1057410669_)))
                                   (if (gx#identifier? _hd1057510672_)
                                       (if (gx#stx-eq? '%#quote _hd1057510672_)
                                           (if (gx#stx-pair? _tl1057610674_)
                                               (let ((_e1057710677_
                                                      (gx#stx-e
                                                       _tl1057610674_)))
                                                 (let ((_hd1057810680_
                                                        (##car _e1057710677_))
                                                       (_tl1057910682_
                                                        (##cdr _e1057710677_)))
                                                   (if (gx#stx-null?
                                                        _tl1057910682_)
                                                       (if (gx#stx-pair?
                                                            _tl1057310666_)
                                                           (let ((_e1058010685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1057310666_)))
                     (let ((_hd1058110688_ (##car _e1058010685_))
                           (_tl1058210690_ (##cdr _e1058010685_)))
                       (if (gx#stx-pair? _hd1058110688_)
                           (let ((_e1058310693_ (gx#stx-e _hd1058110688_)))
                             (let ((_hd1058410696_ (##car _e1058310693_))
                                   (_tl1058510698_ (##cdr _e1058310693_)))
                               (if (gx#identifier? _hd1058410696_)
                                   (if (gx#stx-eq? '%#ref _hd1058410696_)
                                       (if (gx#stx-pair? _tl1058510698_)
                                           (let ((_e1058610701_
                                                  (gx#stx-e _tl1058510698_)))
                                             (let ((_hd1058710704_
                                                    (##car _e1058610701_))
                                                   (_tl1058810706_
                                                    (##cdr _e1058610701_)))
                                               (if (gx#stx-null?
                                                    _tl1058810706_)
                                                   (if (gx#stx-null?
                                                        _tl1058210690_)
                                                       ((lambda (_L10709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L10710_
                         _L10711_
                         _L10712_)
                  (if (eq? (gxc#generate-runtime-binding-id
                            (gx#datum->syntax__0 '#f '-bind-method))
                           'bind-method!)
                      (cons 'declare-method
                            (cons (gxc#generate-runtime-binding-id _L10711_)
                                  (cons (gx#stx-e _L10710_)
                                        (cons (gxc#generate-runtime-binding-id
                                               _L10709_)
                                              (cons '#f '())))))
                      (_g1049010600_ _g1049210603_)))
                _hd1058710704_
                _hd1057810680_
                _hd1056910656_
                _hd1056010632_)
               (_g1049010600_ _g1049210603_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049010600_
                                                    _g1049210603_))))
                                           (_g1049010600_ _g1049210603_))
                                       (_g1049010600_ _g1049210603_))
                                   (_g1049010600_ _g1049210603_))))
                           (_g1049010600_ _g1049210603_))))
                   (_g1049010600_ _g1049210603_))
               (_g1049010600_ _g1049210603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1049010600_ _g1049210603_))
                                           (_g1049010600_ _g1049210603_))
                                       (_g1049010600_ _g1049210603_))))
                               (_g1049010600_ _g1049210603_))))
                       (_g1049010600_ _g1049210603_))
                   (_g1049010600_ _g1049210603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049010600_
                                                    _g1049210603_))
                                               (_g1049010600_ _g1049210603_))
                                           (_g1049010600_ _g1049210603_))))
                                   (_g1049010600_ _g1049210603_))))
                           (_g1049010600_ _g1049210603_))
                       (_g1049010600_ _g1049210603_))))
               (_g1049010600_ _g1049210603_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1049010600_
                                                    _g1049210603_))
                                               (_g1049010600_ _g1049210603_))))
                                       (_g1049010600_ _g1049210603_))))
                               (_g1049010600_ _g1049210603_))))
                       (_g1049010600_ _g1049210603_)))))
            (let ((_g1048810930_
                   (lambda (_g1049210753_)
                     (if (gx#stx-pair? _g1049210753_)
                         (let ((_e1049810755_ (gx#stx-e _g1049210753_)))
                           (let ((_hd1049910758_ (##car _e1049810755_))
                                 (_tl1050010760_ (##cdr _e1049810755_)))
                             (if (gx#stx-pair? _tl1050010760_)
                                 (let ((_e1050110763_
                                        (gx#stx-e _tl1050010760_)))
                                   (let ((_hd1050210766_ (##car _e1050110763_))
                                         (_tl1050310768_
                                          (##cdr _e1050110763_)))
                                     (if (gx#stx-pair? _hd1050210766_)
                                         (let ((_e1050410771_
                                                (gx#stx-e _hd1050210766_)))
                                           (let ((_hd1050510774_
                                                  (##car _e1050410771_))
                                                 (_tl1050610776_
                                                  (##cdr _e1050410771_)))
                                             (if (gx#identifier?
                                                  _hd1050510774_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd1050510774_)
                                                     (if (gx#stx-pair?
                                                          _tl1050610776_)
                                                         (let ((_e1050710779_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1050610776_)))
                   (let ((_hd1050810782_ (##car _e1050710779_))
                         (_tl1050910784_ (##cdr _e1050710779_)))
                     (if (gx#stx-null? _tl1050910784_)
                         (if (gx#stx-pair? _tl1050310768_)
                             (let ((_e1051010787_ (gx#stx-e _tl1050310768_)))
                               (let ((_hd1051110790_ (##car _e1051010787_))
                                     (_tl1051210792_ (##cdr _e1051010787_)))
                                 (if (gx#stx-pair? _hd1051110790_)
                                     (let ((_e1051310795_
                                            (gx#stx-e _hd1051110790_)))
                                       (let ((_hd1051410798_
                                              (##car _e1051310795_))
                                             (_tl1051510800_
                                              (##cdr _e1051310795_)))
                                         (if (gx#identifier? _hd1051410798_)
                                             (if (gx#stx-eq?
                                                  '%#ref
                                                  _hd1051410798_)
                                                 (if (gx#stx-pair?
                                                      _tl1051510800_)
                                                     (let ((_e1051610803_
                                                            (gx#stx-e
                                                             _tl1051510800_)))
                                                       (let ((_hd1051710806_
                                                              (##car _e1051610803_))
                                                             (_tl1051810808_
                                                              (##cdr _e1051610803_)))
                                                         (if (gx#stx-null?
                                                              _tl1051810808_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1051210792_)
                         (let ((_e1051910811_ (gx#stx-e _tl1051210792_)))
                           (let ((_hd1052010814_ (##car _e1051910811_))
                                 (_tl1052110816_ (##cdr _e1051910811_)))
                             (if (gx#stx-pair? _hd1052010814_)
                                 (let ((_e1052210819_
                                        (gx#stx-e _hd1052010814_)))
                                   (let ((_hd1052310822_ (##car _e1052210819_))
                                         (_tl1052410824_
                                          (##cdr _e1052210819_)))
                                     (if (gx#identifier? _hd1052310822_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd1052310822_)
                                             (if (gx#stx-pair? _tl1052410824_)
                                                 (let ((_e1052510827_
                                                        (gx#stx-e
                                                         _tl1052410824_)))
                                                   (let ((_hd1052610830_
                                                          (##car _e1052510827_))
                                                         (_tl1052710832_
                                                          (##cdr _e1052510827_)))
                                                     (if (gx#stx-null?
                                                          _tl1052710832_)
                                                         (if (gx#stx-pair?
                                                              _tl1052110816_)
                                                             (let ((_e1052810835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1052110816_)))
                       (let ((_hd1052910838_ (##car _e1052810835_))
                             (_tl1053010840_ (##cdr _e1052810835_)))
                         (if (gx#stx-pair? _hd1052910838_)
                             (let ((_e1053110843_ (gx#stx-e _hd1052910838_)))
                               (let ((_hd1053210846_ (##car _e1053110843_))
                                     (_tl1053310848_ (##cdr _e1053110843_)))
                                 (if (gx#identifier? _hd1053210846_)
                                     (if (gx#stx-eq? '%#ref _hd1053210846_)
                                         (if (gx#stx-pair? _tl1053310848_)
                                             (let ((_e1053410851_
                                                    (gx#stx-e _tl1053310848_)))
                                               (let ((_hd1053510854_
                                                      (##car _e1053410851_))
                                                     (_tl1053610856_
                                                      (##cdr _e1053410851_)))
                                                 (if (gx#stx-null?
                                                      _tl1053610856_)
                                                     (if (gx#stx-pair?
                                                          _tl1053010840_)
                                                         (let ((_e1053710859_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1053010840_)))
                   (let ((_hd1053810862_ (##car _e1053710859_))
                         (_tl1053910864_ (##cdr _e1053710859_)))
                     (if (gx#stx-pair? _hd1053810862_)
                         (let ((_e1054010867_ (gx#stx-e _hd1053810862_)))
                           (let ((_hd1054110870_ (##car _e1054010867_))
                                 (_tl1054210872_ (##cdr _e1054010867_)))
                             (if (gx#identifier? _hd1054110870_)
                                 (if (gx#stx-eq? '%#quote _hd1054110870_)
                                     (if (gx#stx-pair? _tl1054210872_)
                                         (let ((_e1054310875_
                                                (gx#stx-e _tl1054210872_)))
                                           (let ((_hd1054410878_
                                                  (##car _e1054310875_))
                                                 (_tl1054510880_
                                                  (##cdr _e1054310875_)))
                                             (if (gx#stx-null? _tl1054510880_)
                                                 (if (gx#stx-null?
                                                      _tl1053910864_)
                                                     ((lambda (_L10883_
                                                               _L10884_
                                                               _L10885_
                                                               _L10886_
                                                               _L10887_)
                                                        (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10887_)
                         'bind-method!)
                    (cons 'declare-method
                          (cons (gxc#generate-runtime-binding-id _L10886_)
                                (cons (gx#stx-e _L10885_)
                                      (cons (gxc#generate-runtime-binding-id
                                             _L10884_)
                                            (cons (gx#stx-e _L10883_) '())))))
                    (_g1048910750_ _g1049210753_)))
              _hd1054410878_
              _hd1053510854_
              _hd1052610830_
              _hd1051710806_
              _hd1050810782_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1048910750_
                                                      _g1049210753_))
                                                 (_g1048910750_
                                                  _g1049210753_))))
                                         (_g1048910750_ _g1049210753_))
                                     (_g1048910750_ _g1049210753_))
                                 (_g1048910750_ _g1049210753_))))
                         (_g1048910750_ _g1049210753_))))
                 (_g1048910750_ _g1049210753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1048910750_
                                                      _g1049210753_))))
                                             (_g1048910750_ _g1049210753_))
                                         (_g1048910750_ _g1049210753_))
                                     (_g1048910750_ _g1049210753_))))
                             (_g1048910750_ _g1049210753_))))
                     (_g1048910750_ _g1049210753_))
                 (_g1048910750_ _g1049210753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1048910750_ _g1049210753_))
                                             (_g1048910750_ _g1049210753_))
                                         (_g1048910750_ _g1049210753_))))
                                 (_g1048910750_ _g1049210753_))))
                         (_g1048910750_ _g1049210753_))
                     (_g1048910750_ _g1049210753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1048910750_
                                                      _g1049210753_))
                                                 (_g1048910750_ _g1049210753_))
                                             (_g1048910750_ _g1049210753_))))
                                     (_g1048910750_ _g1049210753_))))
                             (_g1048910750_ _g1049210753_))
                         (_g1048910750_ _g1049210753_))))
                 (_g1048910750_ _g1049210753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1048910750_
                                                      _g1049210753_))
                                                 (_g1048910750_
                                                  _g1049210753_))))
                                         (_g1048910750_ _g1049210753_))))
                                 (_g1048910750_ _g1049210753_))))
                         (_g1048910750_ _g1049210753_)))))
              (_g1048810930_ _stx10487_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self10463_)
      (let ((_self1046410470_ _self10463_))
        (let ((_E1046610474_
               (lambda () (error '"No clause matching" _self1046410470_))))
          (let ((_K1046710479_
                 (lambda (_alias-id10477_)
                   (cons '@alias (cons _alias-id10477_ '())))))
            (if (struct-instance? gxc#!alias::t _self1046410470_)
                (let ((_e1046810482_ (##vector-ref _self1046410470_ '1)))
                  (let ((_alias-id10485_ _e1046810482_))
                    (_K1046710479_ _alias-id10485_)))
                (_E1046610474_)))))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self10407_)
      (let ((_self1040810419_ _self10407_))
        (let ((_E1041010423_
               (lambda () (error '"No clause matching" _self1040810419_))))
          (let ((_K1041110432_
                 (lambda (_plist10426_
                          _ctor10427_
                          _fields10428_
                          _super10429_
                          _type-id10430_)
                   (cons '@struct-type
                         (cons _type-id10430_
                               (cons _super10429_
                                     (cons _fields10428_
                                           (cons _ctor10427_
                                                 (cons _plist10426_
                                                       '())))))))))
            (if (struct-instance? gxc#!struct-type::t _self1040810419_)
                (let ((_e1041210435_ (##vector-ref _self1040810419_ '1)))
                  (let ((_type-id10438_ _e1041210435_))
                    (let ((_e1041310440_ (##vector-ref _self1040810419_ '2)))
                      (let ((_super10443_ _e1041310440_))
                        (let ((_e1041410445_
                               (##vector-ref _self1040810419_ '3)))
                          (let ((_fields10448_ _e1041410445_))
                            (let ((_e1041510450_
                                   (##vector-ref _self1040810419_ '4)))
                              (let ((_e1041610453_
                                     (##vector-ref _self1040810419_ '5)))
                                (let ((_ctor10456_ _e1041610453_))
                                  (let ((_e1041710458_
                                         (##vector-ref _self1040810419_ '6)))
                                    (let ((_plist10461_ _e1041710458_))
                                      (_K1041110432_
                                       _plist10461_
                                       _ctor10456_
                                       _fields10448_
                                       _super10443_
                                       _type-id10438_))))))))))))
                (_E1041010423_)))))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self10383_)
      (let ((_self1038410390_ _self10383_))
        (let ((_E1038610394_
               (lambda () (error '"No clause matching" _self1038410390_))))
          (let ((_K1038710399_
                 (lambda (_struct-t10397_)
                   (cons '@struct-pred (cons _struct-t10397_ '())))))
            (if (struct-instance? gxc#!struct-pred::t _self1038410390_)
                (let ((_e1038810402_ (##vector-ref _self1038410390_ '1)))
                  (let ((_struct-t10405_ _e1038810402_))
                    (_K1038710399_ _struct-t10405_)))
                (_E1038610394_)))))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self10359_)
      (let ((_self1036010366_ _self10359_))
        (let ((_E1036210370_
               (lambda () (error '"No clause matching" _self1036010366_))))
          (let ((_K1036310375_
                 (lambda (_struct-t10373_)
                   (cons '@struct-cons (cons _struct-t10373_ '())))))
            (if (struct-instance? gxc#!struct-cons::t _self1036010366_)
                (let ((_e1036410378_ (##vector-ref _self1036010366_ '1)))
                  (let ((_struct-t10381_ _e1036410378_))
                    (_K1036310375_ _struct-t10381_)))
                (_E1036210370_)))))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self10328_)
      (let ((_self1032910336_ _self10328_))
        (let ((_E1033110340_
               (lambda () (error '"No clause matching" _self1032910336_))))
          (let ((_K1033210346_
                 (lambda (_off10343_ _struct-t10344_)
                   (cons '@struct-getf
                         (cons _struct-t10344_ (cons _off10343_ '()))))))
            (if (struct-instance? gxc#!struct-getf::t _self1032910336_)
                (let ((_e1033310349_ (##vector-ref _self1032910336_ '1)))
                  (let ((_struct-t10352_ _e1033310349_))
                    (let ((_e1033410354_ (##vector-ref _self1032910336_ '2)))
                      (let ((_off10357_ _e1033410354_))
                        (_K1033210346_ _off10357_ _struct-t10352_)))))
                (_E1033110340_)))))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self10297_)
      (let ((_self1029810305_ _self10297_))
        (let ((_E1030010309_
               (lambda () (error '"No clause matching" _self1029810305_))))
          (let ((_K1030110315_
                 (lambda (_off10312_ _struct-t10313_)
                   (cons '@struct-setf
                         (cons _struct-t10313_ (cons _off10312_ '()))))))
            (if (struct-instance? gxc#!struct-setf::t _self1029810305_)
                (let ((_e1030210318_ (##vector-ref _self1029810305_ '1)))
                  (let ((_struct-t10321_ _e1030210318_))
                    (let ((_e1030310323_ (##vector-ref _self1029810305_ '2)))
                      (let ((_off10326_ _e1030310323_))
                        (_K1030110315_ _off10326_ _struct-t10321_)))))
                (_E1030010309_)))))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self10245_)
      (let ((_self1024610256_ _self10245_))
        (let ((_E1024810260_
               (lambda () (error '"No clause matching" _self1024610256_))))
          (let ((_K1024910271_
                 (lambda (_typedecl10263_
                          _inline10264_
                          _dispatch10265_
                          _arity10266_)
                   (if _inline10264_
                       (let ((_$e10268_ _typedecl10263_))
                         (if _$e10268_
                             _$e10268_
                             (error '"Cannot generate typedecl for inline rules")))
                       (cons '@lambda
                             (cons _arity10266_
                                   (cons _dispatch10265_ '())))))))
            (if (struct-instance? gxc#!lambda::t _self1024610256_)
                (let ((_e1025010274_ (##vector-ref _self1024610256_ '1)))
                  (let ((_e1025110277_ (##vector-ref _self1024610256_ '2)))
                    (let ((_arity10280_ _e1025110277_))
                      (let ((_e1025210282_ (##vector-ref _self1024610256_ '3)))
                        (let ((_dispatch10285_ _e1025210282_))
                          (let ((_e1025310287_
                                 (##vector-ref _self1024610256_ '4)))
                            (let ((_inline10290_ _e1025310287_))
                              (let ((_e1025410292_
                                     (##vector-ref _self1024610256_ '5)))
                                (let ((_typedecl10295_ _e1025410292_))
                                  (_K1024910271_
                                   _typedecl10295_
                                   _inline10290_
                                   _dispatch10285_
                                   _arity10280_))))))))))
                (_E1024810260_)))))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self10178_)
      (let ((_clause-e10180_
             (lambda (_clause10210_)
               (let ((_clause1021110219_ _clause10210_))
                 (let ((_E1021310223_
                        (lambda ()
                          (error '"No clause matching" _clause1021110219_))))
                   (let ((_K1021410229_
                          (lambda (_dispatch10226_ _arity10227_)
                            (cons _arity10227_ (cons _dispatch10226_ '())))))
                     (if (struct-instance? gxc#!lambda::t _clause1021110219_)
                         (let ((_e1021510232_
                                (##vector-ref _clause1021110219_ '1)))
                           (let ((_e1021610235_
                                  (##vector-ref _clause1021110219_ '2)))
                             (let ((_arity10238_ _e1021610235_))
                               (let ((_e1021710240_
                                      (##vector-ref _clause1021110219_ '3)))
                                 (let ((_dispatch10243_ _e1021710240_))
                                   (_K1021410229_
                                    _dispatch10243_
                                    _arity10238_))))))
                         (_E1021310223_))))))))
        (let ((_self1018110188_ _self10178_))
          (let ((_E1018310192_
                 (lambda () (error '"No clause matching" _self1018110188_))))
            (let ((_K1018410199_
                   (lambda (_clauses10195_)
                     (let ((_clauses10197_
                            (map _clause-e10180_ _clauses10195_)))
                       (cons '@case-lambda _clauses10197_)))))
              (if (struct-instance? gxc#!case-lambda::t _self1018110188_)
                  (let ((_e1018510202_ (##vector-ref _self1018110188_ '1)))
                    (let ((_e1018610205_ (##vector-ref _self1018110188_ '2)))
                      (let ((_clauses10208_ _e1018610205_))
                        (_K1018410199_ _clauses10208_))))
                  (_E1018310192_))))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#identifier-symbol
    (lambda (_stx10176_) (gxc#generate-runtime-binding-id _stx10176_))))
