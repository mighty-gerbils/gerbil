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
     ':init!
     '(type ssxi)))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args27420_
      (apply make-struct-instance gxc#optimizer-info::t _$args27420_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self27418_)
      (if (##fx< '2 (##vector-length _self27418_))
          (begin
            (##vector-set! _self27418_ '1 (make-hash-table-eq))
            (##vector-set! _self27418_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27418_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj27432 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj27432) __obj27432))))))
  (define gxc#optimize!
    (lambda (_ctx27290_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx27290_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx27290_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code27293_
                  (gxc#optimize-source
                   (##structure-ref _ctx27290_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx27290_
              _code27293_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx27235_)
      (letrec* ((_deps27237_
                 (let* ((_imports27281_
                         (##structure-ref
                          _ctx27235_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e27283_ (gx#core-context-prelude__% _ctx27235_)))
                   (if _$e27283_
                       ((lambda (_g2728527287_)
                          (cons _g2728527287_ _imports27281_))
                        _$e27283_)
                       _imports27281_))))
        (let _lp27239_ ((_rest27241_ _deps27237_))
          (let* ((_rest2724227250_ _rest27241_)
                 (_E2724527254_
                  (lambda () (error '"No clause matching" _rest2724227250_)))
                 (_else2724427258_ (lambda () '#!void))
                 (_K2724627269_
                  (lambda (_rest27261_ _hd27262_)
                    (if (##structure-instance-of?
                         _hd27262_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd27262_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e27264_
                                       (gx#core-context-prelude__% _hd27262_)))
                                  (if _$e27264_
                                      ((lambda (_pre27267_)
                                         (_lp27239_
                                          (cons _pre27267_
                                                (##structure-ref
                                                 _hd27262_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e27264_)
                                      (_lp27239_
                                       (##structure-ref
                                        _hd27262_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd27262_)))
                          (_lp27239_ _rest27261_))
                        (if (##structure-instance-of?
                             _hd27262_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd27262_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp27239_
                                     (##structure-ref
                                      _hd27262_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd27262_)))
                              (_lp27239_ _rest27261_))
                            (if (##structure-direct-instance-of?
                                 _hd27262_
                                 'gx#module-import::t)
                                (_lp27239_
                                 (cons (##direct-structure-ref
                                        _hd27262_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest27261_))
                                (if (##structure-direct-instance-of?
                                     _hd27262_
                                     'gx#module-export::t)
                                    (_lp27239_
                                     (cons (##direct-structure-ref
                                            _hd27262_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest27261_))
                                    (if (##structure-direct-instance-of?
                                         _hd27262_
                                         'gx#import-set::t)
                                        (_lp27239_
                                         (cons (##direct-structure-ref
                                                _hd27262_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest27261_))
                                        (error '"Unexpected module import"
                                               _hd27262_)))))))))
            (if (##pair? _rest2724227250_)
                (let ((_hd2724727272_ (##car _rest2724227250_))
                      (_tl2724827274_ (##cdr _rest2724227250_)))
                  (let* ((_hd27277_ _hd2724727272_)
                         (_rest27279_ _tl2724827274_))
                    (_K2724627269_ _rest27279_ _hd27277_)))
                (_else2724427258_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx27215_)
      (if (if (##structure-instance-of? _ctx27215_ 'gx#module-context::t)
              (list? (##structure-ref _ctx27215_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht27217_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id27219_
                  (##structure-ref _ctx27215_ '1 gx#expander-context::t '#f))
                 (_mod27221_ (table-ref _ht27217_ _id27219_ '#f)))
            (let ((_$e27224_ _mod27221_))
              (if _$e27224_
                  _$e27224_
                  (let* ((_mod27227_ (gxc#optimizer-import-ssxi _ctx27215_))
                         (_val27232_
                          (let ((_$e27229_ _mod27227_))
                            (if _$e27229_ _$e27229_ '#!void))))
                    (begin
                      (table-set! _ht27217_ _id27219_ _val27232_)
                      _val27232_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx27192_)
      (letrec ((_catch-e27194_
                (lambda (_exn27213_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx27192_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn27213_))
                        '#!void)
                    '#f)))
               (_import-e27195_
                (lambda ()
                  (let* ((_str-id27198_
                          (string-append
                           (symbol->string
                            (##structure-ref
                             _ctx27192_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path27206_
                          (let ((_odir2719927201_
                                 (gxc#current-compile-output-dir)))
                            (if _odir2719927201_
                                (let ((_odir27204_ _odir2719927201_))
                                  (path-expand
                                   (string-append _str-id27198_ '".ss")
                                   _odir27204_))
                                '#f)))
                         (_library-path27208_
                          (string->symbol
                           (string-append '":" _str-id27198_ '".ss")))
                         (_ssxi-path27210_
                          (if (if _artefact-path27206_
                                  (file-exists? _artefact-path27206_)
                                  '#f)
                              _artefact-path27206_
                              _library-path27208_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path27210_)
                      (gx#import-module__% _ssxi-path27210_ '#t '#t))))))
        (if (##structure-ref _ctx27192_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e27194_ _import-e27195_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args27189_
      (apply make-struct-instance gxc#!type::t _$args27189_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args27186_
      (apply make-struct-instance gxc#!alias::t _$args27186_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!
     '(super fields xfields ctor plist methods)))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args27183_
      (apply make-struct-instance gxc#!struct-type::t _$args27183_)))
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
    (make-struct-type
     'gxc#!procedure::t
     gxc#!type::t
     '0
     '!procedure
     '()
     '#f
     '()))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args27180_
      (apply make-struct-instance gxc#!procedure::t _$args27180_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f
     '()))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args27177_
      (apply make-struct-instance gxc#!struct-pred::t _$args27177_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f
     '()))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args27174_
      (apply make-struct-instance gxc#!struct-cons::t _$args27174_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args27171_
      (apply make-struct-instance gxc#!struct-getf::t _$args27171_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?
    (make-struct-field-accessor gxc#!struct-getf::t '1))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-getf::t '1))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '2
     '!struct-setf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args27168_
      (apply make-struct-instance gxc#!struct-setf::t _$args27168_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?
    (make-struct-field-accessor gxc#!struct-setf::t '1))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-setf::t '1))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!
     '(arity dispatch inline inline-typedecl)))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args27165_
      (apply make-struct-instance gxc#!lambda::t _$args27165_)))
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
     '#f
     '(clauses)))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args27162_
      (apply make-struct-instance gxc#!case-lambda::t _$args27162_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!kw-lambda::t
    (make-struct-type
     'gxc#!kw-lambda::t
     gxc#!procedure::t
     '2
     '!kw-lambda
     '()
     '#f
     '(table dispatch)))
  (define gxc#!kw-lambda? (make-struct-predicate gxc#!kw-lambda::t))
  (define gxc#make-!kw-lambda
    (lambda _$args27159_
      (apply make-struct-instance gxc#!kw-lambda::t _$args27159_)))
  (define gxc#!kw-lambda-table
    (make-struct-field-accessor gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch
    (make-struct-field-accessor gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-table-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-primary::t
    (make-struct-type
     'gxc#!kw-lambda-primary::t
     gxc#!procedure::t
     '2
     '!kw-lambda-primary
     '()
     '#f
     '(keys main)))
  (define gxc#!kw-lambda-primary?
    (make-struct-predicate gxc#!kw-lambda-primary::t))
  (define gxc#make-!kw-lambda-primary
    (lambda _$args27156_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args27156_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self27148_
             _id27149_
             _super27150_
             _fields27151_
             _xfields27152_
             _ctor27153_
             _plist27154_)
      (if (##fx< '7 (##vector-length _self27148_))
          (begin
            (##vector-set! _self27148_ '1 _id27149_)
            (##vector-set! _self27148_ '2 _super27150_)
            (##vector-set! _self27148_ '3 _fields27151_)
            (##vector-set! _self27148_ '4 _xfields27152_)
            (##vector-set! _self27148_ '5 _ctor27153_)
            (##vector-set! _self27148_ '6 _plist27154_)
            (##vector-set! _self27148_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self27148_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self26992_
               _id26993_
               _arity26994_
               _dispatch26995_
               _inline26996_
               _typedecl26997_)
        (if (##fx< '5 (##vector-length _self26992_))
            (begin
              (##vector-set! _self26992_ '1 _id26993_)
              (##vector-set! _self26992_ '2 _arity26994_)
              (##vector-set! _self26992_ '3 _dispatch26995_)
              (##vector-set! _self26992_ '4 _inline26996_)
              (##vector-set! _self26992_ '5 _typedecl26997_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self26992_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self27002_ _id27003_ _arity27004_ _dispatch27005_)
          (let* ((_inline27007_ '#f) (_typedecl27009_ '#f))
            (if (##fx< '5 (##vector-length _self27002_))
                (begin
                  (##vector-set! _self27002_ '1 _id27003_)
                  (##vector-set! _self27002_ '2 _arity27004_)
                  (##vector-set! _self27002_ '3 _dispatch27005_)
                  (##vector-set! _self27002_ '4 _inline27007_)
                  (##vector-set! _self27002_ '5 _typedecl27009_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27002_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self27011_
                 _id27012_
                 _arity27013_
                 _dispatch27014_
                 _inline27015_)
          (let ((_typedecl27017_ '#f))
            (if (##fx< '5 (##vector-length _self27011_))
                (begin
                  (##vector-set! _self27011_ '1 _id27012_)
                  (##vector-set! _self27011_ '2 _arity27013_)
                  (##vector-set! _self27011_ '3 _dispatch27014_)
                  (##vector-set! _self27011_ '4 _inline27015_)
                  (##vector-set! _self27011_ '5 _typedecl27017_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self27011_)))))
      (define gxc#!lambda:::init!
        (lambda _g27441_
          (let ((_g27440_ (length _g27441_)))
            (cond ((fx= _g27440_ 4) (apply gxc#!lambda:::init!__0 _g27441_))
                  ((fx= _g27440_ 5) (apply gxc#!lambda:::init!__1 _g27441_))
                  ((fx= _g27440_ 6)
                   (apply (lambda (_self27019_
                                   _id27020_
                                   _arity27021_
                                   _dispatch27022_
                                   _inline27023_
                                   _typedecl27024_)
                            (if (##fx< '5 (##vector-length _self27019_))
                                (begin
                                  (##vector-set! _self27019_ '1 _id27020_)
                                  (##vector-set! _self27019_ '2 _arity27021_)
                                  (##vector-set!
                                   _self27019_
                                   '3
                                   _dispatch27022_)
                                  (##vector-set! _self27019_ '4 _inline27023_)
                                  (##vector-set!
                                   _self27019_
                                   '5
                                   _typedecl27024_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self27019_)))
                          _g27441_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g27441_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type26862_)
      (let ((_$e26864_
             (##structure-ref _type26862_ '7 gxc#!struct-type::t '#f)))
        (if _$e26864_
            (values _$e26864_)
            (let ((_vtab26867_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type26862_
                 _vtab26867_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab26867_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type26853_ _method26854_)
      (let ((_vtab2685526857_
             (##structure-ref _type26853_ '7 gxc#!struct-type::t '#f)))
        (if _vtab2685526857_
            (let ((_vtab26860_ _vtab2685526857_))
              (table-ref _vtab26860_ _method26854_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym26837_ _type26838_ _local?26839_)
        (begin
          (if (##structure-instance-of? _type26838_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym26837_
                     _type26838_))
          (gxc#verbose
           '"declare-type "
           _sym26837_
           '" "
           (struct->list _type26838_))
          (table-set!
           (if _local?26839_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym26837_
           _type26838_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym26844_ _type26845_)
          (let ((_local?26847_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym26844_
             _type26845_
             _local?26847_))))
      (define gxc#optimizer-declare-type!
        (lambda _g27443_
          (let ((_g27442_ (length _g27443_)))
            (cond ((fx= _g27442_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g27443_))
                  ((fx= _g27442_ 3)
                   (apply gxc#optimizer-declare-type!__% _g27443_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g27443_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t26813_ _method26814_ _sym26815_ _rebind?26816_)
        (let ((_type26818_ (gxc#optimizer-resolve-type _type-t26813_)))
          (if (##structure-instance-of? _type26818_ 'gxc#!struct-type::t)
              (let ((_vtab26820_ (gxc#!struct-type-vtab _type26818_)))
                (if _rebind?26816_
                    (if (hash-key? _vtab26820_ _method26814_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t26813_
                         '" "
                         _method26814_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t26813_
                         '" "
                         _method26814_))
                    (if (hash-key? _vtab26820_ _method26814_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t26813_
                           '" "
                           _method26814_
                           '" => "
                           _sym26815_)
                          (table-set! _vtab26820_ _method26814_ _sym26815_)))))
              (if (not _type26818_)
                  (gxc#verbose '"declare-method: unknown type " _type-t26813_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t26813_
                         _type26818_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t26825_ _method26826_ _sym26827_)
          (let ((_rebind?26829_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t26825_
             _method26826_
             _sym26827_
             _rebind?26829_))))
      (define gxc#optimizer-declare-method!
        (lambda _g27445_
          (let ((_g27444_ (length _g27445_)))
            (cond ((fx= _g27444_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g27445_))
                  ((fx= _g27444_ 4)
                   (apply gxc#optimizer-declare-method!__% _g27445_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g27445_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym26801_)
      (let ((_$e26809_
             (let ((_ht2680226804_ (gxc#current-compile-local-type)))
               (if _ht2680226804_
                   (let ((_ht26807_ _ht2680226804_))
                     (table-ref _ht26807_ _sym26801_ '#f))
                   '#f))))
        (if _$e26809_
            _$e26809_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym26801_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym26793_)
      (let ((_type2679426796_ (gxc#optimizer-lookup-type _sym26793_)))
        (if _type2679426796_
            (let ((_type26799_ _type2679426796_))
              (if (##structure-instance-of? _type26799_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type26799_ '1 gxc#!type::t '#f))
                  _type26799_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t26788_ _method26789_)
      (let ((_type26791_ (gxc#optimizer-resolve-type _type-t26788_)))
        (if (##structure-instance-of? _type26791_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type26791_ _method26789_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx26784_)
      (begin
        (gxc#apply-collect-mutators _stx26784_)
        (let ((_stx26786_ (gxc#apply-lift-top-lambdas _stx26784_)))
          (begin
            (gxc#apply-collect-type-info _stx26786_)
            (gxc#apply-optimize-call _stx26786_))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl26781_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26781_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl26781_ '%#lambda gxc#xform-identity)
           (table-set! _tbl26781_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl26781_ '%#let-values gxc#xform-identity)
           (table-set! _tbl26781_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl26781_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl26781_ '%#quote gxc#xform-identity)
           (table-set! _tbl26781_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26781_ '%#call gxc#xform-identity)
           (table-set! _tbl26781_ '%#if gxc#xform-identity)
           (table-set! _tbl26781_ '%#ref gxc#xform-identity)
           (table-set! _tbl26781_ '%#set! gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl26781_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl26781_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl26781_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl26777_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl26777_ '%#begin gxc#xform-identity)
           (table-set! _tbl26777_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl26777_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl26777_ '%#module gxc#xform-identity)
           (table-set! _tbl26777_ '%#import gxc#xform-identity)
           (table-set! _tbl26777_ '%#export gxc#xform-identity)
           (table-set! _tbl26777_ '%#provide gxc#xform-identity)
           (table-set! _tbl26777_ '%#extern gxc#xform-identity)
           (table-set! _tbl26777_ '%#define-values gxc#xform-identity)
           (table-set! _tbl26777_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl26777_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl26777_ '%#declare gxc#xform-identity)
           _tbl26777_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl26773_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26773_ (force gxc#&identity-special-form))
           (hash-copy! _tbl26773_ (force gxc#&identity-expression))
           _tbl26773_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl26769_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl26769_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl26769_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl26769_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl26769_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl26769_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl26769_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl26769_ '%#quote gxc#xform-identity)
           (table-set! _tbl26769_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl26769_ '%#call gxc#xform-operands)
           (table-set! _tbl26769_ '%#if gxc#xform-operands)
           (table-set! _tbl26769_ '%#ref gxc#xform-identity)
           (table-set! _tbl26769_ '%#set! gxc#xform-setq%)
           (table-set! _tbl26769_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl26769_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl26769_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl26769_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl26765_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26765_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl26765_ (force gxc#&identity))
           (table-set! _tbl26765_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26765_ '%#module gxc#xform-module%)
           (table-set! _tbl26765_ '%#define-values gxc#xform-define-values%)
           _tbl26765_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl26761_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26761_ (force gxc#&void))
           (table-set! _tbl26761_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26761_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26761_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26761_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26761_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26761_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl26761_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl26761_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl26761_ '%#call gxc#collect-operands)
           (table-set! _tbl26761_ '%#if gxc#collect-operands)
           (table-set! _tbl26761_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl26761_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl26761_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl26761_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl26761_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl26761_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl26761_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl26761_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl26761_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl26761_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx26754_ . _args26756_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26754_ _args26756_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl26751_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26751_ (force gxc#&basic-xform))
           (table-set!
            _tbl26751_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl26751_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl26751_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl26751_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl26751_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx26744_ . _args26746_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26744_ _args26746_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl26741_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26741_ (force gxc#&basic-xform-expression))
           (table-set! _tbl26741_ '%#begin gxc#xform-begin%)
           (table-set! _tbl26741_ '%#ref gxc#expression-subst-ref%)
           _tbl26741_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx26734_ . _args26736_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26734_ _args26736_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl26731_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26731_ (force gxc#&void))
           (table-set! _tbl26731_ '%#begin gxc#collect-begin%)
           (table-set! _tbl26731_ '%#module gxc#collect-module%)
           (table-set!
            _tbl26731_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl26731_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl26731_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl26731_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl26731_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl26731_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl26731_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl26731_ '%#call gxc#collect-type-call%)
           (table-set! _tbl26731_ '%#if gxc#collect-operands)
           (table-set! _tbl26731_ '%#set! gxc#collect-body-setq%)
           _tbl26731_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx26724_ . _args26726_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26724_ _args26726_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl26721_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26721_ (force gxc#&false))
           (table-set! _tbl26721_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl26721_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl26721_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl26721_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl26721_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl26721_ '%#ref gxc#basic-expression-type-ref%)
           _tbl26721_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx26714_ . _args26716_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26714_ _args26716_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl26711_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26711_ (force gxc#&basic-xform))
           (table-set! _tbl26711_ '%#call gxc#optimize-call%)
           _tbl26711_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx26704_ . _args26706_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26704_ _args26706_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl26701_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl26701_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl26701_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl26701_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl26701_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl26701_ '%#call gxc#generate-ssxi-call%)
           _tbl26701_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx26694_ . _args26696_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx26694_ _args26696_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx26691_ . _args26692_) _stx26691_))
  (define gxc#xform-wrap-source
    (lambda (_stx26688_ _src-stx26689_)
      (gx#stx-wrap-source _stx26688_ (gx#stx-source _src-stx26689_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args26682_)
      (lambda (_g2668326685_)
        (apply gxc#compile-e _g2668326685_ _args26682_))))
  (define gxc#xform-begin%
    (lambda (_stx26641_ . _args26642_)
      (let* ((_g2664426654_
              (lambda (_g2664526651_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2664526651_)))
             (_g2664326679_
              (lambda (_g2664526657_)
                (if (gx#stx-pair? _g2664526657_)
                    (let ((_e2664726659_ (gx#stx-e _g2664526657_)))
                      (let ((_hd2664826662_ (##car _e2664726659_))
                            (_tl2664926664_ (##cdr _e2664726659_)))
                        ((lambda (_L26667_)
                           (let ((_forms26677_
                                  (map (gxc#xform-apply-compile-e _args26642_)
                                       _L26667_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms26677_)
                              _stx26641_)))
                         _tl2664926664_)))
                    (_g2664426654_ _g2664526657_)))))
        (_g2664326679_ _stx26641_))))
  (define gxc#xform-module%
    (lambda (_stx26578_ . _args26579_)
      (let* ((_g2658126595_
              (lambda (_g2658226592_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2658226592_)))
             (_g2658026638_
              (lambda (_g2658226598_)
                (if (gx#stx-pair? _g2658226598_)
                    (let ((_e2658526600_ (gx#stx-e _g2658226598_)))
                      (let ((_hd2658626603_ (##car _e2658526600_))
                            (_tl2658726605_ (##cdr _e2658526600_)))
                        (if (gx#stx-pair? _tl2658726605_)
                            (let ((_e2658826608_ (gx#stx-e _tl2658726605_)))
                              (let ((_hd2658926611_ (##car _e2658826608_))
                                    (_tl2659026613_ (##cdr _e2658826608_)))
                                ((lambda (_L26616_ _L26617_)
                                   (let* ((_ctx26630_
                                           (gx#syntax-local-e__0 _L26617_))
                                          (_code26632_
                                           (##structure-ref
                                            _ctx26630_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code26635_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code26632_
                                                     _args26579_))
                                            gx#current-expander-context
                                            _ctx26630_)))
                                     (begin
                                       (##structure-set!
                                        _ctx26630_
                                        _code26635_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L26617_
                                                    (cons _code26635_ '())))
                                        _stx26578_))))
                                 _tl2659026613_
                                 _hd2658926611_)))
                            (_g2658126595_ _g2658226598_))))
                    (_g2658126595_ _g2658226598_)))))
        (_g2658026638_ _stx26578_))))
  (define gxc#xform-define-values%
    (lambda (_stx26508_ . _args26509_)
      (let* ((_g2651126528_
              (lambda (_g2651226525_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2651226525_)))
             (_g2651026575_
              (lambda (_g2651226531_)
                (if (gx#stx-pair? _g2651226531_)
                    (let ((_e2651526533_ (gx#stx-e _g2651226531_)))
                      (let ((_hd2651626536_ (##car _e2651526533_))
                            (_tl2651726538_ (##cdr _e2651526533_)))
                        (if (gx#stx-pair? _tl2651726538_)
                            (let ((_e2651826541_ (gx#stx-e _tl2651726538_)))
                              (let ((_hd2651926544_ (##car _e2651826541_))
                                    (_tl2652026546_ (##cdr _e2651826541_)))
                                (if (gx#stx-pair? _tl2652026546_)
                                    (let ((_e2652126549_
                                           (gx#stx-e _tl2652026546_)))
                                      (let ((_hd2652226552_
                                             (##car _e2652126549_))
                                            (_tl2652326554_
                                             (##cdr _e2652126549_)))
                                        (if (gx#stx-null? _tl2652326554_)
                                            ((lambda (_L26557_ _L26558_)
                                               (let ((_expr26573_
                                                      (apply gxc#compile-e
                                                             _L26557_
                                                             _args26509_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L26558_
                                                              (cons _expr26573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26508_)))
                                             _hd2652226552_
                                             _hd2651926544_)
                                            (_g2651126528_ _g2651226531_))))
                                    (_g2651126528_ _g2651226531_))))
                            (_g2651126528_ _g2651226531_))))
                    (_g2651126528_ _g2651226531_)))))
        (_g2651026575_ _stx26508_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx26438_ . _args26439_)
      (let* ((_g2644126458_
              (lambda (_g2644226455_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2644226455_)))
             (_g2644026505_
              (lambda (_g2644226461_)
                (if (gx#stx-pair? _g2644226461_)
                    (let ((_e2644526463_ (gx#stx-e _g2644226461_)))
                      (let ((_hd2644626466_ (##car _e2644526463_))
                            (_tl2644726468_ (##cdr _e2644526463_)))
                        (if (gx#stx-pair? _tl2644726468_)
                            (let ((_e2644826471_ (gx#stx-e _tl2644726468_)))
                              (let ((_hd2644926474_ (##car _e2644826471_))
                                    (_tl2645026476_ (##cdr _e2644826471_)))
                                (if (gx#stx-pair? _tl2645026476_)
                                    (let ((_e2645126479_
                                           (gx#stx-e _tl2645026476_)))
                                      (let ((_hd2645226482_
                                             (##car _e2645126479_))
                                            (_tl2645326484_
                                             (##cdr _e2645126479_)))
                                        (if (gx#stx-null? _tl2645326484_)
                                            ((lambda (_L26487_ _L26488_)
                                               (let ((_expr26503_
                                                      (apply gxc#compile-e
                                                             _L26487_
                                                             _args26439_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L26488_
                                                              (cons _expr26503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx26438_)))
                                             _hd2645226482_
                                             _hd2644926474_)
                                            (_g2644126458_ _g2644226461_))))
                                    (_g2644126458_ _g2644226461_))))
                            (_g2644126458_ _g2644226461_))))
                    (_g2644126458_ _g2644226461_)))))
        (_g2644026505_ _stx26438_))))
  (define gxc#xform-lambda%
    (lambda (_stx26381_ . _args26382_)
      (let* ((_g2638426398_
              (lambda (_g2638526395_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2638526395_)))
             (_g2638326435_
              (lambda (_g2638526401_)
                (if (gx#stx-pair? _g2638526401_)
                    (let ((_e2638826403_ (gx#stx-e _g2638526401_)))
                      (let ((_hd2638926406_ (##car _e2638826403_))
                            (_tl2639026408_ (##cdr _e2638826403_)))
                        (if (gx#stx-pair? _tl2639026408_)
                            (let ((_e2639126411_ (gx#stx-e _tl2639026408_)))
                              (let ((_hd2639226414_ (##car _e2639126411_))
                                    (_tl2639326416_ (##cdr _e2639126411_)))
                                ((lambda (_L26419_ _L26420_)
                                   (let ((_body26433_
                                          (map (gxc#xform-apply-compile-e
                                                _args26382_)
                                               _L26419_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L26420_ _body26433_))
                                      _stx26381_)))
                                 _tl2639326416_
                                 _hd2639226414_)))
                            (_g2638426398_ _g2638526401_))))
                    (_g2638426398_ _g2638526401_)))))
        (_g2638326435_ _stx26381_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx26294_ . _args26295_)
      (letrec ((_clause-e26297_
                (lambda (_clause26338_)
                  (let* ((_g2634026351_
                          (lambda (_g2634126348_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2634126348_)))
                         (_g2633926378_
                          (lambda (_g2634126354_)
                            (if (gx#stx-pair? _g2634126354_)
                                (let ((_e2634426356_ (gx#stx-e _g2634126354_)))
                                  (let ((_hd2634526359_ (##car _e2634426356_))
                                        (_tl2634626361_ (##cdr _e2634426356_)))
                                    ((lambda (_L26364_ _L26365_)
                                       (let ((_body26376_
                                              (map (gxc#xform-apply-compile-e
                                                    _args26295_)
                                                   _L26364_)))
                                         (cons _L26365_ _body26376_)))
                                     _tl2634626361_
                                     _hd2634526359_)))
                                (_g2634026351_ _g2634126354_)))))
                    (_g2633926378_ _clause26338_)))))
        (let* ((_g2629926309_
                (lambda (_g2630026306_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2630026306_)))
               (_g2629826335_
                (lambda (_g2630026312_)
                  (if (gx#stx-pair? _g2630026312_)
                      (let ((_e2630226314_ (gx#stx-e _g2630026312_)))
                        (let ((_hd2630326317_ (##car _e2630226314_))
                              (_tl2630426319_ (##cdr _e2630226314_)))
                          ((lambda (_L26322_)
                             (let ((_clauses26333_
                                    (map _clause-e26297_ _L26322_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses26333_)
                                _stx26294_)))
                           _tl2630426319_)))
                      (_g2629926309_ _g2630026312_)))))
          (_g2629826335_ _stx26294_)))))
  (define gxc#xform-let-values%
    (lambda (_stx26088_ . _args26089_)
      (let* ((_g2609126124_
              (lambda (_g2609226121_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2609226121_)))
             (_g2609026291_
              (lambda (_g2609226127_)
                (if (gx#stx-pair? _g2609226127_)
                    (let ((_e2609726129_ (gx#stx-e _g2609226127_)))
                      (let ((_hd2609826132_ (##car _e2609726129_))
                            (_tl2609926134_ (##cdr _e2609726129_)))
                        (if (gx#stx-pair? _tl2609926134_)
                            (let ((_e2610026137_ (gx#stx-e _tl2609926134_)))
                              (let ((_hd2610126140_ (##car _e2610026137_))
                                    (_tl2610226142_ (##cdr _e2610026137_)))
                                (if (gx#stx-pair/null? _hd2610126140_)
                                    (if (fx>= (gx#stx-length _hd2610126140_)
                                              '0)
                                        (let ((_g27446_
                                               (gx#syntax-split-splice
                                                _hd2610126140_
                                                '0)))
                                          (begin
                                            (let ((_g27447_
                                                   (values-count _g27446_)))
                                              (if (not (fx= _g27447_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27447_)))
                                            (let ((_target2610326145_
                                                   (values-ref _g27446_ 0))
                                                  (_tl2610526147_
                                                   (values-ref _g27446_ 1)))
                                              (if (gx#stx-null? _tl2610526147_)
                                                  (letrec ((_loop2610626150_
                                                            (lambda (_hd2610426153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr2611026155_
                             _hd2611126157_)
                      (if (gx#stx-pair? _hd2610426153_)
                          (let ((_e2610726160_ (gx#stx-e _hd2610426153_)))
                            (let ((_lp-hd2610826163_ (##car _e2610726160_))
                                  (_lp-tl2610926165_ (##cdr _e2610726160_)))
                              (if (gx#stx-pair? _lp-hd2610826163_)
                                  (let ((_e2611426168_
                                         (gx#stx-e _lp-hd2610826163_)))
                                    (let ((_hd2611526171_
                                           (##car _e2611426168_))
                                          (_tl2611626173_
                                           (##cdr _e2611426168_)))
                                      (if (gx#stx-pair? _tl2611626173_)
                                          (let ((_e2611726176_
                                                 (gx#stx-e _tl2611626173_)))
                                            (let ((_hd2611826179_
                                                   (##car _e2611726176_))
                                                  (_tl2611926181_
                                                   (##cdr _e2611726176_)))
                                              (if (gx#stx-null? _tl2611926181_)
                                                  (_loop2610626150_
                                                   _lp-tl2610926165_
                                                   (cons _hd2611826179_
                                                         _expr2611026155_)
                                                   (cons _hd2611526171_
                                                         _hd2611126157_))
                                                  (_g2609126124_
                                                   _g2609226127_))))
                                          (_g2609126124_ _g2609226127_))))
                                  (_g2609126124_ _g2609226127_))))
                          (let ((_expr2611226184_ (reverse _expr2611026155_))
                                (_hd2611326186_ (reverse _hd2611126157_)))
                            ((lambda (_L26189_ _L26190_ _L26191_ _L26192_)
                               (let* ((_g2621126227_
                                       (lambda (_g2621226224_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2621226224_)))
                                      (_g2621026281_
                                       (lambda (_g2621226230_)
                                         (if (gx#stx-pair/null? _g2621226230_)
                                             (if (fx>= (gx#stx-length
                                                        _g2621226230_)
                                                       '0)
                                                 (let ((_g27448_
                                                        (gx#syntax-split-splice
                                                         _g2621226230_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27449_
                                                            (values-count
                                                             _g27448_)))
                                                       (if (not (fx= _g27449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g27449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2621426232_
                                                            (values-ref
                                                             _g27448_
                                                             0))
                                                           (_tl2621626234_
                                                            (values-ref
                                                             _g27448_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2621626234_)
                                                           (letrec ((_loop2621726237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2621526240_ _expr2622126242_)
                               (if (gx#stx-pair? _hd2621526240_)
                                   (let ((_e2621826245_
                                          (gx#syntax-e _hd2621526240_)))
                                     (let ((_lp-hd2621926248_
                                            (##car _e2621826245_))
                                           (_lp-tl2622026250_
                                            (##cdr _e2621826245_)))
                                       (_loop2621726237_
                                        _lp-tl2622026250_
                                        (cons _lp-hd2621926248_
                                              _expr2622126242_))))
                                   (let ((_expr2622226253_
                                          (reverse _expr2622126242_)))
                                     ((lambda (_L26256_)
                                        (let ()
                                          (let ((_body26269_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args26089_)
                                                      _L26189_)))
                                            (gxc#xform-wrap-source
                                             (cons _L26192_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L26256_
                                                            _L26191_)
                                                           (foldr2 (lambda (_g2627026274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2627126276_
                                    _g2627226278_)
                             (cons (cons _g2627126276_
                                         (cons _g2627026274_ '()))
                                   _g2627226278_))
                           '()
                           _L26256_
                           _L26191_))
                 _body26269_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx26088_))))
                                      _expr2622226253_))))))
                     (_loop2621726237_ _target2621426232_ '()))
                   (_g2621126227_ _g2621226230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2621126227_ _g2621226230_))
                                             (_g2621126227_ _g2621226230_)))))
                                 (_g2621026281_
                                  (map (gxc#xform-apply-compile-e _args26089_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2628326286_
                                                          _g2628426288_)
                                                   (cons _g2628326286_
                                                         _g2628426288_))
                                                 '()
                                                 _L26190_))))))
                             _tl2610226142_
                             _expr2611226184_
                             _hd2611326186_
                             _hd2609826132_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2610626150_
                                                     _target2610326145_
                                                     '()
                                                     '()))
                                                  (_g2609126124_
                                                   _g2609226127_)))))
                                        (_g2609126124_ _g2609226127_))
                                    (_g2609126124_ _g2609226127_))))
                            (_g2609126124_ _g2609226127_))))
                    (_g2609126124_ _g2609226127_)))))
        (_g2609026291_ _stx26088_))))
  (define gxc#xform-operands
    (lambda (_stx26044_ . _args26045_)
      (let* ((_g2604726058_
              (lambda (_g2604826055_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2604826055_)))
             (_g2604626085_
              (lambda (_g2604826061_)
                (if (gx#stx-pair? _g2604826061_)
                    (let ((_e2605126063_ (gx#stx-e _g2604826061_)))
                      (let ((_hd2605226066_ (##car _e2605126063_))
                            (_tl2605326068_ (##cdr _e2605126063_)))
                        ((lambda (_L26071_ _L26072_)
                           (let ((_rands26083_
                                  (map (gxc#xform-apply-compile-e _args26045_)
                                       _L26071_)))
                             (gxc#xform-wrap-source
                              (cons _L26072_ _rands26083_)
                              _stx26044_)))
                         _tl2605326068_
                         _hd2605226066_)))
                    (_g2604726058_ _g2604826061_)))))
        (_g2604626085_ _stx26044_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx25974_ . _args25975_)
      (let* ((_g2597725994_
              (lambda (_g2597825991_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2597825991_)))
             (_g2597626041_
              (lambda (_g2597825997_)
                (if (gx#stx-pair? _g2597825997_)
                    (let ((_e2598125999_ (gx#stx-e _g2597825997_)))
                      (let ((_hd2598226002_ (##car _e2598125999_))
                            (_tl2598326004_ (##cdr _e2598125999_)))
                        (if (gx#stx-pair? _tl2598326004_)
                            (let ((_e2598426007_ (gx#stx-e _tl2598326004_)))
                              (let ((_hd2598526010_ (##car _e2598426007_))
                                    (_tl2598626012_ (##cdr _e2598426007_)))
                                (if (gx#stx-pair? _tl2598626012_)
                                    (let ((_e2598726015_
                                           (gx#stx-e _tl2598626012_)))
                                      (let ((_hd2598826018_
                                             (##car _e2598726015_))
                                            (_tl2598926020_
                                             (##cdr _e2598726015_)))
                                        (if (gx#stx-null? _tl2598926020_)
                                            ((lambda (_L26023_ _L26024_)
                                               (let ((_expr26039_
                                                      (apply gxc#compile-e
                                                             _L26023_
                                                             _args25975_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L26024_
                                                              (cons _expr26039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx25974_)))
                                             _hd2598826018_
                                             _hd2598526010_)
                                            (_g2597725994_ _g2597825997_))))
                                    (_g2597725994_ _g2597825997_))))
                            (_g2597725994_ _g2597825997_))))
                    (_g2597725994_ _g2597825997_)))))
        (_g2597626041_ _stx25974_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx25905_)
      (let* ((_g2590725924_
              (lambda (_g2590825921_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2590825921_)))
             (_g2590625971_
              (lambda (_g2590825927_)
                (if (gx#stx-pair? _g2590825927_)
                    (let ((_e2591125929_ (gx#stx-e _g2590825927_)))
                      (let ((_hd2591225932_ (##car _e2591125929_))
                            (_tl2591325934_ (##cdr _e2591125929_)))
                        (if (gx#stx-pair? _tl2591325934_)
                            (let ((_e2591425937_ (gx#stx-e _tl2591325934_)))
                              (let ((_hd2591525940_ (##car _e2591425937_))
                                    (_tl2591625942_ (##cdr _e2591425937_)))
                                (if (gx#stx-pair? _tl2591625942_)
                                    (let ((_e2591725945_
                                           (gx#stx-e _tl2591625942_)))
                                      (let ((_hd2591825948_
                                             (##car _e2591725945_))
                                            (_tl2591925950_
                                             (##cdr _e2591725945_)))
                                        (if (gx#stx-null? _tl2591925950_)
                                            ((lambda (_L25953_ _L25954_)
                                               (let ((_sym25969_
                                                      (gxc#generate-runtime-binding-id
                                                       _L25954_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym25969_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym25969_
                                                    '#t)
                                                   (gxc#compile-e _L25953_))))
                                             _hd2591825948_
                                             _hd2591525940_)
                                            (_g2590725924_ _g2590825927_))))
                                    (_g2590725924_ _g2590825927_))))
                            (_g2590725924_ _g2590825927_))))
                    (_g2590725924_ _g2590825927_)))))
        (_g2590625971_ _stx25905_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form25139_)
      (let* ((_g2514425301_
              (lambda (_g2514525298_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2514525298_)))
             (_g2514325308_ (lambda (_g2514525304_) ((lambda () '#f))))
             (_g2514225448_
              (lambda (_g2514525311_)
                (if (gx#stx-pair? _g2514525311_)
                    (let ((_e2526125313_ (gx#stx-e _g2514525311_)))
                      (let ((_hd2526225316_ (##car _e2526125313_))
                            (_tl2526325318_ (##cdr _e2526125313_)))
                        (if (gx#stx-pair? _tl2526325318_)
                            (let ((_e2526425321_ (gx#stx-e _tl2526325318_)))
                              (let ((_hd2526525324_ (##car _e2526425321_))
                                    (_tl2526625326_ (##cdr _e2526425321_)))
                                (if (gx#stx-pair? _hd2526525324_)
                                    (let ((_e2526725329_
                                           (gx#stx-e _hd2526525324_)))
                                      (let ((_hd2526825332_
                                             (##car _e2526725329_))
                                            (_tl2526925334_
                                             (##cdr _e2526725329_)))
                                        (if (gx#identifier? _hd2526825332_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2526825332_)
                                                (if (gx#stx-pair?
                                                     _tl2526925334_)
                                                    (let ((_e2527025337_
                                                           (gx#stx-e
                                                            _tl2526925334_)))
                                                      (let ((_hd2527125340_
                                                             (##car _e2527025337_))
                                                            (_tl2527225342_
                                                             (##cdr _e2527025337_)))
                                                        (if (gx#stx-pair?
                                                             _hd2527125340_)
                                                            (let ((_e2527325345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2527125340_)))
                      (let ((_hd2527425348_ (##car _e2527325345_))
                            (_tl2527525350_ (##cdr _e2527325345_)))
                        (if (gx#identifier? _hd2527425348_)
                            (if (gx#stx-eq? '%#ref _hd2527425348_)
                                (if (gx#stx-pair? _tl2527525350_)
                                    (let ((_e2527625353_
                                           (gx#stx-e _tl2527525350_)))
                                      (let ((_hd2527725356_
                                             (##car _e2527625353_))
                                            (_tl2527825358_
                                             (##cdr _e2527625353_)))
                                        (if (gx#stx-null? _tl2527825358_)
                                            (if (gx#stx-pair? _tl2527225342_)
                                                (let ((_e2527925361_
                                                       (gx#stx-e
                                                        _tl2527225342_)))
                                                  (let ((_hd2528025364_
                                                         (##car _e2527925361_))
                                                        (_tl2528125366_
                                                         (##cdr _e2527925361_)))
                                                    (if (gx#stx-pair?
                                                         _hd2528025364_)
                                                        (let ((_e2528225369_
                                                               (gx#stx-e
                                                                _hd2528025364_)))
                                                          (let ((_hd2528325372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2528225369_))
                        (_tl2528425374_ (##cdr _e2528225369_)))
                    (if (gx#identifier? _hd2528325372_)
                        (if (gx#stx-eq? '%#ref _hd2528325372_)
                            (if (gx#stx-pair? _tl2528425374_)
                                (let ((_e2528525377_
                                       (gx#stx-e _tl2528425374_)))
                                  (let ((_hd2528625380_ (##car _e2528525377_))
                                        (_tl2528725382_ (##cdr _e2528525377_)))
                                    (if (gx#stx-null? _tl2528725382_)
                                        (if (gx#stx-pair? _tl2528125366_)
                                            (let ((_e2528825385_
                                                   (gx#stx-e _tl2528125366_)))
                                              (let ((_hd2528925388_
                                                     (##car _e2528825385_))
                                                    (_tl2529025390_
                                                     (##cdr _e2528825385_)))
                                                (if (gx#stx-pair?
                                                     _hd2528925388_)
                                                    (let ((_e2529125393_
                                                           (gx#stx-e
                                                            _hd2528925388_)))
                                                      (let ((_hd2529225396_
                                                             (##car _e2529125393_))
                                                            (_tl2529325398_
                                                             (##cdr _e2529125393_)))
                                                        (if (gx#identifier?
                                                             _hd2529225396_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2529225396_)
                        (if (gx#stx-pair? _tl2529325398_)
                            (let ((_e2529425401_ (gx#stx-e _tl2529325398_)))
                              (let ((_hd2529525404_ (##car _e2529425401_))
                                    (_tl2529625406_ (##cdr _e2529425401_)))
                                (if (gx#stx-null? _tl2529625406_)
                                    (if (gx#stx-null? _tl2529025390_)
                                        (if (gx#stx-null? _tl2526625326_)
                                            ((lambda (_L25409_
                                                      _L25410_
                                                      _L25411_
                                                      _L25412_)
                                               (if (if (gx#identifier?
                                                        _L25412_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25411_)
                        'apply)
                   (if (gx#free-identifier=? _L25412_ _L25409_)
                       (not (gx#free-identifier=? _L25410_ _L25412_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2514325308_
                                                    _g2514525311_)))
                                             _hd2529525404_
                                             _hd2528625380_
                                             _hd2527725356_
                                             _hd2526225316_)
                                            (_g2514325308_ _g2514525311_))
                                        (_g2514325308_ _g2514525311_))
                                    (_g2514325308_ _g2514525311_))))
                            (_g2514325308_ _g2514525311_))
                        (_g2514325308_ _g2514525311_))
                    (_g2514325308_ _g2514525311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2514325308_
                                                     _g2514525311_))))
                                            (_g2514325308_ _g2514525311_))
                                        (_g2514325308_ _g2514525311_))))
                                (_g2514325308_ _g2514525311_))
                            (_g2514325308_ _g2514525311_))
                        (_g2514325308_ _g2514525311_))))
                (_g2514325308_ _g2514525311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2514325308_ _g2514525311_))
                                            (_g2514325308_ _g2514525311_))))
                                    (_g2514325308_ _g2514525311_))
                                (_g2514325308_ _g2514525311_))
                            (_g2514325308_ _g2514525311_))))
                    (_g2514325308_ _g2514525311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2514325308_
                                                     _g2514525311_))
                                                (_g2514325308_ _g2514525311_))
                                            (_g2514325308_ _g2514525311_))))
                                    (_g2514325308_ _g2514525311_))))
                            (_g2514325308_ _g2514525311_))))
                    (_g2514325308_ _g2514525311_))))
             (_g2514125708_
              (lambda (_g2514525451_)
                (if (gx#stx-pair? _g2514525451_)
                    (let ((_e2519725453_ (gx#stx-e _g2514525451_)))
                      (let ((_hd2519825456_ (##car _e2519725453_))
                            (_tl2519925458_ (##cdr _e2519725453_)))
                        (if (gx#stx-pair/null? _hd2519825456_)
                            (if (fx>= (gx#stx-length _hd2519825456_) '0)
                                (let ((_g27450_
                                       (gx#syntax-split-splice
                                        _hd2519825456_
                                        '0)))
                                  (begin
                                    (let ((_g27451_ (values-count _g27450_)))
                                      (if (not (fx= _g27451_ 2))
                                          (error "Context expects 2 values"
                                                 _g27451_)))
                                    (let ((_target2520025461_
                                           (values-ref _g27450_ 0))
                                          (_tl2520225463_
                                           (values-ref _g27450_ 1)))
                                      (letrec ((_loop2520325466_
                                                (lambda (_hd2520125469_
                                                         _arg2520725471_)
                                                  (if (gx#stx-pair?
                                                       _hd2520125469_)
                                                      (let ((_e2520425474_
                                                             (gx#stx-e
                                                              _hd2520125469_)))
                                                        (let ((_lp-hd2520525477_
                                                               (##car _e2520425474_))
                                                              (_lp-tl2520625479_
                                                               (##cdr _e2520425474_)))
                                                          (_loop2520325466_
                                                           _lp-tl2520625479_
                                                           (cons _lp-hd2520525477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2520725471_))))
              (let ((_arg2520825482_ (reverse _arg2520725471_)))
                (if (gx#stx-pair? _tl2519925458_)
                    (let ((_e2520925485_ (gx#stx-e _tl2519925458_)))
                      (let ((_hd2521025488_ (##car _e2520925485_))
                            (_tl2521125490_ (##cdr _e2520925485_)))
                        (if (gx#stx-pair? _hd2521025488_)
                            (let ((_e2521225493_ (gx#stx-e _hd2521025488_)))
                              (let ((_hd2521325496_ (##car _e2521225493_))
                                    (_tl2521425498_ (##cdr _e2521225493_)))
                                (if (gx#identifier? _hd2521325496_)
                                    (if (gx#stx-eq? '%#call _hd2521325496_)
                                        (if (gx#stx-pair? _tl2521425498_)
                                            (let ((_e2521525501_
                                                   (gx#stx-e _tl2521425498_)))
                                              (let ((_hd2521625504_
                                                     (##car _e2521525501_))
                                                    (_tl2521725506_
                                                     (##cdr _e2521525501_)))
                                                (if (gx#stx-pair?
                                                     _hd2521625504_)
                                                    (let ((_e2521825509_
                                                           (gx#stx-e
                                                            _hd2521625504_)))
                                                      (let ((_hd2521925512_
                                                             (##car _e2521825509_))
                                                            (_tl2522025514_
                                                             (##cdr _e2521825509_)))
                                                        (if (gx#identifier?
                                                             _hd2521925512_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2521925512_)
                        (if (gx#stx-pair? _tl2522025514_)
                            (let ((_e2522125517_ (gx#stx-e _tl2522025514_)))
                              (let ((_hd2522225520_ (##car _e2522125517_))
                                    (_tl2522325522_ (##cdr _e2522125517_)))
                                (if (gx#stx-null? _tl2522325522_)
                                    (if (gx#stx-pair? _tl2521725506_)
                                        (let ((_e2522425525_
                                               (gx#stx-e _tl2521725506_)))
                                          (let ((_hd2522525528_
                                                 (##car _e2522425525_))
                                                (_tl2522625530_
                                                 (##cdr _e2522425525_)))
                                            (if (gx#stx-pair? _hd2522525528_)
                                                (let ((_e2522725533_
                                                       (gx#stx-e
                                                        _hd2522525528_)))
                                                  (let ((_hd2522825536_
                                                         (##car _e2522725533_))
                                                        (_tl2522925538_
                                                         (##cdr _e2522725533_)))
                                                    (if (gx#identifier?
                                                         _hd2522825536_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2522825536_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2522925538_)
                        (let ((_e2523025541_ (gx#stx-e _tl2522925538_)))
                          (let ((_hd2523125544_ (##car _e2523025541_))
                                (_tl2523225546_ (##cdr _e2523025541_)))
                            (if (gx#stx-null? _tl2523225546_)
                                (if (gx#stx-pair/null? _tl2522625530_)
                                    (if (fx>= (gx#stx-length _tl2522625530_)
                                              '1)
                                        (let ((_g27452_
                                               (gx#syntax-split-splice
                                                _tl2522625530_
                                                '1)))
                                          (begin
                                            (let ((_g27453_
                                                   (values-count _g27452_)))
                                              (if (not (fx= _g27453_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27453_)))
                                            (let ((_target2523325549_
                                                   (values-ref _g27452_ 0))
                                                  (_tl2523525551_
                                                   (values-ref _g27452_ 1)))
                                              (if (gx#stx-pair? _tl2523525551_)
                                                  (let ((_e2524225554_
                                                         (gx#stx-e
                                                          _tl2523525551_)))
                                                    (let ((_hd2524325557_
                                                           (##car _e2524225554_))
                                                          (_tl2524425559_
                                                           (##cdr _e2524225554_)))
                                                      (if (gx#stx-pair?
                                                           _hd2524325557_)
                                                          (let ((_e2524525562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2524325557_)))
                    (let ((_hd2524625565_ (##car _e2524525562_))
                          (_tl2524725567_ (##cdr _e2524525562_)))
                      (if (gx#identifier? _hd2524625565_)
                          (if (gx#stx-eq? '%#ref _hd2524625565_)
                              (if (gx#stx-pair? _tl2524725567_)
                                  (let ((_e2524825570_
                                         (gx#stx-e _tl2524725567_)))
                                    (let ((_hd2524925573_
                                           (##car _e2524825570_))
                                          (_tl2525025575_
                                           (##cdr _e2524825570_)))
                                      (if (gx#stx-null? _tl2525025575_)
                                          (if (gx#stx-null? _tl2524425559_)
                                              (letrec ((_loop2523625578_
                                                        (lambda (_hd2523425581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2524025583_)
                  (if (gx#stx-pair? _hd2523425581_)
                      (let ((_e2523725586_ (gx#stx-e _hd2523425581_)))
                        (let ((_lp-hd2523825589_ (##car _e2523725586_))
                              (_lp-tl2523925591_ (##cdr _e2523725586_)))
                          (if (gx#stx-pair? _lp-hd2523825589_)
                              (let ((_e2525125594_
                                     (gx#stx-e _lp-hd2523825589_)))
                                (let ((_hd2525225597_ (##car _e2525125594_))
                                      (_tl2525325599_ (##cdr _e2525125594_)))
                                  (if (gx#identifier? _hd2525225597_)
                                      (if (gx#stx-eq? '%#ref _hd2525225597_)
                                          (if (gx#stx-pair? _tl2525325599_)
                                              (let ((_e2525425602_
                                                     (gx#stx-e
                                                      _tl2525325599_)))
                                                (let ((_hd2525525605_
                                                       (##car _e2525425602_))
                                                      (_tl2525625607_
                                                       (##cdr _e2525425602_)))
                                                  (if (gx#stx-null?
                                                       _tl2525625607_)
                                                      (_loop2523625578_
                                                       _lp-tl2523925591_
                                                       (cons _hd2525525605_
                                                             _xarg2524025583_))
                                                      (_g2514225448_
                                                       _g2514525451_))))
                                              (_g2514225448_ _g2514525451_))
                                          (_g2514225448_ _g2514525451_))
                                      (_g2514225448_ _g2514525451_))))
                              (_g2514225448_ _g2514525451_))))
                      (let ((_xarg2524125610_ (reverse _xarg2524025583_)))
                        (if (gx#stx-null? _tl2521125490_)
                            ((lambda (_L25613_
                                      _L25614_
                                      _L25615_
                                      _L25616_
                                      _L25617_
                                      _L25618_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2566125664_
                                                           _g2566225666_)
                                                    (cons _g2566125664_
                                                          _g2566225666_))
                                                  '()
                                                  _L25618_)))
                                       (if (gx#identifier? _L25617_)
                                           (if (eq? (gxc#generate-runtime-binding-id
                                                     _L25616_)
                                                    'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2566825671_ _g2566925673_)
                                    (cons _g2566825671_ _g2566925673_))
                                  '()
                                  _L25618_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2567525678_ _g2567625680_)
                                    (cons _g2567525678_ _g2567625680_))
                                  '()
                                  _L25614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2568225685_ _g2568325687_)
                                    (cons _g2568225685_ _g2568325687_))
                                  '()
                                  _L25618_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2568925692_ _g2569025694_)
                                    (cons _g2568925692_ _g2569025694_))
                                  '()
                                  _L25614_)))
               (if (gx#free-identifier=? _L25617_ _L25613_)
                   (not (find (lambda (_g2569625698_)
                                (gx#free-identifier=? _g2569625698_ _L25615_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2570025703_ _g2570125705_)
                                          (cons _g2570025703_ _g2570125705_))
                                        (cons _L25617_ '())
                                        _L25618_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2514225448_ _g2514525451_)))
                             _hd2524925573_
                             _xarg2524125610_
                             _hd2523125544_
                             _hd2522225520_
                             _tl2520225463_
                             _arg2520825482_)
                            (_g2514225448_ _g2514525451_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2523625578_
                                                 _target2523325549_
                                                 '()))
                                              (_g2514225448_ _g2514525451_))
                                          (_g2514225448_ _g2514525451_))))
                                  (_g2514225448_ _g2514525451_))
                              (_g2514225448_ _g2514525451_))
                          (_g2514225448_ _g2514525451_))))
                  (_g2514225448_ _g2514525451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2514225448_
                                                   _g2514525451_)))))
                                        (_g2514225448_ _g2514525451_))
                                    (_g2514225448_ _g2514525451_))
                                (_g2514225448_ _g2514525451_))))
                        (_g2514225448_ _g2514525451_))
                    (_g2514225448_ _g2514525451_))
                (_g2514225448_ _g2514525451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2514225448_
                                                 _g2514525451_))))
                                        (_g2514225448_ _g2514525451_))
                                    (_g2514225448_ _g2514525451_))))
                            (_g2514225448_ _g2514525451_))
                        (_g2514225448_ _g2514525451_))
                    (_g2514225448_ _g2514525451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2514225448_
                                                     _g2514525451_))))
                                            (_g2514225448_ _g2514525451_))
                                        (_g2514225448_ _g2514525451_))
                                    (_g2514225448_ _g2514525451_))))
                            (_g2514225448_ _g2514525451_))))
                    (_g2514225448_ _g2514525451_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2520325466_
                                         _target2520025461_
                                         '())))))
                                (_g2514225448_ _g2514525451_))
                            (_g2514225448_ _g2514525451_))))
                    (_g2514225448_ _g2514525451_))))
             (_g2514025902_
              (lambda (_g2514525711_)
                (if (gx#stx-pair? _g2514525711_)
                    (let ((_e2514925713_ (gx#stx-e _g2514525711_)))
                      (let ((_hd2515025716_ (##car _e2514925713_))
                            (_tl2515125718_ (##cdr _e2514925713_)))
                        (if (gx#stx-pair/null? _hd2515025716_)
                            (if (fx>= (gx#stx-length _hd2515025716_) '0)
                                (let ((_g27454_
                                       (gx#syntax-split-splice
                                        _hd2515025716_
                                        '0)))
                                  (begin
                                    (let ((_g27455_ (values-count _g27454_)))
                                      (if (not (fx= _g27455_ 2))
                                          (error "Context expects 2 values"
                                                 _g27455_)))
                                    (let ((_target2515225721_
                                           (values-ref _g27454_ 0))
                                          (_tl2515425723_
                                           (values-ref _g27454_ 1)))
                                      (if (gx#stx-null? _tl2515425723_)
                                          (letrec ((_loop2515525726_
                                                    (lambda (_hd2515325729_
                                                             _arg2515925731_)
                                                      (if (gx#stx-pair?
                                                           _hd2515325729_)
                                                          (let ((_e2515625734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2515325729_)))
                    (let ((_lp-hd2515725737_ (##car _e2515625734_))
                          (_lp-tl2515825739_ (##cdr _e2515625734_)))
                      (_loop2515525726_
                       _lp-tl2515825739_
                       (cons _lp-hd2515725737_ _arg2515925731_))))
                  (let ((_arg2516025742_ (reverse _arg2515925731_)))
                    (if (gx#stx-pair? _tl2515125718_)
                        (let ((_e2516125745_ (gx#stx-e _tl2515125718_)))
                          (let ((_hd2516225748_ (##car _e2516125745_))
                                (_tl2516325750_ (##cdr _e2516125745_)))
                            (if (gx#stx-pair? _hd2516225748_)
                                (let ((_e2516425753_
                                       (gx#stx-e _hd2516225748_)))
                                  (let ((_hd2516525756_ (##car _e2516425753_))
                                        (_tl2516625758_ (##cdr _e2516425753_)))
                                    (if (gx#identifier? _hd2516525756_)
                                        (if (gx#stx-eq? '%#call _hd2516525756_)
                                            (if (gx#stx-pair? _tl2516625758_)
                                                (let ((_e2516725761_
                                                       (gx#stx-e
                                                        _tl2516625758_)))
                                                  (let ((_hd2516825764_
                                                         (##car _e2516725761_))
                                                        (_tl2516925766_
                                                         (##cdr _e2516725761_)))
                                                    (if (gx#stx-pair?
                                                         _hd2516825764_)
                                                        (let ((_e2517025769_
                                                               (gx#stx-e
                                                                _hd2516825764_)))
                                                          (let ((_hd2517125772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2517025769_))
                        (_tl2517225774_ (##cdr _e2517025769_)))
                    (if (gx#identifier? _hd2517125772_)
                        (if (gx#stx-eq? '%#ref _hd2517125772_)
                            (if (gx#stx-pair? _tl2517225774_)
                                (let ((_e2517325777_
                                       (gx#stx-e _tl2517225774_)))
                                  (let ((_hd2517425780_ (##car _e2517325777_))
                                        (_tl2517525782_ (##cdr _e2517325777_)))
                                    (if (gx#stx-null? _tl2517525782_)
                                        (if (gx#stx-pair/null? _tl2516925766_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2516925766_)
                                                      '0)
                                                (let ((_g27456_
                                                       (gx#syntax-split-splice
                                                        _tl2516925766_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27457_
                                                           (values-count
                                                            _g27456_)))
                                                      (if (not (fx= _g27457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2517625785_
                                                           (values-ref
                                                            _g27456_
                                                            0))
                                                          (_tl2517825787_
                                                           (values-ref
                                                            _g27456_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2517825787_)
                                                          (letrec ((_loop2517925790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2517725793_ _xarg2518325795_)
                              (if (gx#stx-pair? _hd2517725793_)
                                  (let ((_e2518025798_
                                         (gx#stx-e _hd2517725793_)))
                                    (let ((_lp-hd2518125801_
                                           (##car _e2518025798_))
                                          (_lp-tl2518225803_
                                           (##cdr _e2518025798_)))
                                      (if (gx#stx-pair? _lp-hd2518125801_)
                                          (let ((_e2518525806_
                                                 (gx#stx-e _lp-hd2518125801_)))
                                            (let ((_hd2518625809_
                                                   (##car _e2518525806_))
                                                  (_tl2518725811_
                                                   (##cdr _e2518525806_)))
                                              (if (gx#identifier?
                                                   _hd2518625809_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2518625809_)
                                                      (if (gx#stx-pair?
                                                           _tl2518725811_)
                                                          (let ((_e2518825814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2518725811_)))
                    (let ((_hd2518925817_ (##car _e2518825814_))
                          (_tl2519025819_ (##cdr _e2518825814_)))
                      (if (gx#stx-null? _tl2519025819_)
                          (_loop2517925790_
                           _lp-tl2518225803_
                           (cons _hd2518925817_ _xarg2518325795_))
                          (_g2514125708_ _g2514525711_))))
                  (_g2514125708_ _g2514525711_))
              (_g2514125708_ _g2514525711_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2514125708_
                                                   _g2514525711_))))
                                          (_g2514125708_ _g2514525711_))))
                                  (let ((_xarg2518425822_
                                         (reverse _xarg2518325795_)))
                                    (if (gx#stx-null? _tl2516325750_)
                                        ((lambda (_L25825_ _L25826_ _L25827_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2585525858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2585625860_)
                        (cons _g2585525858_ _g2585625860_))
                      '()
                      _L25827_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2586225865_ _g2586325867_)
                                        (cons _g2586225865_ _g2586325867_))
                                      '()
                                      _L25827_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2586925872_ _g2587025874_)
                                        (cons _g2586925872_ _g2587025874_))
                                      '()
                                      _L25825_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2587625879_ _g2587725881_)
                                        (cons _g2587625879_ _g2587725881_))
                                      '()
                                      _L25827_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2588325886_ _g2588425888_)
                                        (cons _g2588325886_ _g2588425888_))
                                      '()
                                      _L25825_)))
                   (not (find (lambda (_g2589025892_)
                                (gx#free-identifier=? _g2589025892_ _L25826_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2589425897_ _g2589525899_)
                                          (cons _g2589425897_ _g2589525899_))
                                        '()
                                        _L25827_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2514125708_ _g2514525711_)))
                                         _xarg2518425822_
                                         _hd2517425780_
                                         _arg2516025742_)
                                        (_g2514125708_ _g2514525711_)))))))
                    (_loop2517925790_ _target2517625785_ '()))
                  (_g2514125708_ _g2514525711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2514125708_ _g2514525711_))
                                            (_g2514125708_ _g2514525711_))
                                        (_g2514125708_ _g2514525711_))))
                                (_g2514125708_ _g2514525711_))
                            (_g2514125708_ _g2514525711_))
                        (_g2514125708_ _g2514525711_))))
                (_g2514125708_ _g2514525711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2514125708_ _g2514525711_))
                                            (_g2514125708_ _g2514525711_))
                                        (_g2514125708_ _g2514525711_))))
                                (_g2514125708_ _g2514525711_))))
                        (_g2514125708_ _g2514525711_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2515525726_
                                             _target2515225721_
                                             '()))
                                          (_g2514125708_ _g2514525711_)))))
                                (_g2514125708_ _g2514525711_))
                            (_g2514125708_ _g2514525711_))))
                    (_g2514125708_ _g2514525711_)))))
        (_g2514025902_ _form25139_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form24607_)
      (let* ((_g2461124735_
              (lambda (_g2461224732_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2461224732_)))
             (_g2461024852_
              (lambda (_g2461224738_)
                (if (gx#stx-pair? _g2461224738_)
                    (let ((_e2470124740_ (gx#stx-e _g2461224738_)))
                      (let ((_hd2470224743_ (##car _e2470124740_))
                            (_tl2470324745_ (##cdr _e2470124740_)))
                        (if (gx#stx-pair? _tl2470324745_)
                            (let ((_e2470424748_ (gx#stx-e _tl2470324745_)))
                              (let ((_hd2470524751_ (##car _e2470424748_))
                                    (_tl2470624753_ (##cdr _e2470424748_)))
                                (if (gx#stx-pair? _hd2470524751_)
                                    (let ((_e2470724756_
                                           (gx#stx-e _hd2470524751_)))
                                      (let ((_hd2470824759_
                                             (##car _e2470724756_))
                                            (_tl2470924761_
                                             (##cdr _e2470724756_)))
                                        (if (gx#identifier? _hd2470824759_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2470824759_)
                                                (if (gx#stx-pair?
                                                     _tl2470924761_)
                                                    (let ((_e2471024764_
                                                           (gx#stx-e
                                                            _tl2470924761_)))
                                                      (let ((_hd2471124767_
                                                             (##car _e2471024764_))
                                                            (_tl2471224769_
                                                             (##cdr _e2471024764_)))
                                                        (if (gx#stx-pair?
                                                             _hd2471124767_)
                                                            (let ((_e2471324772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2471124767_)))
                      (let ((_hd2471424775_ (##car _e2471324772_))
                            (_tl2471524777_ (##cdr _e2471324772_)))
                        (if (gx#identifier? _hd2471424775_)
                            (if (gx#stx-eq? '%#ref _hd2471424775_)
                                (if (gx#stx-pair? _tl2471524777_)
                                    (let ((_e2471624780_
                                           (gx#stx-e _tl2471524777_)))
                                      (let ((_hd2471724783_
                                             (##car _e2471624780_))
                                            (_tl2471824785_
                                             (##cdr _e2471624780_)))
                                        (if (gx#stx-null? _tl2471824785_)
                                            (if (gx#stx-pair? _tl2471224769_)
                                                (let ((_e2471924788_
                                                       (gx#stx-e
                                                        _tl2471224769_)))
                                                  (let ((_hd2472024791_
                                                         (##car _e2471924788_))
                                                        (_tl2472124793_
                                                         (##cdr _e2471924788_)))
                                                    (if (gx#stx-pair?
                                                         _hd2472024791_)
                                                        (let ((_e2472224796_
                                                               (gx#stx-e
                                                                _hd2472024791_)))
                                                          (let ((_hd2472324799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2472224796_))
                        (_tl2472424801_ (##cdr _e2472224796_)))
                    (if (gx#identifier? _hd2472324799_)
                        (if (gx#stx-eq? '%#ref _hd2472324799_)
                            (if (gx#stx-pair? _tl2472424801_)
                                (let ((_e2472524804_
                                       (gx#stx-e _tl2472424801_)))
                                  (let ((_hd2472624807_ (##car _e2472524804_))
                                        (_tl2472724809_ (##cdr _e2472524804_)))
                                    (if (gx#stx-null? _tl2472724809_)
                                        (if (gx#stx-pair? _tl2472124793_)
                                            (let ((_e2472824812_
                                                   (gx#stx-e _tl2472124793_)))
                                              (let ((_hd2472924815_
                                                     (##car _e2472824812_))
                                                    (_tl2473024817_
                                                     (##cdr _e2472824812_)))
                                                (if (gx#stx-null?
                                                     _tl2473024817_)
                                                    (if (gx#stx-null?
                                                         _tl2470624753_)
                                                        ((lambda (_L24820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24821_
                          _L24822_)
                   (gxc#generate-runtime-binding-id _L24820_))
                 _hd2472624807_
                 _hd2471724783_
                 _hd2470224743_)
                (_g2461124735_ _g2461224738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2461124735_
                                                     _g2461224738_))))
                                            (_g2461124735_ _g2461224738_))
                                        (_g2461124735_ _g2461224738_))))
                                (_g2461124735_ _g2461224738_))
                            (_g2461124735_ _g2461224738_))
                        (_g2461124735_ _g2461224738_))))
                (_g2461124735_ _g2461224738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2461124735_ _g2461224738_))
                                            (_g2461124735_ _g2461224738_))))
                                    (_g2461124735_ _g2461224738_))
                                (_g2461124735_ _g2461224738_))
                            (_g2461124735_ _g2461224738_))))
                    (_g2461124735_ _g2461224738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2461124735_
                                                     _g2461224738_))
                                                (_g2461124735_ _g2461224738_))
                                            (_g2461124735_ _g2461224738_))))
                                    (_g2461124735_ _g2461224738_))))
                            (_g2461124735_ _g2461224738_))))
                    (_g2461124735_ _g2461224738_))))
             (_g2460924988_
              (lambda (_g2461224855_)
                (if (gx#stx-pair? _g2461224855_)
                    (let ((_e2466224857_ (gx#stx-e _g2461224855_)))
                      (let ((_hd2466324860_ (##car _e2466224857_))
                            (_tl2466424862_ (##cdr _e2466224857_)))
                        (if (gx#stx-pair/null? _hd2466324860_)
                            (if (fx>= (gx#stx-length _hd2466324860_) '0)
                                (let ((_g27458_
                                       (gx#syntax-split-splice
                                        _hd2466324860_
                                        '0)))
                                  (begin
                                    (let ((_g27459_ (values-count _g27458_)))
                                      (if (not (fx= _g27459_ 2))
                                          (error "Context expects 2 values"
                                                 _g27459_)))
                                    (let ((_target2466524865_
                                           (values-ref _g27458_ 0))
                                          (_tl2466724867_
                                           (values-ref _g27458_ 1)))
                                      (letrec ((_loop2466824870_
                                                (lambda (_hd2466624873_
                                                         _arg2467224875_)
                                                  (if (gx#stx-pair?
                                                       _hd2466624873_)
                                                      (let ((_e2466924878_
                                                             (gx#stx-e
                                                              _hd2466624873_)))
                                                        (let ((_lp-hd2467024881_
                                                               (##car _e2466924878_))
                                                              (_lp-tl2467124883_
                                                               (##cdr _e2466924878_)))
                                                          (_loop2466824870_
                                                           _lp-tl2467124883_
                                                           (cons _lp-hd2467024881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2467224875_))))
              (let ((_arg2467324886_ (reverse _arg2467224875_)))
                (if (gx#stx-pair? _tl2466424862_)
                    (let ((_e2467424889_ (gx#stx-e _tl2466424862_)))
                      (let ((_hd2467524892_ (##car _e2467424889_))
                            (_tl2467624894_ (##cdr _e2467424889_)))
                        (if (gx#stx-pair? _hd2467524892_)
                            (let ((_e2467724897_ (gx#stx-e _hd2467524892_)))
                              (let ((_hd2467824900_ (##car _e2467724897_))
                                    (_tl2467924902_ (##cdr _e2467724897_)))
                                (if (gx#identifier? _hd2467824900_)
                                    (if (gx#stx-eq? '%#call _hd2467824900_)
                                        (if (gx#stx-pair? _tl2467924902_)
                                            (let ((_e2468024905_
                                                   (gx#stx-e _tl2467924902_)))
                                              (let ((_hd2468124908_
                                                     (##car _e2468024905_))
                                                    (_tl2468224910_
                                                     (##cdr _e2468024905_)))
                                                (if (gx#stx-pair?
                                                     _hd2468124908_)
                                                    (let ((_e2468324913_
                                                           (gx#stx-e
                                                            _hd2468124908_)))
                                                      (let ((_hd2468424916_
                                                             (##car _e2468324913_))
                                                            (_tl2468524918_
                                                             (##cdr _e2468324913_)))
                                                        (if (gx#identifier?
                                                             _hd2468424916_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2468424916_)
                        (if (gx#stx-pair? _tl2468524918_)
                            (let ((_e2468624921_ (gx#stx-e _tl2468524918_)))
                              (let ((_hd2468724924_ (##car _e2468624921_))
                                    (_tl2468824926_ (##cdr _e2468624921_)))
                                (if (gx#stx-null? _tl2468824926_)
                                    (if (gx#stx-pair? _tl2468224910_)
                                        (let ((_e2468924929_
                                               (gx#stx-e _tl2468224910_)))
                                          (let ((_hd2469024932_
                                                 (##car _e2468924929_))
                                                (_tl2469124934_
                                                 (##cdr _e2468924929_)))
                                            (if (gx#stx-pair? _hd2469024932_)
                                                (let ((_e2469224937_
                                                       (gx#stx-e
                                                        _hd2469024932_)))
                                                  (let ((_hd2469324940_
                                                         (##car _e2469224937_))
                                                        (_tl2469424942_
                                                         (##cdr _e2469224937_)))
                                                    (if (gx#identifier?
                                                         _hd2469324940_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2469324940_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2469424942_)
                        (let ((_e2469524945_ (gx#stx-e _tl2469424942_)))
                          (let ((_hd2469624948_ (##car _e2469524945_))
                                (_tl2469724950_ (##cdr _e2469524945_)))
                            (if (gx#stx-null? _tl2469724950_)
                                (if (gx#stx-null? _tl2467624894_)
                                    ((lambda (_L24953_
                                              _L24954_
                                              _L24955_
                                              _L24956_)
                                       (gxc#generate-runtime-binding-id
                                        _L24953_))
                                     _hd2469624948_
                                     _hd2468724924_
                                     _tl2466724867_
                                     _arg2467324886_)
                                    (_g2461024852_ _g2461224855_))
                                (_g2461024852_ _g2461224855_))))
                        (_g2461024852_ _g2461224855_))
                    (_g2461024852_ _g2461224855_))
                (_g2461024852_ _g2461224855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2461024852_
                                                 _g2461224855_))))
                                        (_g2461024852_ _g2461224855_))
                                    (_g2461024852_ _g2461224855_))))
                            (_g2461024852_ _g2461224855_))
                        (_g2461024852_ _g2461224855_))
                    (_g2461024852_ _g2461224855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2461024852_
                                                     _g2461224855_))))
                                            (_g2461024852_ _g2461224855_))
                                        (_g2461024852_ _g2461224855_))
                                    (_g2461024852_ _g2461224855_))))
                            (_g2461024852_ _g2461224855_))))
                    (_g2461024852_ _g2461224855_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2466824870_
                                         _target2466524865_
                                         '())))))
                                (_g2461024852_ _g2461224855_))
                            (_g2461024852_ _g2461224855_))))
                    (_g2461024852_ _g2461224855_))))
             (_g2460825136_
              (lambda (_g2461224991_)
                (if (gx#stx-pair? _g2461224991_)
                    (let ((_e2461624993_ (gx#stx-e _g2461224991_)))
                      (let ((_hd2461724996_ (##car _e2461624993_))
                            (_tl2461824998_ (##cdr _e2461624993_)))
                        (if (gx#stx-pair/null? _hd2461724996_)
                            (if (fx>= (gx#stx-length _hd2461724996_) '0)
                                (let ((_g27460_
                                       (gx#syntax-split-splice
                                        _hd2461724996_
                                        '0)))
                                  (begin
                                    (let ((_g27461_ (values-count _g27460_)))
                                      (if (not (fx= _g27461_ 2))
                                          (error "Context expects 2 values"
                                                 _g27461_)))
                                    (let ((_target2461925001_
                                           (values-ref _g27460_ 0))
                                          (_tl2462125003_
                                           (values-ref _g27460_ 1)))
                                      (if (gx#stx-null? _tl2462125003_)
                                          (letrec ((_loop2462225006_
                                                    (lambda (_hd2462025009_
                                                             _arg2462625011_)
                                                      (if (gx#stx-pair?
                                                           _hd2462025009_)
                                                          (let ((_e2462325014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2462025009_)))
                    (let ((_lp-hd2462425017_ (##car _e2462325014_))
                          (_lp-tl2462525019_ (##cdr _e2462325014_)))
                      (_loop2462225006_
                       _lp-tl2462525019_
                       (cons _lp-hd2462425017_ _arg2462625011_))))
                  (let ((_arg2462725022_ (reverse _arg2462625011_)))
                    (if (gx#stx-pair? _tl2461824998_)
                        (let ((_e2462825025_ (gx#stx-e _tl2461824998_)))
                          (let ((_hd2462925028_ (##car _e2462825025_))
                                (_tl2463025030_ (##cdr _e2462825025_)))
                            (if (gx#stx-pair? _hd2462925028_)
                                (let ((_e2463125033_
                                       (gx#stx-e _hd2462925028_)))
                                  (let ((_hd2463225036_ (##car _e2463125033_))
                                        (_tl2463325038_ (##cdr _e2463125033_)))
                                    (if (gx#identifier? _hd2463225036_)
                                        (if (gx#stx-eq? '%#call _hd2463225036_)
                                            (if (gx#stx-pair? _tl2463325038_)
                                                (let ((_e2463425041_
                                                       (gx#stx-e
                                                        _tl2463325038_)))
                                                  (let ((_hd2463525044_
                                                         (##car _e2463425041_))
                                                        (_tl2463625046_
                                                         (##cdr _e2463425041_)))
                                                    (if (gx#stx-pair?
                                                         _hd2463525044_)
                                                        (let ((_e2463725049_
                                                               (gx#stx-e
                                                                _hd2463525044_)))
                                                          (let ((_hd2463825052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2463725049_))
                        (_tl2463925054_ (##cdr _e2463725049_)))
                    (if (gx#identifier? _hd2463825052_)
                        (if (gx#stx-eq? '%#ref _hd2463825052_)
                            (if (gx#stx-pair? _tl2463925054_)
                                (let ((_e2464025057_
                                       (gx#stx-e _tl2463925054_)))
                                  (let ((_hd2464125060_ (##car _e2464025057_))
                                        (_tl2464225062_ (##cdr _e2464025057_)))
                                    (if (gx#stx-null? _tl2464225062_)
                                        (if (gx#stx-pair/null? _tl2463625046_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2463625046_)
                                                      '0)
                                                (let ((_g27462_
                                                       (gx#syntax-split-splice
                                                        _tl2463625046_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27463_
                                                           (values-count
                                                            _g27462_)))
                                                      (if (not (fx= _g27463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g27463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2464325065_
                                                           (values-ref
                                                            _g27462_
                                                            0))
                                                          (_tl2464525067_
                                                           (values-ref
                                                            _g27462_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2464525067_)
                                                          (letrec ((_loop2464625070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2464425073_ _xarg2465025075_)
                              (if (gx#stx-pair? _hd2464425073_)
                                  (let ((_e2464725078_
                                         (gx#stx-e _hd2464425073_)))
                                    (let ((_lp-hd2464825081_
                                           (##car _e2464725078_))
                                          (_lp-tl2464925083_
                                           (##cdr _e2464725078_)))
                                      (if (gx#stx-pair? _lp-hd2464825081_)
                                          (let ((_e2465225086_
                                                 (gx#stx-e _lp-hd2464825081_)))
                                            (let ((_hd2465325089_
                                                   (##car _e2465225086_))
                                                  (_tl2465425091_
                                                   (##cdr _e2465225086_)))
                                              (if (gx#identifier?
                                                   _hd2465325089_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2465325089_)
                                                      (if (gx#stx-pair?
                                                           _tl2465425091_)
                                                          (let ((_e2465525094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2465425091_)))
                    (let ((_hd2465625097_ (##car _e2465525094_))
                          (_tl2465725099_ (##cdr _e2465525094_)))
                      (if (gx#stx-null? _tl2465725099_)
                          (_loop2464625070_
                           _lp-tl2464925083_
                           (cons _hd2465625097_ _xarg2465025075_))
                          (_g2460924988_ _g2461224991_))))
                  (_g2460924988_ _g2461224991_))
              (_g2460924988_ _g2461224991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2460924988_
                                                   _g2461224991_))))
                                          (_g2460924988_ _g2461224991_))))
                                  (let ((_xarg2465125102_
                                         (reverse _xarg2465025075_)))
                                    (if (gx#stx-null? _tl2463025030_)
                                        ((lambda (_L25105_ _L25106_ _L25107_)
                                           (gxc#generate-runtime-binding-id
                                            _L25106_))
                                         _xarg2465125102_
                                         _hd2464125060_
                                         _arg2462725022_)
                                        (_g2460924988_ _g2461224991_)))))))
                    (_loop2464625070_ _target2464325065_ '()))
                  (_g2460924988_ _g2461224991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2460924988_ _g2461224991_))
                                            (_g2460924988_ _g2461224991_))
                                        (_g2460924988_ _g2461224991_))))
                                (_g2460924988_ _g2461224991_))
                            (_g2460924988_ _g2461224991_))
                        (_g2460924988_ _g2461224991_))))
                (_g2460924988_ _g2461224991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2460924988_ _g2461224991_))
                                            (_g2460924988_ _g2461224991_))
                                        (_g2460924988_ _g2461224991_))))
                                (_g2460924988_ _g2461224991_))))
                        (_g2460924988_ _g2461224991_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2462225006_
                                             _target2461925001_
                                             '()))
                                          (_g2460924988_ _g2461224991_)))))
                                (_g2460924988_ _g2461224991_))
                            (_g2460924988_ _g2461224991_))))
                    (_g2460924988_ _g2461224991_)))))
        (_g2460825136_ _form24607_))))
  (define gxc#lambda-form-arity
    (lambda (_form24411_)
      (let* ((_g2441324427_
              (lambda (_g2441424424_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2441424424_)))
             (_g2441224604_
              (lambda (_g2441424430_)
                (if (gx#stx-pair? _g2441424430_)
                    (let ((_e2441724432_ (gx#stx-e _g2441424430_)))
                      (let ((_hd2441824435_ (##car _e2441724432_))
                            (_tl2441924437_ (##cdr _e2441724432_)))
                        (if (gx#stx-pair? _tl2441924437_)
                            (let ((_e2442024440_ (gx#stx-e _tl2441924437_)))
                              (let ((_hd2442124443_ (##car _e2442024440_))
                                    (_tl2442224445_ (##cdr _e2442024440_)))
                                (if (gx#stx-null? _tl2442224445_)
                                    ((lambda (_L24448_ _L24449_)
                                       (let* ((_g2446424492_
                                               (lambda (_g2446524489_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2446524489_)))
                                              (_g2446324505_
                                               (lambda (_g2446524495_)
                                                 ((lambda (_L24497_)
                                                    (cons '0 '()))
                                                  _g2446524495_)))
                                              (_g2446224554_
                                               (lambda (_g2446524508_)
                                                 (if (gx#stx-pair/null?
                                                      _g2446524508_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2446524508_)
                                                               '0)
                                                         (let ((_g27464_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2446524508_
                         '0)))
                   (begin
                     (let ((_g27465_ (values-count _g27464_)))
                       (if (not (fx= _g27465_ 2))
                           (error "Context expects 2 values" _g27465_)))
                     (let ((_target2447824510_ (values-ref _g27464_ 0))
                           (_tl2448024512_ (values-ref _g27464_ 1)))
                       (letrec ((_loop2448124515_
                                 (lambda (_hd2447924518_ _arg2448524520_)
                                   (if (gx#stx-pair? _hd2447924518_)
                                       (let ((_e2448224523_
                                              (gx#stx-e _hd2447924518_)))
                                         (let ((_lp-hd2448324526_
                                                (##car _e2448224523_))
                                               (_lp-tl2448424528_
                                                (##cdr _e2448224523_)))
                                           (_loop2448124515_
                                            _lp-tl2448424528_
                                            (cons _lp-hd2448324526_
                                                  _arg2448524520_))))
                                       (let ((_arg2448624531_
                                              (reverse _arg2448524520_)))
                                         ((lambda (_L24534_ _L24535_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2454624549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2454724551_)
                              (cons _g2454624549_ _g2454724551_))
                            '()
                            _L24535_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl2448024512_
                                          _arg2448624531_))))))
                         (_loop2448124515_ _target2447824510_ '())))))
                 (_g2446324505_ _g2446524508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2446324505_
                                                      _g2446524508_))))
                                              (_g2446124601_
                                               (lambda (_g2446524557_)
                                                 (if (gx#stx-pair/null?
                                                      _g2446524557_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2446524557_)
                                                               '0)
                                                         (let ((_g27466_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2446524557_
                         '0)))
                   (begin
                     (let ((_g27467_ (values-count _g27466_)))
                       (if (not (fx= _g27467_ 2))
                           (error "Context expects 2 values" _g27467_)))
                     (let ((_target2446724559_ (values-ref _g27466_ 0))
                           (_tl2446924561_ (values-ref _g27466_ 1)))
                       (if (gx#stx-null? _tl2446924561_)
                           (letrec ((_loop2447024564_
                                     (lambda (_hd2446824567_ _arg2447424569_)
                                       (if (gx#stx-pair? _hd2446824567_)
                                           (let ((_e2447124572_
                                                  (gx#stx-e _hd2446824567_)))
                                             (let ((_lp-hd2447224575_
                                                    (##car _e2447124572_))
                                                   (_lp-tl2447324577_
                                                    (##cdr _e2447124572_)))
                                               (_loop2447024564_
                                                _lp-tl2447324577_
                                                (cons _lp-hd2447224575_
                                                      _arg2447424569_))))
                                           (let ((_arg2447524580_
                                                  (reverse _arg2447424569_)))
                                             ((lambda (_L24583_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2459324596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2459424598_)
                            (cons _g2459324596_ _g2459424598_))
                          '()
                          _L24583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg2447524580_))))))
                             (_loop2447024564_ _target2446724559_ '()))
                           (_g2446224554_ _g2446524557_)))))
                 (_g2446224554_ _g2446524557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2446224554_
                                                      _g2446524557_)))))
                                         (_g2446124601_ _L24449_)))
                                     _hd2442124443_
                                     _hd2441824435_)
                                    (_g2441324427_ _g2441424430_))))
                            (_g2441324427_ _g2441424430_))))
                    (_g2441324427_ _g2441424430_)))))
        (_g2441224604_ _form24411_))))
  (define gxc#lambda-expr?
    (lambda (_expr24364_)
      (let* ((_g2436724377_
              (lambda (_g2436824374_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2436824374_)))
             (_g2436624384_ (lambda (_g2436824380_) ((lambda () '#f))))
             (_g2436524408_
              (lambda (_g2436824387_)
                (if (gx#stx-pair? _g2436824387_)
                    (let ((_e2437024389_ (gx#stx-e _g2436824387_)))
                      (let ((_hd2437124392_ (##car _e2437024389_))
                            (_tl2437224394_ (##cdr _e2437024389_)))
                        (if (gx#identifier? _hd2437124392_)
                            (if (gx#stx-eq? '%#lambda _hd2437124392_)
                                ((lambda (_L24397_) '#t) _tl2437224394_)
                                (_g2436624384_ _g2436824387_))
                            (_g2436624384_ _g2436824387_))))
                    (_g2436624384_ _g2436824387_)))))
        (_g2436524408_ _expr24364_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr24317_)
      (let* ((_g2432024330_
              (lambda (_g2432124327_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2432124327_)))
             (_g2431924337_ (lambda (_g2432124333_) ((lambda () '#f))))
             (_g2431824361_
              (lambda (_g2432124340_)
                (if (gx#stx-pair? _g2432124340_)
                    (let ((_e2432324342_ (gx#stx-e _g2432124340_)))
                      (let ((_hd2432424345_ (##car _e2432324342_))
                            (_tl2432524347_ (##cdr _e2432324342_)))
                        (if (gx#identifier? _hd2432424345_)
                            (if (gx#stx-eq? '%#case-lambda _hd2432424345_)
                                ((lambda (_L24350_) '#t) _tl2432524347_)
                                (_g2431924337_ _g2432124340_))
                            (_g2431924337_ _g2432124340_))))
                    (_g2431924337_ _g2432124340_)))))
        (_g2431824361_ _expr24317_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr24186_)
      (let* ((_g2418924219_
              (lambda (_g2419024216_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2419024216_)))
             (_g2418824226_ (lambda (_g2419024222_) ((lambda () '#f))))
             (_g2418724314_
              (lambda (_g2419024229_)
                (if (gx#stx-pair? _g2419024229_)
                    (let ((_e2419424231_ (gx#stx-e _g2419024229_)))
                      (let ((_hd2419524234_ (##car _e2419424231_))
                            (_tl2419624236_ (##cdr _e2419424231_)))
                        (if (gx#identifier? _hd2419524234_)
                            (if (gx#stx-eq? '%#let-values _hd2419524234_)
                                (if (gx#stx-pair? _tl2419624236_)
                                    (let ((_e2419724239_
                                           (gx#stx-e _tl2419624236_)))
                                      (let ((_hd2419824242_
                                             (##car _e2419724239_))
                                            (_tl2419924244_
                                             (##cdr _e2419724239_)))
                                        (if (gx#stx-pair? _hd2419824242_)
                                            (let ((_e2420024247_
                                                   (gx#stx-e _hd2419824242_)))
                                              (let ((_hd2420124250_
                                                     (##car _e2420024247_))
                                                    (_tl2420224252_
                                                     (##cdr _e2420024247_)))
                                                (if (gx#stx-pair?
                                                     _hd2420124250_)
                                                    (let ((_e2420324255_
                                                           (gx#stx-e
                                                            _hd2420124250_)))
                                                      (let ((_hd2420424258_
                                                             (##car _e2420324255_))
                                                            (_tl2420524260_
                                                             (##cdr _e2420324255_)))
                                                        (if (gx#stx-pair?
                                                             _hd2420424258_)
                                                            (let ((_e2420624263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2420424258_)))
                      (let ((_hd2420724266_ (##car _e2420624263_))
                            (_tl2420824268_ (##cdr _e2420624263_)))
                        (if (gx#stx-null? _tl2420824268_)
                            (if (gx#stx-pair? _tl2420524260_)
                                (let ((_e2420924271_
                                       (gx#stx-e _tl2420524260_)))
                                  (let ((_hd2421024274_ (##car _e2420924271_))
                                        (_tl2421124276_ (##cdr _e2420924271_)))
                                    (if (gx#stx-null? _tl2421124276_)
                                        (if (gx#stx-null? _tl2420224252_)
                                            (if (gx#stx-pair? _tl2419924244_)
                                                (let ((_e2421224279_
                                                       (gx#stx-e
                                                        _tl2419924244_)))
                                                  (let ((_hd2421324282_
                                                         (##car _e2421224279_))
                                                        (_tl2421424284_
                                                         (##cdr _e2421224279_)))
                                                    (if (gx#stx-null?
                                                         _tl2421424284_)
                                                        ((lambda (_L24287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24288_
                          _L24289_)
                   (if (gx#identifier? _L24289_)
                       (if (gxc#lambda-expr? _L24288_)
                           (gxc#case-lambda-expr? _L24287_)
                           '#f)
                       '#f))
                 _hd2421324282_
                 _hd2421024274_
                 _hd2420724266_)
                (_g2418824226_ _g2419024229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2418824226_ _g2419024229_))
                                            (_g2418824226_ _g2419024229_))
                                        (_g2418824226_ _g2419024229_))))
                                (_g2418824226_ _g2419024229_))
                            (_g2418824226_ _g2419024229_))))
                    (_g2418824226_ _g2419024229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2418824226_
                                                     _g2419024229_))))
                                            (_g2418824226_ _g2419024229_))))
                                    (_g2418824226_ _g2419024229_))
                                (_g2418824226_ _g2419024229_))
                            (_g2418824226_ _g2419024229_))))
                    (_g2418824226_ _g2419024229_)))))
        (_g2418724314_ _expr24186_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr23511_)
      (let* ((_g2351423672_
              (lambda (_g2351523669_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2351523669_)))
             (_g2351323679_ (lambda (_g2351523675_) ((lambda () '#f))))
             (_g2351224183_
              (lambda (_g2351523682_)
                (if (gx#stx-pair? _g2351523682_)
                    (let ((_e2352723684_ (gx#stx-e _g2351523682_)))
                      (let ((_hd2352823687_ (##car _e2352723684_))
                            (_tl2352923689_ (##cdr _e2352723684_)))
                        (if (gx#identifier? _hd2352823687_)
                            (if (gx#stx-eq? '%#let-values _hd2352823687_)
                                (if (gx#stx-pair? _tl2352923689_)
                                    (let ((_e2353023692_
                                           (gx#stx-e _tl2352923689_)))
                                      (let ((_hd2353123695_
                                             (##car _e2353023692_))
                                            (_tl2353223697_
                                             (##cdr _e2353023692_)))
                                        (if (gx#stx-pair? _hd2353123695_)
                                            (let ((_e2353323700_
                                                   (gx#stx-e _hd2353123695_)))
                                              (let ((_hd2353423703_
                                                     (##car _e2353323700_))
                                                    (_tl2353523705_
                                                     (##cdr _e2353323700_)))
                                                (if (gx#stx-pair?
                                                     _hd2353423703_)
                                                    (let ((_e2353623708_
                                                           (gx#stx-e
                                                            _hd2353423703_)))
                                                      (let ((_hd2353723711_
                                                             (##car _e2353623708_))
                                                            (_tl2353823713_
                                                             (##cdr _e2353623708_)))
                                                        (if (gx#stx-pair?
                                                             _hd2353723711_)
                                                            (let ((_e2353923716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2353723711_)))
                      (let ((_hd2354023719_ (##car _e2353923716_))
                            (_tl2354123721_ (##cdr _e2353923716_)))
                        (if (gx#stx-null? _tl2354123721_)
                            (if (gx#stx-pair? _tl2353823713_)
                                (let ((_e2354223724_
                                       (gx#stx-e _tl2353823713_)))
                                  (let ((_hd2354323727_ (##car _e2354223724_))
                                        (_tl2354423729_ (##cdr _e2354223724_)))
                                    (if (gx#stx-pair? _hd2354323727_)
                                        (let ((_e2354523732_
                                               (gx#stx-e _hd2354323727_)))
                                          (let ((_hd2354623735_
                                                 (##car _e2354523732_))
                                                (_tl2354723737_
                                                 (##cdr _e2354523732_)))
                                            (if (gx#identifier? _hd2354623735_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd2354623735_)
                                                    (if (gx#stx-pair?
                                                         _tl2354723737_)
                                                        (let ((_e2354823740_
                                                               (gx#stx-e
                                                                _tl2354723737_)))
                                                          (let ((_hd2354923743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2354823740_))
                        (_tl2355023745_ (##cdr _e2354823740_)))
                    (if (gx#stx-pair? _hd2354923743_)
                        (let ((_e2355123748_ (gx#stx-e _hd2354923743_)))
                          (let ((_hd2355223751_ (##car _e2355123748_))
                                (_tl2355323753_ (##cdr _e2355123748_)))
                            (if (gx#stx-pair? _hd2355223751_)
                                (let ((_e2355423756_
                                       (gx#stx-e _hd2355223751_)))
                                  (let ((_hd2355523759_ (##car _e2355423756_))
                                        (_tl2355623761_ (##cdr _e2355423756_)))
                                    (if (gx#stx-pair? _hd2355523759_)
                                        (let ((_e2355723764_
                                               (gx#stx-e _hd2355523759_)))
                                          (let ((_hd2355823767_
                                                 (##car _e2355723764_))
                                                (_tl2355923769_
                                                 (##cdr _e2355723764_)))
                                            (if (gx#stx-null? _tl2355923769_)
                                                (if (gx#stx-pair?
                                                     _tl2355623761_)
                                                    (let ((_e2356023772_
                                                           (gx#stx-e
                                                            _tl2355623761_)))
                                                      (let ((_hd2356123775_
                                                             (##car _e2356023772_))
                                                            (_tl2356223777_
                                                             (##cdr _e2356023772_)))
                                                        (if (gx#stx-null?
                                                             _tl2356223777_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2355323753_)
                        (if (gx#stx-pair? _tl2355023745_)
                            (let ((_e2356323780_ (gx#stx-e _tl2355023745_)))
                              (let ((_hd2356423783_ (##car _e2356323780_))
                                    (_tl2356523785_ (##cdr _e2356323780_)))
                                (if (gx#stx-pair? _hd2356423783_)
                                    (let ((_e2356623788_
                                           (gx#stx-e _hd2356423783_)))
                                      (let ((_hd2356723791_
                                             (##car _e2356623788_))
                                            (_tl2356823793_
                                             (##cdr _e2356623788_)))
                                        (if (gx#identifier? _hd2356723791_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd2356723791_)
                                                (if (gx#stx-pair?
                                                     _tl2356823793_)
                                                    (let ((_e2356923796_
                                                           (gx#stx-e
                                                            _tl2356823793_)))
                                                      (let ((_hd2357023799_
                                                             (##car _e2356923796_))
                                                            (_tl2357123801_
                                                             (##cdr _e2356923796_)))
                                                        (if (gx#stx-pair?
                                                             _hd2357023799_)
                                                            (let ((_e2357223804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2357023799_)))
                      (let ((_hd2357323807_ (##car _e2357223804_))
                            (_tl2357423809_ (##cdr _e2357223804_)))
                        (if (gx#stx-pair? _tl2357123801_)
                            (let ((_e2357523812_ (gx#stx-e _tl2357123801_)))
                              (let ((_hd2357623815_ (##car _e2357523812_))
                                    (_tl2357723817_ (##cdr _e2357523812_)))
                                (if (gx#stx-pair? _hd2357623815_)
                                    (let ((_e2357823820_
                                           (gx#stx-e _hd2357623815_)))
                                      (let ((_hd2357923823_
                                             (##car _e2357823820_))
                                            (_tl2358023825_
                                             (##cdr _e2357823820_)))
                                        (if (gx#identifier? _hd2357923823_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2357923823_)
                                                (if (gx#stx-pair?
                                                     _tl2358023825_)
                                                    (let ((_e2358123828_
                                                           (gx#stx-e
                                                            _tl2358023825_)))
                                                      (let ((_hd2358223831_
                                                             (##car _e2358123828_))
                                                            (_tl2358323833_
                                                             (##cdr _e2358123828_)))
                                                        (if (gx#stx-pair?
                                                             _hd2358223831_)
                                                            (let ((_e2358423836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2358223831_)))
                      (let ((_hd2358523839_ (##car _e2358423836_))
                            (_tl2358623841_ (##cdr _e2358423836_)))
                        (if (gx#identifier? _hd2358523839_)
                            (if (gx#stx-eq? '%#ref _hd2358523839_)
                                (if (gx#stx-pair? _tl2358623841_)
                                    (let ((_e2358723844_
                                           (gx#stx-e _tl2358623841_)))
                                      (let ((_hd2358823847_
                                             (##car _e2358723844_))
                                            (_tl2358923849_
                                             (##cdr _e2358723844_)))
                                        (if (gx#stx-null? _tl2358923849_)
                                            (if (gx#stx-pair? _tl2358323833_)
                                                (let ((_e2359023852_
                                                       (gx#stx-e
                                                        _tl2358323833_)))
                                                  (let ((_hd2359123855_
                                                         (##car _e2359023852_))
                                                        (_tl2359223857_
                                                         (##cdr _e2359023852_)))
                                                    (if (gx#stx-pair?
                                                         _hd2359123855_)
                                                        (let ((_e2359323860_
                                                               (gx#stx-e
                                                                _hd2359123855_)))
                                                          (let ((_hd2359423863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2359323860_))
                        (_tl2359523865_ (##cdr _e2359323860_)))
                    (if (gx#identifier? _hd2359423863_)
                        (if (gx#stx-eq? '%#ref _hd2359423863_)
                            (if (gx#stx-pair? _tl2359523865_)
                                (let ((_e2359623868_
                                       (gx#stx-e _tl2359523865_)))
                                  (let ((_hd2359723871_ (##car _e2359623868_))
                                        (_tl2359823873_ (##cdr _e2359623868_)))
                                    (if (gx#stx-null? _tl2359823873_)
                                        (if (gx#stx-pair? _tl2359223857_)
                                            (let ((_e2359923876_
                                                   (gx#stx-e _tl2359223857_)))
                                              (let ((_hd2360023879_
                                                     (##car _e2359923876_))
                                                    (_tl2360123881_
                                                     (##cdr _e2359923876_)))
                                                (if (gx#stx-pair?
                                                     _hd2360023879_)
                                                    (let ((_e2360223884_
                                                           (gx#stx-e
                                                            _hd2360023879_)))
                                                      (let ((_hd2360323887_
                                                             (##car _e2360223884_))
                                                            (_tl2360423889_
                                                             (##cdr _e2360223884_)))
                                                        (if (gx#identifier?
                                                             _hd2360323887_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2360323887_)
                        (if (gx#stx-pair? _tl2360423889_)
                            (let ((_e2360523892_ (gx#stx-e _tl2360423889_)))
                              (let ((_hd2360623895_ (##car _e2360523892_))
                                    (_tl2360723897_ (##cdr _e2360523892_)))
                                (if (gx#stx-null? _tl2360723897_)
                                    (if (gx#stx-null? _tl2357723817_)
                                        (if (gx#stx-null? _tl2356523785_)
                                            (if (gx#stx-null? _tl2354423729_)
                                                (if (gx#stx-null?
                                                     _tl2353523705_)
                                                    (if (gx#stx-pair?
                                                         _tl2353223697_)
                                                        (let ((_e2360823900_
                                                               (gx#stx-e
                                                                _tl2353223697_)))
                                                          (let ((_hd2360923903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2360823900_))
                        (_tl2361023905_ (##cdr _e2360823900_)))
                    (if (gx#stx-pair? _hd2360923903_)
                        (let ((_e2361123908_ (gx#stx-e _hd2360923903_)))
                          (let ((_hd2361223911_ (##car _e2361123908_))
                                (_tl2361323913_ (##cdr _e2361123908_)))
                            (if (gx#identifier? _hd2361223911_)
                                (if (gx#stx-eq? '%#lambda _hd2361223911_)
                                    (if (gx#stx-pair? _tl2361323913_)
                                        (let ((_e2361423916_
                                               (gx#stx-e _tl2361323913_)))
                                          (let ((_hd2361523919_
                                                 (##car _e2361423916_))
                                                (_tl2361623921_
                                                 (##cdr _e2361423916_)))
                                            (if (gx#stx-pair? _tl2361623921_)
                                                (let ((_e2361723924_
                                                       (gx#stx-e
                                                        _tl2361623921_)))
                                                  (let ((_hd2361823927_
                                                         (##car _e2361723924_))
                                                        (_tl2361923929_
                                                         (##cdr _e2361723924_)))
                                                    (if (gx#stx-pair?
                                                         _hd2361823927_)
                                                        (let ((_e2362023932_
                                                               (gx#stx-e
                                                                _hd2361823927_)))
                                                          (let ((_hd2362123935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2362023932_))
                        (_tl2362223937_ (##cdr _e2362023932_)))
                    (if (gx#identifier? _hd2362123935_)
                        (if (gx#stx-eq? '%#call _hd2362123935_)
                            (if (gx#stx-pair? _tl2362223937_)
                                (let ((_e2362323940_
                                       (gx#stx-e _tl2362223937_)))
                                  (let ((_hd2362423943_ (##car _e2362323940_))
                                        (_tl2362523945_ (##cdr _e2362323940_)))
                                    (if (gx#stx-pair? _hd2362423943_)
                                        (let ((_e2362623948_
                                               (gx#stx-e _hd2362423943_)))
                                          (let ((_hd2362723951_
                                                 (##car _e2362623948_))
                                                (_tl2362823953_
                                                 (##cdr _e2362623948_)))
                                            (if (gx#identifier? _hd2362723951_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2362723951_)
                                                    (if (gx#stx-pair?
                                                         _tl2362823953_)
                                                        (let ((_e2362923956_
                                                               (gx#stx-e
                                                                _tl2362823953_)))
                                                          (let ((_hd2363023959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2362923956_))
                        (_tl2363123961_ (##cdr _e2362923956_)))
                    (if (gx#stx-null? _tl2363123961_)
                        (if (gx#stx-pair? _tl2362523945_)
                            (let ((_e2363223964_ (gx#stx-e _tl2362523945_)))
                              (let ((_hd2363323967_ (##car _e2363223964_))
                                    (_tl2363423969_ (##cdr _e2363223964_)))
                                (if (gx#stx-pair? _hd2363323967_)
                                    (let ((_e2363523972_
                                           (gx#stx-e _hd2363323967_)))
                                      (let ((_hd2363623975_
                                             (##car _e2363523972_))
                                            (_tl2363723977_
                                             (##cdr _e2363523972_)))
                                        (if (gx#identifier? _hd2363623975_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2363623975_)
                                                (if (gx#stx-pair?
                                                     _tl2363723977_)
                                                    (let ((_e2363823980_
                                                           (gx#stx-e
                                                            _tl2363723977_)))
                                                      (let ((_hd2363923983_
                                                             (##car _e2363823980_))
                                                            (_tl2364023985_
                                                             (##cdr _e2363823980_)))
                                                        (if (gx#stx-null?
                                                             _tl2364023985_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2363423969_)
                        (let ((_e2364123988_ (gx#stx-e _tl2363423969_)))
                          (let ((_hd2364223991_ (##car _e2364123988_))
                                (_tl2364323993_ (##cdr _e2364123988_)))
                            (if (gx#stx-pair? _hd2364223991_)
                                (let ((_e2364423996_
                                       (gx#stx-e _hd2364223991_)))
                                  (let ((_hd2364523999_ (##car _e2364423996_))
                                        (_tl2364624001_ (##cdr _e2364423996_)))
                                    (if (gx#identifier? _hd2364523999_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2364523999_)
                                            (if (gx#stx-pair? _tl2364624001_)
                                                (let ((_e2364724004_
                                                       (gx#stx-e
                                                        _tl2364624001_)))
                                                  (let ((_hd2364824007_
                                                         (##car _e2364724004_))
                                                        (_tl2364924009_
                                                         (##cdr _e2364724004_)))
                                                    (if (gx#stx-null?
                                                         _tl2364924009_)
                                                        (if (gx#stx-pair?
                                                             _tl2364323993_)
                                                            (let ((_e2365024012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2364323993_)))
                      (let ((_hd2365124015_ (##car _e2365024012_))
                            (_tl2365224017_ (##cdr _e2365024012_)))
                        (if (gx#stx-pair? _hd2365124015_)
                            (let ((_e2365324020_ (gx#stx-e _hd2365124015_)))
                              (let ((_hd2365424023_ (##car _e2365324020_))
                                    (_tl2365524025_ (##cdr _e2365324020_)))
                                (if (gx#identifier? _hd2365424023_)
                                    (if (gx#stx-eq? '%#ref _hd2365424023_)
                                        (if (gx#stx-pair? _tl2365524025_)
                                            (let ((_e2365624028_
                                                   (gx#stx-e _tl2365524025_)))
                                              (let ((_hd2365724031_
                                                     (##car _e2365624028_))
                                                    (_tl2365824033_
                                                     (##cdr _e2365624028_)))
                                                (if (gx#stx-null?
                                                     _tl2365824033_)
                                                    (if (gx#stx-pair?
                                                         _tl2365224017_)
                                                        (let ((_e2365924036_
                                                               (gx#stx-e
                                                                _tl2365224017_)))
                                                          (let ((_hd2366024039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2365924036_))
                        (_tl2366124041_ (##cdr _e2365924036_)))
                    (if (gx#stx-pair? _hd2366024039_)
                        (let ((_e2366224044_ (gx#stx-e _hd2366024039_)))
                          (let ((_hd2366324047_ (##car _e2366224044_))
                                (_tl2366424049_ (##cdr _e2366224044_)))
                            (if (gx#identifier? _hd2366324047_)
                                (if (gx#stx-eq? '%#ref _hd2366324047_)
                                    (if (gx#stx-pair? _tl2366424049_)
                                        (let ((_e2366524052_
                                               (gx#stx-e _tl2366424049_)))
                                          (let ((_hd2366624055_
                                                 (##car _e2366524052_))
                                                (_tl2366724057_
                                                 (##cdr _e2366524052_)))
                                            (if (gx#stx-null? _tl2366724057_)
                                                (if (gx#stx-null?
                                                     _tl2366124041_)
                                                    (if (gx#stx-null?
                                                         _tl2361923929_)
                                                        (if (gx#stx-null?
                                                             _tl2361023905_)
                                                            ((lambda (_L24060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24061_
                              _L24062_
                              _L24063_
                              _L24064_
                              _L24065_
                              _L24066_
                              _L24067_
                              _L24068_
                              _L24069_
                              _L24070_)
                       (if (eq? (gxc#generate-runtime-binding-id _L24067_)
                                'apply)
                           (if (eq? (gxc#generate-runtime-binding-id _L24063_)
                                    'apply)
                               (if (eq? (gxc#generate-runtime-binding-id
                                         _L24062_)
                                        'keyword-dispatch)
                                   (if (gx#free-identifier=? _L24070_ _L24061_)
                                       (if (gx#free-identifier=?
                                            _L24069_
                                            _L24066_)
                                           (if (gx#free-identifier=?
                                                _L24064_
                                                _L24060_)
                                               (gx#free-identifier=?
                                                _L24068_
                                                _L24065_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd2366624055_
                     _hd2365724031_
                     _hd2363923983_
                     _hd2363023959_
                     _hd2361523919_
                     _hd2360623895_
                     _hd2359723871_
                     _hd2358823847_
                     _hd2357323807_
                     _hd2355823767_
                     _hd2354023719_)
                    (_g2351323679_ _g2351523682_))
                (_g2351323679_ _g2351523682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_
                                                 _g2351523682_))))
                                        (_g2351323679_ _g2351523682_))
                                    (_g2351323679_ _g2351523682_))
                                (_g2351323679_ _g2351523682_))))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))))
                                            (_g2351323679_ _g2351523682_))
                                        (_g2351323679_ _g2351523682_))
                                    (_g2351323679_ _g2351523682_))))
                            (_g2351323679_ _g2351523682_))))
                    (_g2351323679_ _g2351523682_))
                (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))
                                        (_g2351323679_ _g2351523682_))))
                                (_g2351323679_ _g2351523682_))))
                        (_g2351323679_ _g2351523682_))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))))
                                    (_g2351323679_ _g2351523682_))))
                            (_g2351323679_ _g2351523682_))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_
                                                 _g2351523682_))))
                                        (_g2351323679_ _g2351523682_))))
                                (_g2351323679_ _g2351523682_))
                            (_g2351323679_ _g2351523682_))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2351323679_
                                                 _g2351523682_))))
                                        (_g2351323679_ _g2351523682_))
                                    (_g2351323679_ _g2351523682_))
                                (_g2351323679_ _g2351523682_))))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))
                                        (_g2351323679_ _g2351523682_))
                                    (_g2351323679_ _g2351523682_))))
                            (_g2351323679_ _g2351523682_))
                        (_g2351323679_ _g2351523682_))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))))
                                            (_g2351323679_ _g2351523682_))
                                        (_g2351323679_ _g2351523682_))))
                                (_g2351323679_ _g2351523682_))
                            (_g2351323679_ _g2351523682_))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))))
                                    (_g2351323679_ _g2351523682_))
                                (_g2351323679_ _g2351523682_))
                            (_g2351323679_ _g2351523682_))))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))))
                                    (_g2351323679_ _g2351523682_))))
                            (_g2351323679_ _g2351523682_))))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_ _g2351523682_))
                                            (_g2351323679_ _g2351523682_))))
                                    (_g2351323679_ _g2351523682_))))
                            (_g2351323679_ _g2351523682_))
                        (_g2351323679_ _g2351523682_))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_
                                                 _g2351523682_))))
                                        (_g2351323679_ _g2351523682_))))
                                (_g2351323679_ _g2351523682_))))
                        (_g2351323679_ _g2351523682_))))
                (_g2351323679_ _g2351523682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))
                                                (_g2351323679_
                                                 _g2351523682_))))
                                        (_g2351323679_ _g2351523682_))))
                                (_g2351323679_ _g2351523682_))
                            (_g2351323679_ _g2351523682_))))
                    (_g2351323679_ _g2351523682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2351323679_
                                                     _g2351523682_))))
                                            (_g2351323679_ _g2351523682_))))
                                    (_g2351323679_ _g2351523682_))
                                (_g2351323679_ _g2351523682_))
                            (_g2351323679_ _g2351523682_))))
                    (_g2351323679_ _g2351523682_)))))
        (_g2351224183_ _expr23511_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx23253_ _id23254_ _clauses23255_ _gensym?23256_)
        (let _lp23258_ ((_rest23260_ _clauses23255_)
                        (_ids23261_ '())
                        (_impls23262_ '())
                        (_clauses23263_ '()))
          (let* ((_rest2326423272_ _rest23260_)
                 (_E2326723276_
                  (lambda () (error '"No clause matching" _rest2326423272_)))
                 (_else2326623280_
                  (lambda ()
                    (values (reverse _ids23261_)
                            (reverse _impls23262_)
                            (reverse _clauses23263_))))
                 (_K2326823485_
                  (lambda (_rest23283_ _clause23284_)
                    (if (gxc#dispatch-lambda-form? _clause23284_)
                        (_lp23258_
                         _rest23283_
                         _ids23261_
                         _impls23262_
                         (cons _clause23284_ _clauses23263_))
                        (let* ((_g2328623297_
                                (lambda (_g2328723294_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2328723294_)))
                               (_g2328523482_
                                (lambda (_g2328723300_)
                                  (if (gx#stx-pair? _g2328723300_)
                                      (let ((_e2329023302_
                                             (gx#stx-e _g2328723300_)))
                                        (let ((_hd2329123305_
                                               (##car _e2329023302_))
                                              (_tl2329223307_
                                               (##cdr _e2329023302_)))
                                          ((lambda (_L23310_ _L23311_)
                                             (let* ((_id23328_
                                                     (make-symbol
                                                      (gx#stx-e _id23254_)
                                                      '"__"
                                                      (length _clauses23263_)
                                                      (if _gensym?23256_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id23330_
                                                     (gx#core-quote-syntax__1
                                                      _id23328_
                                                      (gx#stx-source
                                                       _stx23253_)))
                                                    (_impl23332_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L23311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23310_))
              _stx23253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause23479_
                                                     (let* ((_g2333623364_
                                                             (lambda (_g2333723361_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2333723361_)))
                                                            (_g2333523380_
                                                             (lambda (_g2333723367_)
                                                               ((lambda (_L23369_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L23311_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id23330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L23369_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23253_)
                                      '())))
                        _g2333723367_)))
                    (_g2333423429_
                     (lambda (_g2333723383_)
                       (if (gx#stx-pair/null? _g2333723383_)
                           (if (fx>= (gx#stx-length _g2333723383_) '0)
                               (let ((_g27468_
                                      (gx#syntax-split-splice
                                       _g2333723383_
                                       '0)))
                                 (begin
                                   (let ((_g27469_ (values-count _g27468_)))
                                     (if (not (fx= _g27469_ 2))
                                         (error "Context expects 2 values"
                                                _g27469_)))
                                   (let ((_target2335023385_
                                          (values-ref _g27468_ 0))
                                         (_tl2335223387_
                                          (values-ref _g27468_ 1)))
                                     (letrec ((_loop2335323390_
                                               (lambda (_hd2335123393_
                                                        _arg2335723395_)
                                                 (if (gx#stx-pair?
                                                      _hd2335123393_)
                                                     (let ((_e2335423398_
                                                            (gx#stx-e
                                                             _hd2335123393_)))
                                                       (let ((_lp-hd2335523401_
                                                              (##car _e2335423398_))
                                                             (_lp-tl2335623403_
                                                              (##cdr _e2335423398_)))
                                                         (_loop2335323390_
                                                          _lp-tl2335623403_
                                                          (cons _lp-hd2335523401_
                                                                _arg2335723395_))))
                                                     (let ((_arg2335823406_
                                                            (reverse _arg2335723395_)))
                                                       ((lambda (_L23409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23410_)
                  (cons _L23311_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id23330_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L23409_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g2342123424_ _g2342223426_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g2342123424_ '()))
                                   _g2342223426_))
                           '()
                           _L23410_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx23253_)
                              '())))
                _tl2335223387_
                _arg2335823406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop2335323390_
                                        _target2335023385_
                                        '())))))
                               (_g2333523380_ _g2333723383_))
                           (_g2333523380_ _g2333723383_))))
                    (_g2333323476_
                     (lambda (_g2333723432_)
                       (if (gx#stx-pair/null? _g2333723432_)
                           (if (fx>= (gx#stx-length _g2333723432_) '0)
                               (let ((_g27470_
                                      (gx#syntax-split-splice
                                       _g2333723432_
                                       '0)))
                                 (begin
                                   (let ((_g27471_ (values-count _g27470_)))
                                     (if (not (fx= _g27471_ 2))
                                         (error "Context expects 2 values"
                                                _g27471_)))
                                   (let ((_target2333923434_
                                          (values-ref _g27470_ 0))
                                         (_tl2334123436_
                                          (values-ref _g27470_ 1)))
                                     (if (gx#stx-null? _tl2334123436_)
                                         (letrec ((_loop2334223439_
                                                   (lambda (_hd2334023442_
                                                            _arg2334623444_)
                                                     (if (gx#stx-pair?
                                                          _hd2334023442_)
                                                         (let ((_e2334323447_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2334023442_)))
                   (let ((_lp-hd2334423450_ (##car _e2334323447_))
                         (_lp-tl2334523452_ (##cdr _e2334323447_)))
                     (_loop2334223439_
                      _lp-tl2334523452_
                      (cons _lp-hd2334423450_ _arg2334623444_))))
                 (let ((_arg2334723455_ (reverse _arg2334623444_)))
                   ((lambda (_L23458_)
                      (cons _L23311_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id23330_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g2346823471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2346923473_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g2346823471_ '()))
                         _g2346923473_))
                 '()
                 _L23458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx23253_)
                                  '())))
                    _arg2334723455_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2334223439_
                                            _target2333923434_
                                            '()))
                                         (_g2333423429_ _g2333723432_)))))
                               (_g2333423429_ _g2333723432_))
                           (_g2333423429_ _g2333723432_)))))
               (_g2333323476_ _L23311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp23258_
                                                _rest23283_
                                                (cons _id23330_ _ids23261_)
                                                (cons _impl23332_ _impls23262_)
                                                (cons _clause23479_
                                                      _clauses23263_))))
                                           _tl2329223307_
                                           _hd2329123305_)))
                                      (_g2328623297_ _g2328723300_)))))
                          (_g2328523482_ _clause23284_))))))
            (if (##pair? _rest2326423272_)
                (let ((_hd2326923488_ (##car _rest2326423272_))
                      (_tl2327023490_ (##cdr _rest2326423272_)))
                  (let* ((_clause23493_ _hd2326923488_)
                         (_rest23495_ _tl2327023490_))
                    (_K2326823485_ _rest23495_ _clause23493_)))
                (_else2326623280_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx23500_ _id23501_ _clauses23502_)
          (let ((_gensym?23504_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx23500_
             _id23501_
             _clauses23502_
             _gensym?23504_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g27473_
          (let ((_g27472_ (length _g27473_)))
            (cond ((fx= _g27472_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g27473_))
                  ((fx= _g27472_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g27473_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g27473_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx22534_)
      (letrec ((_case-lambda-clause-def22536_
                (lambda (_id23249_ _impl23250_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id23249_ '())
                               (cons (gxc#compile-e _impl23250_) '())))
                   _stx22534_)))
               (_opt-lambda-dispatch-name22537_
                (lambda (_id23245_)
                  (if (uninterned-symbol? _id23245_)
                      (let ((_str23247_ (symbol->string _id23245_)))
                        (if (string-prefix? _str23247_ '"opt-lambda")
                            '"%"
                            _id23245_))
                      _id23245_)))
               (_kw-lambda-dispatch-name22538_
                (lambda (_id23240_ _name23241_)
                  (if (uninterned-symbol? _id23240_)
                      (let ((_str23243_ (symbol->string _id23240_)))
                        (if (string-prefix? _str23243_ '"kw-lambda")
                            _name23241_
                            _id23240_))
                      _id23240_))))
        (let* ((_g2254322602_
                (lambda (_g2254422599_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2254422599_)))
               (_g2254222648_
                (lambda (_g2254422605_)
                  (if (gx#stx-pair? _g2254422605_)
                      (let ((_e2258922607_ (gx#stx-e _g2254422605_)))
                        (let ((_hd2259022610_ (##car _e2258922607_))
                              (_tl2259122612_ (##cdr _e2258922607_)))
                          (if (gx#stx-pair? _tl2259122612_)
                              (let ((_e2259222615_ (gx#stx-e _tl2259122612_)))
                                (let ((_hd2259322618_ (##car _e2259222615_))
                                      (_tl2259422620_ (##cdr _e2259222615_)))
                                  (if (gx#stx-pair? _tl2259422620_)
                                      (let ((_e2259522623_
                                             (gx#stx-e _tl2259422620_)))
                                        (let ((_hd2259622626_
                                               (##car _e2259522623_))
                                              (_tl2259722628_
                                               (##cdr _e2259522623_)))
                                          (if (gx#stx-null? _tl2259722628_)
                                              ((lambda (_L22631_ _L22632_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L22632_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22631_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22534_))
                                               _hd2259622626_
                                               _hd2259322618_)
                                              (_g2254322602_ _g2254422605_))))
                                      (_g2254322602_ _g2254422605_))))
                              (_g2254322602_ _g2254422605_))))
                      (_g2254322602_ _g2254422605_))))
               (_g2254122930_
                (lambda (_g2254422651_)
                  (if (gx#stx-pair? _g2254422651_)
                      (let ((_e2257522653_ (gx#stx-e _g2254422651_)))
                        (let ((_hd2257622656_ (##car _e2257522653_))
                              (_tl2257722658_ (##cdr _e2257522653_)))
                          (if (gx#stx-pair? _tl2257722658_)
                              (let ((_e2257822661_ (gx#stx-e _tl2257722658_)))
                                (let ((_hd2257922664_ (##car _e2257822661_))
                                      (_tl2258022666_ (##cdr _e2257822661_)))
                                  (if (gx#stx-pair? _hd2257922664_)
                                      (let ((_e2258122669_
                                             (gx#stx-e _hd2257922664_)))
                                        (let ((_hd2258222672_
                                               (##car _e2258122669_))
                                              (_tl2258322674_
                                               (##cdr _e2258122669_)))
                                          (if (gx#stx-null? _tl2258322674_)
                                              (if (gx#stx-pair? _tl2258022666_)
                                                  (let ((_e2258422677_
                                                         (gx#stx-e
                                                          _tl2258022666_)))
                                                    (let ((_hd2258522680_
                                                           (##car _e2258422677_))
                                                          (_tl2258622682_
                                                           (##cdr _e2258422677_)))
                                                      (if (gx#stx-null?
                                                           _tl2258622682_)
                                                          ((lambda (_L22685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22686_)
                     (if (if (gx#identifier? _L22686_)
                             (gxc#kw-lambda-expr? _L22685_)
                             '#f)
                         (let* ((_g2270222755_
                                 (lambda (_g2270322752_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2270322752_)))
                                (_g2270122927_
                                 (lambda (_g2270322758_)
                                   (if (gx#stx-pair? _g2270322758_)
                                       (let ((_e2270922760_
                                              (gx#stx-e _g2270322758_)))
                                         (let ((_hd2271022763_
                                                (##car _e2270922760_))
                                               (_tl2271122765_
                                                (##cdr _e2270922760_)))
                                           (if (gx#stx-pair? _tl2271122765_)
                                               (let ((_e2271222768_
                                                      (gx#stx-e
                                                       _tl2271122765_)))
                                                 (let ((_hd2271322771_
                                                        (##car _e2271222768_))
                                                       (_tl2271422773_
                                                        (##cdr _e2271222768_)))
                                                   (if (gx#stx-pair?
                                                        _hd2271322771_)
                                                       (let ((_e2271522776_
                                                              (gx#stx-e
                                                               _hd2271322771_)))
                                                         (let ((_hd2271622779_
                                                                (##car _e2271522776_))
                                                               (_tl2271722781_
                                                                (##cdr _e2271522776_)))
                                                           (if (gx#stx-pair?
                                                                _hd2271622779_)
                                                               (let ((_e2271822784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2271622779_)))
                         (let ((_hd2271922787_ (##car _e2271822784_))
                               (_tl2272022789_ (##cdr _e2271822784_)))
                           (if (gx#stx-pair? _hd2271922787_)
                               (let ((_e2272122792_ (gx#stx-e _hd2271922787_)))
                                 (let ((_hd2272222795_ (##car _e2272122792_))
                                       (_tl2272322797_ (##cdr _e2272122792_)))
                                   (if (gx#stx-null? _tl2272322797_)
                                       (if (gx#stx-pair? _tl2272022789_)
                                           (let ((_e2272422800_
                                                  (gx#stx-e _tl2272022789_)))
                                             (let ((_hd2272522803_
                                                    (##car _e2272422800_))
                                                   (_tl2272622805_
                                                    (##cdr _e2272422800_)))
                                               (if (gx#stx-pair?
                                                    _hd2272522803_)
                                                   (let ((_e2272722808_
                                                          (gx#stx-e
                                                           _hd2272522803_)))
                                                     (let ((_hd2272822811_
                                                            (##car _e2272722808_))
                                                           (_tl2272922813_
                                                            (##cdr _e2272722808_)))
                                                       (if (gx#stx-pair?
                                                            _tl2272922813_)
                                                           (let ((_e2273022816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2272922813_)))
                     (let ((_hd2273122819_ (##car _e2273022816_))
                           (_tl2273222821_ (##cdr _e2273022816_)))
                       (if (gx#stx-pair? _hd2273122819_)
                           (let ((_e2273322824_ (gx#stx-e _hd2273122819_)))
                             (let ((_hd2273422827_ (##car _e2273322824_))
                                   (_tl2273522829_ (##cdr _e2273322824_)))
                               (if (gx#stx-pair? _hd2273422827_)
                                   (let ((_e2273622832_
                                          (gx#stx-e _hd2273422827_)))
                                     (let ((_hd2273722835_
                                            (##car _e2273622832_))
                                           (_tl2273822837_
                                            (##cdr _e2273622832_)))
                                       (if (gx#stx-pair? _hd2273722835_)
                                           (let ((_e2273922840_
                                                  (gx#stx-e _hd2273722835_)))
                                             (let ((_hd2274022843_
                                                    (##car _e2273922840_))
                                                   (_tl2274122845_
                                                    (##cdr _e2273922840_)))
                                               (if (gx#stx-null?
                                                    _tl2274122845_)
                                                   (if (gx#stx-pair?
                                                        _tl2273822837_)
                                                       (let ((_e2274222848_
                                                              (gx#stx-e
                                                               _tl2273822837_)))
                                                         (let ((_hd2274322851_
                                                                (##car _e2274222848_))
                                                               (_tl2274422853_
                                                                (##cdr _e2274222848_)))
                                                           (if (gx#stx-null?
                                                                _tl2274422853_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2273522829_)
                           (if (gx#stx-pair? _tl2273222821_)
                               (let ((_e2274522856_ (gx#stx-e _tl2273222821_)))
                                 (let ((_hd2274622859_ (##car _e2274522856_))
                                       (_tl2274722861_ (##cdr _e2274522856_)))
                                   (if (gx#stx-null? _tl2274722861_)
                                       (if (gx#stx-null? _tl2272622805_)
                                           (if (gx#stx-null? _tl2271722781_)
                                               (if (gx#stx-pair?
                                                    _tl2271422773_)
                                                   (let ((_e2274822864_
                                                          (gx#stx-e
                                                           _tl2271422773_)))
                                                     (let ((_hd2274922867_
                                                            (##car _e2274822864_))
                                                           (_tl2275022869_
                                                            (##cdr _e2274822864_)))
                                                       (if (gx#stx-null?
                                                            _tl2275022869_)
                                                           ((lambda (_L22872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22873_
                             _L22874_
                             _L22875_
                             _L22876_)
                      (let* ((_get-kws-id22916_
                              (make-symbol
                               (gx#stx-e _L22686_)
                               '"__"
                               (_kw-lambda-dispatch-name22538_
                                (gx#stx-e _L22876_)
                                '"@")))
                             (_main-id22918_
                              (make-symbol
                               (gx#stx-e _L22686_)
                               '"__"
                               (_kw-lambda-dispatch-name22538_
                                (gx#stx-e _L22875_)
                                '"%")))
                             (_g27474_
                              (gx#core-bind-runtime!__0 _get-kws-id22916_))
                             (_g27475_
                              (gx#core-bind-runtime!__0 _main-id22918_))
                             (_new-kw-dispatch22922_
                              (gxc#apply-expression-subst
                               _L22872_
                               _L22876_
                               _get-kws-id22916_))
                             (_new-get-kws22924_
                              (gxc#apply-expression-subst
                               _L22873_
                               _L22875_
                               _main-id22918_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#generate-runtime-binding-id _L22686_)
                           '" => "
                           (gxc#generate-runtime-binding-id _get-kws-id22916_)
                           '" => "
                           (gxc#generate-runtime-binding-id _main-id22918_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id22918_ '())
                                                     (cons _L22874_ '())))
                                         _stx22534_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id22916_
                                                                '())
                                                          (cons _new-get-kws22924_
                                                                '())))
                                              _stx22534_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L22686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch22922_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx22534_)
                                                   '()))))
                           _stx22534_))))
                    _hd2274922867_
                    _hd2274622859_
                    _hd2274322851_
                    _hd2274022843_
                    _hd2272222795_)
                   (_g2270222755_ _g2270322758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2270222755_
                                                    _g2270322758_))
                                               (_g2270222755_ _g2270322758_))
                                           (_g2270222755_ _g2270322758_))
                                       (_g2270222755_ _g2270322758_))))
                               (_g2270222755_ _g2270322758_))
                           (_g2270222755_ _g2270322758_))
                       (_g2270222755_ _g2270322758_))))
               (_g2270222755_ _g2270322758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2270222755_
                                                    _g2270322758_))))
                                           (_g2270222755_ _g2270322758_))))
                                   (_g2270222755_ _g2270322758_))))
                           (_g2270222755_ _g2270322758_))))
                   (_g2270222755_ _g2270322758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2270222755_
                                                    _g2270322758_))))
                                           (_g2270222755_ _g2270322758_))
                                       (_g2270222755_ _g2270322758_))))
                               (_g2270222755_ _g2270322758_))))
                       (_g2270222755_ _g2270322758_))))
               (_g2270222755_ _g2270322758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2270222755_ _g2270322758_))))
                                       (_g2270222755_ _g2270322758_)))))
                           (_g2270122927_ _L22685_))
                         (_g2254222648_ _g2254422651_)))
                   _hd2258522680_
                   _hd2258222672_)
                  (_g2254222648_ _g2254422651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2254222648_
                                                   _g2254422651_))
                                              (_g2254222648_ _g2254422651_))))
                                      (_g2254222648_ _g2254422651_))))
                              (_g2254222648_ _g2254422651_))))
                      (_g2254222648_ _g2254422651_))))
               (_g2254023112_
                (lambda (_g2254422933_)
                  (if (gx#stx-pair? _g2254422933_)
                      (let ((_e2256122935_ (gx#stx-e _g2254422933_)))
                        (let ((_hd2256222938_ (##car _e2256122935_))
                              (_tl2256322940_ (##cdr _e2256122935_)))
                          (if (gx#stx-pair? _tl2256322940_)
                              (let ((_e2256422943_ (gx#stx-e _tl2256322940_)))
                                (let ((_hd2256522946_ (##car _e2256422943_))
                                      (_tl2256622948_ (##cdr _e2256422943_)))
                                  (if (gx#stx-pair? _hd2256522946_)
                                      (let ((_e2256722951_
                                             (gx#stx-e _hd2256522946_)))
                                        (let ((_hd2256822954_
                                               (##car _e2256722951_))
                                              (_tl2256922956_
                                               (##cdr _e2256722951_)))
                                          (if (gx#stx-null? _tl2256922956_)
                                              (if (gx#stx-pair? _tl2256622948_)
                                                  (let ((_e2257022959_
                                                         (gx#stx-e
                                                          _tl2256622948_)))
                                                    (let ((_hd2257122962_
                                                           (##car _e2257022959_))
                                                          (_tl2257222964_
                                                           (##cdr _e2257022959_)))
                                                      (if (gx#stx-null?
                                                           _tl2257222964_)
                                                          ((lambda (_L22967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22968_)
                     (if (if (gx#identifier? _L22968_)
                             (gxc#opt-lambda-expr? _L22967_)
                             '#f)
                         (let* ((_g2298423014_
                                 (lambda (_g2298523011_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2298523011_)))
                                (_g2298323109_
                                 (lambda (_g2298523017_)
                                   (if (gx#stx-pair? _g2298523017_)
                                       (let ((_e2298923019_
                                              (gx#stx-e _g2298523017_)))
                                         (let ((_hd2299023022_
                                                (##car _e2298923019_))
                                               (_tl2299123024_
                                                (##cdr _e2298923019_)))
                                           (if (gx#stx-pair? _tl2299123024_)
                                               (let ((_e2299223027_
                                                      (gx#stx-e
                                                       _tl2299123024_)))
                                                 (let ((_hd2299323030_
                                                        (##car _e2299223027_))
                                                       (_tl2299423032_
                                                        (##cdr _e2299223027_)))
                                                   (if (gx#stx-pair?
                                                        _hd2299323030_)
                                                       (let ((_e2299523035_
                                                              (gx#stx-e
                                                               _hd2299323030_)))
                                                         (let ((_hd2299623038_
                                                                (##car _e2299523035_))
                                                               (_tl2299723040_
                                                                (##cdr _e2299523035_)))
                                                           (if (gx#stx-pair?
                                                                _hd2299623038_)
                                                               (let ((_e2299823043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2299623038_)))
                         (let ((_hd2299923046_ (##car _e2299823043_))
                               (_tl2300023048_ (##cdr _e2299823043_)))
                           (if (gx#stx-pair? _hd2299923046_)
                               (let ((_e2300123051_ (gx#stx-e _hd2299923046_)))
                                 (let ((_hd2300223054_ (##car _e2300123051_))
                                       (_tl2300323056_ (##cdr _e2300123051_)))
                                   (if (gx#stx-null? _tl2300323056_)
                                       (if (gx#stx-pair? _tl2300023048_)
                                           (let ((_e2300423059_
                                                  (gx#stx-e _tl2300023048_)))
                                             (let ((_hd2300523062_
                                                    (##car _e2300423059_))
                                                   (_tl2300623064_
                                                    (##cdr _e2300423059_)))
                                               (if (gx#stx-null?
                                                    _tl2300623064_)
                                                   (if (gx#stx-null?
                                                        _tl2299723040_)
                                                       (if (gx#stx-pair?
                                                            _tl2299423032_)
                                                           (let ((_e2300723067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2299423032_)))
                     (let ((_hd2300823070_ (##car _e2300723067_))
                           (_tl2300923072_ (##cdr _e2300723067_)))
                       (if (gx#stx-null? _tl2300923072_)
                           ((lambda (_L23075_ _L23076_ _L23077_)
                              (let* ((_lambda-id23101_
                                      (make-symbol
                                       (gx#stx-e _L22968_)
                                       '"__"
                                       (_opt-lambda-dispatch-name22537_
                                        (gx#stx-e _L23077_))))
                                     (_lambda-id23103_
                                      (gx#core-quote-syntax__1
                                       _lambda-id23101_
                                       (gx#stx-source _stx22534_)))
                                     (_g27476_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id23103_))
                                     (_new-case-lambda-expr23106_
                                      (gxc#apply-expression-subst
                                       _L23075_
                                       _L23077_
                                       _lambda-id23103_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#generate-runtime-binding-id _L22968_)
                                   '" => "
                                   (gxc#generate-runtime-binding-id
                                    _lambda-id23103_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id23103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L23076_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx22534_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L22968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr23106_ '())))
               _stx22534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx22534_))))
                            _hd2300823070_
                            _hd2300523062_
                            _hd2300223054_)
                           (_g2298423014_ _g2298523017_))))
                   (_g2298423014_ _g2298523017_))
               (_g2298423014_ _g2298523017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2298423014_
                                                    _g2298523017_))))
                                           (_g2298423014_ _g2298523017_))
                                       (_g2298423014_ _g2298523017_))))
                               (_g2298423014_ _g2298523017_))))
                       (_g2298423014_ _g2298523017_))))
               (_g2298423014_ _g2298523017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2298423014_ _g2298523017_))))
                                       (_g2298423014_ _g2298523017_)))))
                           (_g2298323109_ _L22967_))
                         (_g2254122930_ _g2254422933_)))
                   _hd2257122962_
                   _hd2256822954_)
                  (_g2254122930_ _g2254422933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2254122930_
                                                   _g2254422933_))
                                              (_g2254122930_ _g2254422933_))))
                                      (_g2254122930_ _g2254422933_))))
                              (_g2254122930_ _g2254422933_))))
                      (_g2254122930_ _g2254422933_))))
               (_g2253923237_
                (lambda (_g2254423115_)
                  (if (gx#stx-pair? _g2254423115_)
                      (let ((_e2254723117_ (gx#stx-e _g2254423115_)))
                        (let ((_hd2254823120_ (##car _e2254723117_))
                              (_tl2254923122_ (##cdr _e2254723117_)))
                          (if (gx#stx-pair? _tl2254923122_)
                              (let ((_e2255023125_ (gx#stx-e _tl2254923122_)))
                                (let ((_hd2255123128_ (##car _e2255023125_))
                                      (_tl2255223130_ (##cdr _e2255023125_)))
                                  (if (gx#stx-pair? _hd2255123128_)
                                      (let ((_e2255323133_
                                             (gx#stx-e _hd2255123128_)))
                                        (let ((_hd2255423136_
                                               (##car _e2255323133_))
                                              (_tl2255523138_
                                               (##cdr _e2255323133_)))
                                          (if (gx#stx-null? _tl2255523138_)
                                              (if (gx#stx-pair? _tl2255223130_)
                                                  (let ((_e2255623141_
                                                         (gx#stx-e
                                                          _tl2255223130_)))
                                                    (let ((_hd2255723144_
                                                           (##car _e2255623141_))
                                                          (_tl2255823146_
                                                           (##cdr _e2255623141_)))
                                                      (if (gx#stx-null?
                                                           _tl2255823146_)
                                                          ((lambda (_L23149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23150_)
                     (if (if (gx#identifier? _L23150_)
                             (gxc#case-lambda-expr? _L23149_)
                             '#f)
                         (let* ((_g2316723181_
                                 (lambda (_g2316823178_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2316823178_)))
                                (_g2316623212_
                                 (lambda (_g2316823184_)
                                   (if (gx#stx-pair? _g2316823184_)
                                       (let ((_e2317423186_
                                              (gx#stx-e _g2316823184_)))
                                         (let ((_hd2317523189_
                                                (##car _e2317423186_))
                                               (_tl2317623191_
                                                (##cdr _e2317423186_)))
                                           ((lambda (_L23194_)
                                              (let ((_g27477_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx22534_
                                                      _L23150_
                                                      _L23194_)))
                                                (begin
                                                  (let ((_g27478_
                                                         (values-count
                                                          _g27477_)))
                                                    (if (not (fx= _g27478_ 3))
                                                        (error "Context expects 3 values"
                                                               _g27478_)))
                                                  (let ((_ids23204_
                                                         (values-ref
                                                          _g27477_
                                                          0))
                                                        (_impls23205_
                                                         (values-ref
                                                          _g27477_
                                                          1))
                                                        (_clauses23206_
                                                         (values-ref
                                                          _g27477_
                                                          2)))
                                                    (let* ((_g27479_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids23204_))
                                                           (_defs23209_
                                                            (map _case-lambda-clause-def22536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids23204_
                         _impls23205_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#generate-runtime-binding-id _L23150_)
                 '" => "
                 (map gxc#identifier-symbol _ids23204_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L23150_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses23206_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx22534_)
                                     '())
                               _defs23209_))
                 _stx22534_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl2317623191_)))
                                       (_g2316723181_ _g2316823184_))))
                                (_g2316523234_
                                 (lambda (_g2316823215_)
                                   (if (gx#stx-pair? _g2316823215_)
                                       (let ((_e2317023217_
                                              (gx#stx-e _g2316823215_)))
                                         (let ((_hd2317123220_
                                                (##car _e2317023217_))
                                               (_tl2317223222_
                                                (##cdr _e2317023217_)))
                                           ((lambda (_L23225_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L23225_)
                                                  _stx22534_
                                                  (_g2316623212_
                                                   _g2316823215_)))
                                            _tl2317223222_)))
                                       (_g2316623212_ _g2316823215_)))))
                           (_g2316523234_ _L23149_))
                         (_g2254023112_ _g2254423115_)))
                   _hd2255723144_
                   _hd2255423136_)
                  (_g2254023112_ _g2254423115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2254023112_
                                                   _g2254423115_))
                                              (_g2254023112_ _g2254423115_))))
                                      (_g2254023112_ _g2254423115_))))
                              (_g2254023112_ _g2254423115_))))
                      (_g2254023112_ _g2254423115_)))))
          (_g2253923237_ _stx22534_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx21376_)
      (letrec* ((_bind-e__2742327424_
                 (lambda (_id22518_ _expr22519_ _compile?22520_)
                   (cons (cons _id22518_ '())
                         (cons (if _compile?22520_
                                   (gxc#compile-e _expr22519_)
                                   _expr22519_)
                               '()))))
                (_bind-e__0__2742527426_
                 (lambda (_id22525_ _expr22526_)
                   (let ((_compile?22528_ '#t))
                     (_bind-e__2742327424_
                      _id22525_
                      _expr22526_
                      _compile?22528_))))
                (_bind-e21378_
                 (lambda _g27481_
                   (let ((_g27480_ (length _g27481_)))
                     (cond ((fx= _g27480_ 2)
                            (apply _bind-e__0__2742527426_ _g27481_))
                           ((fx= _g27480_ 3)
                            (apply _bind-e__2742327424_ _g27481_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27481_))))))
                (_compile-bindings21379_
                 (lambda (_bindings22102_)
                   (let _lp22104_ ((_rest22106_ _bindings22102_)
                                   (_lift122107_ '())
                                   (_lift222108_ '())
                                   (_bind22109_ '()))
                     (let* ((_rest2211022118_ _rest22106_)
                            (_E2211322122_
                             (lambda ()
                               (error '"No clause matching" _rest2211022118_)))
                            (_else2211222126_
                             (lambda ()
                               (values (reverse _lift122107_)
                                       (reverse _lift222108_)
                                       (reverse _bind22109_))))
                            (_K2211422505_
                             (lambda (_rest22129_ _hd22130_)
                               (let* ((_g2213422170_
                                       (lambda (_g2213522167_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2213522167_)))
                                      (_g2213322211_
                                       (lambda (_g2213522173_)
                                         (if (gx#stx-pair? _g2213522173_)
                                             (let ((_e2216022175_
                                                    (gx#stx-e _g2213522173_)))
                                               (let ((_hd2216122178_
                                                      (##car _e2216022175_))
                                                     (_tl2216222180_
                                                      (##cdr _e2216022175_)))
                                                 (if (gx#stx-pair?
                                                      _tl2216222180_)
                                                     (let ((_e2216322183_
                                                            (gx#stx-e
                                                             _tl2216222180_)))
                                                       (let ((_hd2216422186_
                                                              (##car _e2216322183_))
                                                             (_tl2216522188_
                                                              (##cdr _e2216322183_)))
                                                         (if (gx#stx-null?
                                                              _tl2216522188_)
                                                             ((lambda (_L22191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22192_)
                        (_lp22104_
                         _rest22129_
                         _lift122107_
                         _lift222108_
                         (cons (cons _L22192_
                                     (cons (gxc#compile-e _L22191_) '()))
                               _bind22109_)))
                      _hd2216422186_
                      _hd2216122178_)
                     (_g2213422170_ _g2213522173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2213422170_
                                                      _g2213522173_))))
                                             (_g2213422170_ _g2213522173_))))
                                      (_g2213222383_
                                       (lambda (_g2213522214_)
                                         (if (gx#stx-pair? _g2213522214_)
                                             (let ((_e2214922216_
                                                    (gx#stx-e _g2213522214_)))
                                               (let ((_hd2215022219_
                                                      (##car _e2214922216_))
                                                     (_tl2215122221_
                                                      (##cdr _e2214922216_)))
                                                 (if (gx#stx-pair?
                                                      _hd2215022219_)
                                                     (let ((_e2215222224_
                                                            (gx#stx-e
                                                             _hd2215022219_)))
                                                       (let ((_hd2215322227_
                                                              (##car _e2215222224_))
                                                             (_tl2215422229_
                                                              (##cdr _e2215222224_)))
                                                         (if (gx#stx-null?
                                                              _tl2215422229_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2215122221_)
                         (let ((_e2215522232_ (gx#stx-e _tl2215122221_)))
                           (let ((_hd2215622235_ (##car _e2215522232_))
                                 (_tl2215722237_ (##cdr _e2215522232_)))
                             (if (gx#stx-null? _tl2215722237_)
                                 ((lambda (_L22240_ _L22241_)
                                    (if (if (gx#identifier? _L22241_)
                                            (gxc#opt-lambda-expr? _L22240_)
                                            '#f)
                                        (let* ((_g2225522285_
                                                (lambda (_g2225622282_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2225622282_)))
                                               (_g2225422380_
                                                (lambda (_g2225622288_)
                                                  (if (gx#stx-pair?
                                                       _g2225622288_)
                                                      (let ((_e2226022290_
                                                             (gx#stx-e
                                                              _g2225622288_)))
                                                        (let ((_hd2226122293_
                                                               (##car _e2226022290_))
                                                              (_tl2226222295_
                                                               (##cdr _e2226022290_)))
                                                          (if (gx#stx-pair?
                                                               _tl2226222295_)
                                                              (let ((_e2226322298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2226222295_)))
                        (let ((_hd2226422301_ (##car _e2226322298_))
                              (_tl2226522303_ (##cdr _e2226322298_)))
                          (if (gx#stx-pair? _hd2226422301_)
                              (let ((_e2226622306_ (gx#stx-e _hd2226422301_)))
                                (let ((_hd2226722309_ (##car _e2226622306_))
                                      (_tl2226822311_ (##cdr _e2226622306_)))
                                  (if (gx#stx-pair? _hd2226722309_)
                                      (let ((_e2226922314_
                                             (gx#stx-e _hd2226722309_)))
                                        (let ((_hd2227022317_
                                               (##car _e2226922314_))
                                              (_tl2227122319_
                                               (##cdr _e2226922314_)))
                                          (if (gx#stx-pair? _hd2227022317_)
                                              (let ((_e2227222322_
                                                     (gx#stx-e
                                                      _hd2227022317_)))
                                                (let ((_hd2227322325_
                                                       (##car _e2227222322_))
                                                      (_tl2227422327_
                                                       (##cdr _e2227222322_)))
                                                  (if (gx#stx-null?
                                                       _tl2227422327_)
                                                      (if (gx#stx-pair?
                                                           _tl2227122319_)
                                                          (let ((_e2227522330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2227122319_)))
                    (let ((_hd2227622333_ (##car _e2227522330_))
                          (_tl2227722335_ (##cdr _e2227522330_)))
                      (if (gx#stx-null? _tl2227722335_)
                          (if (gx#stx-null? _tl2226822311_)
                              (if (gx#stx-pair? _tl2226522303_)
                                  (let ((_e2227822338_
                                         (gx#stx-e _tl2226522303_)))
                                    (let ((_hd2227922341_
                                           (##car _e2227822338_))
                                          (_tl2228022343_
                                           (##cdr _e2227822338_)))
                                      (if (gx#stx-null? _tl2228022343_)
                                          ((lambda (_L22346_ _L22347_ _L22348_)
                                             (let* ((_lambda-id22372_
                                                     (make-symbol
                                                      (gx#stx-e _L22241_)
                                                      (gensym '__)))
                                                    (_lambda-id22374_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id22372_
                                                      (gx#stx-source
                                                       _stx21376_)))
                                                    (_g27482_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id22374_))
                                                    (_new-case-lambda-expr22377_
                                                     (gxc#apply-expression-subst
                                                      _L22346_
                                                      _L22348_
                                                      _lambda-id22374_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L22241_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id22374_))
                                                 (_lp22104_
                                                  (cons (_bind-e__2742327424_
                                                         _L22241_
                                                         _new-case-lambda-expr22377_
                                                         '#f)
                                                        _rest22129_)
                                                  (cons (_bind-e__0__2742527426_
                                                         _lambda-id22374_
                                                         _L22347_)
                                                        _lift122107_)
                                                  _lift222108_
                                                  _bind22109_))))
                                           _hd2227922341_
                                           _hd2227622333_
                                           _hd2227322325_)
                                          (_g2225522285_ _g2225622288_))))
                                  (_g2225522285_ _g2225622288_))
                              (_g2225522285_ _g2225622288_))
                          (_g2225522285_ _g2225622288_))))
                  (_g2225522285_ _g2225622288_))
              (_g2225522285_ _g2225622288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2225522285_ _g2225622288_))))
                                      (_g2225522285_ _g2225622288_))))
                              (_g2225522285_ _g2225622288_))))
                      (_g2225522285_ _g2225622288_))))
              (_g2225522285_ _g2225622288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2225422380_ _L22240_))
                                        (_g2213322211_ _g2213522214_)))
                                  _hd2215622235_
                                  _hd2215322227_)
                                 (_g2213322211_ _g2213522214_))))
                         (_g2213322211_ _g2213522214_))
                     (_g2213322211_ _g2213522214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2213322211_
                                                      _g2213522214_))))
                                             (_g2213322211_ _g2213522214_))))
                                      (_g2213122502_
                                       (lambda (_g2213522386_)
                                         (if (gx#stx-pair? _g2213522386_)
                                             (let ((_e2213822388_
                                                    (gx#stx-e _g2213522386_)))
                                               (let ((_hd2213922391_
                                                      (##car _e2213822388_))
                                                     (_tl2214022393_
                                                      (##cdr _e2213822388_)))
                                                 (if (gx#stx-pair?
                                                      _hd2213922391_)
                                                     (let ((_e2214122396_
                                                            (gx#stx-e
                                                             _hd2213922391_)))
                                                       (let ((_hd2214222399_
                                                              (##car _e2214122396_))
                                                             (_tl2214322401_
                                                              (##cdr _e2214122396_)))
                                                         (if (gx#stx-null?
                                                              _tl2214322401_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2214022393_)
                         (let ((_e2214422404_ (gx#stx-e _tl2214022393_)))
                           (let ((_hd2214522407_ (##car _e2214422404_))
                                 (_tl2214622409_ (##cdr _e2214422404_)))
                             (if (gx#stx-null? _tl2214622409_)
                                 ((lambda (_L22412_ _L22413_)
                                    (if (if (gx#identifier? _L22413_)
                                            (gxc#case-lambda-expr? _L22412_)
                                            '#f)
                                        (let* ((_g2242822442_
                                                (lambda (_g2242922439_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2242922439_)))
                                               (_g2242722477_
                                                (lambda (_g2242922445_)
                                                  (if (gx#stx-pair?
                                                       _g2242922445_)
                                                      (let ((_e2243522447_
                                                             (gx#stx-e
                                                              _g2242922445_)))
                                                        (let ((_hd2243622450_
                                                               (##car _e2243522447_))
                                                              (_tl2243722452_
                                                               (##cdr _e2243522447_)))
                                                          ((lambda (_L22455_)
                                                             (let ((_g27483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx21376_
                             _L22413_
                             _L22455_
                             '#t)))
                       (begin
                         (let ((_g27484_ (values-count _g27483_)))
                           (if (not (fx= _g27484_ 3))
                               (error "Context expects 3 values" _g27484_)))
                         (let ((_ids22465_ (values-ref _g27483_ 0))
                               (_impls22466_ (values-ref _g27483_ 1))
                               (_clauses22467_ (values-ref _g27483_ 2)))
                           (let* ((_g27485_
                                   (for-each gx#core-bind-runtime! _ids22465_))
                                  (_xbind22470_
                                   (map _bind-e21378_ _ids22465_ _impls22466_))
                                  (_expr*22472_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses22467_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*22474_
                                   (_bind-e__2742327424_
                                    _L22413_
                                    _expr*22472_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L22413_)
                                '" => "
                                (map gxc#identifier-symbol _ids22465_))
                               (_lp22104_
                                _rest22129_
                                _lift122107_
                                (foldl1 cons _lift222108_ _xbind22470_)
                                (cons _bind*22474_ _bind22109_))))))))
                   _tl2243722452_)))
              (_g2242822442_ _g2242922445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2242622499_
                                                (lambda (_g2242922480_)
                                                  (if (gx#stx-pair?
                                                       _g2242922480_)
                                                      (let ((_e2243122482_
                                                             (gx#stx-e
                                                              _g2242922480_)))
                                                        (let ((_hd2243222485_
                                                               (##car _e2243122482_))
                                                              (_tl2243322487_
                                                               (##cdr _e2243122482_)))
                                                          ((lambda (_L22490_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L22490_)
                         (_lp22104_
                          _rest22129_
                          _lift122107_
                          _lift222108_
                          (cons (_bind-e__2742327424_ _L22413_ _L22412_ '#f)
                                _bind22109_))
                         (_g2242722477_ _g2242922480_)))
                   _tl2243322487_)))
              (_g2242722477_ _g2242922480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2242622499_ _L22412_))
                                        (_g2213222383_ _g2213522386_)))
                                  _hd2214522407_
                                  _hd2214222399_)
                                 (_g2213222383_ _g2213522386_))))
                         (_g2213222383_ _g2213522386_))
                     (_g2213222383_ _g2213522386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2213222383_
                                                      _g2213522386_))))
                                             (_g2213222383_ _g2213522386_)))))
                                 (_g2213122502_ _hd22130_)))))
                       (if (##pair? _rest2211022118_)
                           (let ((_hd2211522508_ (##car _rest2211022118_))
                                 (_tl2211622510_ (##cdr _rest2211022118_)))
                             (let* ((_hd22513_ _hd2211522508_)
                                    (_rest22515_ _tl2211622510_))
                               (_K2211422505_ _rest22515_ _hd22513_)))
                           (_else2211222126_))))))
                (_lift-kw-lambda?21380_
                 (lambda (_bind22026_)
                   (let* ((_g2202922046_
                           (lambda (_g2203022043_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2203022043_)))
                          (_g2202822053_
                           (lambda (_g2203022049_) ((lambda () '#f))))
                          (_g2202722099_
                           (lambda (_g2203022056_)
                             (if (gx#stx-pair? _g2203022056_)
                                 (let ((_e2203322058_
                                        (gx#stx-e _g2203022056_)))
                                   (let ((_hd2203422061_ (##car _e2203322058_))
                                         (_tl2203522063_
                                          (##cdr _e2203322058_)))
                                     (if (gx#stx-pair? _hd2203422061_)
                                         (let ((_e2203622066_
                                                (gx#stx-e _hd2203422061_)))
                                           (let ((_hd2203722069_
                                                  (##car _e2203622066_))
                                                 (_tl2203822071_
                                                  (##cdr _e2203622066_)))
                                             (if (gx#stx-null? _tl2203822071_)
                                                 (if (gx#stx-pair?
                                                      _tl2203522063_)
                                                     (let ((_e2203922074_
                                                            (gx#stx-e
                                                             _tl2203522063_)))
                                                       (let ((_hd2204022077_
                                                              (##car _e2203922074_))
                                                             (_tl2204122079_
                                                              (##cdr _e2203922074_)))
                                                         (if (gx#stx-null?
                                                              _tl2204122079_)
                                                             ((lambda (_L22082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22083_)
                        (if (gx#identifier? _L22083_)
                            (gxc#kw-lambda-expr? _L22082_)
                            '#f))
                      _hd2204022077_
                      _hd2203722069_)
                     (_g2202822053_ _g2203022056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2202822053_
                                                      _g2203022056_))
                                                 (_g2202822053_
                                                  _g2203022056_))))
                                         (_g2202822053_ _g2203022056_))))
                                 (_g2202822053_ _g2203022056_)))))
                     (_g2202722099_ _bind22026_))))
                (_lift-kw-lambda-bindings21381_
                 (lambda (_bindings21642_)
                   (let _lp21644_ ((_rest21646_ _bindings21642_)
                                   (_lift121647_ '())
                                   (_lift221648_ '())
                                   (_bind21649_ '()))
                     (let* ((_rest2165021658_ _rest21646_)
                            (_E2165321662_
                             (lambda ()
                               (error '"No clause matching" _rest2165021658_)))
                            (_else2165221666_
                             (lambda ()
                               (values (reverse _lift121647_)
                                       (reverse _lift221648_)
                                       (reverse _bind21649_))))
                            (_K2165422014_
                             (lambda (_rest21669_ _hd21670_)
                               (let* ((_g2167321698_
                                       (lambda (_g2167421695_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2167421695_)))
                                      (_g2167221739_
                                       (lambda (_g2167421701_)
                                         (if (gx#stx-pair? _g2167421701_)
                                             (let ((_e2168821703_
                                                    (gx#stx-e _g2167421701_)))
                                               (let ((_hd2168921706_
                                                      (##car _e2168821703_))
                                                     (_tl2169021708_
                                                      (##cdr _e2168821703_)))
                                                 (if (gx#stx-pair?
                                                      _tl2169021708_)
                                                     (let ((_e2169121711_
                                                            (gx#stx-e
                                                             _tl2169021708_)))
                                                       (let ((_hd2169221714_
                                                              (##car _e2169121711_))
                                                             (_tl2169321716_
                                                              (##cdr _e2169121711_)))
                                                         (if (gx#stx-null?
                                                              _tl2169321716_)
                                                             ((lambda (_L21719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21720_)
                        (_lp21644_
                         _rest21669_
                         _lift121647_
                         _lift221648_
                         (cons (cons _L21720_ (cons _L21719_ '()))
                               _bind21649_)))
                      _hd2169221714_
                      _hd2168921706_)
                     (_g2167321698_ _g2167421701_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2167321698_
                                                      _g2167421701_))))
                                             (_g2167321698_ _g2167421701_))))
                                      (_g2167122011_
                                       (lambda (_g2167421742_)
                                         (if (gx#stx-pair? _g2167421742_)
                                             (let ((_e2167721744_
                                                    (gx#stx-e _g2167421742_)))
                                               (let ((_hd2167821747_
                                                      (##car _e2167721744_))
                                                     (_tl2167921749_
                                                      (##cdr _e2167721744_)))
                                                 (if (gx#stx-pair?
                                                      _hd2167821747_)
                                                     (let ((_e2168021752_
                                                            (gx#stx-e
                                                             _hd2167821747_)))
                                                       (let ((_hd2168121755_
                                                              (##car _e2168021752_))
                                                             (_tl2168221757_
                                                              (##cdr _e2168021752_)))
                                                         (if (gx#stx-null?
                                                              _tl2168221757_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2167921749_)
                         (let ((_e2168321760_ (gx#stx-e _tl2167921749_)))
                           (let ((_hd2168421763_ (##car _e2168321760_))
                                 (_tl2168521765_ (##cdr _e2168321760_)))
                             (if (gx#stx-null? _tl2168521765_)
                                 ((lambda (_L21768_ _L21769_)
                                    (if (if (gx#identifier? _L21769_)
                                            (gxc#kw-lambda-expr? _L21768_)
                                            '#f)
                                        (let* ((_g2178321836_
                                                (lambda (_g2178421833_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2178421833_)))
                                               (_g2178222008_
                                                (lambda (_g2178421839_)
                                                  (if (gx#stx-pair?
                                                       _g2178421839_)
                                                      (let ((_e2179021841_
                                                             (gx#stx-e
                                                              _g2178421839_)))
                                                        (let ((_hd2179121844_
                                                               (##car _e2179021841_))
                                                              (_tl2179221846_
                                                               (##cdr _e2179021841_)))
                                                          (if (gx#stx-pair?
                                                               _tl2179221846_)
                                                              (let ((_e2179321849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2179221846_)))
                        (let ((_hd2179421852_ (##car _e2179321849_))
                              (_tl2179521854_ (##cdr _e2179321849_)))
                          (if (gx#stx-pair? _hd2179421852_)
                              (let ((_e2179621857_ (gx#stx-e _hd2179421852_)))
                                (let ((_hd2179721860_ (##car _e2179621857_))
                                      (_tl2179821862_ (##cdr _e2179621857_)))
                                  (if (gx#stx-pair? _hd2179721860_)
                                      (let ((_e2179921865_
                                             (gx#stx-e _hd2179721860_)))
                                        (let ((_hd2180021868_
                                               (##car _e2179921865_))
                                              (_tl2180121870_
                                               (##cdr _e2179921865_)))
                                          (if (gx#stx-pair? _hd2180021868_)
                                              (let ((_e2180221873_
                                                     (gx#stx-e
                                                      _hd2180021868_)))
                                                (let ((_hd2180321876_
                                                       (##car _e2180221873_))
                                                      (_tl2180421878_
                                                       (##cdr _e2180221873_)))
                                                  (if (gx#stx-null?
                                                       _tl2180421878_)
                                                      (if (gx#stx-pair?
                                                           _tl2180121870_)
                                                          (let ((_e2180521881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2180121870_)))
                    (let ((_hd2180621884_ (##car _e2180521881_))
                          (_tl2180721886_ (##cdr _e2180521881_)))
                      (if (gx#stx-pair? _hd2180621884_)
                          (let ((_e2180821889_ (gx#stx-e _hd2180621884_)))
                            (let ((_hd2180921892_ (##car _e2180821889_))
                                  (_tl2181021894_ (##cdr _e2180821889_)))
                              (if (gx#stx-pair? _tl2181021894_)
                                  (let ((_e2181121897_
                                         (gx#stx-e _tl2181021894_)))
                                    (let ((_hd2181221900_
                                           (##car _e2181121897_))
                                          (_tl2181321902_
                                           (##cdr _e2181121897_)))
                                      (if (gx#stx-pair? _hd2181221900_)
                                          (let ((_e2181421905_
                                                 (gx#stx-e _hd2181221900_)))
                                            (let ((_hd2181521908_
                                                   (##car _e2181421905_))
                                                  (_tl2181621910_
                                                   (##cdr _e2181421905_)))
                                              (if (gx#stx-pair? _hd2181521908_)
                                                  (let ((_e2181721913_
                                                         (gx#stx-e
                                                          _hd2181521908_)))
                                                    (let ((_hd2181821916_
                                                           (##car _e2181721913_))
                                                          (_tl2181921918_
                                                           (##cdr _e2181721913_)))
                                                      (if (gx#stx-pair?
                                                           _hd2181821916_)
                                                          (let ((_e2182021921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2181821916_)))
                    (let ((_hd2182121924_ (##car _e2182021921_))
                          (_tl2182221926_ (##cdr _e2182021921_)))
                      (if (gx#stx-null? _tl2182221926_)
                          (if (gx#stx-pair? _tl2181921918_)
                              (let ((_e2182321929_ (gx#stx-e _tl2181921918_)))
                                (let ((_hd2182421932_ (##car _e2182321929_))
                                      (_tl2182521934_ (##cdr _e2182321929_)))
                                  (if (gx#stx-null? _tl2182521934_)
                                      (if (gx#stx-null? _tl2181621910_)
                                          (if (gx#stx-pair? _tl2181321902_)
                                              (let ((_e2182621937_
                                                     (gx#stx-e
                                                      _tl2181321902_)))
                                                (let ((_hd2182721940_
                                                       (##car _e2182621937_))
                                                      (_tl2182821942_
                                                       (##cdr _e2182621937_)))
                                                  (if (gx#stx-null?
                                                       _tl2182821942_)
                                                      (if (gx#stx-null?
                                                           _tl2180721886_)
                                                          (if (gx#stx-null?
                                                               _tl2179821862_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2179521854_)
                          (let ((_e2182921945_ (gx#stx-e _tl2179521854_)))
                            (let ((_hd2183021948_ (##car _e2182921945_))
                                  (_tl2183121950_ (##cdr _e2182921945_)))
                              (if (gx#stx-null? _tl2183121950_)
                                  ((lambda (_L21953_
                                            _L21954_
                                            _L21955_
                                            _L21956_
                                            _L21957_)
                                     (let* ((_get-kws-id21997_
                                             (make-symbol
                                              (gx#stx-e _L21769_)
                                              (gensym '__)))
                                            (_main-id21999_
                                             (make-symbol
                                              (gx#stx-e _L21769_)
                                              (gensym '__)))
                                            (_g27486_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21997_))
                                            (_g27487_
                                             (gx#core-bind-runtime!__0
                                              _main-id21999_))
                                            (_new-kw-dispatch22003_
                                             (gxc#apply-expression-subst
                                              _L21953_
                                              _L21957_
                                              _get-kws-id21997_))
                                            (_new-get-kws22005_
                                             (gxc#apply-expression-subst
                                              _L21954_
                                              _L21956_
                                              _main-id21999_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L21769_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21997_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21999_))
                                         (_lp21644_
                                          _rest21669_
                                          (cons (_bind-e__2742327424_
                                                 _main-id21999_
                                                 _L21955_
                                                 '#f)
                                                _lift121647_)
                                          (cons (_bind-e__2742327424_
                                                 _get-kws-id21997_
                                                 _new-get-kws22005_
                                                 '#f)
                                                _lift221648_)
                                          (cons (_bind-e__2742327424_
                                                 _L21769_
                                                 _new-kw-dispatch22003_
                                                 '#f)
                                                _bind21649_)))))
                                   _hd2183021948_
                                   _hd2182721940_
                                   _hd2182421932_
                                   _hd2182121924_
                                   _hd2180321876_)
                                  (_g2178321836_ _g2178421839_))))
                          (_g2178321836_ _g2178421839_))
                      (_g2178321836_ _g2178421839_))
                  (_g2178321836_ _g2178421839_))
              (_g2178321836_ _g2178421839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2178321836_ _g2178421839_))
                                          (_g2178321836_ _g2178421839_))
                                      (_g2178321836_ _g2178421839_))))
                              (_g2178321836_ _g2178421839_))
                          (_g2178321836_ _g2178421839_))))
                  (_g2178321836_ _g2178421839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2178321836_
                                                   _g2178421839_))))
                                          (_g2178321836_ _g2178421839_))))
                                  (_g2178321836_ _g2178421839_))))
                          (_g2178321836_ _g2178421839_))))
                  (_g2178321836_ _g2178421839_))
              (_g2178321836_ _g2178421839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2178321836_ _g2178421839_))))
                                      (_g2178321836_ _g2178421839_))))
                              (_g2178321836_ _g2178421839_))))
                      (_g2178321836_ _g2178421839_))))
              (_g2178321836_ _g2178421839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2178222008_ _L21768_))
                                        (_g2167221739_ _g2167421742_)))
                                  _hd2168421763_
                                  _hd2168121755_)
                                 (_g2167221739_ _g2167421742_))))
                         (_g2167221739_ _g2167421742_))
                     (_g2167221739_ _g2167421742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2167221739_
                                                      _g2167421742_))))
                                             (_g2167221739_ _g2167421742_)))))
                                 (_g2167122011_ _hd21670_)))))
                       (if (##pair? _rest2165021658_)
                           (let ((_hd2165522017_ (##car _rest2165021658_))
                                 (_tl2165622019_ (##cdr _rest2165021658_)))
                             (let* ((_hd22022_ _hd2165522017_)
                                    (_rest22024_ _tl2165622019_))
                               (_K2165422014_ _rest22024_ _hd22022_)))
                           (_else2165221666_)))))))
        (let* ((_g2138521431_
                (lambda (_g2138621428_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2138621428_)))
               (_g2138421438_
                (lambda (_g2138621434_)
                  ((lambda () (gxc#xform-let-values% _stx21376_)))))
               (_g2138321541_
                (lambda (_g2138621441_)
                  (if (gx#stx-pair? _g2138621441_)
                      (let ((_e2140921443_ (gx#stx-e _g2138621441_)))
                        (let ((_hd2141021446_ (##car _e2140921443_))
                              (_tl2141121448_ (##cdr _e2140921443_)))
                          (if (gx#stx-pair? _tl2141121448_)
                              (let ((_e2141221451_ (gx#stx-e _tl2141121448_)))
                                (let ((_hd2141321454_ (##car _e2141221451_))
                                      (_tl2141421456_ (##cdr _e2141221451_)))
                                  (if (gx#stx-pair/null? _hd2141321454_)
                                      (if (fx>= (gx#stx-length _hd2141321454_)
                                                '0)
                                          (let ((_g27488_
                                                 (gx#syntax-split-splice
                                                  _hd2141321454_
                                                  '0)))
                                            (begin
                                              (let ((_g27489_
                                                     (values-count _g27488_)))
                                                (if (not (fx= _g27489_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27489_)))
                                              (let ((_target2141521459_
                                                     (values-ref _g27488_ 0))
                                                    (_tl2141721461_
                                                     (values-ref _g27488_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2141721461_)
                                                    (letrec ((_loop2141821464_
                                                              (lambda (_hd2141621467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2142221469_)
                        (if (gx#stx-pair? _hd2141621467_)
                            (let ((_e2141921472_ (gx#stx-e _hd2141621467_)))
                              (let ((_lp-hd2142021475_ (##car _e2141921472_))
                                    (_lp-tl2142121477_ (##cdr _e2141921472_)))
                                (_loop2141821464_
                                 _lp-tl2142121477_
                                 (cons _lp-hd2142021475_ _bind2142221469_))))
                            (let ((_bind2142321480_
                                   (reverse _bind2142221469_)))
                              (if (gx#stx-pair? _tl2141421456_)
                                  (let ((_e2142421483_
                                         (gx#stx-e _tl2141421456_)))
                                    (let ((_hd2142521486_
                                           (##car _e2142421483_))
                                          (_tl2142621488_
                                           (##cdr _e2142421483_)))
                                      (if (gx#stx-null? _tl2142621488_)
                                          ((lambda (_L21491_ _L21492_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2151221515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2151321517_)
                             (cons _g2151221515_ _g2151321517_))
                           '()
                           _L21492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g27490_
                                                           (_compile-bindings21379_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2152021523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2152121525_)
                                (cons _g2152021523_ _g2152121525_))
                              '()
                              _L21492_)))))
              (begin
                (let ((_g27491_ (values-count _g27490_)))
                  (if (not (fx= _g27491_ 3))
                      (error "Context expects 3 values" _g27491_)))
                (let ((_lift121528_ (values-ref _g27490_ 0))
                      (_lift221529_ (values-ref _g27490_ 1))
                      (_hd21530_ (values-ref _g27490_ 2)))
                  (let* ((_body21532_ (gxc#compile-e _L21491_))
                         (_expr21534_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd21530_ (cons _body21532_ '())))
                           _stx21376_))
                         (_expr21536_
                          (if (null? _lift221529_)
                              _expr21534_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift221529_
                                           (cons _expr21534_ '())))
                               _stx21376_)))
                         (_expr21538_
                          (if (null? _lift121528_)
                              _expr21536_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift121528_
                                           (cons _expr21536_ '())))
                               _stx21376_))))
                    _expr21538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27433
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27433)
                                                      __obj27433)))
                                                 (_g2138421438_
                                                  _g2138621441_)))
                                           _hd2142521486_
                                           _bind2142321480_)
                                          (_g2138421438_ _g2138621441_))))
                                  (_g2138421438_ _g2138621441_)))))))
              (_loop2141821464_ _target2141521459_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2138421438_
                                                     _g2138621441_)))))
                                          (_g2138421438_ _g2138621441_))
                                      (_g2138421438_ _g2138621441_))))
                              (_g2138421438_ _g2138621441_))))
                      (_g2138421438_ _g2138621441_))))
               (_g2138221639_
                (lambda (_g2138621544_)
                  (if (gx#stx-pair? _g2138621544_)
                      (let ((_e2138921546_ (gx#stx-e _g2138621544_)))
                        (let ((_hd2139021549_ (##car _e2138921546_))
                              (_tl2139121551_ (##cdr _e2138921546_)))
                          (if (gx#stx-pair? _tl2139121551_)
                              (let ((_e2139221554_ (gx#stx-e _tl2139121551_)))
                                (let ((_hd2139321557_ (##car _e2139221554_))
                                      (_tl2139421559_ (##cdr _e2139221554_)))
                                  (if (gx#stx-pair/null? _hd2139321557_)
                                      (if (fx>= (gx#stx-length _hd2139321557_)
                                                '0)
                                          (let ((_g27492_
                                                 (gx#syntax-split-splice
                                                  _hd2139321557_
                                                  '0)))
                                            (begin
                                              (let ((_g27493_
                                                     (values-count _g27492_)))
                                                (if (not (fx= _g27493_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27493_)))
                                              (let ((_target2139521562_
                                                     (values-ref _g27492_ 0))
                                                    (_tl2139721564_
                                                     (values-ref _g27492_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2139721564_)
                                                    (letrec ((_loop2139821567_
                                                              (lambda (_hd2139621570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2140221572_)
                        (if (gx#stx-pair? _hd2139621570_)
                            (let ((_e2139921575_ (gx#stx-e _hd2139621570_)))
                              (let ((_lp-hd2140021578_ (##car _e2139921575_))
                                    (_lp-tl2140121580_ (##cdr _e2139921575_)))
                                (_loop2139821567_
                                 _lp-tl2140121580_
                                 (cons _lp-hd2140021578_ _bind2140221572_))))
                            (let ((_bind2140321583_
                                   (reverse _bind2140221572_)))
                              (if (gx#stx-pair? _tl2139421559_)
                                  (let ((_e2140421586_
                                         (gx#stx-e _tl2139421559_)))
                                    (let ((_hd2140521589_
                                           (##car _e2140421586_))
                                          (_tl2140621591_
                                           (##cdr _e2140421586_)))
                                      (if (gx#stx-null? _tl2140621591_)
                                          ((lambda (_L21594_ _L21595_)
                                             (if (ormap1 _lift-kw-lambda?21380_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2161221615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2161321617_)
                             (cons _g2161221615_ _g2161321617_))
                           '()
                           _L21595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_g27494_
                                                           (_lift-kw-lambda-bindings21381_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2162021623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2162121625_)
                                (cons _g2162021623_ _g2162121625_))
                              '()
                              _L21595_)))))
              (begin
                (let ((_g27495_ (values-count _g27494_)))
                  (if (not (fx= _g27495_ 3))
                      (error "Context expects 3 values" _g27495_)))
                (let ((_lift121628_ (values-ref _g27494_ 0))
                      (_lift221629_ (values-ref _g27494_ 1))
                      (_hd21630_ (values-ref _g27494_ 2)))
                  (let* ((_expr21632_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _hd21630_ (cons _L21594_ '())))
                           _stx21376_))
                         (_expr21634_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _lift221629_ (cons _expr21632_ '())))
                           _stx21376_))
                         (_expr21636_
                          (gxc#xform-wrap-source
                           (cons '%#let-values
                                 (cons _lift121628_ (cons _expr21634_ '())))
                           _stx21376_)))
                    (gxc#lift-top-lambda-let-values% _expr21636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27434
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27434)
                                                      __obj27434)))
                                                 (_g2138321541_
                                                  _g2138621544_)))
                                           _hd2140521589_
                                           _bind2140321583_)
                                          (_g2138321541_ _g2138621544_))))
                                  (_g2138321541_ _g2138621544_)))))))
              (_loop2139821567_ _target2139521562_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2138321541_
                                                     _g2138621544_)))))
                                          (_g2138321541_ _g2138621544_))
                                      (_g2138321541_ _g2138621544_))))
                              (_g2138321541_ _g2138621544_))))
                      (_g2138321541_ _g2138621544_)))))
          (_g2138221639_ _stx21376_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx20524_)
      (letrec* ((_bind-e__2742827429_
                 (lambda (_id21360_ _expr21361_ _compile?21362_)
                   (cons (cons _id21360_ '())
                         (cons (if _compile?21362_
                                   (gxc#compile-e _expr21361_)
                                   _expr21361_)
                               '()))))
                (_bind-e__0__2743027431_
                 (lambda (_id21367_ _expr21368_)
                   (let ((_compile?21370_ '#t))
                     (_bind-e__2742827429_
                      _id21367_
                      _expr21368_
                      _compile?21370_))))
                (_bind-e20526_
                 (lambda _g27497_
                   (let ((_g27496_ (length _g27497_)))
                     (cond ((fx= _g27496_ 2)
                            (apply _bind-e__0__2743027431_ _g27497_))
                           ((fx= _g27496_ 3)
                            (apply _bind-e__2742827429_ _g27497_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g27497_))))))
                (_compile-bindings20527_
                 (lambda (_rest20662_)
                   (let _lp20664_ ((_rest20666_ _rest20662_) (_bind20667_ '()))
                     (let* ((_rest2066820676_ _rest20666_)
                            (_E2067120680_
                             (lambda ()
                               (error '"No clause matching" _rest2066820676_)))
                            (_else2067020684_
                             (lambda () (reverse _bind20667_)))
                            (_K2067221347_
                             (lambda (_rest20687_ _hd20688_)
                               (let* ((_g2069320740_
                                       (lambda (_g2069420737_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2069420737_)))
                                      (_g2069220781_
                                       (lambda (_g2069420743_)
                                         (if (gx#stx-pair? _g2069420743_)
                                             (let ((_e2073020745_
                                                    (gx#stx-e _g2069420743_)))
                                               (let ((_hd2073120748_
                                                      (##car _e2073020745_))
                                                     (_tl2073220750_
                                                      (##cdr _e2073020745_)))
                                                 (if (gx#stx-pair?
                                                      _tl2073220750_)
                                                     (let ((_e2073320753_
                                                            (gx#stx-e
                                                             _tl2073220750_)))
                                                       (let ((_hd2073420756_
                                                              (##car _e2073320753_))
                                                             (_tl2073520758_
                                                              (##cdr _e2073320753_)))
                                                         (if (gx#stx-null?
                                                              _tl2073520758_)
                                                             ((lambda (_L20761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20762_)
                        (_lp20664_
                         _rest20687_
                         (cons (cons _L20762_
                                     (cons (gxc#compile-e _L20761_) '()))
                               _bind20667_)))
                      _hd2073420756_
                      _hd2073120748_)
                     (_g2069320740_ _g2069420743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069320740_
                                                      _g2069420743_))))
                                             (_g2069320740_ _g2069420743_))))
                                      (_g2069121053_
                                       (lambda (_g2069420784_)
                                         (if (gx#stx-pair? _g2069420784_)
                                             (let ((_e2071920786_
                                                    (gx#stx-e _g2069420784_)))
                                               (let ((_hd2072020789_
                                                      (##car _e2071920786_))
                                                     (_tl2072120791_
                                                      (##cdr _e2071920786_)))
                                                 (if (gx#stx-pair?
                                                      _hd2072020789_)
                                                     (let ((_e2072220794_
                                                            (gx#stx-e
                                                             _hd2072020789_)))
                                                       (let ((_hd2072320797_
                                                              (##car _e2072220794_))
                                                             (_tl2072420799_
                                                              (##cdr _e2072220794_)))
                                                         (if (gx#stx-null?
                                                              _tl2072420799_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2072120791_)
                         (let ((_e2072520802_ (gx#stx-e _tl2072120791_)))
                           (let ((_hd2072620805_ (##car _e2072520802_))
                                 (_tl2072720807_ (##cdr _e2072520802_)))
                             (if (gx#stx-null? _tl2072720807_)
                                 ((lambda (_L20810_ _L20811_)
                                    (if (if (gx#identifier? _L20811_)
                                            (gxc#kw-lambda-expr? _L20810_)
                                            '#f)
                                        (let* ((_g2082520878_
                                                (lambda (_g2082620875_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2082620875_)))
                                               (_g2082421050_
                                                (lambda (_g2082620881_)
                                                  (if (gx#stx-pair?
                                                       _g2082620881_)
                                                      (let ((_e2083220883_
                                                             (gx#stx-e
                                                              _g2082620881_)))
                                                        (let ((_hd2083320886_
                                                               (##car _e2083220883_))
                                                              (_tl2083420888_
                                                               (##cdr _e2083220883_)))
                                                          (if (gx#stx-pair?
                                                               _tl2083420888_)
                                                              (let ((_e2083520891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2083420888_)))
                        (let ((_hd2083620894_ (##car _e2083520891_))
                              (_tl2083720896_ (##cdr _e2083520891_)))
                          (if (gx#stx-pair? _hd2083620894_)
                              (let ((_e2083820899_ (gx#stx-e _hd2083620894_)))
                                (let ((_hd2083920902_ (##car _e2083820899_))
                                      (_tl2084020904_ (##cdr _e2083820899_)))
                                  (if (gx#stx-pair? _hd2083920902_)
                                      (let ((_e2084120907_
                                             (gx#stx-e _hd2083920902_)))
                                        (let ((_hd2084220910_
                                               (##car _e2084120907_))
                                              (_tl2084320912_
                                               (##cdr _e2084120907_)))
                                          (if (gx#stx-pair? _hd2084220910_)
                                              (let ((_e2084420915_
                                                     (gx#stx-e
                                                      _hd2084220910_)))
                                                (let ((_hd2084520918_
                                                       (##car _e2084420915_))
                                                      (_tl2084620920_
                                                       (##cdr _e2084420915_)))
                                                  (if (gx#stx-null?
                                                       _tl2084620920_)
                                                      (if (gx#stx-pair?
                                                           _tl2084320912_)
                                                          (let ((_e2084720923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2084320912_)))
                    (let ((_hd2084820926_ (##car _e2084720923_))
                          (_tl2084920928_ (##cdr _e2084720923_)))
                      (if (gx#stx-pair? _hd2084820926_)
                          (let ((_e2085020931_ (gx#stx-e _hd2084820926_)))
                            (let ((_hd2085120934_ (##car _e2085020931_))
                                  (_tl2085220936_ (##cdr _e2085020931_)))
                              (if (gx#stx-pair? _tl2085220936_)
                                  (let ((_e2085320939_
                                         (gx#stx-e _tl2085220936_)))
                                    (let ((_hd2085420942_
                                           (##car _e2085320939_))
                                          (_tl2085520944_
                                           (##cdr _e2085320939_)))
                                      (if (gx#stx-pair? _hd2085420942_)
                                          (let ((_e2085620947_
                                                 (gx#stx-e _hd2085420942_)))
                                            (let ((_hd2085720950_
                                                   (##car _e2085620947_))
                                                  (_tl2085820952_
                                                   (##cdr _e2085620947_)))
                                              (if (gx#stx-pair? _hd2085720950_)
                                                  (let ((_e2085920955_
                                                         (gx#stx-e
                                                          _hd2085720950_)))
                                                    (let ((_hd2086020958_
                                                           (##car _e2085920955_))
                                                          (_tl2086120960_
                                                           (##cdr _e2085920955_)))
                                                      (if (gx#stx-pair?
                                                           _hd2086020958_)
                                                          (let ((_e2086220963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2086020958_)))
                    (let ((_hd2086320966_ (##car _e2086220963_))
                          (_tl2086420968_ (##cdr _e2086220963_)))
                      (if (gx#stx-null? _tl2086420968_)
                          (if (gx#stx-pair? _tl2086120960_)
                              (let ((_e2086520971_ (gx#stx-e _tl2086120960_)))
                                (let ((_hd2086620974_ (##car _e2086520971_))
                                      (_tl2086720976_ (##cdr _e2086520971_)))
                                  (if (gx#stx-null? _tl2086720976_)
                                      (if (gx#stx-null? _tl2085820952_)
                                          (if (gx#stx-pair? _tl2085520944_)
                                              (let ((_e2086820979_
                                                     (gx#stx-e
                                                      _tl2085520944_)))
                                                (let ((_hd2086920982_
                                                       (##car _e2086820979_))
                                                      (_tl2087020984_
                                                       (##cdr _e2086820979_)))
                                                  (if (gx#stx-null?
                                                       _tl2087020984_)
                                                      (if (gx#stx-null?
                                                           _tl2084920928_)
                                                          (if (gx#stx-null?
                                                               _tl2084020904_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2083720896_)
                          (let ((_e2087120987_ (gx#stx-e _tl2083720896_)))
                            (let ((_hd2087220990_ (##car _e2087120987_))
                                  (_tl2087320992_ (##cdr _e2087120987_)))
                              (if (gx#stx-null? _tl2087320992_)
                                  ((lambda (_L20995_
                                            _L20996_
                                            _L20997_
                                            _L20998_
                                            _L20999_)
                                     (let* ((_get-kws-id21039_
                                             (make-symbol
                                              (gx#stx-e _L20811_)
                                              (gensym '__)))
                                            (_main-id21041_
                                             (make-symbol
                                              (gx#stx-e _L20811_)
                                              (gensym '__)))
                                            (_g27498_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id21039_))
                                            (_g27499_
                                             (gx#core-bind-runtime!__0
                                              _main-id21041_))
                                            (_new-kw-dispatch21045_
                                             (gxc#apply-expression-subst
                                              _L20995_
                                              _L20999_
                                              _get-kws-id21039_))
                                            (_new-get-kws21047_
                                             (gxc#apply-expression-subst
                                              _L20996_
                                              _L20998_
                                              _main-id21041_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#generate-runtime-binding-id
                                           _L20811_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _get-kws-id21039_)
                                          '" => "
                                          (gxc#generate-runtime-binding-id
                                           _main-id21041_))
                                         (_lp20664_
                                          (cons (_bind-e__2742827429_
                                                 _main-id21041_
                                                 _L20997_
                                                 '#f)
                                                (cons (_bind-e__2742827429_
                                                       _get-kws-id21039_
                                                       _new-get-kws21047_
                                                       '#f)
                                                      (cons (_bind-e__2742827429_
                                                             _L20811_
                                                             _new-kw-dispatch21045_
                                                             '#f)
                                                            _rest20687_)))
                                          _bind20667_))))
                                   _hd2087220990_
                                   _hd2086920982_
                                   _hd2086620974_
                                   _hd2086320966_
                                   _hd2084520918_)
                                  (_g2082520878_ _g2082620881_))))
                          (_g2082520878_ _g2082620881_))
                      (_g2082520878_ _g2082620881_))
                  (_g2082520878_ _g2082620881_))
              (_g2082520878_ _g2082620881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2082520878_ _g2082620881_))
                                          (_g2082520878_ _g2082620881_))
                                      (_g2082520878_ _g2082620881_))))
                              (_g2082520878_ _g2082620881_))
                          (_g2082520878_ _g2082620881_))))
                  (_g2082520878_ _g2082620881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2082520878_
                                                   _g2082620881_))))
                                          (_g2082520878_ _g2082620881_))))
                                  (_g2082520878_ _g2082620881_))))
                          (_g2082520878_ _g2082620881_))))
                  (_g2082520878_ _g2082620881_))
              (_g2082520878_ _g2082620881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2082520878_ _g2082620881_))))
                                      (_g2082520878_ _g2082620881_))))
                              (_g2082520878_ _g2082620881_))))
                      (_g2082520878_ _g2082620881_))))
              (_g2082520878_ _g2082620881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2082421050_ _L20810_))
                                        (_g2069220781_ _g2069420784_)))
                                  _hd2072620805_
                                  _hd2072320797_)
                                 (_g2069220781_ _g2069420784_))))
                         (_g2069220781_ _g2069420784_))
                     (_g2069220781_ _g2069420784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069220781_
                                                      _g2069420784_))))
                                             (_g2069220781_ _g2069420784_))))
                                      (_g2069021225_
                                       (lambda (_g2069421056_)
                                         (if (gx#stx-pair? _g2069421056_)
                                             (let ((_e2070821058_
                                                    (gx#stx-e _g2069421056_)))
                                               (let ((_hd2070921061_
                                                      (##car _e2070821058_))
                                                     (_tl2071021063_
                                                      (##cdr _e2070821058_)))
                                                 (if (gx#stx-pair?
                                                      _hd2070921061_)
                                                     (let ((_e2071121066_
                                                            (gx#stx-e
                                                             _hd2070921061_)))
                                                       (let ((_hd2071221069_
                                                              (##car _e2071121066_))
                                                             (_tl2071321071_
                                                              (##cdr _e2071121066_)))
                                                         (if (gx#stx-null?
                                                              _tl2071321071_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2071021063_)
                         (let ((_e2071421074_ (gx#stx-e _tl2071021063_)))
                           (let ((_hd2071521077_ (##car _e2071421074_))
                                 (_tl2071621079_ (##cdr _e2071421074_)))
                             (if (gx#stx-null? _tl2071621079_)
                                 ((lambda (_L21082_ _L21083_)
                                    (if (if (gx#identifier? _L21083_)
                                            (gxc#opt-lambda-expr? _L21082_)
                                            '#f)
                                        (let* ((_g2109721127_
                                                (lambda (_g2109821124_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2109821124_)))
                                               (_g2109621222_
                                                (lambda (_g2109821130_)
                                                  (if (gx#stx-pair?
                                                       _g2109821130_)
                                                      (let ((_e2110221132_
                                                             (gx#stx-e
                                                              _g2109821130_)))
                                                        (let ((_hd2110321135_
                                                               (##car _e2110221132_))
                                                              (_tl2110421137_
                                                               (##cdr _e2110221132_)))
                                                          (if (gx#stx-pair?
                                                               _tl2110421137_)
                                                              (let ((_e2110521140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2110421137_)))
                        (let ((_hd2110621143_ (##car _e2110521140_))
                              (_tl2110721145_ (##cdr _e2110521140_)))
                          (if (gx#stx-pair? _hd2110621143_)
                              (let ((_e2110821148_ (gx#stx-e _hd2110621143_)))
                                (let ((_hd2110921151_ (##car _e2110821148_))
                                      (_tl2111021153_ (##cdr _e2110821148_)))
                                  (if (gx#stx-pair? _hd2110921151_)
                                      (let ((_e2111121156_
                                             (gx#stx-e _hd2110921151_)))
                                        (let ((_hd2111221159_
                                               (##car _e2111121156_))
                                              (_tl2111321161_
                                               (##cdr _e2111121156_)))
                                          (if (gx#stx-pair? _hd2111221159_)
                                              (let ((_e2111421164_
                                                     (gx#stx-e
                                                      _hd2111221159_)))
                                                (let ((_hd2111521167_
                                                       (##car _e2111421164_))
                                                      (_tl2111621169_
                                                       (##cdr _e2111421164_)))
                                                  (if (gx#stx-null?
                                                       _tl2111621169_)
                                                      (if (gx#stx-pair?
                                                           _tl2111321161_)
                                                          (let ((_e2111721172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2111321161_)))
                    (let ((_hd2111821175_ (##car _e2111721172_))
                          (_tl2111921177_ (##cdr _e2111721172_)))
                      (if (gx#stx-null? _tl2111921177_)
                          (if (gx#stx-null? _tl2111021153_)
                              (if (gx#stx-pair? _tl2110721145_)
                                  (let ((_e2112021180_
                                         (gx#stx-e _tl2110721145_)))
                                    (let ((_hd2112121183_
                                           (##car _e2112021180_))
                                          (_tl2112221185_
                                           (##cdr _e2112021180_)))
                                      (if (gx#stx-null? _tl2112221185_)
                                          ((lambda (_L21188_ _L21189_ _L21190_)
                                             (let* ((_lambda-id21214_
                                                     (make-symbol
                                                      (gx#stx-e _L21083_)
                                                      (gensym '__)))
                                                    (_lambda-id21216_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id21214_
                                                      (gx#stx-source
                                                       _stx20524_)))
                                                    (_g27500_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id21216_))
                                                    (_new-case-lambda-expr21219_
                                                     (gxc#apply-expression-subst
                                                      _L21188_
                                                      _L21190_
                                                      _lambda-id21216_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#generate-runtime-binding-id
                                                   _L21083_)
                                                  '" => "
                                                  (gxc#generate-runtime-binding-id
                                                   _lambda-id21216_))
                                                 (_lp20664_
                                                  (cons (_bind-e__2742827429_
                                                         _L21083_
                                                         _new-case-lambda-expr21219_
                                                         '#f)
                                                        _rest20687_)
                                                  (cons (_bind-e__0__2743027431_
                                                         _lambda-id21216_
                                                         _L21189_)
                                                        _bind20667_)))))
                                           _hd2112121183_
                                           _hd2111821175_
                                           _hd2111521167_)
                                          (_g2109721127_ _g2109821130_))))
                                  (_g2109721127_ _g2109821130_))
                              (_g2109721127_ _g2109821130_))
                          (_g2109721127_ _g2109821130_))))
                  (_g2109721127_ _g2109821130_))
              (_g2109721127_ _g2109821130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2109721127_ _g2109821130_))))
                                      (_g2109721127_ _g2109821130_))))
                              (_g2109721127_ _g2109821130_))))
                      (_g2109721127_ _g2109821130_))))
              (_g2109721127_ _g2109821130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2109621222_ _L21082_))
                                        (_g2069121053_ _g2069421056_)))
                                  _hd2071521077_
                                  _hd2071221069_)
                                 (_g2069121053_ _g2069421056_))))
                         (_g2069121053_ _g2069421056_))
                     (_g2069121053_ _g2069421056_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069121053_
                                                      _g2069421056_))))
                                             (_g2069121053_ _g2069421056_))))
                                      (_g2068921344_
                                       (lambda (_g2069421228_)
                                         (if (gx#stx-pair? _g2069421228_)
                                             (let ((_e2069721230_
                                                    (gx#stx-e _g2069421228_)))
                                               (let ((_hd2069821233_
                                                      (##car _e2069721230_))
                                                     (_tl2069921235_
                                                      (##cdr _e2069721230_)))
                                                 (if (gx#stx-pair?
                                                      _hd2069821233_)
                                                     (let ((_e2070021238_
                                                            (gx#stx-e
                                                             _hd2069821233_)))
                                                       (let ((_hd2070121241_
                                                              (##car _e2070021238_))
                                                             (_tl2070221243_
                                                              (##cdr _e2070021238_)))
                                                         (if (gx#stx-null?
                                                              _tl2070221243_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2069921235_)
                         (let ((_e2070321246_ (gx#stx-e _tl2069921235_)))
                           (let ((_hd2070421249_ (##car _e2070321246_))
                                 (_tl2070521251_ (##cdr _e2070321246_)))
                             (if (gx#stx-null? _tl2070521251_)
                                 ((lambda (_L21254_ _L21255_)
                                    (if (if (gx#identifier? _L21255_)
                                            (gxc#case-lambda-expr? _L21254_)
                                            '#f)
                                        (let* ((_g2127021284_
                                                (lambda (_g2127121281_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2127121281_)))
                                               (_g2126921319_
                                                (lambda (_g2127121287_)
                                                  (if (gx#stx-pair?
                                                       _g2127121287_)
                                                      (let ((_e2127721289_
                                                             (gx#stx-e
                                                              _g2127121287_)))
                                                        (let ((_hd2127821292_
                                                               (##car _e2127721289_))
                                                              (_tl2127921294_
                                                               (##cdr _e2127721289_)))
                                                          ((lambda (_L21297_)
                                                             (let ((_g27501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx20524_
                             _L21255_
                             _L21297_
                             '#t)))
                       (begin
                         (let ((_g27502_ (values-count _g27501_)))
                           (if (not (fx= _g27502_ 3))
                               (error "Context expects 3 values" _g27502_)))
                         (let ((_ids21307_ (values-ref _g27501_ 0))
                               (_impls21308_ (values-ref _g27501_ 1))
                               (_clauses21309_ (values-ref _g27501_ 2)))
                           (let* ((_g27503_
                                   (for-each gx#core-bind-runtime! _ids21307_))
                                  (_xbind21312_
                                   (map _bind-e20526_ _ids21307_ _impls21308_))
                                  (_expr*21314_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses21309_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*21316_
                                   (_bind-e__2742827429_
                                    _L21255_
                                    _expr*21314_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#generate-runtime-binding-id _L21255_)
                                '" => "
                                (map gxc#identifier-symbol _ids21307_))
                               (_lp20664_
                                _rest20687_
                                (cons _bind*21316_
                                      (foldl1 cons
                                              _bind20667_
                                              _xbind21312_)))))))))
                   _tl2127921294_)))
              (_g2127021284_ _g2127121287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2126821341_
                                                (lambda (_g2127121322_)
                                                  (if (gx#stx-pair?
                                                       _g2127121322_)
                                                      (let ((_e2127321324_
                                                             (gx#stx-e
                                                              _g2127121322_)))
                                                        (let ((_hd2127421327_
                                                               (##car _e2127321324_))
                                                              (_tl2127521329_
                                                               (##cdr _e2127321324_)))
                                                          ((lambda (_L21332_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L21332_)
                         (_lp20664_
                          _rest20687_
                          (cons (_bind-e__2742827429_ _L21255_ _L21254_ '#f)
                                _bind20667_))
                         (_g2126921319_ _g2127121322_)))
                   _tl2127521329_)))
              (_g2126921319_ _g2127121322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2126821341_ _L21254_))
                                        (_g2069021225_ _g2069421228_)))
                                  _hd2070421249_
                                  _hd2070121241_)
                                 (_g2069021225_ _g2069421228_))))
                         (_g2069021225_ _g2069421228_))
                     (_g2069021225_ _g2069421228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2069021225_
                                                      _g2069421228_))))
                                             (_g2069021225_ _g2069421228_)))))
                                 (_g2068921344_ _hd20688_)))))
                       (if (##pair? _rest2066820676_)
                           (let ((_hd2067321350_ (##car _rest2066820676_))
                                 (_tl2067421352_ (##cdr _rest2066820676_)))
                             (let* ((_hd21355_ _hd2067321350_)
                                    (_rest21357_ _tl2067421352_))
                               (_K2067221347_ _rest21357_ _hd21355_)))
                           (_else2067020684_)))))))
        (let* ((_g2053020557_
                (lambda (_g2053120554_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2053120554_)))
               (_g2052920564_
                (lambda (_g2053120560_)
                  ((lambda () (gxc#xform-let-values% _stx20524_)))))
               (_g2052820659_
                (lambda (_g2053120567_)
                  (if (gx#stx-pair? _g2053120567_)
                      (let ((_e2053520569_ (gx#stx-e _g2053120567_)))
                        (let ((_hd2053620572_ (##car _e2053520569_))
                              (_tl2053720574_ (##cdr _e2053520569_)))
                          (if (gx#stx-pair? _tl2053720574_)
                              (let ((_e2053820577_ (gx#stx-e _tl2053720574_)))
                                (let ((_hd2053920580_ (##car _e2053820577_))
                                      (_tl2054020582_ (##cdr _e2053820577_)))
                                  (if (gx#stx-pair/null? _hd2053920580_)
                                      (if (fx>= (gx#stx-length _hd2053920580_)
                                                '0)
                                          (let ((_g27504_
                                                 (gx#syntax-split-splice
                                                  _hd2053920580_
                                                  '0)))
                                            (begin
                                              (let ((_g27505_
                                                     (values-count _g27504_)))
                                                (if (not (fx= _g27505_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27505_)))
                                              (let ((_target2054120585_
                                                     (values-ref _g27504_ 0))
                                                    (_tl2054320587_
                                                     (values-ref _g27504_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2054320587_)
                                                    (letrec ((_loop2054420590_
                                                              (lambda (_hd2054220593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2054820595_)
                        (if (gx#stx-pair? _hd2054220593_)
                            (let ((_e2054520598_ (gx#stx-e _hd2054220593_)))
                              (let ((_lp-hd2054620601_ (##car _e2054520598_))
                                    (_lp-tl2054720603_ (##cdr _e2054520598_)))
                                (_loop2054420590_
                                 _lp-tl2054720603_
                                 (cons _lp-hd2054620601_ _bind2054820595_))))
                            (let ((_bind2054920606_
                                   (reverse _bind2054820595_)))
                              (if (gx#stx-pair? _tl2054020582_)
                                  (let ((_e2055020609_
                                         (gx#stx-e _tl2054020582_)))
                                    (let ((_hd2055120612_
                                           (##car _e2055020609_))
                                          (_tl2055220614_
                                           (##cdr _e2055020609_)))
                                      (if (gx#stx-null? _tl2055220614_)
                                          ((lambda (_L20617_ _L20618_ _L20619_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2064020643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2064120645_)
                             (cons _g2064020643_ _g2064120645_))
                           '()
                           _L20618_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd20656_
                                                           (_compile-bindings20527_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2064820651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2064920653_)
                                (cons _g2064820651_ _g2064920653_))
                              '()
                              _L20618_))))
                  (_body20657_ (gxc#compile-e _L20617_)))
              (gxc#xform-wrap-source
               (cons _L20619_ (cons _hd20656_ (cons _body20657_ '())))
               _stx20524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj27435
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj27435)
                                                      __obj27435)))
                                                 (_g2052920564_
                                                  _g2053120567_)))
                                           _hd2055120612_
                                           _bind2054920606_
                                           _hd2053620572_)
                                          (_g2052920564_ _g2053120567_))))
                                  (_g2052920564_ _g2053120567_)))))))
              (_loop2054420590_ _target2054120585_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2052920564_
                                                     _g2053120567_)))))
                                          (_g2052920564_ _g2053120567_))
                                      (_g2052920564_ _g2053120567_))))
                              (_g2052920564_ _g2053120567_))))
                      (_g2052920564_ _g2053120567_)))))
          (_g2052820659_ _stx20524_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind20442_)
      (let* ((_g2044520462_
              (lambda (_g2044620459_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2044620459_)))
             (_g2044420469_ (lambda (_g2044620465_) ((lambda () '#f))))
             (_g2044320521_
              (lambda (_g2044620472_)
                (if (gx#stx-pair? _g2044620472_)
                    (let ((_e2044920474_ (gx#stx-e _g2044620472_)))
                      (let ((_hd2045020477_ (##car _e2044920474_))
                            (_tl2045120479_ (##cdr _e2044920474_)))
                        (if (gx#stx-pair? _hd2045020477_)
                            (let ((_e2045220482_ (gx#stx-e _hd2045020477_)))
                              (let ((_hd2045320485_ (##car _e2045220482_))
                                    (_tl2045420487_ (##cdr _e2045220482_)))
                                (if (gx#stx-null? _tl2045420487_)
                                    (if (gx#stx-pair? _tl2045120479_)
                                        (let ((_e2045520490_
                                               (gx#stx-e _tl2045120479_)))
                                          (let ((_hd2045620493_
                                                 (##car _e2045520490_))
                                                (_tl2045720495_
                                                 (##cdr _e2045520490_)))
                                            (if (gx#stx-null? _tl2045720495_)
                                                ((lambda (_L20498_ _L20499_)
                                                   (if (gx#identifier?
                                                        _L20499_)
                                                       (let ((_$e20515_
                                                              (gxc#case-lambda-expr?
                                                               _L20498_)))
                                                         (if _$e20515_
                                                             _$e20515_
                                                             (let ((_$e20518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L20498_)))
                       (if _$e20518_
                           _$e20518_
                           (gxc#kw-lambda-expr? _L20498_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2045620493_
                                                 _hd2045320485_)
                                                (_g2044420469_
                                                 _g2044620472_))))
                                        (_g2044420469_ _g2044620472_))
                                    (_g2044420469_ _g2044620472_))))
                            (_g2044420469_ _g2044620472_))))
                    (_g2044420469_ _g2044620472_)))))
        (_g2044320521_ _bind20442_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx20380_ _id20381_ _new-id20382_)
      (let* ((_g2038520398_
              (lambda (_g2038620395_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2038620395_)))
             (_g2038420405_ (lambda (_g2038620401_) ((lambda () _stx20380_))))
             (_g2038320439_
              (lambda (_g2038620408_)
                (if (gx#stx-pair? _g2038620408_)
                    (let ((_e2038820410_ (gx#stx-e _g2038620408_)))
                      (let ((_hd2038920413_ (##car _e2038820410_))
                            (_tl2039020415_ (##cdr _e2038820410_)))
                        (if (gx#stx-pair? _tl2039020415_)
                            (let ((_e2039120418_ (gx#stx-e _tl2039020415_)))
                              (let ((_hd2039220421_ (##car _e2039120418_))
                                    (_tl2039320423_ (##cdr _e2039120418_)))
                                (if (gx#stx-null? _tl2039320423_)
                                    ((lambda (_L20426_)
                                       (if (gx#free-identifier=?
                                            _L20426_
                                            _id20381_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id20382_ '()))
                                            _stx20380_)
                                           (_g2038420405_ _g2038620408_)))
                                     _hd2039220421_)
                                    (_g2038420405_ _g2038620408_))))
                            (_g2038420405_ _g2038620408_))))
                    (_g2038420405_ _g2038620408_)))))
        (_g2038320439_ _stx20380_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx20236_)
      (let* ((_g2023920270_
              (lambda (_g2024020267_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2024020267_)))
             (_g2023820315_
              (lambda (_g2024020273_)
                (if (gx#stx-pair? _g2024020273_)
                    (let ((_e2025720275_ (gx#stx-e _g2024020273_)))
                      (let ((_hd2025820278_ (##car _e2025720275_))
                            (_tl2025920280_ (##cdr _e2025720275_)))
                        (if (gx#stx-pair? _tl2025920280_)
                            (let ((_e2026020283_ (gx#stx-e _tl2025920280_)))
                              (let ((_hd2026120286_ (##car _e2026020283_))
                                    (_tl2026220288_ (##cdr _e2026020283_)))
                                (if (gx#stx-pair? _tl2026220288_)
                                    (let ((_e2026320291_
                                           (gx#stx-e _tl2026220288_)))
                                      (let ((_hd2026420294_
                                             (##car _e2026320291_))
                                            (_tl2026520296_
                                             (##cdr _e2026320291_)))
                                        (if (gx#stx-null? _tl2026520296_)
                                            ((lambda (_L20299_ _L20300_)
                                               (gxc#compile-e _L20299_))
                                             _hd2026420294_
                                             _hd2026120286_)
                                            (_g2023920270_ _g2024020273_))))
                                    (_g2023920270_ _g2024020273_))))
                            (_g2023920270_ _g2024020273_))))
                    (_g2023920270_ _g2024020273_))))
             (_g2023720377_
              (lambda (_g2024020318_)
                (if (gx#stx-pair? _g2024020318_)
                    (let ((_e2024320320_ (gx#stx-e _g2024020318_)))
                      (let ((_hd2024420323_ (##car _e2024320320_))
                            (_tl2024520325_ (##cdr _e2024320320_)))
                        (if (gx#stx-pair? _tl2024520325_)
                            (let ((_e2024620328_ (gx#stx-e _tl2024520325_)))
                              (let ((_hd2024720331_ (##car _e2024620328_))
                                    (_tl2024820333_ (##cdr _e2024620328_)))
                                (if (gx#stx-pair? _hd2024720331_)
                                    (let ((_e2024920336_
                                           (gx#stx-e _hd2024720331_)))
                                      (let ((_hd2025020339_
                                             (##car _e2024920336_))
                                            (_tl2025120341_
                                             (##cdr _e2024920336_)))
                                        (if (gx#stx-null? _tl2025120341_)
                                            (if (gx#stx-pair? _tl2024820333_)
                                                (let ((_e2025220344_
                                                       (gx#stx-e
                                                        _tl2024820333_)))
                                                  (let ((_hd2025320347_
                                                         (##car _e2025220344_))
                                                        (_tl2025420349_
                                                         (##cdr _e2025220344_)))
                                                    (if (gx#stx-null?
                                                         _tl2025420349_)
                                                        ((lambda (_L20352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20353_)
                   (if (gx#identifier? _L20353_)
                       (let ((_sym20369_
                              (gxc#generate-runtime-binding-id _L20353_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym20369_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym20369_)
                               (let ((_type2037020372_
                                      (gxc#apply-basic-expression-type
                                       _L20352_)))
                                 (if _type2037020372_
                                     (let ((_type20375_ _type2037020372_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym20369_
                                        _type20375_))
                                     '#f)))
                           (gxc#compile-e _L20352_)))
                       (_g2023820315_ _g2024020318_)))
                 _hd2025320347_
                 _hd2025020339_)
                (_g2023820315_ _g2024020318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2023820315_ _g2024020318_))
                                            (_g2023820315_ _g2024020318_))))
                                    (_g2023820315_ _g2024020318_))))
                            (_g2023820315_ _g2024020318_))))
                    (_g2023820315_ _g2024020318_)))))
        (_g2023720377_ _stx20236_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx20021_)
      (letrec ((_collect-e20023_
                (lambda (_hd20180_ _expr20181_)
                  (let* ((_g2018420194_
                          (lambda (_g2018520191_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2018520191_)))
                         (_g2018320201_
                          (lambda (_g2018520197_) ((lambda () '#!void))))
                         (_g2018220233_
                          (lambda (_g2018520204_)
                            (if (gx#stx-pair? _g2018520204_)
                                (let ((_e2018720206_ (gx#stx-e _g2018520204_)))
                                  (let ((_hd2018820209_ (##car _e2018720206_))
                                        (_tl2018920211_ (##cdr _e2018720206_)))
                                    (if (gx#stx-null? _tl2018920211_)
                                        ((lambda (_L20214_)
                                           (if (gx#identifier? _L20214_)
                                               (let ((_sym20225_
                                                      (gxc#generate-runtime-binding-id
                                                       _L20214_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym20225_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym20225_)
                                                     (let ((_type2022620228_
                                                            (gxc#apply-basic-expression-type
                                                             _expr20181_)))
                                                       (if _type2022620228_
                                                           (let ((_type20231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2022620228_))
                     (gxc#optimizer-declare-type!__%
                      _sym20225_
                      _type20231_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2018320201_ _g2018520204_)))
                                         _hd2018820209_)
                                        (_g2018320201_ _g2018520204_))))
                                (_g2018320201_ _g2018520204_)))))
                    (_g2018220233_ _hd20180_)))))
        (let* ((_g2002520060_
                (lambda (_g2002620057_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2002620057_)))
               (_g2002420177_
                (lambda (_g2002620063_)
                  (if (gx#stx-pair? _g2002620063_)
                      (let ((_e2003020065_ (gx#stx-e _g2002620063_)))
                        (let ((_hd2003120068_ (##car _e2003020065_))
                              (_tl2003220070_ (##cdr _e2003020065_)))
                          (if (gx#stx-pair? _tl2003220070_)
                              (let ((_e2003320073_ (gx#stx-e _tl2003220070_)))
                                (let ((_hd2003420076_ (##car _e2003320073_))
                                      (_tl2003520078_ (##cdr _e2003320073_)))
                                  (if (gx#stx-pair/null? _hd2003420076_)
                                      (if (fx>= (gx#stx-length _hd2003420076_)
                                                '0)
                                          (let ((_g27506_
                                                 (gx#syntax-split-splice
                                                  _hd2003420076_
                                                  '0)))
                                            (begin
                                              (let ((_g27507_
                                                     (values-count _g27506_)))
                                                (if (not (fx= _g27507_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27507_)))
                                              (let ((_target2003620081_
                                                     (values-ref _g27506_ 0))
                                                    (_tl2003820083_
                                                     (values-ref _g27506_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2003820083_)
                                                    (letrec ((_loop2003920086_
                                                              (lambda (_hd2003720089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2004320091_
                               _hd2004420093_)
                        (if (gx#stx-pair? _hd2003720089_)
                            (let ((_e2004020096_ (gx#stx-e _hd2003720089_)))
                              (let ((_lp-hd2004120099_ (##car _e2004020096_))
                                    (_lp-tl2004220101_ (##cdr _e2004020096_)))
                                (if (gx#stx-pair? _lp-hd2004120099_)
                                    (let ((_e2004720104_
                                           (gx#stx-e _lp-hd2004120099_)))
                                      (let ((_hd2004820107_
                                             (##car _e2004720104_))
                                            (_tl2004920109_
                                             (##cdr _e2004720104_)))
                                        (if (gx#stx-pair? _tl2004920109_)
                                            (let ((_e2005020112_
                                                   (gx#stx-e _tl2004920109_)))
                                              (let ((_hd2005120115_
                                                     (##car _e2005020112_))
                                                    (_tl2005220117_
                                                     (##cdr _e2005020112_)))
                                                (if (gx#stx-null?
                                                     _tl2005220117_)
                                                    (_loop2003920086_
                                                     _lp-tl2004220101_
                                                     (cons _hd2005120115_
                                                           _expr2004320091_)
                                                     (cons _hd2004820107_
                                                           _hd2004420093_))
                                                    (_g2002520060_
                                                     _g2002620063_))))
                                            (_g2002520060_ _g2002620063_))))
                                    (_g2002520060_ _g2002620063_))))
                            (let ((_expr2004520120_ (reverse _expr2004320091_))
                                  (_hd2004620122_ (reverse _hd2004420093_)))
                              (if (gx#stx-pair? _tl2003520078_)
                                  (let ((_e2005320125_
                                         (gx#stx-e _tl2003520078_)))
                                    (let ((_hd2005420128_
                                           (##car _e2005320125_))
                                          (_tl2005520130_
                                           (##cdr _e2005320125_)))
                                      (if (gx#stx-null? _tl2005520130_)
                                          ((lambda (_L20133_ _L20134_ _L20135_)
                                             (begin
                                               (for-each
                                                _collect-e20023_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2015520158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2015620160_)
                    (cons _g2015520158_ _g2015620160_))
                  '()
                  _L20135_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2016220165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2016320167_)
                    (cons _g2016220165_ _g2016320167_))
                  '()
                  _L20134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2016920172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2017020174_)
                    (cons _g2016920172_ _g2017020174_))
                  '()
                  _L20134_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L20133_)))
                                           _hd2005420128_
                                           _expr2004520120_
                                           _hd2004620122_)
                                          (_g2002520060_ _g2002620063_))))
                                  (_g2002520060_ _g2002620063_)))))))
              (_loop2003920086_ _target2003620081_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2002520060_
                                                     _g2002620063_)))))
                                          (_g2002520060_ _g2002620063_))
                                      (_g2002520060_ _g2002620063_))))
                              (_g2002520060_ _g2002620063_))))
                      (_g2002520060_ _g2002620063_)))))
          (_g2002420177_ _stx20021_)))))
  (define gxc#collect-type-call%
    (lambda (_stx19575_)
      (let* ((_g1957919681_
              (lambda (_g1958019678_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1958019678_)))
             (_g1957819688_ (lambda (_g1958019684_) ((lambda () '#!void))))
             (_g1957719838_
              (lambda (_g1958019691_)
                (if (gx#stx-pair? _g1958019691_)
                    (let ((_e1963819693_ (gx#stx-e _g1958019691_)))
                      (let ((_hd1963919696_ (##car _e1963819693_))
                            (_tl1964019698_ (##cdr _e1963819693_)))
                        (if (gx#stx-pair? _tl1964019698_)
                            (let ((_e1964119701_ (gx#stx-e _tl1964019698_)))
                              (let ((_hd1964219704_ (##car _e1964119701_))
                                    (_tl1964319706_ (##cdr _e1964119701_)))
                                (if (gx#stx-pair? _hd1964219704_)
                                    (let ((_e1964419709_
                                           (gx#stx-e _hd1964219704_)))
                                      (let ((_hd1964519712_
                                             (##car _e1964419709_))
                                            (_tl1964619714_
                                             (##cdr _e1964419709_)))
                                        (if (gx#identifier? _hd1964519712_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1964519712_)
                                                (if (gx#stx-pair?
                                                     _tl1964619714_)
                                                    (let ((_e1964719717_
                                                           (gx#stx-e
                                                            _tl1964619714_)))
                                                      (let ((_hd1964819720_
                                                             (##car _e1964719717_))
                                                            (_tl1964919722_
                                                             (##cdr _e1964719717_)))
                                                        (if (gx#stx-null?
                                                             _tl1964919722_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1964319706_)
                        (let ((_e1965019725_ (gx#stx-e _tl1964319706_)))
                          (let ((_hd1965119728_ (##car _e1965019725_))
                                (_tl1965219730_ (##cdr _e1965019725_)))
                            (if (gx#stx-pair? _hd1965119728_)
                                (let ((_e1965319733_
                                       (gx#stx-e _hd1965119728_)))
                                  (let ((_hd1965419736_ (##car _e1965319733_))
                                        (_tl1965519738_ (##cdr _e1965319733_)))
                                    (if (gx#identifier? _hd1965419736_)
                                        (if (gx#stx-eq? '%#ref _hd1965419736_)
                                            (if (gx#stx-pair? _tl1965519738_)
                                                (let ((_e1965619741_
                                                       (gx#stx-e
                                                        _tl1965519738_)))
                                                  (let ((_hd1965719744_
                                                         (##car _e1965619741_))
                                                        (_tl1965819746_
                                                         (##cdr _e1965619741_)))
                                                    (if (gx#stx-null?
                                                         _tl1965819746_)
                                                        (if (gx#stx-pair?
                                                             _tl1965219730_)
                                                            (let ((_e1965919749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1965219730_)))
                      (let ((_hd1966019752_ (##car _e1965919749_))
                            (_tl1966119754_ (##cdr _e1965919749_)))
                        (if (gx#stx-pair? _hd1966019752_)
                            (let ((_e1966219757_ (gx#stx-e _hd1966019752_)))
                              (let ((_hd1966319760_ (##car _e1966219757_))
                                    (_tl1966419762_ (##cdr _e1966219757_)))
                                (if (gx#identifier? _hd1966319760_)
                                    (if (gx#stx-eq? '%#quote _hd1966319760_)
                                        (if (gx#stx-pair? _tl1966419762_)
                                            (let ((_e1966519765_
                                                   (gx#stx-e _tl1966419762_)))
                                              (let ((_hd1966619768_
                                                     (##car _e1966519765_))
                                                    (_tl1966719770_
                                                     (##cdr _e1966519765_)))
                                                (if (gx#stx-null?
                                                     _tl1966719770_)
                                                    (if (gx#stx-pair?
                                                         _tl1966119754_)
                                                        (let ((_e1966819773_
                                                               (gx#stx-e
                                                                _tl1966119754_)))
                                                          (let ((_hd1966919776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1966819773_))
                        (_tl1967019778_ (##cdr _e1966819773_)))
                    (if (gx#stx-pair? _hd1966919776_)
                        (let ((_e1967119781_ (gx#stx-e _hd1966919776_)))
                          (let ((_hd1967219784_ (##car _e1967119781_))
                                (_tl1967319786_ (##cdr _e1967119781_)))
                            (if (gx#identifier? _hd1967219784_)
                                (if (gx#stx-eq? '%#ref _hd1967219784_)
                                    (if (gx#stx-pair? _tl1967319786_)
                                        (let ((_e1967419789_
                                               (gx#stx-e _tl1967319786_)))
                                          (let ((_hd1967519792_
                                                 (##car _e1967419789_))
                                                (_tl1967619794_
                                                 (##cdr _e1967419789_)))
                                            (if (gx#stx-null? _tl1967619794_)
                                                (if (gx#stx-null?
                                                     _tl1967019778_)
                                                    ((lambda (_L19797_
                                                              _L19798_
                                                              _L19799_
                                                              _L19800_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (gxc#optimizer-declare-method!__%
                    (gxc#generate-runtime-binding-id _L19799_)
                    (gx#stx-e _L19798_)
                    (gxc#generate-runtime-binding-id _L19797_)
                    '#f)
                   (_g1957819688_ _g1958019691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1967519792_
                                                     _hd1966619768_
                                                     _hd1965719744_
                                                     _hd1964819720_)
                                                    (_g1957819688_
                                                     _g1958019691_))
                                                (_g1957819688_
                                                 _g1958019691_))))
                                        (_g1957819688_ _g1958019691_))
                                    (_g1957819688_ _g1958019691_))
                                (_g1957819688_ _g1958019691_))))
                        (_g1957819688_ _g1958019691_))))
                (_g1957819688_ _g1958019691_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1957819688_
                                                     _g1958019691_))))
                                            (_g1957819688_ _g1958019691_))
                                        (_g1957819688_ _g1958019691_))
                                    (_g1957819688_ _g1958019691_))))
                            (_g1957819688_ _g1958019691_))))
                    (_g1957819688_ _g1958019691_))
                (_g1957819688_ _g1958019691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1957819688_ _g1958019691_))
                                            (_g1957819688_ _g1958019691_))
                                        (_g1957819688_ _g1958019691_))))
                                (_g1957819688_ _g1958019691_))))
                        (_g1957819688_ _g1958019691_))
                    (_g1957819688_ _g1958019691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1957819688_
                                                     _g1958019691_))
                                                (_g1957819688_ _g1958019691_))
                                            (_g1957819688_ _g1958019691_))))
                                    (_g1957819688_ _g1958019691_))))
                            (_g1957819688_ _g1958019691_))))
                    (_g1957819688_ _g1958019691_))))
             (_g1957620018_
              (lambda (_g1958019841_)
                (if (gx#stx-pair? _g1958019841_)
                    (let ((_e1958619843_ (gx#stx-e _g1958019841_)))
                      (let ((_hd1958719846_ (##car _e1958619843_))
                            (_tl1958819848_ (##cdr _e1958619843_)))
                        (if (gx#stx-pair? _tl1958819848_)
                            (let ((_e1958919851_ (gx#stx-e _tl1958819848_)))
                              (let ((_hd1959019854_ (##car _e1958919851_))
                                    (_tl1959119856_ (##cdr _e1958919851_)))
                                (if (gx#stx-pair? _hd1959019854_)
                                    (let ((_e1959219859_
                                           (gx#stx-e _hd1959019854_)))
                                      (let ((_hd1959319862_
                                             (##car _e1959219859_))
                                            (_tl1959419864_
                                             (##cdr _e1959219859_)))
                                        (if (gx#identifier? _hd1959319862_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1959319862_)
                                                (if (gx#stx-pair?
                                                     _tl1959419864_)
                                                    (let ((_e1959519867_
                                                           (gx#stx-e
                                                            _tl1959419864_)))
                                                      (let ((_hd1959619870_
                                                             (##car _e1959519867_))
                                                            (_tl1959719872_
                                                             (##cdr _e1959519867_)))
                                                        (if (gx#stx-null?
                                                             _tl1959719872_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1959119856_)
                        (let ((_e1959819875_ (gx#stx-e _tl1959119856_)))
                          (let ((_hd1959919878_ (##car _e1959819875_))
                                (_tl1960019880_ (##cdr _e1959819875_)))
                            (if (gx#stx-pair? _hd1959919878_)
                                (let ((_e1960119883_
                                       (gx#stx-e _hd1959919878_)))
                                  (let ((_hd1960219886_ (##car _e1960119883_))
                                        (_tl1960319888_ (##cdr _e1960119883_)))
                                    (if (gx#identifier? _hd1960219886_)
                                        (if (gx#stx-eq? '%#ref _hd1960219886_)
                                            (if (gx#stx-pair? _tl1960319888_)
                                                (let ((_e1960419891_
                                                       (gx#stx-e
                                                        _tl1960319888_)))
                                                  (let ((_hd1960519894_
                                                         (##car _e1960419891_))
                                                        (_tl1960619896_
                                                         (##cdr _e1960419891_)))
                                                    (if (gx#stx-null?
                                                         _tl1960619896_)
                                                        (if (gx#stx-pair?
                                                             _tl1960019880_)
                                                            (let ((_e1960719899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1960019880_)))
                      (let ((_hd1960819902_ (##car _e1960719899_))
                            (_tl1960919904_ (##cdr _e1960719899_)))
                        (if (gx#stx-pair? _hd1960819902_)
                            (let ((_e1961019907_ (gx#stx-e _hd1960819902_)))
                              (let ((_hd1961119910_ (##car _e1961019907_))
                                    (_tl1961219912_ (##cdr _e1961019907_)))
                                (if (gx#identifier? _hd1961119910_)
                                    (if (gx#stx-eq? '%#quote _hd1961119910_)
                                        (if (gx#stx-pair? _tl1961219912_)
                                            (let ((_e1961319915_
                                                   (gx#stx-e _tl1961219912_)))
                                              (let ((_hd1961419918_
                                                     (##car _e1961319915_))
                                                    (_tl1961519920_
                                                     (##cdr _e1961319915_)))
                                                (if (gx#stx-null?
                                                     _tl1961519920_)
                                                    (if (gx#stx-pair?
                                                         _tl1960919904_)
                                                        (let ((_e1961619923_
                                                               (gx#stx-e
                                                                _tl1960919904_)))
                                                          (let ((_hd1961719926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1961619923_))
                        (_tl1961819928_ (##cdr _e1961619923_)))
                    (if (gx#stx-pair? _hd1961719926_)
                        (let ((_e1961919931_ (gx#stx-e _hd1961719926_)))
                          (let ((_hd1962019934_ (##car _e1961919931_))
                                (_tl1962119936_ (##cdr _e1961919931_)))
                            (if (gx#identifier? _hd1962019934_)
                                (if (gx#stx-eq? '%#ref _hd1962019934_)
                                    (if (gx#stx-pair? _tl1962119936_)
                                        (let ((_e1962219939_
                                               (gx#stx-e _tl1962119936_)))
                                          (let ((_hd1962319942_
                                                 (##car _e1962219939_))
                                                (_tl1962419944_
                                                 (##cdr _e1962219939_)))
                                            (if (gx#stx-null? _tl1962419944_)
                                                (if (gx#stx-pair?
                                                     _tl1961819928_)
                                                    (let ((_e1962519947_
                                                           (gx#stx-e
                                                            _tl1961819928_)))
                                                      (let ((_hd1962619950_
                                                             (##car _e1962519947_))
                                                            (_tl1962719952_
                                                             (##cdr _e1962519947_)))
                                                        (if (gx#stx-pair?
                                                             _hd1962619950_)
                                                            (let ((_e1962819955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1962619950_)))
                      (let ((_hd1962919958_ (##car _e1962819955_))
                            (_tl1963019960_ (##cdr _e1962819955_)))
                        (if (gx#identifier? _hd1962919958_)
                            (if (gx#stx-eq? '%#quote _hd1962919958_)
                                (if (gx#stx-pair? _tl1963019960_)
                                    (let ((_e1963119963_
                                           (gx#stx-e _tl1963019960_)))
                                      (let ((_hd1963219966_
                                             (##car _e1963119963_))
                                            (_tl1963319968_
                                             (##cdr _e1963119963_)))
                                        (if (gx#stx-null? _tl1963319968_)
                                            (if (gx#stx-null? _tl1962719952_)
                                                ((lambda (_L19971_
                                                          _L19972_
                                                          _L19973_
                                                          _L19974_
                                                          _L19975_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L19975_)
                                                            'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#generate-runtime-binding-id
                                                         _L19974_)
                                                        (gx#stx-e _L19973_)
                                                        (gxc#generate-runtime-binding-id
                                                         _L19972_)
                                                        (gx#stx-e _L19971_))
                                                       (_g1957719838_
                                                        _g1958019841_)))
                                                 _hd1963219966_
                                                 _hd1962319942_
                                                 _hd1961419918_
                                                 _hd1960519894_
                                                 _hd1959619870_)
                                                (_g1957719838_ _g1958019841_))
                                            (_g1957719838_ _g1958019841_))))
                                    (_g1957719838_ _g1958019841_))
                                (_g1957719838_ _g1958019841_))
                            (_g1957719838_ _g1958019841_))))
                    (_g1957719838_ _g1958019841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1957719838_
                                                     _g1958019841_))
                                                (_g1957719838_
                                                 _g1958019841_))))
                                        (_g1957719838_ _g1958019841_))
                                    (_g1957719838_ _g1958019841_))
                                (_g1957719838_ _g1958019841_))))
                        (_g1957719838_ _g1958019841_))))
                (_g1957719838_ _g1958019841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1957719838_
                                                     _g1958019841_))))
                                            (_g1957719838_ _g1958019841_))
                                        (_g1957719838_ _g1958019841_))
                                    (_g1957719838_ _g1958019841_))))
                            (_g1957719838_ _g1958019841_))))
                    (_g1957719838_ _g1958019841_))
                (_g1957719838_ _g1958019841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1957719838_ _g1958019841_))
                                            (_g1957719838_ _g1958019841_))
                                        (_g1957719838_ _g1958019841_))))
                                (_g1957719838_ _g1958019841_))))
                        (_g1957719838_ _g1958019841_))
                    (_g1957719838_ _g1958019841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1957719838_
                                                     _g1958019841_))
                                                (_g1957719838_ _g1958019841_))
                                            (_g1957719838_ _g1958019841_))))
                                    (_g1957719838_ _g1958019841_))))
                            (_g1957719838_ _g1958019841_))))
                    (_g1957719838_ _g1958019841_)))))
        (_g1957620018_ _stx19575_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx19515_)
      (let* ((_g1951819531_
              (lambda (_g1951919528_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1951919528_)))
             (_g1951719538_ (lambda (_g1951919534_) ((lambda () '#f))))
             (_g1951619572_
              (lambda (_g1951919541_)
                (if (gx#stx-pair? _g1951919541_)
                    (let ((_e1952119543_ (gx#stx-e _g1951919541_)))
                      (let ((_hd1952219546_ (##car _e1952119543_))
                            (_tl1952319548_ (##cdr _e1952119543_)))
                        (if (gx#stx-pair? _tl1952319548_)
                            (let ((_e1952419551_ (gx#stx-e _tl1952319548_)))
                              (let ((_hd1952519554_ (##car _e1952419551_))
                                    (_tl1952619556_ (##cdr _e1952419551_)))
                                (if (gx#stx-null? _tl1952619556_)
                                    ((lambda (_L19559_)
                                       (gxc#compile-e _L19559_))
                                     _hd1952519554_)
                                    (_g1951719538_ _g1951919541_))))
                            (_g1951719538_ _g1951919541_))))
                    (_g1951719538_ _g1951919541_)))))
        (_g1951619572_ _stx19515_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx19448_)
      (let* ((_g1945019467_
              (lambda (_g1945119464_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1945119464_)))
             (_g1944919512_
              (lambda (_g1945119470_)
                (if (gx#stx-pair? _g1945119470_)
                    (let ((_e1945419472_ (gx#stx-e _g1945119470_)))
                      (let ((_hd1945519475_ (##car _e1945419472_))
                            (_tl1945619477_ (##cdr _e1945419472_)))
                        (if (gx#stx-pair? _tl1945619477_)
                            (let ((_e1945719480_ (gx#stx-e _tl1945619477_)))
                              (let ((_hd1945819483_ (##car _e1945719480_))
                                    (_tl1945919485_ (##cdr _e1945719480_)))
                                (if (gx#stx-pair? _tl1945919485_)
                                    (let ((_e1946019488_
                                           (gx#stx-e _tl1945919485_)))
                                      (let ((_hd1946119491_
                                             (##car _e1946019488_))
                                            (_tl1946219493_
                                             (##cdr _e1946019488_)))
                                        (if (gx#stx-null? _tl1946219493_)
                                            ((lambda (_L19496_ _L19497_)
                                               (gxc#compile-e _L19496_))
                                             _hd1946119491_
                                             _hd1945819483_)
                                            (_g1945019467_ _g1945119470_))))
                                    (_g1945019467_ _g1945119470_))))
                            (_g1945019467_ _g1945119470_))))
                    (_g1945019467_ _g1945119470_)))))
        (_g1944919512_ _stx19448_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx18094_)
      (let* ((_g1810118400_
              (lambda (_g1810218397_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1810218397_)))
             (_g1810018407_ (lambda (_g1810218403_) ((lambda () '#f))))
             (_g1809918796_
              (lambda (_g1810218410_)
                (if (gx#stx-pair? _g1810218410_)
                    (let ((_e1829118412_ (gx#stx-e _g1810218410_)))
                      (let ((_hd1829218415_ (##car _e1829118412_))
                            (_tl1829318417_ (##cdr _e1829118412_)))
                        (if (gx#stx-pair? _tl1829318417_)
                            (let ((_e1829418420_ (gx#stx-e _tl1829318417_)))
                              (let ((_hd1829518423_ (##car _e1829418420_))
                                    (_tl1829618425_ (##cdr _e1829418420_)))
                                (if (gx#stx-pair? _hd1829518423_)
                                    (let ((_e1829718428_
                                           (gx#stx-e _hd1829518423_)))
                                      (let ((_hd1829818431_
                                             (##car _e1829718428_))
                                            (_tl1829918433_
                                             (##cdr _e1829718428_)))
                                        (if (gx#stx-pair? _tl1829618425_)
                                            (let ((_e1830018436_
                                                   (gx#stx-e _tl1829618425_)))
                                              (let ((_hd1830118439_
                                                     (##car _e1830018436_))
                                                    (_tl1830218441_
                                                     (##cdr _e1830018436_)))
                                                (if (gx#stx-pair?
                                                     _hd1830118439_)
                                                    (let ((_e1830318444_
                                                           (gx#stx-e
                                                            _hd1830118439_)))
                                                      (let ((_hd1830418447_
                                                             (##car _e1830318444_))
                                                            (_tl1830518449_
                                                             (##cdr _e1830318444_)))
                                                        (if (gx#identifier?
                                                             _hd1830418447_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd1830418447_)
                        (if (gx#stx-pair? _tl1830518449_)
                            (let ((_e1830618452_ (gx#stx-e _tl1830518449_)))
                              (let ((_hd1830718455_ (##car _e1830618452_))
                                    (_tl1830818457_ (##cdr _e1830618452_)))
                                (if (gx#stx-pair? _hd1830718455_)
                                    (let ((_e1830918460_
                                           (gx#stx-e _hd1830718455_)))
                                      (let ((_hd1831018463_
                                             (##car _e1830918460_))
                                            (_tl1831118465_
                                             (##cdr _e1830918460_)))
                                        (if (gx#identifier? _hd1831018463_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1831018463_)
                                                (if (gx#stx-pair?
                                                     _tl1831118465_)
                                                    (let ((_e1831218468_
                                                           (gx#stx-e
                                                            _tl1831118465_)))
                                                      (let ((_hd1831318471_
                                                             (##car _e1831218468_))
                                                            (_tl1831418473_
                                                             (##cdr _e1831218468_)))
                                                        (if (gx#stx-null?
                                                             _tl1831418473_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1830818457_)
                        (let ((_e1831518476_ (gx#stx-e _tl1830818457_)))
                          (let ((_hd1831618479_ (##car _e1831518476_))
                                (_tl1831718481_ (##cdr _e1831518476_)))
                            (if (gx#stx-pair? _hd1831618479_)
                                (let ((_e1831818484_
                                       (gx#stx-e _hd1831618479_)))
                                  (let ((_hd1831918487_ (##car _e1831818484_))
                                        (_tl1832018489_ (##cdr _e1831818484_)))
                                    (if (gx#identifier? _hd1831918487_)
                                        (if (gx#stx-eq? '%#ref _hd1831918487_)
                                            (if (gx#stx-pair? _tl1832018489_)
                                                (let ((_e1832118492_
                                                       (gx#stx-e
                                                        _tl1832018489_)))
                                                  (let ((_hd1832218495_
                                                         (##car _e1832118492_))
                                                        (_tl1832318497_
                                                         (##cdr _e1832118492_)))
                                                    (if (gx#stx-null?
                                                         _tl1832318497_)
                                                        (if (gx#stx-pair?
                                                             _tl1831718481_)
                                                            (let ((_e1832418500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1831718481_)))
                      (let ((_hd1832518503_ (##car _e1832418500_))
                            (_tl1832618505_ (##cdr _e1832418500_)))
                        (if (gx#stx-pair? _hd1832518503_)
                            (let ((_e1832718508_ (gx#stx-e _hd1832518503_)))
                              (let ((_hd1832818511_ (##car _e1832718508_))
                                    (_tl1832918513_ (##cdr _e1832718508_)))
                                (if (gx#identifier? _hd1832818511_)
                                    (if (gx#stx-eq? '%#ref _hd1832818511_)
                                        (if (gx#stx-pair? _tl1832918513_)
                                            (let ((_e1833018516_
                                                   (gx#stx-e _tl1832918513_)))
                                              (let ((_hd1833118519_
                                                     (##car _e1833018516_))
                                                    (_tl1833218521_
                                                     (##cdr _e1833018516_)))
                                                (if (gx#stx-null?
                                                     _tl1833218521_)
                                                    (if (gx#stx-pair/null?
                                                         _tl1832618505_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1832618505_)
                          '1)
                    (let ((_g27508_
                           (gx#syntax-split-splice _tl1832618505_ '1)))
                      (begin
                        (let ((_g27509_ (values-count _g27508_)))
                          (if (not (fx= _g27509_ 2))
                              (error "Context expects 2 values" _g27509_)))
                        (let ((_target1833318524_ (values-ref _g27508_ 0))
                              (_tl1833518526_ (values-ref _g27508_ 1)))
                          (if (gx#stx-pair? _tl1833518526_)
                              (let ((_e1834818529_ (gx#stx-e _tl1833518526_)))
                                (let ((_hd1834918532_ (##car _e1834818529_))
                                      (_tl1835018534_ (##cdr _e1834818529_)))
                                  (if (gx#stx-pair? _hd1834918532_)
                                      (let ((_e1835118537_
                                             (gx#stx-e _hd1834918532_)))
                                        (let ((_hd1835218540_
                                               (##car _e1835118537_))
                                              (_tl1835318542_
                                               (##cdr _e1835118537_)))
                                          (if (gx#identifier? _hd1835218540_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd1835218540_)
                                                  (if (gx#stx-pair?
                                                       _tl1835318542_)
                                                      (let ((_e1835418545_
                                                             (gx#stx-e
                                                              _tl1835318542_)))
                                                        (let ((_hd1835518548_
                                                               (##car _e1835418545_))
                                                              (_tl1835618550_
                                                               (##cdr _e1835418545_)))
                                                          (if (gx#stx-null?
                                                               _tl1835618550_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835018534_)
                          (letrec ((_loop1833618553_
                                    (lambda (_hd1833418556_
                                             _-absent-value1834018558_
                                             _key1834118560_
                                             _-xkwvar1834218562_
                                             _-hash-ref1834318564_)
                                      (if (gx#stx-pair? _hd1833418556_)
                                          (let ((_e1833718567_
                                                 (gx#stx-e _hd1833418556_)))
                                            (let ((_lp-hd1833818570_
                                                   (##car _e1833718567_))
                                                  (_lp-tl1833918572_
                                                   (##cdr _e1833718567_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd1833818570_)
                                                  (let ((_e1835718575_
                                                         (gx#stx-e
                                                          _lp-hd1833818570_)))
                                                    (let ((_hd1835818578_
                                                           (##car _e1835718575_))
                                                          (_tl1835918580_
                                                           (##cdr _e1835718575_)))
                                                      (if (gx#identifier?
                                                           _hd1835818578_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1835818578_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1835918580_)
                          (let ((_e1836018583_ (gx#stx-e _tl1835918580_)))
                            (let ((_hd1836118586_ (##car _e1836018583_))
                                  (_tl1836218588_ (##cdr _e1836018583_)))
                              (if (gx#stx-pair? _hd1836118586_)
                                  (let ((_e1836318591_
                                         (gx#stx-e _hd1836118586_)))
                                    (let ((_hd1836418594_
                                           (##car _e1836318591_))
                                          (_tl1836518596_
                                           (##cdr _e1836318591_)))
                                      (if (gx#identifier? _hd1836418594_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1836418594_)
                                              (if (gx#stx-pair? _tl1836518596_)
                                                  (let ((_e1836618599_
                                                         (gx#stx-e
                                                          _tl1836518596_)))
                                                    (let ((_hd1836718602_
                                                           (##car _e1836618599_))
                                                          (_tl1836818604_
                                                           (##cdr _e1836618599_)))
                                                      (if (gx#stx-null?
                                                           _tl1836818604_)
                                                          (if (gx#stx-pair?
                                                               _tl1836218588_)
                                                              (let ((_e1836918607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1836218588_)))
                        (let ((_hd1837018610_ (##car _e1836918607_))
                              (_tl1837118612_ (##cdr _e1836918607_)))
                          (if (gx#stx-pair? _hd1837018610_)
                              (let ((_e1837218615_ (gx#stx-e _hd1837018610_)))
                                (let ((_hd1837318618_ (##car _e1837218615_))
                                      (_tl1837418620_ (##cdr _e1837218615_)))
                                  (if (gx#identifier? _hd1837318618_)
                                      (if (gx#stx-eq? '%#ref _hd1837318618_)
                                          (if (gx#stx-pair? _tl1837418620_)
                                              (let ((_e1837518623_
                                                     (gx#stx-e
                                                      _tl1837418620_)))
                                                (let ((_hd1837618626_
                                                       (##car _e1837518623_))
                                                      (_tl1837718628_
                                                       (##cdr _e1837518623_)))
                                                  (if (gx#stx-null?
                                                       _tl1837718628_)
                                                      (if (gx#stx-pair?
                                                           _tl1837118612_)
                                                          (let ((_e1837818631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1837118612_)))
                    (let ((_hd1837918634_ (##car _e1837818631_))
                          (_tl1838018636_ (##cdr _e1837818631_)))
                      (if (gx#stx-pair? _hd1837918634_)
                          (let ((_e1838118639_ (gx#stx-e _hd1837918634_)))
                            (let ((_hd1838218642_ (##car _e1838118639_))
                                  (_tl1838318644_ (##cdr _e1838118639_)))
                              (if (gx#identifier? _hd1838218642_)
                                  (if (gx#stx-eq? '%#quote _hd1838218642_)
                                      (if (gx#stx-pair? _tl1838318644_)
                                          (let ((_e1838418647_
                                                 (gx#stx-e _tl1838318644_)))
                                            (let ((_hd1838518650_
                                                   (##car _e1838418647_))
                                                  (_tl1838618652_
                                                   (##cdr _e1838418647_)))
                                              (if (gx#stx-null? _tl1838618652_)
                                                  (if (gx#stx-pair?
                                                       _tl1838018636_)
                                                      (let ((_e1838718655_
                                                             (gx#stx-e
                                                              _tl1838018636_)))
                                                        (let ((_hd1838818658_
                                                               (##car _e1838718655_))
                                                              (_tl1838918660_
                                                               (##cdr _e1838718655_)))
                                                          (if (gx#stx-pair?
                                                               _hd1838818658_)
                                                              (let ((_e1839018663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1838818658_)))
                        (let ((_hd1839118666_ (##car _e1839018663_))
                              (_tl1839218668_ (##cdr _e1839018663_)))
                          (if (gx#identifier? _hd1839118666_)
                              (if (gx#stx-eq? '%#ref _hd1839118666_)
                                  (if (gx#stx-pair? _tl1839218668_)
                                      (let ((_e1839318671_
                                             (gx#stx-e _tl1839218668_)))
                                        (let ((_hd1839418674_
                                               (##car _e1839318671_))
                                              (_tl1839518676_
                                               (##cdr _e1839318671_)))
                                          (if (gx#stx-null? _tl1839518676_)
                                              (if (gx#stx-null? _tl1838918660_)
                                                  (_loop1833618553_
                                                   _lp-tl1833918572_
                                                   (cons _hd1839418674_
                                                         _-absent-value1834018558_)
                                                   (cons _hd1838518650_
                                                         _key1834118560_)
                                                   (cons _hd1837618626_
                                                         _-xkwvar1834218562_)
                                                   (cons _hd1836718602_
                                                         _-hash-ref1834318564_))
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))))
                                      (_g1810018407_ _g1810218410_))
                                  (_g1810018407_ _g1810218410_))
                              (_g1810018407_ _g1810218410_))))
                      (_g1810018407_ _g1810218410_))))
              (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))))
                                          (_g1810018407_ _g1810218410_))
                                      (_g1810018407_ _g1810218410_))
                                  (_g1810018407_ _g1810218410_))))
                          (_g1810018407_ _g1810218410_))))
                  (_g1810018407_ _g1810218410_))
              (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1810018407_ _g1810218410_))
                                          (_g1810018407_ _g1810218410_))
                                      (_g1810018407_ _g1810218410_))))
                              (_g1810018407_ _g1810218410_))))
                      (_g1810018407_ _g1810218410_))
                  (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))
                                          (_g1810018407_ _g1810218410_))))
                                  (_g1810018407_ _g1810218410_))))
                          (_g1810018407_ _g1810218410_))
                      (_g1810018407_ _g1810218410_))
                  (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))))
                                          (let ((_-absent-value1834418679_
                                                 (reverse _-absent-value1834018558_))
                                                (_key1834518681_
                                                 (reverse _key1834118560_))
                                                (_-xkwvar1834618683_
                                                 (reverse _-xkwvar1834218562_))
                                                (_-hash-ref1834718685_
                                                 (reverse _-hash-ref1834318564_)))
                                            (if (gx#stx-null? _tl1830218441_)
                                                ((lambda (_L18688_
                                                          _L18689_
                                                          _L18690_
                                                          _L18691_
                                                          _L18692_
                                                          _L18693_
                                                          _L18694_
                                                          _L18695_
                                                          _L18696_
                                                          _L18697_)
                                                   (if (if (gx#identifier?
                                                            _L18697_)
                                                           (if (gx#identifier?
                                                                _L18696_)
                                                               (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L18695_)
                                'apply)
                           (if (gx#free-identifier=? _L18697_ _L18693_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1875218755_
                                                               _g1875318757_)
                                                        (cons _g1875218755_
                                                              _g1875318757_))
                                                      '()
                                                      _L18690_)))
                                   (if (andmap1 (lambda (_id18760_)
                                                  (eq? (gxc#generate-runtime-binding-id
                                                        _id18760_)
                                                       'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g1876118764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1876218766_)
                    (cons _g1876118764_ _g1876218766_))
                  '()
                  _L18692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_id18769_)
                                                      (eq? (gxc#generate-runtime-binding-id
                                                            _id18769_)
                                                           'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1877018773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1877118775_)
                        (cons _g1877018773_ _g1877118775_))
                      '()
                      _L18689_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g1877718779_)
                                                      (gx#free-identifier=?
                                                       _g1877718779_
                                                       _L18697_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1878118784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1878218786_)
                        (cons _g1878118784_ _g1878218786_))
                      '()
                      _L18691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               (##structure
                gxc#!kw-lambda-primary::t
                'kw-lambda-dispatch
                (map gx#stx-e
                     (begin
                       '#!void
                       (foldr1 (lambda (_g1878818791_ _g1878918793_)
                                 (cons _g1878818791_ _g1878918793_))
                               '()
                               _L18690_)))
                (gxc#generate-runtime-binding-id _L18694_))
               (_g1810018407_ _g1810218410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1835518548_
                                                 _-absent-value1834418679_
                                                 _key1834518681_
                                                 _-xkwvar1834618683_
                                                 _-hash-ref1834718685_
                                                 _hd1833118519_
                                                 _hd1832218495_
                                                 _hd1831318471_
                                                 _tl1829918433_
                                                 _hd1829818431_)
                                                (_g1810018407_
                                                 _g1810218410_)))))))
                            (_loop1833618553_
                             _target1833318524_
                             '()
                             '()
                             '()
                             '()))
                          (_g1810018407_ _g1810218410_))
                      (_g1810018407_ _g1810218410_))))
              (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1810018407_
                                                   _g1810218410_))
                                              (_g1810018407_ _g1810218410_))))
                                      (_g1810018407_ _g1810218410_))))
                              (_g1810018407_ _g1810218410_)))))
                    (_g1810018407_ _g1810218410_))
                (_g1810018407_ _g1810218410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))))
                                            (_g1810018407_ _g1810218410_))
                                        (_g1810018407_ _g1810218410_))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))))
                    (_g1810018407_ _g1810218410_))
                (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1810018407_ _g1810218410_))
                                            (_g1810018407_ _g1810218410_))
                                        (_g1810018407_ _g1810218410_))))
                                (_g1810018407_ _g1810218410_))))
                        (_g1810018407_ _g1810218410_))
                    (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))
                                                (_g1810018407_ _g1810218410_))
                                            (_g1810018407_ _g1810218410_))))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))
                        (_g1810018407_ _g1810218410_))
                    (_g1810018407_ _g1810218410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1810018407_
                                                     _g1810218410_))))
                                            (_g1810018407_ _g1810218410_))))
                                    (_g1810018407_ _g1810218410_))))
                            (_g1810018407_ _g1810218410_))))
                    (_g1810018407_ _g1810218410_))))
             (_g1809819008_
              (lambda (_g1810218799_)
                (if (gx#stx-pair? _g1810218799_)
                    (let ((_e1822418801_ (gx#stx-e _g1810218799_)))
                      (let ((_hd1822518804_ (##car _e1822418801_))
                            (_tl1822618806_ (##cdr _e1822418801_)))
                        (if (gx#stx-pair? _tl1822618806_)
                            (let ((_e1822718809_ (gx#stx-e _tl1822618806_)))
                              (let ((_hd1822818812_ (##car _e1822718809_))
                                    (_tl1822918814_ (##cdr _e1822718809_)))
                                (if (gx#stx-pair? _tl1822918814_)
                                    (let ((_e1823018817_
                                           (gx#stx-e _tl1822918814_)))
                                      (let ((_hd1823118820_
                                             (##car _e1823018817_))
                                            (_tl1823218822_
                                             (##cdr _e1823018817_)))
                                        (if (gx#stx-pair? _hd1823118820_)
                                            (let ((_e1823318825_
                                                   (gx#stx-e _hd1823118820_)))
                                              (let ((_hd1823418828_
                                                     (##car _e1823318825_))
                                                    (_tl1823518830_
                                                     (##cdr _e1823318825_)))
                                                (if (gx#identifier?
                                                     _hd1823418828_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1823418828_)
                                                        (if (gx#stx-pair?
                                                             _tl1823518830_)
                                                            (let ((_e1823618833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1823518830_)))
                      (let ((_hd1823718836_ (##car _e1823618833_))
                            (_tl1823818838_ (##cdr _e1823618833_)))
                        (if (gx#stx-pair? _hd1823718836_)
                            (let ((_e1823918841_ (gx#stx-e _hd1823718836_)))
                              (let ((_hd1824018844_ (##car _e1823918841_))
                                    (_tl1824118846_ (##cdr _e1823918841_)))
                                (if (gx#identifier? _hd1824018844_)
                                    (if (gx#stx-eq? '%#ref _hd1824018844_)
                                        (if (gx#stx-pair? _tl1824118846_)
                                            (let ((_e1824218849_
                                                   (gx#stx-e _tl1824118846_)))
                                              (let ((_hd1824318852_
                                                     (##car _e1824218849_))
                                                    (_tl1824418854_
                                                     (##cdr _e1824218849_)))
                                                (if (gx#stx-null?
                                                     _tl1824418854_)
                                                    (if (gx#stx-pair?
                                                         _tl1823818838_)
                                                        (let ((_e1824518857_
                                                               (gx#stx-e
                                                                _tl1823818838_)))
                                                          (let ((_hd1824618860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1824518857_))
                        (_tl1824718862_ (##cdr _e1824518857_)))
                    (if (gx#stx-pair? _hd1824618860_)
                        (let ((_e1824818865_ (gx#stx-e _hd1824618860_)))
                          (let ((_hd1824918868_ (##car _e1824818865_))
                                (_tl1825018870_ (##cdr _e1824818865_)))
                            (if (gx#identifier? _hd1824918868_)
                                (if (gx#stx-eq? '%#ref _hd1824918868_)
                                    (if (gx#stx-pair? _tl1825018870_)
                                        (let ((_e1825118873_
                                               (gx#stx-e _tl1825018870_)))
                                          (let ((_hd1825218876_
                                                 (##car _e1825118873_))
                                                (_tl1825318878_
                                                 (##cdr _e1825118873_)))
                                            (if (gx#stx-null? _tl1825318878_)
                                                (if (gx#stx-pair?
                                                     _tl1824718862_)
                                                    (let ((_e1825418881_
                                                           (gx#stx-e
                                                            _tl1824718862_)))
                                                      (let ((_hd1825518884_
                                                             (##car _e1825418881_))
                                                            (_tl1825618886_
                                                             (##cdr _e1825418881_)))
                                                        (if (gx#stx-pair?
                                                             _hd1825518884_)
                                                            (let ((_e1825718889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1825518884_)))
                      (let ((_hd1825818892_ (##car _e1825718889_))
                            (_tl1825918894_ (##cdr _e1825718889_)))
                        (if (gx#identifier? _hd1825818892_)
                            (if (gx#stx-eq? '%#quote _hd1825818892_)
                                (if (gx#stx-pair? _tl1825918894_)
                                    (let ((_e1826018897_
                                           (gx#stx-e _tl1825918894_)))
                                      (let ((_hd1826118900_
                                             (##car _e1826018897_))
                                            (_tl1826218902_
                                             (##cdr _e1826018897_)))
                                        (if (gx#stx-null? _tl1826218902_)
                                            (if (gx#stx-pair? _tl1825618886_)
                                                (let ((_e1826318905_
                                                       (gx#stx-e
                                                        _tl1825618886_)))
                                                  (let ((_hd1826418908_
                                                         (##car _e1826318905_))
                                                        (_tl1826518910_
                                                         (##cdr _e1826318905_)))
                                                    (if (gx#stx-pair?
                                                         _hd1826418908_)
                                                        (let ((_e1826618913_
                                                               (gx#stx-e
                                                                _hd1826418908_)))
                                                          (let ((_hd1826718916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1826618913_))
                        (_tl1826818918_ (##cdr _e1826618913_)))
                    (if (gx#identifier? _hd1826718916_)
                        (if (gx#stx-eq? '%#ref _hd1826718916_)
                            (if (gx#stx-pair? _tl1826818918_)
                                (let ((_e1826918921_
                                       (gx#stx-e _tl1826818918_)))
                                  (let ((_hd1827018924_ (##car _e1826918921_))
                                        (_tl1827118926_ (##cdr _e1826918921_)))
                                    (if (gx#stx-null? _tl1827118926_)
                                        (if (gx#stx-pair? _tl1826518910_)
                                            (let ((_e1827218929_
                                                   (gx#stx-e _tl1826518910_)))
                                              (let ((_hd1827318932_
                                                     (##car _e1827218929_))
                                                    (_tl1827418934_
                                                     (##cdr _e1827218929_)))
                                                (if (gx#stx-pair?
                                                     _hd1827318932_)
                                                    (let ((_e1827518937_
                                                           (gx#stx-e
                                                            _hd1827318932_)))
                                                      (let ((_hd1827618940_
                                                             (##car _e1827518937_))
                                                            (_tl1827718942_
                                                             (##cdr _e1827518937_)))
                                                        (if (gx#identifier?
                                                             _hd1827618940_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1827618940_)
                        (if (gx#stx-pair? _tl1827718942_)
                            (let ((_e1827818945_ (gx#stx-e _tl1827718942_)))
                              (let ((_hd1827918948_ (##car _e1827818945_))
                                    (_tl1828018950_ (##cdr _e1827818945_)))
                                (if (gx#stx-null? _tl1828018950_)
                                    (if (gx#stx-null? _tl1827418934_)
                                        (if (gx#stx-null? _tl1823218822_)
                                            ((lambda (_L18953_
                                                      _L18954_
                                                      _L18955_
                                                      _L18956_
                                                      _L18957_
                                                      _L18958_)
                                               (if (if (gx#identifier?
                                                        _L18958_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18957_)
                        'apply)
                   (if (eq? (gxc#generate-runtime-binding-id _L18956_)
                            'keyword-dispatch)
                       (gx#free-identifier=? _L18958_ _L18953_)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (##structure
                                                    gxc#!kw-lambda::t
                                                    'kw-lambda
                                                    (gx#stx-e _L18955_)
                                                    (gxc#generate-runtime-binding-id
                                                     _L18954_))
                                                   (_g1809918796_
                                                    _g1810218799_)))
                                             _hd1827918948_
                                             _hd1827018924_
                                             _hd1826118900_
                                             _hd1825218876_
                                             _hd1824318852_
                                             _hd1822818812_)
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))
                        (_g1809918796_ _g1810218799_))
                    (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))))
                                (_g1809918796_ _g1810218799_))
                            (_g1809918796_ _g1810218799_))
                        (_g1809918796_ _g1810218799_))))
                (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1809918796_ _g1810218799_))
                                            (_g1809918796_ _g1810218799_))))
                                    (_g1809918796_ _g1810218799_))
                                (_g1809918796_ _g1810218799_))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))
                                                (_g1809918796_
                                                 _g1810218799_))))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))
                                (_g1809918796_ _g1810218799_))))
                        (_g1809918796_ _g1810218799_))))
                (_g1809918796_ _g1810218799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))
                                        (_g1809918796_ _g1810218799_))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))
                (_g1809918796_ _g1810218799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809918796_
                                                     _g1810218799_))))
                                            (_g1809918796_ _g1810218799_))))
                                    (_g1809918796_ _g1810218799_))))
                            (_g1809918796_ _g1810218799_))))
                    (_g1809918796_ _g1810218799_))))
             (_g1809719030_
              (lambda (_g1810219011_)
                (if (gx#stx-pair? _g1810219011_)
                    (let ((_e1821519013_ (gx#stx-e _g1810219011_)))
                      (let ((_hd1821619016_ (##car _e1821519013_))
                            (_tl1821719018_ (##cdr _e1821519013_)))
                        ((lambda (_L19021_)
                           (if (gxc#dispatch-lambda-form? _L19021_)
                               (let ((__obj27436
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj27436
                                    'lambda
                                    (gxc#lambda-form-arity _L19021_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L19021_))
                                   __obj27436))
                               (_g1809819008_ _g1810219011_)))
                         _tl1821719018_)))
                    (_g1809819008_ _g1810219011_))))
             (_g1809619260_
              (lambda (_g1810219033_)
                (if (gx#stx-pair? _g1810219033_)
                    (let ((_e1816019035_ (gx#stx-e _g1810219033_)))
                      (let ((_hd1816119038_ (##car _e1816019035_))
                            (_tl1816219040_ (##cdr _e1816019035_)))
                        (if (gx#stx-pair? _tl1816219040_)
                            (let ((_e1816319043_ (gx#stx-e _tl1816219040_)))
                              (let ((_hd1816419046_ (##car _e1816319043_))
                                    (_tl1816519048_ (##cdr _e1816319043_)))
                                (if (gx#stx-pair/null? _hd1816419046_)
                                    (if (fx>= (gx#stx-length _hd1816419046_)
                                              '0)
                                        (let ((_g27510_
                                               (gx#syntax-split-splice
                                                _hd1816419046_
                                                '0)))
                                          (begin
                                            (let ((_g27511_
                                                   (values-count _g27510_)))
                                              (if (not (fx= _g27511_ 2))
                                                  (error "Context expects 2 values"
                                                         _g27511_)))
                                            (let ((_target1816619051_
                                                   (values-ref _g27510_ 0))
                                                  (_tl1816819053_
                                                   (values-ref _g27510_ 1)))
                                              (if (gx#stx-null? _tl1816819053_)
                                                  (letrec ((_loop1816919056_
                                                            (lambda (_hd1816719059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg1817319061_)
                      (if (gx#stx-pair? _hd1816719059_)
                          (let ((_e1817019064_ (gx#stx-e _hd1816719059_)))
                            (let ((_lp-hd1817119067_ (##car _e1817019064_))
                                  (_lp-tl1817219069_ (##cdr _e1817019064_)))
                              (_loop1816919056_
                               _lp-tl1817219069_
                               (cons _lp-hd1817119067_ _arg1817319061_))))
                          (let ((_arg1817419072_ (reverse _arg1817319061_)))
                            (if (gx#stx-pair? _tl1816519048_)
                                (let ((_e1817519075_
                                       (gx#stx-e _tl1816519048_)))
                                  (let ((_hd1817619078_ (##car _e1817519075_))
                                        (_tl1817719080_ (##cdr _e1817519075_)))
                                    (if (gx#stx-pair? _hd1817619078_)
                                        (let ((_e1817819083_
                                               (gx#stx-e _hd1817619078_)))
                                          (let ((_hd1817919086_
                                                 (##car _e1817819083_))
                                                (_tl1818019088_
                                                 (##cdr _e1817819083_)))
                                            (if (gx#identifier? _hd1817919086_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd1817919086_)
                                                    (if (gx#stx-pair?
                                                         _tl1818019088_)
                                                        (let ((_e1818119091_
                                                               (gx#stx-e
                                                                _tl1818019088_)))
                                                          (let ((_hd1818219094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1818119091_))
                        (_tl1818319096_ (##cdr _e1818119091_)))
                    (if (gx#stx-pair? _hd1818219094_)
                        (let ((_e1818419099_ (gx#stx-e _hd1818219094_)))
                          (let ((_hd1818519102_ (##car _e1818419099_))
                                (_tl1818619104_ (##cdr _e1818419099_)))
                            (if (gx#identifier? _hd1818519102_)
                                (if (gx#stx-eq? '%#ref _hd1818519102_)
                                    (if (gx#stx-pair? _tl1818619104_)
                                        (let ((_e1818719107_
                                               (gx#stx-e _tl1818619104_)))
                                          (let ((_hd1818819110_
                                                 (##car _e1818719107_))
                                                (_tl1818919112_
                                                 (##cdr _e1818719107_)))
                                            (if (gx#stx-null? _tl1818919112_)
                                                (if (gx#stx-pair?
                                                     _tl1818319096_)
                                                    (let ((_e1819019115_
                                                           (gx#stx-e
                                                            _tl1818319096_)))
                                                      (let ((_hd1819119118_
                                                             (##car _e1819019115_))
                                                            (_tl1819219120_
                                                             (##cdr _e1819019115_)))
                                                        (if (gx#stx-pair?
                                                             _hd1819119118_)
                                                            (let ((_e1819319123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1819119118_)))
                      (let ((_hd1819419126_ (##car _e1819319123_))
                            (_tl1819519128_ (##cdr _e1819319123_)))
                        (if (gx#identifier? _hd1819419126_)
                            (if (gx#stx-eq? '%#ref _hd1819419126_)
                                (if (gx#stx-pair? _tl1819519128_)
                                    (let ((_e1819619131_
                                           (gx#stx-e _tl1819519128_)))
                                      (let ((_hd1819719134_
                                             (##car _e1819619131_))
                                            (_tl1819819136_
                                             (##cdr _e1819619131_)))
                                        (if (gx#stx-null? _tl1819819136_)
                                            (if (gx#stx-pair/null?
                                                 _tl1819219120_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1819219120_)
                                                          '0)
                                                    (let ((_g27512_
                                                           (gx#syntax-split-splice
                                                            _tl1819219120_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27513_
                                                               (values-count
                                                                _g27512_)))
                                                          (if (not (fx= _g27513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g27513_)))
                (let ((_target1819919139_ (values-ref _g27512_ 0))
                      (_tl1820119141_ (values-ref _g27512_ 1)))
                  (if (gx#stx-null? _tl1820119141_)
                      (letrec ((_loop1820219144_
                                (lambda (_hd1820019147_ _xarg1820619149_)
                                  (if (gx#stx-pair? _hd1820019147_)
                                      (let ((_e1820319152_
                                             (gx#stx-e _hd1820019147_)))
                                        (let ((_lp-hd1820419155_
                                               (##car _e1820319152_))
                                              (_lp-tl1820519157_
                                               (##cdr _e1820319152_)))
                                          (if (gx#stx-pair? _lp-hd1820419155_)
                                              (let ((_e1820819160_
                                                     (gx#stx-e
                                                      _lp-hd1820419155_)))
                                                (let ((_hd1820919163_
                                                       (##car _e1820819160_))
                                                      (_tl1821019165_
                                                       (##cdr _e1820819160_)))
                                                  (if (gx#identifier?
                                                       _hd1820919163_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1820919163_)
                                                          (if (gx#stx-pair?
                                                               _tl1821019165_)
                                                              (let ((_e1821119168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1821019165_)))
                        (let ((_hd1821219171_ (##car _e1821119168_))
                              (_tl1821319173_ (##cdr _e1821119168_)))
                          (if (gx#stx-null? _tl1821319173_)
                              (_loop1820219144_
                               _lp-tl1820519157_
                               (cons _hd1821219171_ _xarg1820619149_))
                              (_g1809719030_ _g1810219033_))))
                      (_g1809719030_ _g1810219033_))
                  (_g1809719030_ _g1810219033_))
              (_g1809719030_ _g1810219033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1809719030_ _g1810219033_))))
                                      (let ((_xarg1820719176_
                                             (reverse _xarg1820619149_)))
                                        (if (gx#stx-null? _tl1817719080_)
                                            ((lambda (_L19179_
                                                      _L19180_
                                                      _L19181_
                                                      _L19182_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1921919222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1922019224_)
                            (cons _g1921919222_ _g1922019224_))
                          '()
                          _L19182_)))
               (if (eq? (gxc#generate-runtime-binding-id _L19181_)
                        'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1922619229_
                                                       _g1922719231_)
                                                (cons _g1922619229_
                                                      _g1922719231_))
                                              '()
                                              _L19182_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1923319236_
                                                       _g1923419238_)
                                                (cons _g1923319236_
                                                      _g1923419238_))
                                              '()
                                              _L19179_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1924019243_ _g1924119245_)
                                            (cons _g1924019243_ _g1924119245_))
                                          '()
                                          _L19182_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g1924719250_ _g1924819252_)
                                            (cons _g1924719250_ _g1924819252_))
                                          '()
                                          _L19179_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t19255_
                                                           (gxc#generate-runtime-binding-id
                                                            _L19180_))
                                                          (_type19257_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t19255_)))
                                                     (if (##structure-instance-of?
                                                          _type19257_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t19255_)
                                                         '#f))
                                                   (_g1809719030_
                                                    _g1810219033_)))
                                             _xarg1820719176_
                                             _hd1819719134_
                                             _hd1818819110_
                                             _arg1817419072_)
                                            (_g1809719030_ _g1810219033_)))))))
                        (_loop1820219144_ _target1819919139_ '()))
                      (_g1809719030_ _g1810219033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719030_
                                                     _g1810219033_))
                                                (_g1809719030_ _g1810219033_))
                                            (_g1809719030_ _g1810219033_))))
                                    (_g1809719030_ _g1810219033_))
                                (_g1809719030_ _g1810219033_))
                            (_g1809719030_ _g1810219033_))))
                    (_g1809719030_ _g1810219033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719030_
                                                     _g1810219033_))
                                                (_g1809719030_
                                                 _g1810219033_))))
                                        (_g1809719030_ _g1810219033_))
                                    (_g1809719030_ _g1810219033_))
                                (_g1809719030_ _g1810219033_))))
                        (_g1809719030_ _g1810219033_))))
                (_g1809719030_ _g1810219033_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809719030_
                                                     _g1810219033_))
                                                (_g1809719030_
                                                 _g1810219033_))))
                                        (_g1809719030_ _g1810219033_))))
                                (_g1809719030_ _g1810219033_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1816919056_
                                                     _target1816619051_
                                                     '()))
                                                  (_g1809719030_
                                                   _g1810219033_)))))
                                        (_g1809719030_ _g1810219033_))
                                    (_g1809719030_ _g1810219033_))))
                            (_g1809719030_ _g1810219033_))))
                    (_g1809719030_ _g1810219033_))))
             (_g1809519445_
              (lambda (_g1810219263_)
                (if (gx#stx-pair? _g1810219263_)
                    (let ((_e1810819265_ (gx#stx-e _g1810219263_)))
                      (let ((_hd1810919268_ (##car _e1810819265_))
                            (_tl1811019270_ (##cdr _e1810819265_)))
                        (if (gx#stx-pair? _tl1811019270_)
                            (let ((_e1811119273_ (gx#stx-e _tl1811019270_)))
                              (let ((_hd1811219276_ (##car _e1811119273_))
                                    (_tl1811319278_ (##cdr _e1811119273_)))
                                (if (gx#stx-pair? _tl1811319278_)
                                    (let ((_e1811419281_
                                           (gx#stx-e _tl1811319278_)))
                                      (let ((_hd1811519284_
                                             (##car _e1811419281_))
                                            (_tl1811619286_
                                             (##cdr _e1811419281_)))
                                        (if (gx#stx-pair? _hd1811519284_)
                                            (let ((_e1811719289_
                                                   (gx#stx-e _hd1811519284_)))
                                              (let ((_hd1811819292_
                                                     (##car _e1811719289_))
                                                    (_tl1811919294_
                                                     (##cdr _e1811719289_)))
                                                (if (gx#identifier?
                                                     _hd1811819292_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd1811819292_)
                                                        (if (gx#stx-pair?
                                                             _tl1811919294_)
                                                            (let ((_e1812019297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1811919294_)))
                      (let ((_hd1812119300_ (##car _e1812019297_))
                            (_tl1812219302_ (##cdr _e1812019297_)))
                        (if (gx#stx-pair? _hd1812119300_)
                            (let ((_e1812319305_ (gx#stx-e _hd1812119300_)))
                              (let ((_hd1812419308_ (##car _e1812319305_))
                                    (_tl1812519310_ (##cdr _e1812319305_)))
                                (if (gx#identifier? _hd1812419308_)
                                    (if (gx#stx-eq? '%#ref _hd1812419308_)
                                        (if (gx#stx-pair? _tl1812519310_)
                                            (let ((_e1812619313_
                                                   (gx#stx-e _tl1812519310_)))
                                              (let ((_hd1812719316_
                                                     (##car _e1812619313_))
                                                    (_tl1812819318_
                                                     (##cdr _e1812619313_)))
                                                (if (gx#stx-null?
                                                     _tl1812819318_)
                                                    (if (gx#stx-pair?
                                                         _tl1812219302_)
                                                        (let ((_e1812919321_
                                                               (gx#stx-e
                                                                _tl1812219302_)))
                                                          (let ((_hd1813019324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1812919321_))
                        (_tl1813119326_ (##cdr _e1812919321_)))
                    (if (gx#stx-pair? _hd1813019324_)
                        (let ((_e1813219329_ (gx#stx-e _hd1813019324_)))
                          (let ((_hd1813319332_ (##car _e1813219329_))
                                (_tl1813419334_ (##cdr _e1813219329_)))
                            (if (gx#identifier? _hd1813319332_)
                                (if (gx#stx-eq? '%#ref _hd1813319332_)
                                    (if (gx#stx-pair? _tl1813419334_)
                                        (let ((_e1813519337_
                                               (gx#stx-e _tl1813419334_)))
                                          (let ((_hd1813619340_
                                                 (##car _e1813519337_))
                                                (_tl1813719342_
                                                 (##cdr _e1813519337_)))
                                            (if (gx#stx-null? _tl1813719342_)
                                                (if (gx#stx-pair?
                                                     _tl1813119326_)
                                                    (let ((_e1813819345_
                                                           (gx#stx-e
                                                            _tl1813119326_)))
                                                      (let ((_hd1813919348_
                                                             (##car _e1813819345_))
                                                            (_tl1814019350_
                                                             (##cdr _e1813819345_)))
                                                        (if (gx#stx-pair?
                                                             _hd1813919348_)
                                                            (let ((_e1814119353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1813919348_)))
                      (let ((_hd1814219356_ (##car _e1814119353_))
                            (_tl1814319358_ (##cdr _e1814119353_)))
                        (if (gx#identifier? _hd1814219356_)
                            (if (gx#stx-eq? '%#ref _hd1814219356_)
                                (if (gx#stx-pair? _tl1814319358_)
                                    (let ((_e1814419361_
                                           (gx#stx-e _tl1814319358_)))
                                      (let ((_hd1814519364_
                                             (##car _e1814419361_))
                                            (_tl1814619366_
                                             (##cdr _e1814419361_)))
                                        (if (gx#stx-null? _tl1814619366_)
                                            (if (gx#stx-pair? _tl1814019350_)
                                                (let ((_e1814719369_
                                                       (gx#stx-e
                                                        _tl1814019350_)))
                                                  (let ((_hd1814819372_
                                                         (##car _e1814719369_))
                                                        (_tl1814919374_
                                                         (##cdr _e1814719369_)))
                                                    (if (gx#stx-pair?
                                                         _hd1814819372_)
                                                        (let ((_e1815019377_
                                                               (gx#stx-e
                                                                _hd1814819372_)))
                                                          (let ((_hd1815119380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1815019377_))
                        (_tl1815219382_ (##cdr _e1815019377_)))
                    (if (gx#identifier? _hd1815119380_)
                        (if (gx#stx-eq? '%#ref _hd1815119380_)
                            (if (gx#stx-pair? _tl1815219382_)
                                (let ((_e1815319385_
                                       (gx#stx-e _tl1815219382_)))
                                  (let ((_hd1815419388_ (##car _e1815319385_))
                                        (_tl1815519390_ (##cdr _e1815319385_)))
                                    (if (gx#stx-null? _tl1815519390_)
                                        (if (gx#stx-null? _tl1814919374_)
                                            (if (gx#stx-null? _tl1811619286_)
                                                ((lambda (_L19393_
                                                          _L19394_
                                                          _L19395_
                                                          _L19396_
                                                          _L19397_)
                                                   (if (if (gx#identifier?
                                                            _L19397_)
                                                           (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19396_)
                            'apply)
                       (if (eq? (gxc#generate-runtime-binding-id _L19395_)
                                'make-struct-instance)
                           (gx#free-identifier=? _L19397_ _L19393_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t19440_
                       (gxc#generate-runtime-binding-id _L19394_))
                      (_type19442_ (gxc#optimizer-resolve-type _type-t19440_)))
                 (if (##structure-instance-of?
                      _type19442_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t19440_)
                     '#f))
               (_g1809619260_ _g1810219263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1815419388_
                                                 _hd1814519364_
                                                 _hd1813619340_
                                                 _hd1812719316_
                                                 _hd1811219276_)
                                                (_g1809619260_ _g1810219263_))
                                            (_g1809619260_ _g1810219263_))
                                        (_g1809619260_ _g1810219263_))))
                                (_g1809619260_ _g1810219263_))
                            (_g1809619260_ _g1810219263_))
                        (_g1809619260_ _g1810219263_))))
                (_g1809619260_ _g1810219263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1809619260_ _g1810219263_))
                                            (_g1809619260_ _g1810219263_))))
                                    (_g1809619260_ _g1810219263_))
                                (_g1809619260_ _g1810219263_))
                            (_g1809619260_ _g1810219263_))))
                    (_g1809619260_ _g1810219263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619260_
                                                     _g1810219263_))
                                                (_g1809619260_
                                                 _g1810219263_))))
                                        (_g1809619260_ _g1810219263_))
                                    (_g1809619260_ _g1810219263_))
                                (_g1809619260_ _g1810219263_))))
                        (_g1809619260_ _g1810219263_))))
                (_g1809619260_ _g1810219263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619260_
                                                     _g1810219263_))))
                                            (_g1809619260_ _g1810219263_))
                                        (_g1809619260_ _g1810219263_))
                                    (_g1809619260_ _g1810219263_))))
                            (_g1809619260_ _g1810219263_))))
                    (_g1809619260_ _g1810219263_))
                (_g1809619260_ _g1810219263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1809619260_
                                                     _g1810219263_))))
                                            (_g1809619260_ _g1810219263_))))
                                    (_g1809619260_ _g1810219263_))))
                            (_g1809619260_ _g1810219263_))))
                    (_g1809619260_ _g1810219263_)))))
        (_g1809519445_ _stx18094_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx18040_)
      (letrec ((_clause-e18042_
                (lambda (_form18092_)
                  (let ((__obj27437 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj27437
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form18092_)
                       (gxc#dispatch-lambda-form-delegate _form18092_))
                      __obj27437)))))
        (let* ((_g1804518055_
                (lambda (_g1804618052_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1804618052_)))
               (_g1804418062_ (lambda (_g1804618058_) ((lambda () '#f))))
               (_g1804318089_
                (lambda (_g1804618065_)
                  (if (gx#stx-pair? _g1804618065_)
                      (let ((_e1804818067_ (gx#stx-e _g1804618065_)))
                        (let ((_hd1804918070_ (##car _e1804818067_))
                              (_tl1805018072_ (##cdr _e1804818067_)))
                          ((lambda (_L18075_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L18075_)
                                 (let ((_clauses18087_
                                        (map _clause-e18042_ _L18075_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses18087_))
                                 (_g1804418062_ _g1804618065_)))
                           _tl1805018072_)))
                      (_g1804418062_ _g1804618065_)))))
          (_g1804318089_ _stx18040_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx17945_)
      (let* ((_g1794817968_
              (lambda (_g1794917965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1794917965_)))
             (_g1794717975_ (lambda (_g1794917971_) ((lambda () '#f))))
             (_g1794618037_
              (lambda (_g1794917978_)
                (if (gx#stx-pair? _g1794917978_)
                    (let ((_e1795217980_ (gx#stx-e _g1794917978_)))
                      (let ((_hd1795317983_ (##car _e1795217980_))
                            (_tl1795417985_ (##cdr _e1795217980_)))
                        (if (gx#stx-pair? _tl1795417985_)
                            (let ((_e1795517988_ (gx#stx-e _tl1795417985_)))
                              (let ((_hd1795617991_ (##car _e1795517988_))
                                    (_tl1795717993_ (##cdr _e1795517988_)))
                                (if (gx#stx-pair? _hd1795617991_)
                                    (let ((_e1795817996_
                                           (gx#stx-e _hd1795617991_)))
                                      (let ((_hd1795917999_
                                             (##car _e1795817996_))
                                            (_tl1796018001_
                                             (##cdr _e1795817996_)))
                                        (if (gx#identifier? _hd1795917999_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1795917999_)
                                                (if (gx#stx-pair?
                                                     _tl1796018001_)
                                                    (let ((_e1796118004_
                                                           (gx#stx-e
                                                            _tl1796018001_)))
                                                      (let ((_hd1796218007_
                                                             (##car _e1796118004_))
                                                            (_tl1796318009_
                                                             (##cdr _e1796118004_)))
                                                        (if (gx#stx-null?
                                                             _tl1796318009_)
                                                            ((lambda (_L18012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18013_)
                       (let ((_type-e1803018032_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#generate-runtime-binding-id _L18013_)
                               '#f)))
                         (if _type-e1803018032_
                             (let ((_type-e18035_ _type-e1803018032_))
                               (_type-e18035_ _stx17945_ _L18012_))
                             '#f)))
                     _tl1795717993_
                     _hd1796218007_)
                    (_g1794717975_ _g1794917978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1794717975_
                                                     _g1794917978_))
                                                (_g1794717975_ _g1794917978_))
                                            (_g1794717975_ _g1794917978_))))
                                    (_g1794717975_ _g1794917978_))))
                            (_g1794717975_ _g1794917978_))))
                    (_g1794717975_ _g1794917978_)))))
        (_g1794618037_ _stx17945_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx17430_ _args17431_)
      (let* ((_g1743517548_
              (lambda (_g1743617545_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1743617545_)))
             (_g1743417555_
              (lambda (_g1743617551_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx17430_))
                     '#f)))))
             (_g1743317762_
              (lambda (_g1743617558_)
                (if (gx#stx-pair? _g1743617558_)
                    (let ((_e1749617560_ (gx#stx-e _g1743617558_)))
                      (let ((_hd1749717563_ (##car _e1749617560_))
                            (_tl1749817565_ (##cdr _e1749617560_)))
                        (if (gx#stx-pair? _hd1749717563_)
                            (let ((_e1749917568_ (gx#stx-e _hd1749717563_)))
                              (let ((_hd1750017571_ (##car _e1749917568_))
                                    (_tl1750117573_ (##cdr _e1749917568_)))
                                (if (gx#identifier? _hd1750017571_)
                                    (if (gx#stx-eq? '%#quote _hd1750017571_)
                                        (if (gx#stx-pair? _tl1750117573_)
                                            (let ((_e1750217576_
                                                   (gx#stx-e _tl1750117573_)))
                                              (let ((_hd1750317579_
                                                     (##car _e1750217576_))
                                                    (_tl1750417581_
                                                     (##cdr _e1750217576_)))
                                                (if (gx#stx-null?
                                                     _tl1750417581_)
                                                    (if (gx#stx-pair?
                                                         _tl1749817565_)
                                                        (let ((_e1750517584_
                                                               (gx#stx-e
                                                                _tl1749817565_)))
                                                          (let ((_hd1750617587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1750517584_))
                        (_tl1750717589_ (##cdr _e1750517584_)))
                    (if (gx#stx-pair? _hd1750617587_)
                        (let ((_e1750817592_ (gx#stx-e _hd1750617587_)))
                          (let ((_hd1750917595_ (##car _e1750817592_))
                                (_tl1751017597_ (##cdr _e1750817592_)))
                            (if (gx#identifier? _hd1750917595_)
                                (if (gx#stx-eq? '%#ref _hd1750917595_)
                                    (if (gx#stx-pair? _tl1751017597_)
                                        (let ((_e1751117600_
                                               (gx#stx-e _tl1751017597_)))
                                          (let ((_hd1751217603_
                                                 (##car _e1751117600_))
                                                (_tl1751317605_
                                                 (##cdr _e1751117600_)))
                                            (if (gx#stx-null? _tl1751317605_)
                                                (if (gx#stx-pair?
                                                     _tl1750717589_)
                                                    (let ((_e1751417608_
                                                           (gx#stx-e
                                                            _tl1750717589_)))
                                                      (let ((_hd1751517611_
                                                             (##car _e1751417608_))
                                                            (_tl1751617613_
                                                             (##cdr _e1751417608_)))
                                                        (if (gx#stx-pair?
                                                             _hd1751517611_)
                                                            (let ((_e1751717616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1751517611_)))
                      (let ((_hd1751817619_ (##car _e1751717616_))
                            (_tl1751917621_ (##cdr _e1751717616_)))
                        (if (gx#identifier? _hd1751817619_)
                            (if (gx#stx-eq? '%#quote _hd1751817619_)
                                (if (gx#stx-pair? _tl1751917621_)
                                    (let ((_e1752017624_
                                           (gx#stx-e _tl1751917621_)))
                                      (let ((_hd1752117627_
                                             (##car _e1752017624_))
                                            (_tl1752217629_
                                             (##cdr _e1752017624_)))
                                        (if (gx#stx-null? _tl1752217629_)
                                            (if (gx#stx-pair? _tl1751617613_)
                                                (let ((_e1752317632_
                                                       (gx#stx-e
                                                        _tl1751617613_)))
                                                  (let ((_hd1752417635_
                                                         (##car _e1752317632_))
                                                        (_tl1752517637_
                                                         (##cdr _e1752317632_)))
                                                    (if (gx#stx-pair?
                                                         _tl1752517637_)
                                                        (let ((_e1752617640_
                                                               (gx#stx-e
                                                                _tl1752517637_)))
                                                          (let ((_hd1752717643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752617640_))
                        (_tl1752817645_ (##cdr _e1752617640_)))
                    (if (gx#stx-pair? _hd1752717643_)
                        (let ((_e1752917648_ (gx#stx-e _hd1752717643_)))
                          (let ((_hd1753017651_ (##car _e1752917648_))
                                (_tl1753117653_ (##cdr _e1752917648_)))
                            (if (gx#identifier? _hd1753017651_)
                                (if (gx#stx-eq? '%#quote _hd1753017651_)
                                    (if (gx#stx-pair? _tl1753117653_)
                                        (let ((_e1753217656_
                                               (gx#stx-e _tl1753117653_)))
                                          (let ((_hd1753317659_
                                                 (##car _e1753217656_))
                                                (_tl1753417661_
                                                 (##cdr _e1753217656_)))
                                            (if (gx#stx-null? _tl1753417661_)
                                                (if (gx#stx-pair?
                                                     _tl1752817645_)
                                                    (let ((_e1753517664_
                                                           (gx#stx-e
                                                            _tl1752817645_)))
                                                      (let ((_hd1753617667_
                                                             (##car _e1753517664_))
                                                            (_tl1753717669_
                                                             (##cdr _e1753517664_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753617667_)
                                                            (let ((_e1753817672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753617667_)))
                      (let ((_hd1753917675_ (##car _e1753817672_))
                            (_tl1754017677_ (##cdr _e1753817672_)))
                        (if (gx#identifier? _hd1753917675_)
                            (if (gx#stx-eq? '%#quote _hd1753917675_)
                                (if (gx#stx-pair? _tl1754017677_)
                                    (let ((_e1754117680_
                                           (gx#stx-e _tl1754017677_)))
                                      (let ((_hd1754217683_
                                             (##car _e1754117680_))
                                            (_tl1754317685_
                                             (##cdr _e1754117680_)))
                                        (if (gx#stx-null? _tl1754317685_)
                                            ((lambda (_L17688_
                                                      _L17689_
                                                      _L17690_
                                                      _L17691_
                                                      _L17692_
                                                      _L17693_)
                                               (let* ((_super-t17739_
                                                       (if (gx#stx-e _L17692_)
                                                           (gxc#generate-runtime-binding-id
                                                            _L17692_)
                                                           '#f))
                                                      (_super-type17741_
                                                       (if _super-t17739_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t17739_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type17741_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type17741_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx17430_
                _L17692_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields17757_
                                                          (gx#stx-e _L17691_))
                                                         (_xfields17758_
                                                          (if _super-type17741_
                                                              (let ((_super-fields1774317746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type17741_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields1774417748_
                             (##structure-ref
                              _super-type17741_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields1774317746_
                            (if _super-xfields1774417748_
                                (let ((_super-fields17751_
                                       _super-fields1774317746_)
                                      (_super-xfields17752_
                                       _super-xfields1774417748_))
                                  (fx+ _super-fields17751_
                                       _super-xfields17752_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist17759_ (gx#stx-e _L17689_))
                 (_ctor17760_
                  (let ((_$e17754_ (gx#stx-e _L17688_)))
                    (if _$e17754_
                        (values _$e17754_)
                        (if _super-type17741_
                            (##structure-ref
                             _super-type17741_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t17739_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj27438
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj27438
                                                          (gx#stx-e _L17693_)
                                                          _super-t17739_
                                                          _fields17757_
                                                          _xfields17758_
                                                          _ctor17760_
                                                          _plist17759_)
                                                         __obj27438))))))
                                             _hd1754217683_
                                             _hd1753317659_
                                             _hd1752417635_
                                             _hd1752117627_
                                             _hd1751217603_
                                             _hd1750317579_)
                                            (_g1743417555_ _g1743617558_))))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))
                                                (_g1743417555_
                                                 _g1743617558_))))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))))
                        (_g1743417555_ _g1743617558_))))
                (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743417555_ _g1743617558_))
                                            (_g1743417555_ _g1743617558_))))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))
                                                (_g1743417555_
                                                 _g1743617558_))))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))
                                (_g1743417555_ _g1743617558_))))
                        (_g1743417555_ _g1743617558_))))
                (_g1743417555_ _g1743617558_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743417555_
                                                     _g1743617558_))))
                                            (_g1743417555_ _g1743617558_))
                                        (_g1743417555_ _g1743617558_))
                                    (_g1743417555_ _g1743617558_))))
                            (_g1743417555_ _g1743617558_))))
                    (_g1743417555_ _g1743617558_))))
             (_g1743217942_
              (lambda (_g1743617765_)
                (if (gx#stx-pair? _g1743617765_)
                    (let ((_e1744217767_ (gx#stx-e _g1743617765_)))
                      (let ((_hd1744317770_ (##car _e1744217767_))
                            (_tl1744417772_ (##cdr _e1744217767_)))
                        (if (gx#stx-pair? _hd1744317770_)
                            (let ((_e1744517775_ (gx#stx-e _hd1744317770_)))
                              (let ((_hd1744617778_ (##car _e1744517775_))
                                    (_tl1744717780_ (##cdr _e1744517775_)))
                                (if (gx#identifier? _hd1744617778_)
                                    (if (gx#stx-eq? '%#quote _hd1744617778_)
                                        (if (gx#stx-pair? _tl1744717780_)
                                            (let ((_e1744817783_
                                                   (gx#stx-e _tl1744717780_)))
                                              (let ((_hd1744917786_
                                                     (##car _e1744817783_))
                                                    (_tl1745017788_
                                                     (##cdr _e1744817783_)))
                                                (if (gx#stx-null?
                                                     _tl1745017788_)
                                                    (if (gx#stx-pair?
                                                         _tl1744417772_)
                                                        (let ((_e1745117791_
                                                               (gx#stx-e
                                                                _tl1744417772_)))
                                                          (let ((_hd1745217794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1745117791_))
                        (_tl1745317796_ (##cdr _e1745117791_)))
                    (if (gx#stx-pair? _hd1745217794_)
                        (let ((_e1745417799_ (gx#stx-e _hd1745217794_)))
                          (let ((_hd1745517802_ (##car _e1745417799_))
                                (_tl1745617804_ (##cdr _e1745417799_)))
                            (if (gx#identifier? _hd1745517802_)
                                (if (gx#stx-eq? '%#quote _hd1745517802_)
                                    (if (gx#stx-pair? _tl1745617804_)
                                        (let ((_e1745717807_
                                               (gx#stx-e _tl1745617804_)))
                                          (let ((_hd1745817810_
                                                 (##car _e1745717807_))
                                                (_tl1745917812_
                                                 (##cdr _e1745717807_)))
                                            (if (gx#stx-datum? _hd1745817810_)
                                                (if (equal? (gx#stx-e
                                                             _hd1745817810_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl1745917812_)
                                                        (if (gx#stx-pair?
                                                             _tl1745317796_)
                                                            (let ((_e1746017815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1745317796_)))
                      (let ((_hd1746117818_ (##car _e1746017815_))
                            (_tl1746217820_ (##cdr _e1746017815_)))
                        (if (gx#stx-pair? _hd1746117818_)
                            (let ((_e1746317823_ (gx#stx-e _hd1746117818_)))
                              (let ((_hd1746417826_ (##car _e1746317823_))
                                    (_tl1746517828_ (##cdr _e1746317823_)))
                                (if (gx#identifier? _hd1746417826_)
                                    (if (gx#stx-eq? '%#quote _hd1746417826_)
                                        (if (gx#stx-pair? _tl1746517828_)
                                            (let ((_e1746617831_
                                                   (gx#stx-e _tl1746517828_)))
                                              (let ((_hd1746717834_
                                                     (##car _e1746617831_))
                                                    (_tl1746817836_
                                                     (##cdr _e1746617831_)))
                                                (if (gx#stx-null?
                                                     _tl1746817836_)
                                                    (if (gx#stx-pair?
                                                         _tl1746217820_)
                                                        (let ((_e1746917839_
                                                               (gx#stx-e
                                                                _tl1746217820_)))
                                                          (let ((_hd1747017842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1746917839_))
                        (_tl1747117844_ (##cdr _e1746917839_)))
                    (if (gx#stx-pair? _tl1747117844_)
                        (let ((_e1747217847_ (gx#stx-e _tl1747117844_)))
                          (let ((_hd1747317850_ (##car _e1747217847_))
                                (_tl1747417852_ (##cdr _e1747217847_)))
                            (if (gx#stx-pair? _hd1747317850_)
                                (let ((_e1747517855_
                                       (gx#stx-e _hd1747317850_)))
                                  (let ((_hd1747617858_ (##car _e1747517855_))
                                        (_tl1747717860_ (##cdr _e1747517855_)))
                                    (if (gx#identifier? _hd1747617858_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1747617858_)
                                            (if (gx#stx-pair? _tl1747717860_)
                                                (let ((_e1747817863_
                                                       (gx#stx-e
                                                        _tl1747717860_)))
                                                  (let ((_hd1747917866_
                                                         (##car _e1747817863_))
                                                        (_tl1748017868_
                                                         (##cdr _e1747817863_)))
                                                    (if (gx#stx-null?
                                                         _tl1748017868_)
                                                        (if (gx#stx-pair?
                                                             _tl1747417852_)
                                                            (let ((_e1748117871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1747417852_)))
                      (let ((_hd1748217874_ (##car _e1748117871_))
                            (_tl1748317876_ (##cdr _e1748117871_)))
                        (if (gx#stx-pair? _hd1748217874_)
                            (let ((_e1748417879_ (gx#stx-e _hd1748217874_)))
                              (let ((_hd1748517882_ (##car _e1748417879_))
                                    (_tl1748617884_ (##cdr _e1748417879_)))
                                (if (gx#identifier? _hd1748517882_)
                                    (if (gx#stx-eq? '%#quote _hd1748517882_)
                                        (if (gx#stx-pair? _tl1748617884_)
                                            (let ((_e1748717887_
                                                   (gx#stx-e _tl1748617884_)))
                                              (let ((_hd1748817890_
                                                     (##car _e1748717887_))
                                                    (_tl1748917892_
                                                     (##cdr _e1748717887_)))
                                                (if (gx#stx-null?
                                                     _tl1748917892_)
                                                    ((lambda (_L17895_
                                                              _L17896_
                                                              _L17897_
                                                              _L17898_
                                                              _L17899_)
                                                       (let ((__obj27439
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj27439
                                                            (gx#stx-e _L17899_)
                                                            '#f
                                                            (gx#stx-e _L17898_)
                                                            '0
                                                            (gx#stx-e _L17895_)
                                                            (gx#stx-e
                                                             _L17896_))
                                                           __obj27439)))
                                                     _hd1748817890_
                                                     _hd1747917866_
                                                     _hd1747017842_
                                                     _hd1746717834_
                                                     _hd1744917786_)
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_))
                (_g1743317762_ _g1743617765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1743317762_ _g1743617765_))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))))
                                (_g1743317762_ _g1743617765_))))
                        (_g1743317762_ _g1743617765_))))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))
                                                (_g1743317762_
                                                 _g1743617765_))))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))
                                (_g1743317762_ _g1743617765_))))
                        (_g1743317762_ _g1743617765_))))
                (_g1743317762_ _g1743617765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1743317762_
                                                     _g1743617765_))))
                                            (_g1743317762_ _g1743617765_))
                                        (_g1743317762_ _g1743617765_))
                                    (_g1743317762_ _g1743617765_))))
                            (_g1743317762_ _g1743617765_))))
                    (_g1743317762_ _g1743617765_)))))
        (_g1743217942_ _args17431_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx17356_ _args17357_)
      (let* ((_g1736017376_
              (lambda (_g1736117373_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1736117373_)))
             (_g1735917383_ (lambda (_g1736117379_) ((lambda () '#f))))
             (_g1735817427_
              (lambda (_g1736117386_)
                (if (gx#stx-pair? _g1736117386_)
                    (let ((_e1736317388_ (gx#stx-e _g1736117386_)))
                      (let ((_hd1736417391_ (##car _e1736317388_))
                            (_tl1736517393_ (##cdr _e1736317388_)))
                        (if (gx#stx-pair? _hd1736417391_)
                            (let ((_e1736617396_ (gx#stx-e _hd1736417391_)))
                              (let ((_hd1736717399_ (##car _e1736617396_))
                                    (_tl1736817401_ (##cdr _e1736617396_)))
                                (if (gx#identifier? _hd1736717399_)
                                    (if (gx#stx-eq? '%#ref _hd1736717399_)
                                        (if (gx#stx-pair? _tl1736817401_)
                                            (let ((_e1736917404_
                                                   (gx#stx-e _tl1736817401_)))
                                              (let ((_hd1737017407_
                                                     (##car _e1736917404_))
                                                    (_tl1737117409_
                                                     (##cdr _e1736917404_)))
                                                (if (gx#stx-null?
                                                     _tl1737117409_)
                                                    (if (gx#stx-null?
                                                         _tl1736517393_)
                                                        ((lambda (_L17412_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#generate-runtime-binding-id
                                                             _L17412_)))
                                                         _hd1737017407_)
                                                        (_g1735917383_
                                                         _g1736117386_))
                                                    (_g1735917383_
                                                     _g1736117386_))))
                                            (_g1735917383_ _g1736117386_))
                                        (_g1735917383_ _g1736117386_))
                                    (_g1735917383_ _g1736117386_))))
                            (_g1735917383_ _g1736117386_))))
                    (_g1735917383_ _g1736117386_)))))
        (_g1735817427_ _args17357_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx17227_ _args17228_ _unchecked?17229_)
        (let* ((_g1723217258_
                (lambda (_g1723317255_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1723317255_)))
               (_g1723117265_ (lambda (_g1723317261_) ((lambda () '#f))))
               (_g1723017341_
                (lambda (_g1723317268_)
                  (if (gx#stx-pair? _g1723317268_)
                      (let ((_e1723617270_ (gx#stx-e _g1723317268_)))
                        (let ((_hd1723717273_ (##car _e1723617270_))
                              (_tl1723817275_ (##cdr _e1723617270_)))
                          (if (gx#stx-pair? _hd1723717273_)
                              (let ((_e1723917278_ (gx#stx-e _hd1723717273_)))
                                (let ((_hd1724017281_ (##car _e1723917278_))
                                      (_tl1724117283_ (##cdr _e1723917278_)))
                                  (if (gx#identifier? _hd1724017281_)
                                      (if (gx#stx-eq? '%#ref _hd1724017281_)
                                          (if (gx#stx-pair? _tl1724117283_)
                                              (let ((_e1724217286_
                                                     (gx#stx-e
                                                      _tl1724117283_)))
                                                (let ((_hd1724317289_
                                                       (##car _e1724217286_))
                                                      (_tl1724417291_
                                                       (##cdr _e1724217286_)))
                                                  (if (gx#stx-null?
                                                       _tl1724417291_)
                                                      (if (gx#stx-pair?
                                                           _tl1723817275_)
                                                          (let ((_e1724517294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1723817275_)))
                    (let ((_hd1724617297_ (##car _e1724517294_))
                          (_tl1724717299_ (##cdr _e1724517294_)))
                      (if (gx#stx-pair? _hd1724617297_)
                          (let ((_e1724817302_ (gx#stx-e _hd1724617297_)))
                            (let ((_hd1724917305_ (##car _e1724817302_))
                                  (_tl1725017307_ (##cdr _e1724817302_)))
                              (if (gx#identifier? _hd1724917305_)
                                  (if (gx#stx-eq? '%#quote _hd1724917305_)
                                      (if (gx#stx-pair? _tl1725017307_)
                                          (let ((_e1725117310_
                                                 (gx#stx-e _tl1725017307_)))
                                            (let ((_hd1725217313_
                                                   (##car _e1725117310_))
                                                  (_tl1725317315_
                                                   (##cdr _e1725117310_)))
                                              (if (gx#stx-null? _tl1725317315_)
                                                  (if (gx#stx-null?
                                                       _tl1724717299_)
                                                      ((lambda (_L17318_
                                                                _L17319_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17319_)
                                                          (gx#stx-e _L17318_)
                                                          _unchecked?17229_))
                                                       _hd1725217313_
                                                       _hd1724317289_)
                                                      (_g1723117265_
                                                       _g1723317268_))
                                                  (_g1723117265_
                                                   _g1723317268_))))
                                          (_g1723117265_ _g1723317268_))
                                      (_g1723117265_ _g1723317268_))
                                  (_g1723117265_ _g1723317268_))))
                          (_g1723117265_ _g1723317268_))))
                  (_g1723117265_ _g1723317268_))
              (_g1723117265_ _g1723317268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1723117265_ _g1723317268_))
                                          (_g1723117265_ _g1723317268_))
                                      (_g1723117265_ _g1723317268_))))
                              (_g1723117265_ _g1723317268_))))
                      (_g1723117265_ _g1723317268_)))))
          (_g1723017341_ _args17228_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx17347_ _args17348_)
          (let ((_unchecked?17350_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx17347_
             _args17348_
             _unchecked?17350_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g27515_
          (let ((_g27514_ (length _g27515_)))
            (cond ((fx= _g27514_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g27515_))
                  ((fx= _g27514_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g27515_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g27515_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx17097_ _args17098_ _unchecked?17099_)
        (let* ((_g1710217128_
                (lambda (_g1710317125_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1710317125_)))
               (_g1710117135_ (lambda (_g1710317131_) ((lambda () '#f))))
               (_g1710017211_
                (lambda (_g1710317138_)
                  (if (gx#stx-pair? _g1710317138_)
                      (let ((_e1710617140_ (gx#stx-e _g1710317138_)))
                        (let ((_hd1710717143_ (##car _e1710617140_))
                              (_tl1710817145_ (##cdr _e1710617140_)))
                          (if (gx#stx-pair? _hd1710717143_)
                              (let ((_e1710917148_ (gx#stx-e _hd1710717143_)))
                                (let ((_hd1711017151_ (##car _e1710917148_))
                                      (_tl1711117153_ (##cdr _e1710917148_)))
                                  (if (gx#identifier? _hd1711017151_)
                                      (if (gx#stx-eq? '%#ref _hd1711017151_)
                                          (if (gx#stx-pair? _tl1711117153_)
                                              (let ((_e1711217156_
                                                     (gx#stx-e
                                                      _tl1711117153_)))
                                                (let ((_hd1711317159_
                                                       (##car _e1711217156_))
                                                      (_tl1711417161_
                                                       (##cdr _e1711217156_)))
                                                  (if (gx#stx-null?
                                                       _tl1711417161_)
                                                      (if (gx#stx-pair?
                                                           _tl1710817145_)
                                                          (let ((_e1711517164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1710817145_)))
                    (let ((_hd1711617167_ (##car _e1711517164_))
                          (_tl1711717169_ (##cdr _e1711517164_)))
                      (if (gx#stx-pair? _hd1711617167_)
                          (let ((_e1711817172_ (gx#stx-e _hd1711617167_)))
                            (let ((_hd1711917175_ (##car _e1711817172_))
                                  (_tl1712017177_ (##cdr _e1711817172_)))
                              (if (gx#identifier? _hd1711917175_)
                                  (if (gx#stx-eq? '%#quote _hd1711917175_)
                                      (if (gx#stx-pair? _tl1712017177_)
                                          (let ((_e1712117180_
                                                 (gx#stx-e _tl1712017177_)))
                                            (let ((_hd1712217183_
                                                   (##car _e1712117180_))
                                                  (_tl1712317185_
                                                   (##cdr _e1712117180_)))
                                              (if (gx#stx-null? _tl1712317185_)
                                                  (if (gx#stx-null?
                                                       _tl1711717169_)
                                                      ((lambda (_L17188_
                                                                _L17189_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#generate-runtime-binding-id
                                                           _L17189_)
                                                          (gx#stx-e _L17188_)
                                                          _unchecked?17099_))
                                                       _hd1712217183_
                                                       _hd1711317159_)
                                                      (_g1710117135_
                                                       _g1710317138_))
                                                  (_g1710117135_
                                                   _g1710317138_))))
                                          (_g1710117135_ _g1710317138_))
                                      (_g1710117135_ _g1710317138_))
                                  (_g1710117135_ _g1710317138_))))
                          (_g1710117135_ _g1710317138_))))
                  (_g1710117135_ _g1710317138_))
              (_g1710117135_ _g1710317138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1710117135_ _g1710317138_))
                                          (_g1710117135_ _g1710317138_))
                                      (_g1710117135_ _g1710317138_))))
                              (_g1710117135_ _g1710317138_))))
                      (_g1710117135_ _g1710317138_)))))
          (_g1710017211_ _args17098_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx17217_ _args17218_)
          (let ((_unchecked?17220_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx17217_
             _args17218_
             _unchecked?17220_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g27517_
          (let ((_g27516_ (length _g27517_)))
            (cond ((fx= _g27516_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g27517_))
                  ((fx= _g27516_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g27517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g27517_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx17093_ _args17094_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx17093_
       _args17094_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx17090_ _args17091_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx17090_
       _args17091_
       '#t)))
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
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-accessor
   gxc#basic-expression-type-make-struct-field-unchecked-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-mutator
   gxc#basic-expression-type-make-struct-field-unchecked-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx17039_)
      (let* ((_g1704117054_
              (lambda (_g1704217051_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1704217051_)))
             (_g1704017087_
              (lambda (_g1704217057_)
                (if (gx#stx-pair? _g1704217057_)
                    (let ((_e1704417059_ (gx#stx-e _g1704217057_)))
                      (let ((_hd1704517062_ (##car _e1704417059_))
                            (_tl1704617064_ (##cdr _e1704417059_)))
                        (if (gx#stx-pair? _tl1704617064_)
                            (let ((_e1704717067_ (gx#stx-e _tl1704617064_)))
                              (let ((_hd1704817070_ (##car _e1704717067_))
                                    (_tl1704917072_ (##cdr _e1704717067_)))
                                (if (gx#stx-null? _tl1704917072_)
                                    ((lambda (_L17075_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#generate-runtime-binding-id
                                         _L17075_)))
                                     _hd1704817070_)
                                    (_g1704117054_ _g1704217057_))))
                            (_g1704117054_ _g1704217057_))))
                    (_g1704117054_ _g1704217057_)))))
        (_g1704017087_ _stx17039_))))
  (define gxc#optimize-call%
    (lambda (_stx16945_)
      (let* ((_g1694816968_
              (lambda (_g1694916965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1694916965_)))
             (_g1694716975_
              (lambda (_g1694916971_)
                ((lambda () (gxc#xform-call% _stx16945_)))))
             (_g1694617036_
              (lambda (_g1694916978_)
                (if (gx#stx-pair? _g1694916978_)
                    (let ((_e1695216980_ (gx#stx-e _g1694916978_)))
                      (let ((_hd1695316983_ (##car _e1695216980_))
                            (_tl1695416985_ (##cdr _e1695216980_)))
                        (if (gx#stx-pair? _tl1695416985_)
                            (let ((_e1695516988_ (gx#stx-e _tl1695416985_)))
                              (let ((_hd1695616991_ (##car _e1695516988_))
                                    (_tl1695716993_ (##cdr _e1695516988_)))
                                (if (gx#stx-pair? _hd1695616991_)
                                    (let ((_e1695816996_
                                           (gx#stx-e _hd1695616991_)))
                                      (let ((_hd1695916999_
                                             (##car _e1695816996_))
                                            (_tl1696017001_
                                             (##cdr _e1695816996_)))
                                        (if (gx#identifier? _hd1695916999_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1695916999_)
                                                (if (gx#stx-pair?
                                                     _tl1696017001_)
                                                    (let ((_e1696117004_
                                                           (gx#stx-e
                                                            _tl1696017001_)))
                                                      (let ((_hd1696217007_
                                                             (##car _e1696117004_))
                                                            (_tl1696317009_
                                                             (##cdr _e1696117004_)))
                                                        (if (gx#stx-null?
                                                             _tl1696317009_)
                                                            ((lambda (_L17012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L17013_)
                       (let* ((_rator-id17031_
                               (gxc#generate-runtime-binding-id _L17013_))
                              (_rator-type17033_
                               (gxc#optimizer-resolve-type _rator-id17031_)))
                         (if (##structure-instance-of?
                              _rator-type17033_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id17031_
                                '" => "
                                _rator-type17033_
                                '" "
                                (##structure-ref
                                 _rator-type17033_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type17033_
                                'optimize-call
                                _stx16945_
                                _L17012_))
                             (if (not _rator-type17033_)
                                 (gxc#xform-call% _stx16945_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx16945_
                                  _rator-type17033_)))))
                     _tl1695716993_
                     _hd1696217007_)
                    (_g1694716975_ _g1694916978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1694716975_
                                                     _g1694916978_))
                                                (_g1694716975_ _g1694916978_))
                                            (_g1694716975_ _g1694916978_))))
                                    (_g1694716975_ _g1694916978_))))
                            (_g1694716975_ _g1694916978_))))
                    (_g1694716975_ _g1694916978_)))))
        (_g1694617036_ _stx16945_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self16799_ _stx16800_ _args16801_)
      (let* ((_self1680216808_ _self16799_)
             (_E1680416812_
              (lambda () (error '"No clause matching" _self1680216808_)))
             (_K1680516937_
              (lambda (_struct-t16815_)
                (let* ((_struct-type16817_
                        (gxc#optimizer-resolve-type _struct-t16815_))
                       (_struct-type1681816832_ _struct-type16817_)
                       (_E1682216836_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1681816832_)))
                       (_else1682116840_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16800_
                           _struct-t16815_
                           _struct-type16817_)))
                       (_try-match1682016848_
                        (lambda ()
                          (let ((_K1682316845_
                                 (lambda () (gxc#xform-call% _stx16800_))))
                            (if (##eq? _struct-type1681816832_ '#f)
                                (_K1682316845_)
                                (_else1682116840_)))))
                       (_K1682416912_
                        (lambda (_plist16851_ _struct-type-id16852_)
                          (let* ((_g1685516865_
                                  (lambda (_g1685616862_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1685616862_)))
                                 (_g1685416872_
                                  (lambda (_g1685616868_)
                                    ((lambda ()
                                       (gxc#raise-compile-error
                                        '"Illegal struct predicate application"
                                        _stx16800_)))))
                                 (_g1685316909_
                                  (lambda (_g1685616875_)
                                    (if (gx#stx-pair? _g1685616875_)
                                        (let ((_e1685816877_
                                               (gx#stx-e _g1685616875_)))
                                          (let ((_hd1685916880_
                                                 (##car _e1685816877_))
                                                (_tl1686016882_
                                                 (##cdr _e1685816877_)))
                                            (if (gx#stx-null? _tl1686016882_)
                                                ((lambda (_L16885_)
                                                   (let ((_expr16906_
                                                          (gxc#compile-e
                                                           _L16885_))
                                                         (_op16907_
                                                          (if (if _plist16851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (assgetq 'final: _plist16851_)
                          '#f)
                      '%#struct-direct-instance?
                      '%#struct-instance?)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gxc#xform-wrap-source
                                                      (cons _op16907_
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _struct-type-id16852_ '()))
                          (cons _expr16906_ '())))
              _stx16800_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1685916880_)
                                                (_g1685416872_
                                                 _g1685616875_))))
                                        (_g1685416872_ _g1685616875_)))))
                            (_g1685316909_ _args16801_)))))
                  (if (##structure-instance-of?
                       _struct-type1681816832_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1682516915_
                              (##vector-ref _struct-type1681816832_ '1))
                             (_struct-type-id16918_ _e1682516915_)
                             (_e1682616920_
                              (##vector-ref _struct-type1681816832_ '2))
                             (_e1682716923_
                              (##vector-ref _struct-type1681816832_ '3))
                             (_e1682816926_
                              (##vector-ref _struct-type1681816832_ '4))
                             (_e1682916929_
                              (##vector-ref _struct-type1681816832_ '5))
                             (_e1683016932_
                              (##vector-ref _struct-type1681816832_ '6))
                             (_plist16935_ _e1683016932_))
                        (_K1682416912_ _plist16935_ _struct-type-id16918_))
                      (_try-match1682016848_))))))
        (if (##structure-instance-of?
             _self1680216808_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1680616940_ (##vector-ref _self1680216808_ '1))
                   (_struct-t16943_ _e1680616940_))
              (_K1680516937_ _struct-t16943_))
            (_E1680416812_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self16573_ _stx16574_ _args16575_)
      (let* ((_self1657616582_ _self16573_)
             (_E1657816586_
              (lambda () (error '"No clause matching" _self1657616582_)))
             (_K1657916669_
              (lambda (_struct-t16589_)
                (let* ((_struct-type16591_
                        (gxc#optimizer-resolve-type _struct-t16589_))
                       (_struct-type1659216605_ _struct-type16591_)
                       (_E1659616609_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1659216605_)))
                       (_else1659516613_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx16574_
                           _struct-t16589_
                           _struct-type16591_)))
                       (_try-match1659416621_
                        (lambda ()
                          (let ((_K1659716618_
                                 (lambda ()
                                   (begin
                                     (gxc#verbose
                                      '"cannot inline struct constructor; unknown struct type "
                                      _struct-t16589_)
                                     (gxc#xform-call% _stx16574_)))))
                            (if (##eq? _struct-type1659216605_ '#f)
                                (_K1659716618_)
                                (_else1659516613_)))))
                       (_K1659816643_
                        (lambda (_ctor16624_
                                 _xfields16625_
                                 _fields16626_
                                 _type-id16627_)
                          (let* ((_args16629_ (map gxc#compile-e _args16575_))
                                 (_$e16631_
                                  (if _ctor16624_
                                      (if _xfields16625_
                                          (gxc#!struct-type-lookup-method
                                           _struct-type16591_
                                           _ctor16624_)
                                          '#f)
                                      '#f)))
                            (if _$e16631_
                                ((lambda (_kons16634_)
                                   (let ((_$obj16636_
                                          (make-symbol (gensym '__obj))))
                                     (gxc#xform-wrap-source
                                      (cons '%#let-values
                                            (cons (cons (cons (cons _$obj16636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'make-object '()))
                                        (cons (cons '%#ref
                                                    (cons _struct-t16589_ '()))
                                              (cons (cons '%#quote
                                                          (cons (fx+ _fields16626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xfields16625_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#begin
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref (cons _kons16634_ '()))
                                          (cons (cons '%#ref
                                                      (cons _$obj16636_ '()))
                                                _args16629_)))
                              _stx16574_))
                            (cons (cons '%#ref (cons _$obj16636_ '())) '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx16574_)))
                                 _$e16631_)
                                (if (let ((_$e16638_ _ctor16624_))
                                      (if _$e16638_
                                          _$e16638_
                                          (not _xfields16625_)))
                                    (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'make-struct-instance
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _struct-t16589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _args16629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx16574_)
                                    (let ((_arity16641_
                                           (fx+ _fields16626_ _xfields16625_)))
                                      (if (fx= _arity16641_
                                               (length _args16629_))
                                          (gxc#xform-wrap-source
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _struct-t16589_ '())) _args16629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx16574_)
                                          (gxc#raise-compile-error
                                           '"Illegal struct constructor application; arity mismatch"
                                           _stx16574_
                                           _struct-t16589_
                                           _arity16641_)))))))))
                  (if (##structure-instance-of?
                       _struct-type1659216605_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1659916646_
                              (##vector-ref _struct-type1659216605_ '1))
                             (_type-id16649_ _e1659916646_)
                             (_e1660016651_
                              (##vector-ref _struct-type1659216605_ '2))
                             (_e1660116654_
                              (##vector-ref _struct-type1659216605_ '3))
                             (_fields16657_ _e1660116654_)
                             (_e1660216659_
                              (##vector-ref _struct-type1659216605_ '4))
                             (_xfields16662_ _e1660216659_)
                             (_e1660316664_
                              (##vector-ref _struct-type1659216605_ '5))
                             (_ctor16667_ _e1660316664_))
                        (_K1659816643_
                         _ctor16667_
                         _xfields16662_
                         _fields16657_
                         _type-id16649_))
                      (_try-match1659416621_))))))
        (if (##structure-instance-of?
             _self1657616582_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1658016672_ (##vector-ref _self1657616582_ '1))
                   (_struct-t16675_ _e1658016672_))
              (_K1657916669_ _struct-t16675_))
            (_E1657816586_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self16284_ _stx16285_ _args16286_)
      (let* ((_self1628716295_ _self16284_)
             (_E1628916299_
              (lambda () (error '"No clause matching" _self1628716295_)))
             (_K1629016433_
              (lambda (_unchecked?16302_ _off16303_ _struct-t16304_)
                (let* ((_struct-type16306_
                        (gxc#optimizer-resolve-type _struct-t16304_))
                       (_struct-type1630716321_ _struct-type16306_)
                       (_E1631116325_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1630716321_)))
                       (_else1631016329_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx16285_
                           _struct-t16304_
                           _struct-type16306_)))
                       (_try-match1630916337_
                        (lambda ()
                          (let ((_K1631216334_
                                 (lambda () (gxc#xform-call% _stx16285_))))
                            (if (##eq? _struct-type1630716321_ '#f)
                                (_K1631216334_)
                                (_else1631016329_)))))
                       (_K1631316404_
                        (lambda (_plist16340_
                                 _xfields16341_
                                 _fields16342_
                                 _struct-type-id16343_)
                          (if _xfields16341_
                              (let* ((_g1634616356_
                                      (lambda (_g1634716353_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1634716353_)))
                                     (_g1634516363_
                                      (lambda (_g1634716359_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct accessor application"
                                            _stx16285_)))))
                                     (_g1634416401_
                                      (lambda (_g1634716366_)
                                        (if (gx#stx-pair? _g1634716366_)
                                            (let ((_e1634916368_
                                                   (gx#stx-e _g1634716366_)))
                                              (let ((_hd1635016371_
                                                     (##car _e1634916368_))
                                                    (_tl1635116373_
                                                     (##cdr _e1634916368_)))
                                                (if (gx#stx-null?
                                                     _tl1635116373_)
                                                    ((lambda (_L16376_)
                                                       (let ((_expr16397_
                                                              (gxc#compile-e
                                                               _L16376_))
                                                             (_off16398_
                                                              (fx+ _off16303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xfields16341_
                           '1))
                     (_op16399_
                      (if _unchecked?16302_
                          '%#struct-unchecked-ref
                          (if (if _plist16340_
                                  (assgetq 'final: _plist16340_)
                                  '#f)
                              '%#struct-direct-ref
                              '%#struct-ref))))
                 (gxc#xform-wrap-source
                  (cons _op16399_
                        (cons (cons '%#ref (cons _struct-t16304_ '()))
                              (cons (cons '%#quote (cons _off16398_ '()))
                                    (cons _expr16397_ '()))))
                  _stx16285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1635016371_)
                                                    (_g1634516363_
                                                     _g1634716366_))))
                                            (_g1634516363_ _g1634716366_)))))
                                (_g1634416401_ _args16286_))
                              (begin
                                (gxc#verbose
                                 '"struct-getf: incomplete struct "
                                 _struct-type-id16343_)
                                (gxc#xform-call% _stx16285_))))))
                  (if (##structure-instance-of?
                       _struct-type1630716321_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1631416407_
                              (##vector-ref _struct-type1630716321_ '1))
                             (_struct-type-id16410_ _e1631416407_)
                             (_e1631516412_
                              (##vector-ref _struct-type1630716321_ '2))
                             (_e1631616415_
                              (##vector-ref _struct-type1630716321_ '3))
                             (_fields16418_ _e1631616415_)
                             (_e1631716420_
                              (##vector-ref _struct-type1630716321_ '4))
                             (_xfields16423_ _e1631716420_)
                             (_e1631816425_
                              (##vector-ref _struct-type1630716321_ '5))
                             (_e1631916428_
                              (##vector-ref _struct-type1630716321_ '6))
                             (_plist16431_ _e1631916428_))
                        (_K1631316404_
                         _plist16431_
                         _xfields16423_
                         _fields16418_
                         _struct-type-id16410_))
                      (_try-match1630916337_))))))
        (if (##structure-instance-of?
             _self1628716295_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1629116436_ (##vector-ref _self1628716295_ '1))
                   (_struct-t16439_ _e1629116436_)
                   (_e1629216441_ (##vector-ref _self1628716295_ '2))
                   (_off16444_ _e1629216441_)
                   (_e1629316446_ (##vector-ref _self1628716295_ '3))
                   (_unchecked?16449_ _e1629316446_))
              (_K1629016433_ _unchecked?16449_ _off16444_ _struct-t16439_))
            (_E1628916299_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self15978_ _stx15979_ _args15980_)
      (let* ((_self1598115989_ _self15978_)
             (_E1598315993_
              (lambda () (error '"No clause matching" _self1598115989_)))
             (_K1598416144_
              (lambda (_unchecked?15996_ _off15997_ _struct-t15998_)
                (let* ((_struct-type16000_
                        (gxc#optimizer-resolve-type _struct-t15998_))
                       (_struct-type1600116015_ _struct-type16000_)
                       (_E1600516019_
                        (lambda ()
                          (error '"No clause matching"
                                 _struct-type1600116015_)))
                       (_else1600416023_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx15979_
                           _struct-t15998_
                           _struct-type16000_)))
                       (_try-match1600316031_
                        (lambda ()
                          (let ((_K1600616028_
                                 (lambda () (gxc#xform-call% _stx15979_))))
                            (if (##eq? _struct-type1600116015_ '#f)
                                (_K1600616028_)
                                (_else1600416023_)))))
                       (_K1600716115_
                        (lambda (_plist16034_
                                 _xfields16035_
                                 _fields16036_
                                 _struct-type-id16037_)
                          (if _xfields16035_
                              (let* ((_g1604016054_
                                      (lambda (_g1604116051_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1604116051_)))
                                     (_g1603916061_
                                      (lambda (_g1604116057_)
                                        ((lambda ()
                                           (gxc#raise-compile-error
                                            '"Illegal struct mutator application"
                                            _stx15979_)))))
                                     (_g1603816112_
                                      (lambda (_g1604116064_)
                                        (if (gx#stx-pair? _g1604116064_)
                                            (let ((_e1604416066_
                                                   (gx#stx-e _g1604116064_)))
                                              (let ((_hd1604516069_
                                                     (##car _e1604416066_))
                                                    (_tl1604616071_
                                                     (##cdr _e1604416066_)))
                                                (if (gx#stx-pair?
                                                     _tl1604616071_)
                                                    (let ((_e1604716074_
                                                           (gx#stx-e
                                                            _tl1604616071_)))
                                                      (let ((_hd1604816077_
                                                             (##car _e1604716074_))
                                                            (_tl1604916079_
                                                             (##cdr _e1604716074_)))
                                                        (if (gx#stx-null?
                                                             _tl1604916079_)
                                                            ((lambda (_L16082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L16083_)
                       (let ((_expr16107_ (gxc#compile-e _L16083_))
                             (_val16108_ (gxc#compile-e _L16082_))
                             (_off16109_ (fx+ _off15997_ _xfields16035_ '1))
                             (_op16110_
                              (if _unchecked?15996_
                                  '%#struct-unchecked-set!
                                  (if (if _plist16034_
                                          (assgetq 'final: _plist16034_)
                                          '#f)
                                      '%#struct-direct-set!
                                      '%#struct-set!))))
                         (gxc#xform-wrap-source
                          (cons _op16110_
                                (cons (cons '%#ref (cons _struct-t15998_ '()))
                                      (cons (cons '%#quote
                                                  (cons _off16109_ '()))
                                            (cons _expr16107_
                                                  (cons _val16108_ '())))))
                          _stx15979_)))
                     _hd1604816077_
                     _hd1604516069_)
                    (_g1603916061_ _g1604116064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1603916061_
                                                     _g1604116064_))))
                                            (_g1603916061_ _g1604116064_)))))
                                (_g1603816112_ _args15980_))
                              (begin
                                (gxc#verbose
                                 '"struct-setf: incomplete struct "
                                 _struct-type-id16037_)
                                (gxc#xform-call% _stx15979_))))))
                  (if (##structure-instance-of?
                       _struct-type1600116015_
                       (##type-id gxc#!struct-type::t))
                      (let* ((_e1600816118_
                              (##vector-ref _struct-type1600116015_ '1))
                             (_struct-type-id16121_ _e1600816118_)
                             (_e1600916123_
                              (##vector-ref _struct-type1600116015_ '2))
                             (_e1601016126_
                              (##vector-ref _struct-type1600116015_ '3))
                             (_fields16129_ _e1601016126_)
                             (_e1601116131_
                              (##vector-ref _struct-type1600116015_ '4))
                             (_xfields16134_ _e1601116131_)
                             (_e1601216136_
                              (##vector-ref _struct-type1600116015_ '5))
                             (_e1601316139_
                              (##vector-ref _struct-type1600116015_ '6))
                             (_plist16142_ _e1601316139_))
                        (_K1600716115_
                         _plist16142_
                         _xfields16134_
                         _fields16129_
                         _struct-type-id16121_))
                      (_try-match1600316031_))))))
        (if (##structure-instance-of?
             _self1598115989_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1598516147_ (##vector-ref _self1598115989_ '1))
                   (_struct-t16150_ _e1598516147_)
                   (_e1598616152_ (##vector-ref _self1598115989_ '2))
                   (_off16155_ _e1598616152_)
                   (_e1598716157_ (##vector-ref _self1598115989_ '3))
                   (_unchecked?16160_ _e1598716157_))
              (_K1598416144_ _unchecked?16160_ _off16155_ _struct-t16150_))
            (_E1598315993_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self15812_ _stx15813_ _args15814_)
      (let* ((_self1581515824_ _self15812_)
             (_E1581715828_
              (lambda () (error '"No clause matching" _self1581515824_)))
             (_K1581815835_
              (lambda (_inline15831_ _dispatch15832_ _arity15833_)
                (begin
                  (if (gxc#!lambda-arity-match? _self15812_ _args15814_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx15813_
                       _arity15833_))
                  (if _inline15831_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline15831_ _stx15813_)
                          _stx15813_)))
                      (if _dispatch15832_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch15832_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch15832_ '()))
                                          _args15814_))
                              _stx15813_)))
                          (gxc#xform-call% _stx15813_)))))))
        (if (##structure-instance-of?
             _self1581515824_
             (##type-id gxc#!lambda::t))
            (let* ((_e1581915838_ (##vector-ref _self1581515824_ '1))
                   (_e1582015841_ (##vector-ref _self1581515824_ '2))
                   (_arity15844_ _e1582015841_)
                   (_e1582115846_ (##vector-ref _self1581515824_ '3))
                   (_dispatch15849_ _e1582115846_)
                   (_e1582215851_ (##vector-ref _self1581515824_ '4))
                   (_inline15854_ _e1582215851_))
              (_K1581815835_ _inline15854_ _dispatch15849_ _arity15844_))
            (_E1581715828_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self15651_ _stx15652_ _args15653_)
      (let* ((_self1565415661_ _self15651_)
             (_E1565615665_
              (lambda () (error '"No clause matching" _self1565415661_)))
             (_K1565715679_
              (lambda (_clauses15668_)
                (let ((_$e15674_
                       (find (lambda (_g1566915671_)
                               (gxc#!lambda-arity-match?
                                _g1566915671_
                                _args15653_))
                             _clauses15668_)))
                  (if _$e15674_
                      ((lambda (_clause15677_)
                         (call-method
                          _clause15677_
                          'optimize-call
                          _stx15652_
                          _args15653_))
                       _$e15674_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx15652_
                       (map gxc#!lambda-arity _clauses15668_)))))))
        (if (##structure-instance-of?
             _self1565415661_
             (##type-id gxc#!case-lambda::t))
            (let* ((_e1565815682_ (##vector-ref _self1565415661_ '1))
                   (_e1565915685_ (##vector-ref _self1565415661_ '2))
                   (_clauses15688_ _e1565915685_))
              (_K1565715679_ _clauses15688_))
            (_E1565615665_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self15465_ _args15466_)
      (let* ((_self1546715474_ _self15465_)
             (_E1546915478_
              (lambda () (error '"No clause matching" _self1546715474_)))
             (_K1547015518_
              (lambda (_arity15481_)
                (let* ((_arity1548215491_ _arity15481_)
                       (_E1548515495_
                        (lambda ()
                          (error '"No clause matching" _arity1548215491_)))
                       (_try-match1548415511_
                        (lambda ()
                          (let ((_K1548615501_
                                 (lambda (_arity15499_)
                                   (fx>= (length _args15466_) _arity15499_))))
                            (if (##pair? _arity1548215491_)
                                (let ((_hd1548715504_
                                       (##car _arity1548215491_))
                                      (_tl1548815506_
                                       (##cdr _arity1548215491_)))
                                  (let ((_arity15509_ _hd1548715504_))
                                    (if (##null? _tl1548815506_)
                                        (_K1548615501_ _arity15509_)
                                        (_E1548515495_))))
                                (_E1548515495_)))))
                       (_K1548915515_
                        (lambda () (fx= (length _args15466_) _arity15481_))))
                  (if (fixnum? _arity1548215491_)
                      (_K1548915515_)
                      (_try-match1548415511_))))))
        (if (##structure-instance-of?
             _self1546715474_
             (##type-id gxc#!lambda::t))
            (let* ((_e1547115521_ (##vector-ref _self1546715474_ '1))
                   (_e1547215524_ (##vector-ref _self1546715474_ '2))
                   (_arity15527_ _e1547215524_))
              (_K1547015518_ _arity15527_))
            (_E1546915478_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self15350_ _stx15351_ _args15352_)
      (let* ((_self1535315361_ _self15350_)
             (_E1535515365_
              (lambda () (error '"No clause matching" _self1535315361_)))
             (_K1535615449_
              (lambda (_dispatch15368_ _table15369_)
                (let* ((_g1537015379_
                        (gxc#optimizer-lookup-type _dispatch15368_))
                       (_E1537315383_
                        (lambda ()
                          (error '"No clause matching" _g1537015379_)))
                       (_else1537215387_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch15368_)
                            (gxc#xform-call% _stx15351_))))
                       (_K1537415433_
                        (lambda (_main15390_ _keys15391_)
                          (let ((_g27518_
                                 (gxc#!kw-lambda-split-args _args15352_)))
                            (begin
                              (let ((_g27519_ (values-count _g27518_)))
                                (if (not (fx= _g27519_ 2))
                                    (error "Context expects 2 values"
                                           _g27519_)))
                              (let ((_pargs15393_ (values-ref _g27518_ 0))
                                    (_kwargs15394_ (values-ref _g27518_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main15390_)
                                  (if _table15369_
                                      (let ((_xargs15401_
                                             (map (lambda (_key15396_)
                                                    (let ((_$e15398_
                                                           (assgetq _key15396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs15394_)))
              (if _$e15398_ (values _$e15398_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys15391_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw15403_)
                                             (if (memq (car _kw15403_)
                                                       _keys15391_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal kw-lambda application; unexpected keyword"
                                                  _stx15351_
                                                  _keys15391_
                                                  _kw15403_)))
                                           _kwargs15394_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main15390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs15393_ _xargs15401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx15351_))))
                                      (let* ((_kwt15405_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars15408_
                                              (map (lambda (_g27520_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs15394_))
                                             (_kwbind15413_
                                              (map (lambda (_kw15410_
                                                            _kwvar15411_)
                                                     (cons (cons _kwvar15411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw15410_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_kwset15418_
                                              (map (lambda (_kw15415_
                                                            _kwvar15416_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt15405_ '()))
                               (cons (cons '%#quote (cons (car _kw15415_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar15416_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_xkwargs15423_
                                              (map (lambda (_kw15420_
                                                            _kwvar15421_)
                                                     (cons (car _kw15420_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar15421_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs15394_
                                                   _kwvars15408_))
                                             (_xargs15430_
                                              (map (lambda (_key15425_)
                                                     (let ((_$e15427_
                                                            (assgetq _key15425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs15423_)))
               (if _$e15427_ (values _$e15427_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys15391_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind15413_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt15405_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs15394_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx15351_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main15390_ '()))
                               (cons (cons '%#ref (cons _kwt15405_ '()))
                                     (foldr1 cons _pargs15393_ _xargs15430_))))
                   _stx15351_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset15418_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx15351_)))))))))))
                  (if (##structure-instance-of?
                       _g1537015379_
                       (##type-id gxc#!kw-lambda-primary::t))
                      (let* ((_e1537515436_ (##vector-ref _g1537015379_ '1))
                             (_e1537615439_ (##vector-ref _g1537015379_ '2))
                             (_keys15442_ _e1537615439_)
                             (_e1537715444_ (##vector-ref _g1537015379_ '3))
                             (_main15447_ _e1537715444_))
                        (_K1537415433_ _main15447_ _keys15442_))
                      (_else1537215387_))))))
        (if (##structure-instance-of?
             _self1535315361_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1535715452_ (##vector-ref _self1535315361_ '1))
                   (_e1535815455_ (##vector-ref _self1535315361_ '2))
                   (_table15458_ _e1535815455_)
                   (_e1535915460_ (##vector-ref _self1535315361_ '3))
                   (_dispatch15463_ _e1535915460_))
              (_K1535615449_ _dispatch15463_ _table15458_))
            (_E1535515365_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_args14976_)
      (let _lp14978_ ((_rest14980_ _args14976_)
                      (_pargs14981_ '())
                      (_kwargs14982_ '()))
        (let* ((_g1498815038_
                (lambda (_g1498915035_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1498915035_)))
               (_g1498715045_
                (lambda (_g1498915041_)
                  (if (gx#stx-null? _g1498915041_)
                      ((lambda ()
                         (values (reverse _pargs14981_)
                                 (reverse _kwargs14982_))))
                      (_g1498815038_ _g1498915041_))))
               (_g1498615073_
                (lambda (_g1498915048_)
                  (if (gx#stx-pair? _g1498915048_)
                      (let ((_e1503115050_ (gx#stx-e _g1498915048_)))
                        (let ((_hd1503215053_ (##car _e1503115050_))
                              (_tl1503315055_ (##cdr _e1503115050_)))
                          ((lambda (_L15058_ _L15059_)
                             (_lp14978_
                              _L15058_
                              (cons _L15059_ _pargs14981_)
                              _kwargs14982_))
                           _tl1503315055_
                           _hd1503215053_)))
                      (_g1498715045_ _g1498915048_))))
               (_g1498515129_
                (lambda (_g1498915076_)
                  (if (gx#stx-pair? _g1498915076_)
                      (let ((_e1501715078_ (gx#stx-e _g1498915076_)))
                        (let ((_hd1501815081_ (##car _e1501715078_))
                              (_tl1501915083_ (##cdr _e1501715078_)))
                          (if (gx#stx-pair? _hd1501815081_)
                              (let ((_e1502015086_ (gx#stx-e _hd1501815081_)))
                                (let ((_hd1502115089_ (##car _e1502015086_))
                                      (_tl1502215091_ (##cdr _e1502015086_)))
                                  (if (gx#identifier? _hd1502115089_)
                                      (if (gx#stx-eq? '%#quote _hd1502115089_)
                                          (if (gx#stx-pair? _tl1502215091_)
                                              (let ((_e1502315094_
                                                     (gx#stx-e
                                                      _tl1502215091_)))
                                                (let ((_hd1502415097_
                                                       (##car _e1502315094_))
                                                      (_tl1502515099_
                                                       (##cdr _e1502315094_)))
                                                  (if (gx#stx-null?
                                                       _tl1502515099_)
                                                      (if (gx#stx-pair?
                                                           _tl1501915083_)
                                                          (let ((_e1502615102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1501915083_)))
                    (let ((_hd1502715105_ (##car _e1502615102_))
                          (_tl1502815107_ (##cdr _e1502615102_)))
                      ((lambda (_L15110_ _L15111_ _L15112_)
                         (if (gx#stx-keyword? _L15112_)
                             (_lp14978_
                              _L15110_
                              _pargs14981_
                              (cons (cons (gx#stx-e _L15112_) _L15111_)
                                    _kwargs14982_))
                             (_g1498615073_ _g1498915076_)))
                       _tl1502815107_
                       _hd1502715105_
                       _hd1502415097_)))
                  (_g1498615073_ _g1498915076_))
              (_g1498615073_ _g1498915076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498615073_ _g1498915076_))
                                          (_g1498615073_ _g1498915076_))
                                      (_g1498615073_ _g1498915076_))))
                              (_g1498615073_ _g1498915076_))))
                      (_g1498615073_ _g1498915076_))))
               (_g1498415171_
                (lambda (_g1498915132_)
                  (if (gx#stx-pair? _g1498915132_)
                      (let ((_e1500515134_ (gx#stx-e _g1498915132_)))
                        (let ((_hd1500615137_ (##car _e1500515134_))
                              (_tl1500715139_ (##cdr _e1500515134_)))
                          (if (gx#stx-pair? _hd1500615137_)
                              (let ((_e1500815142_ (gx#stx-e _hd1500615137_)))
                                (let ((_hd1500915145_ (##car _e1500815142_))
                                      (_tl1501015147_ (##cdr _e1500815142_)))
                                  (if (gx#identifier? _hd1500915145_)
                                      (if (gx#stx-eq? '%#quote _hd1500915145_)
                                          (if (gx#stx-pair? _tl1501015147_)
                                              (let ((_e1501115150_
                                                     (gx#stx-e
                                                      _tl1501015147_)))
                                                (let ((_hd1501215153_
                                                       (##car _e1501115150_))
                                                      (_tl1501315155_
                                                       (##cdr _e1501115150_)))
                                                  (if (gx#stx-datum?
                                                       _hd1501215153_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1501215153_)
                          '#!rest)
                  (if (gx#stx-null? _tl1501315155_)
                      ((lambda (_L15158_)
                         (values (foldl1 cons _L15158_ _pargs14981_)
                                 (reverse _kwargs14982_)))
                       _tl1500715139_)
                      (_g1498515129_ _g1498915132_))
                  (_g1498515129_ _g1498915132_))
              (_g1498515129_ _g1498915132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498515129_ _g1498915132_))
                                          (_g1498515129_ _g1498915132_))
                                      (_g1498515129_ _g1498915132_))))
                              (_g1498515129_ _g1498915132_))))
                      (_g1498515129_ _g1498915132_))))
               (_g1498315225_
                (lambda (_g1498915174_)
                  (if (gx#stx-pair? _g1498915174_)
                      (let ((_e1499215176_ (gx#stx-e _g1498915174_)))
                        (let ((_hd1499315179_ (##car _e1499215176_))
                              (_tl1499415181_ (##cdr _e1499215176_)))
                          (if (gx#stx-pair? _hd1499315179_)
                              (let ((_e1499515184_ (gx#stx-e _hd1499315179_)))
                                (let ((_hd1499615187_ (##car _e1499515184_))
                                      (_tl1499715189_ (##cdr _e1499515184_)))
                                  (if (gx#identifier? _hd1499615187_)
                                      (if (gx#stx-eq? '%#quote _hd1499615187_)
                                          (if (gx#stx-pair? _tl1499715189_)
                                              (let ((_e1499815192_
                                                     (gx#stx-e
                                                      _tl1499715189_)))
                                                (let ((_hd1499915195_
                                                       (##car _e1499815192_))
                                                      (_tl1500015197_
                                                       (##cdr _e1499815192_)))
                                                  (if (gx#stx-datum?
                                                       _hd1499915195_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1499915195_)
                          '#!key)
                  (if (gx#stx-null? _tl1500015197_)
                      (if (gx#stx-pair? _tl1499415181_)
                          (let ((_e1500115200_ (gx#stx-e _tl1499415181_)))
                            (let ((_hd1500215203_ (##car _e1500115200_))
                                  (_tl1500315205_ (##cdr _e1500115200_)))
                              ((lambda (_L15208_ _L15209_)
                                 (_lp14978_
                                  _L15208_
                                  (cons _L15209_ _pargs14981_)
                                  _kwargs14982_))
                               _tl1500315205_
                               _hd1500215203_)))
                          (_g1498415171_ _g1498915174_))
                      (_g1498415171_ _g1498915174_))
                  (_g1498415171_ _g1498915174_))
              (_g1498415171_ _g1498915174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1498415171_ _g1498915174_))
                                          (_g1498415171_ _g1498915174_))
                                      (_g1498415171_ _g1498915174_))))
                              (_g1498415171_ _g1498915174_))))
                      (_g1498415171_ _g1498915174_)))))
          (_g1498315225_ _rest14980_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self14972_ _stx14973_ _args14974_) (gxc#xform-call% _stx14973_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#generate-ssxi-module%
    (lambda (_stx14790_)
      (let* ((_g1479214806_
              (lambda (_g1479314803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1479314803_)))
             (_g1479114847_
              (lambda (_g1479314809_)
                (if (gx#stx-pair? _g1479314809_)
                    (let ((_e1479614811_ (gx#stx-e _g1479314809_)))
                      (let ((_hd1479714814_ (##car _e1479614811_))
                            (_tl1479814816_ (##cdr _e1479614811_)))
                        (if (gx#stx-pair? _tl1479814816_)
                            (let ((_e1479914819_ (gx#stx-e _tl1479814816_)))
                              (let ((_hd1480014822_ (##car _e1479914819_))
                                    (_tl1480114824_ (##cdr _e1479914819_)))
                                ((lambda (_L14827_ _L14828_)
                                   (let* ((_ctx14841_
                                           (gx#syntax-local-e__0 _L14828_))
                                          (_code14843_
                                           (##structure-ref
                                            _ctx14841_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code14843_))
                                      gx#current-expander-context
                                      _ctx14841_)))
                                 _tl1480114824_
                                 _hd1480014822_)))
                            (_g1479214806_ _g1479314809_))))
                    (_g1479214806_ _g1479314809_)))))
        (_g1479114847_ _stx14790_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx14600_)
      (letrec ((_generate-e14602_
                (lambda (_id14779_)
                  (let* ((_sym14781_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#generate-runtime-binding-id _id14779_)
                              '#f))
                         (_$e14783_
                          (if _sym14781_
                              (gxc#optimizer-lookup-type _sym14781_)
                              '#f)))
                    (if _$e14783_
                        ((lambda (_type14786_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym14781_)
                             (let ((_typedecl14788_
                                    (call-method _type14786_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym14781_
                                           (cons _typedecl14788_ '()))))))
                         _$e14783_)
                        '(begin))))))
        (let* ((_g1460514643_
                (lambda (_g1460614640_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1460614640_)))
               (_g1460414724_
                (lambda (_g1460614646_)
                  (if (gx#stx-pair? _g1460614646_)
                      (let ((_e1462114648_ (gx#stx-e _g1460614646_)))
                        (let ((_hd1462214651_ (##car _e1462114648_))
                              (_tl1462314653_ (##cdr _e1462114648_)))
                          (if (gx#stx-pair? _tl1462314653_)
                              (let ((_e1462414656_ (gx#stx-e _tl1462314653_)))
                                (let ((_hd1462514659_ (##car _e1462414656_))
                                      (_tl1462614661_ (##cdr _e1462414656_)))
                                  (if (gx#stx-pair/null? _hd1462514659_)
                                      (if (fx>= (gx#stx-length _hd1462514659_)
                                                '0)
                                          (let ((_g27521_
                                                 (gx#syntax-split-splice
                                                  _hd1462514659_
                                                  '0)))
                                            (begin
                                              (let ((_g27522_
                                                     (values-count _g27521_)))
                                                (if (not (fx= _g27522_ 2))
                                                    (error "Context expects 2 values"
                                                           _g27522_)))
                                              (let ((_target1462714664_
                                                     (values-ref _g27521_ 0))
                                                    (_tl1462914666_
                                                     (values-ref _g27521_ 1)))
                                                (if (gx#stx-null?
                                                     _tl1462914666_)
                                                    (letrec ((_loop1463014669_
                                                              (lambda (_hd1462814672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1463414674_)
                        (if (gx#stx-pair? _hd1462814672_)
                            (let ((_e1463114677_ (gx#stx-e _hd1462814672_)))
                              (let ((_lp-hd1463214680_ (##car _e1463114677_))
                                    (_lp-tl1463314682_ (##cdr _e1463114677_)))
                                (_loop1463014669_
                                 _lp-tl1463314682_
                                 (cons _lp-hd1463214680_ _id1463414674_))))
                            (let ((_id1463514685_ (reverse _id1463414674_)))
                              (if (gx#stx-pair? _tl1462614661_)
                                  (let ((_e1463614688_
                                         (gx#stx-e _tl1462614661_)))
                                    (let ((_hd1463714691_
                                           (##car _e1463614688_))
                                          (_tl1463814693_
                                           (##cdr _e1463614688_)))
                                      (if (gx#stx-null? _tl1463814693_)
                                          ((lambda (_L14696_)
                                             (let ((_types14722_
                                                    (map _generate-e14602_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1471414717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1471514719_)
                             (cons _g1471414717_ _g1471514719_))
                           '()
                           _L14696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types14722_)))
                                           _id1463514685_)
                                          (_g1460514643_ _g1460614646_))))
                                  (_g1460514643_ _g1460614646_)))))))
              (_loop1463014669_ _target1462714664_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1460514643_
                                                     _g1460614646_)))))
                                          (_g1460514643_ _g1460614646_))
                                      (_g1460514643_ _g1460614646_))))
                              (_g1460514643_ _g1460614646_))))
                      (_g1460514643_ _g1460614646_))))
               (_g1460314776_
                (lambda (_g1460614727_)
                  (if (gx#stx-pair? _g1460614727_)
                      (let ((_e1460814729_ (gx#stx-e _g1460614727_)))
                        (let ((_hd1460914732_ (##car _e1460814729_))
                              (_tl1461014734_ (##cdr _e1460814729_)))
                          (if (gx#stx-pair? _tl1461014734_)
                              (let ((_e1461114737_ (gx#stx-e _tl1461014734_)))
                                (let ((_hd1461214740_ (##car _e1461114737_))
                                      (_tl1461314742_ (##cdr _e1461114737_)))
                                  (if (gx#stx-pair? _hd1461214740_)
                                      (let ((_e1461414745_
                                             (gx#stx-e _hd1461214740_)))
                                        (let ((_hd1461514748_
                                               (##car _e1461414745_))
                                              (_tl1461614750_
                                               (##cdr _e1461414745_)))
                                          (if (gx#stx-null? _tl1461614750_)
                                              (if (gx#stx-pair? _tl1461314742_)
                                                  (let ((_e1461714753_
                                                         (gx#stx-e
                                                          _tl1461314742_)))
                                                    (let ((_hd1461814756_
                                                           (##car _e1461714753_))
                                                          (_tl1461914758_
                                                           (##cdr _e1461714753_)))
                                                      (if (gx#stx-null?
                                                           _tl1461914758_)
                                                          ((lambda (_L14761_)
                                                             (_generate-e14602_
                                                              _L14761_))
                                                           _hd1461514748_)
                                                          (_g1460414724_
                                                           _g1460614727_))))
                                                  (_g1460414724_
                                                   _g1460614727_))
                                              (_g1460414724_ _g1460614727_))))
                                      (_g1460414724_ _g1460614727_))))
                              (_g1460414724_ _g1460614727_))))
                      (_g1460414724_ _g1460614727_)))))
          (_g1460314776_ _stx14600_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14154_)
      (let* ((_g1415814260_
              (lambda (_g1415914257_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1415914257_)))
             (_g1415714267_ (lambda (_g1415914263_) ((lambda () '(begin)))))
             (_g1415614417_
              (lambda (_g1415914270_)
                (if (gx#stx-pair? _g1415914270_)
                    (let ((_e1421714272_ (gx#stx-e _g1415914270_)))
                      (let ((_hd1421814275_ (##car _e1421714272_))
                            (_tl1421914277_ (##cdr _e1421714272_)))
                        (if (gx#stx-pair? _tl1421914277_)
                            (let ((_e1422014280_ (gx#stx-e _tl1421914277_)))
                              (let ((_hd1422114283_ (##car _e1422014280_))
                                    (_tl1422214285_ (##cdr _e1422014280_)))
                                (if (gx#stx-pair? _hd1422114283_)
                                    (let ((_e1422314288_
                                           (gx#stx-e _hd1422114283_)))
                                      (let ((_hd1422414291_
                                             (##car _e1422314288_))
                                            (_tl1422514293_
                                             (##cdr _e1422314288_)))
                                        (if (gx#identifier? _hd1422414291_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1422414291_)
                                                (if (gx#stx-pair?
                                                     _tl1422514293_)
                                                    (let ((_e1422614296_
                                                           (gx#stx-e
                                                            _tl1422514293_)))
                                                      (let ((_hd1422714299_
                                                             (##car _e1422614296_))
                                                            (_tl1422814301_
                                                             (##cdr _e1422614296_)))
                                                        (if (gx#stx-null?
                                                             _tl1422814301_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1422214285_)
                        (let ((_e1422914304_ (gx#stx-e _tl1422214285_)))
                          (let ((_hd1423014307_ (##car _e1422914304_))
                                (_tl1423114309_ (##cdr _e1422914304_)))
                            (if (gx#stx-pair? _hd1423014307_)
                                (let ((_e1423214312_
                                       (gx#stx-e _hd1423014307_)))
                                  (let ((_hd1423314315_ (##car _e1423214312_))
                                        (_tl1423414317_ (##cdr _e1423214312_)))
                                    (if (gx#identifier? _hd1423314315_)
                                        (if (gx#stx-eq? '%#ref _hd1423314315_)
                                            (if (gx#stx-pair? _tl1423414317_)
                                                (let ((_e1423514320_
                                                       (gx#stx-e
                                                        _tl1423414317_)))
                                                  (let ((_hd1423614323_
                                                         (##car _e1423514320_))
                                                        (_tl1423714325_
                                                         (##cdr _e1423514320_)))
                                                    (if (gx#stx-null?
                                                         _tl1423714325_)
                                                        (if (gx#stx-pair?
                                                             _tl1423114309_)
                                                            (let ((_e1423814328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1423114309_)))
                      (let ((_hd1423914331_ (##car _e1423814328_))
                            (_tl1424014333_ (##cdr _e1423814328_)))
                        (if (gx#stx-pair? _hd1423914331_)
                            (let ((_e1424114336_ (gx#stx-e _hd1423914331_)))
                              (let ((_hd1424214339_ (##car _e1424114336_))
                                    (_tl1424314341_ (##cdr _e1424114336_)))
                                (if (gx#identifier? _hd1424214339_)
                                    (if (gx#stx-eq? '%#quote _hd1424214339_)
                                        (if (gx#stx-pair? _tl1424314341_)
                                            (let ((_e1424414344_
                                                   (gx#stx-e _tl1424314341_)))
                                              (let ((_hd1424514347_
                                                     (##car _e1424414344_))
                                                    (_tl1424614349_
                                                     (##cdr _e1424414344_)))
                                                (if (gx#stx-null?
                                                     _tl1424614349_)
                                                    (if (gx#stx-pair?
                                                         _tl1424014333_)
                                                        (let ((_e1424714352_
                                                               (gx#stx-e
                                                                _tl1424014333_)))
                                                          (let ((_hd1424814355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1424714352_))
                        (_tl1424914357_ (##cdr _e1424714352_)))
                    (if (gx#stx-pair? _hd1424814355_)
                        (let ((_e1425014360_ (gx#stx-e _hd1424814355_)))
                          (let ((_hd1425114363_ (##car _e1425014360_))
                                (_tl1425214365_ (##cdr _e1425014360_)))
                            (if (gx#identifier? _hd1425114363_)
                                (if (gx#stx-eq? '%#ref _hd1425114363_)
                                    (if (gx#stx-pair? _tl1425214365_)
                                        (let ((_e1425314368_
                                               (gx#stx-e _tl1425214365_)))
                                          (let ((_hd1425414371_
                                                 (##car _e1425314368_))
                                                (_tl1425514373_
                                                 (##cdr _e1425314368_)))
                                            (if (gx#stx-null? _tl1425514373_)
                                                (if (gx#stx-null?
                                                     _tl1424914357_)
                                                    ((lambda (_L14376_
                                                              _L14377_
                                                              _L14378_
                                                              _L14379_)
                                                       (if (eq? (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax__0 '#f '-bind-method))
                        'bind-method!)
                   (cons 'declare-method
                         (cons (gxc#generate-runtime-binding-id _L14378_)
                               (cons (gx#stx-e _L14377_)
                                     (cons (gxc#generate-runtime-binding-id
                                            _L14376_)
                                           (cons '#f '())))))
                   (_g1415714267_ _g1415914270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1425414371_
                                                     _hd1424514347_
                                                     _hd1423614323_
                                                     _hd1422714299_)
                                                    (_g1415714267_
                                                     _g1415914270_))
                                                (_g1415714267_
                                                 _g1415914270_))))
                                        (_g1415714267_ _g1415914270_))
                                    (_g1415714267_ _g1415914270_))
                                (_g1415714267_ _g1415914270_))))
                        (_g1415714267_ _g1415914270_))))
                (_g1415714267_ _g1415914270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415714267_
                                                     _g1415914270_))))
                                            (_g1415714267_ _g1415914270_))
                                        (_g1415714267_ _g1415914270_))
                                    (_g1415714267_ _g1415914270_))))
                            (_g1415714267_ _g1415914270_))))
                    (_g1415714267_ _g1415914270_))
                (_g1415714267_ _g1415914270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1415714267_ _g1415914270_))
                                            (_g1415714267_ _g1415914270_))
                                        (_g1415714267_ _g1415914270_))))
                                (_g1415714267_ _g1415914270_))))
                        (_g1415714267_ _g1415914270_))
                    (_g1415714267_ _g1415914270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415714267_
                                                     _g1415914270_))
                                                (_g1415714267_ _g1415914270_))
                                            (_g1415714267_ _g1415914270_))))
                                    (_g1415714267_ _g1415914270_))))
                            (_g1415714267_ _g1415914270_))))
                    (_g1415714267_ _g1415914270_))))
             (_g1415514597_
              (lambda (_g1415914420_)
                (if (gx#stx-pair? _g1415914420_)
                    (let ((_e1416514422_ (gx#stx-e _g1415914420_)))
                      (let ((_hd1416614425_ (##car _e1416514422_))
                            (_tl1416714427_ (##cdr _e1416514422_)))
                        (if (gx#stx-pair? _tl1416714427_)
                            (let ((_e1416814430_ (gx#stx-e _tl1416714427_)))
                              (let ((_hd1416914433_ (##car _e1416814430_))
                                    (_tl1417014435_ (##cdr _e1416814430_)))
                                (if (gx#stx-pair? _hd1416914433_)
                                    (let ((_e1417114438_
                                           (gx#stx-e _hd1416914433_)))
                                      (let ((_hd1417214441_
                                             (##car _e1417114438_))
                                            (_tl1417314443_
                                             (##cdr _e1417114438_)))
                                        (if (gx#identifier? _hd1417214441_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1417214441_)
                                                (if (gx#stx-pair?
                                                     _tl1417314443_)
                                                    (let ((_e1417414446_
                                                           (gx#stx-e
                                                            _tl1417314443_)))
                                                      (let ((_hd1417514449_
                                                             (##car _e1417414446_))
                                                            (_tl1417614451_
                                                             (##cdr _e1417414446_)))
                                                        (if (gx#stx-null?
                                                             _tl1417614451_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1417014435_)
                        (let ((_e1417714454_ (gx#stx-e _tl1417014435_)))
                          (let ((_hd1417814457_ (##car _e1417714454_))
                                (_tl1417914459_ (##cdr _e1417714454_)))
                            (if (gx#stx-pair? _hd1417814457_)
                                (let ((_e1418014462_
                                       (gx#stx-e _hd1417814457_)))
                                  (let ((_hd1418114465_ (##car _e1418014462_))
                                        (_tl1418214467_ (##cdr _e1418014462_)))
                                    (if (gx#identifier? _hd1418114465_)
                                        (if (gx#stx-eq? '%#ref _hd1418114465_)
                                            (if (gx#stx-pair? _tl1418214467_)
                                                (let ((_e1418314470_
                                                       (gx#stx-e
                                                        _tl1418214467_)))
                                                  (let ((_hd1418414473_
                                                         (##car _e1418314470_))
                                                        (_tl1418514475_
                                                         (##cdr _e1418314470_)))
                                                    (if (gx#stx-null?
                                                         _tl1418514475_)
                                                        (if (gx#stx-pair?
                                                             _tl1417914459_)
                                                            (let ((_e1418614478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1417914459_)))
                      (let ((_hd1418714481_ (##car _e1418614478_))
                            (_tl1418814483_ (##cdr _e1418614478_)))
                        (if (gx#stx-pair? _hd1418714481_)
                            (let ((_e1418914486_ (gx#stx-e _hd1418714481_)))
                              (let ((_hd1419014489_ (##car _e1418914486_))
                                    (_tl1419114491_ (##cdr _e1418914486_)))
                                (if (gx#identifier? _hd1419014489_)
                                    (if (gx#stx-eq? '%#quote _hd1419014489_)
                                        (if (gx#stx-pair? _tl1419114491_)
                                            (let ((_e1419214494_
                                                   (gx#stx-e _tl1419114491_)))
                                              (let ((_hd1419314497_
                                                     (##car _e1419214494_))
                                                    (_tl1419414499_
                                                     (##cdr _e1419214494_)))
                                                (if (gx#stx-null?
                                                     _tl1419414499_)
                                                    (if (gx#stx-pair?
                                                         _tl1418814483_)
                                                        (let ((_e1419514502_
                                                               (gx#stx-e
                                                                _tl1418814483_)))
                                                          (let ((_hd1419614505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1419514502_))
                        (_tl1419714507_ (##cdr _e1419514502_)))
                    (if (gx#stx-pair? _hd1419614505_)
                        (let ((_e1419814510_ (gx#stx-e _hd1419614505_)))
                          (let ((_hd1419914513_ (##car _e1419814510_))
                                (_tl1420014515_ (##cdr _e1419814510_)))
                            (if (gx#identifier? _hd1419914513_)
                                (if (gx#stx-eq? '%#ref _hd1419914513_)
                                    (if (gx#stx-pair? _tl1420014515_)
                                        (let ((_e1420114518_
                                               (gx#stx-e _tl1420014515_)))
                                          (let ((_hd1420214521_
                                                 (##car _e1420114518_))
                                                (_tl1420314523_
                                                 (##cdr _e1420114518_)))
                                            (if (gx#stx-null? _tl1420314523_)
                                                (if (gx#stx-pair?
                                                     _tl1419714507_)
                                                    (let ((_e1420414526_
                                                           (gx#stx-e
                                                            _tl1419714507_)))
                                                      (let ((_hd1420514529_
                                                             (##car _e1420414526_))
                                                            (_tl1420614531_
                                                             (##cdr _e1420414526_)))
                                                        (if (gx#stx-pair?
                                                             _hd1420514529_)
                                                            (let ((_e1420714534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1420514529_)))
                      (let ((_hd1420814537_ (##car _e1420714534_))
                            (_tl1420914539_ (##cdr _e1420714534_)))
                        (if (gx#identifier? _hd1420814537_)
                            (if (gx#stx-eq? '%#quote _hd1420814537_)
                                (if (gx#stx-pair? _tl1420914539_)
                                    (let ((_e1421014542_
                                           (gx#stx-e _tl1420914539_)))
                                      (let ((_hd1421114545_
                                             (##car _e1421014542_))
                                            (_tl1421214547_
                                             (##cdr _e1421014542_)))
                                        (if (gx#stx-null? _tl1421214547_)
                                            (if (gx#stx-null? _tl1420614531_)
                                                ((lambda (_L14550_
                                                          _L14551_
                                                          _L14552_
                                                          _L14553_
                                                          _L14554_)
                                                   (if (eq? (gxc#generate-runtime-binding-id
                                                             _L14554_)
                                                            'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L14553_)
                           (cons (gx#stx-e _L14552_)
                                 (cons (gxc#generate-runtime-binding-id
                                        _L14551_)
                                       (cons (gx#stx-e _L14550_) '())))))
               (_g1415614417_ _g1415914420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1421114545_
                                                 _hd1420214521_
                                                 _hd1419314497_
                                                 _hd1418414473_
                                                 _hd1417514449_)
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))))
                                    (_g1415614417_ _g1415914420_))
                                (_g1415614417_ _g1415914420_))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))
                                                (_g1415614417_
                                                 _g1415914420_))))
                                        (_g1415614417_ _g1415914420_))
                                    (_g1415614417_ _g1415914420_))
                                (_g1415614417_ _g1415914420_))))
                        (_g1415614417_ _g1415914420_))))
                (_g1415614417_ _g1415914420_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))))
                                            (_g1415614417_ _g1415914420_))
                                        (_g1415614417_ _g1415914420_))
                                    (_g1415614417_ _g1415914420_))))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_))
                (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))
                                        (_g1415614417_ _g1415914420_))))
                                (_g1415614417_ _g1415914420_))))
                        (_g1415614417_ _g1415914420_))
                    (_g1415614417_ _g1415914420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1415614417_
                                                     _g1415914420_))
                                                (_g1415614417_ _g1415914420_))
                                            (_g1415614417_ _g1415914420_))))
                                    (_g1415614417_ _g1415914420_))))
                            (_g1415614417_ _g1415914420_))))
                    (_g1415614417_ _g1415914420_)))))
        (_g1415514597_ _stx14154_))))
  (define gxc#!alias::typedecl
    (lambda (_self14130_)
      (let* ((_self1413114137_ _self14130_)
             (_E1413314141_
              (lambda () (error '"No clause matching" _self1413114137_)))
             (_K1413414146_
              (lambda (_alias-id14144_)
                (cons '@alias (cons _alias-id14144_ '())))))
        (if (##structure-instance-of?
             _self1413114137_
             (##type-id gxc#!alias::t))
            (let* ((_e1413514149_ (##vector-ref _self1413114137_ '1))
                   (_alias-id14152_ _e1413514149_))
              (_K1413414146_ _alias-id14152_))
            (_E1413314141_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self13952_)
      (let* ((_self1395313964_ _self13952_)
             (_E1395513968_
              (lambda () (error '"No clause matching" _self1395313964_)))
             (_K1395613977_
              (lambda (_plist13971_
                       _ctor13972_
                       _fields13973_
                       _super13974_
                       _type-id13975_)
                (cons '@struct-type
                      (cons _type-id13975_
                            (cons _super13974_
                                  (cons _fields13973_
                                        (cons _ctor13972_
                                              (cons _plist13971_ '())))))))))
        (if (##structure-instance-of?
             _self1395313964_
             (##type-id gxc#!struct-type::t))
            (let* ((_e1395713980_ (##vector-ref _self1395313964_ '1))
                   (_type-id13983_ _e1395713980_)
                   (_e1395813985_ (##vector-ref _self1395313964_ '2))
                   (_super13988_ _e1395813985_)
                   (_e1395913990_ (##vector-ref _self1395313964_ '3))
                   (_fields13993_ _e1395913990_)
                   (_e1396013995_ (##vector-ref _self1395313964_ '4))
                   (_e1396113998_ (##vector-ref _self1395313964_ '5))
                   (_ctor14001_ _e1396113998_)
                   (_e1396214003_ (##vector-ref _self1395313964_ '6))
                   (_plist14006_ _e1396214003_))
              (_K1395613977_
               _plist14006_
               _ctor14001_
               _fields13993_
               _super13988_
               _type-id13983_))
            (_E1395513968_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self13806_)
      (let* ((_self1380713813_ _self13806_)
             (_E1380913817_
              (lambda () (error '"No clause matching" _self1380713813_)))
             (_K1381013822_
              (lambda (_struct-t13820_)
                (cons '@struct-pred (cons _struct-t13820_ '())))))
        (if (##structure-instance-of?
             _self1380713813_
             (##type-id gxc#!struct-pred::t))
            (let* ((_e1381113825_ (##vector-ref _self1380713813_ '1))
                   (_struct-t13828_ _e1381113825_))
              (_K1381013822_ _struct-t13828_))
            (_E1380913817_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self13660_)
      (let* ((_self1366113667_ _self13660_)
             (_E1366313671_
              (lambda () (error '"No clause matching" _self1366113667_)))
             (_K1366413676_
              (lambda (_struct-t13674_)
                (cons '@struct-cons (cons _struct-t13674_ '())))))
        (if (##structure-instance-of?
             _self1366113667_
             (##type-id gxc#!struct-cons::t))
            (let* ((_e1366513679_ (##vector-ref _self1366113667_ '1))
                   (_struct-t13682_ _e1366513679_))
              (_K1366413676_ _struct-t13682_))
            (_E1366313671_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self13500_)
      (let* ((_self1350113509_ _self13500_)
             (_E1350313513_
              (lambda () (error '"No clause matching" _self1350113509_)))
             (_K1350413520_
              (lambda (_unchecked?13516_ _off13517_ _struct-t13518_)
                (cons '@struct-getf
                      (cons _struct-t13518_
                            (cons _off13517_ (cons _unchecked?13516_ '())))))))
        (if (##structure-instance-of?
             _self1350113509_
             (##type-id gxc#!struct-getf::t))
            (let* ((_e1350513523_ (##vector-ref _self1350113509_ '1))
                   (_struct-t13526_ _e1350513523_)
                   (_e1350613528_ (##vector-ref _self1350113509_ '2))
                   (_off13531_ _e1350613528_)
                   (_e1350713533_ (##vector-ref _self1350113509_ '3))
                   (_unchecked?13536_ _e1350713533_))
              (_K1350413520_ _unchecked?13536_ _off13531_ _struct-t13526_))
            (_E1350313513_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13340_)
      (let* ((_self1334113349_ _self13340_)
             (_E1334313353_
              (lambda () (error '"No clause matching" _self1334113349_)))
             (_K1334413360_
              (lambda (_unchecked?13356_ _off13357_ _struct-t13358_)
                (cons '@struct-setf
                      (cons _struct-t13358_
                            (cons _off13357_ (cons _unchecked?13356_ '())))))))
        (if (##structure-instance-of?
             _self1334113349_
             (##type-id gxc#!struct-setf::t))
            (let* ((_e1334513363_ (##vector-ref _self1334113349_ '1))
                   (_struct-t13366_ _e1334513363_)
                   (_e1334613368_ (##vector-ref _self1334113349_ '2))
                   (_off13371_ _e1334613368_)
                   (_e1334713373_ (##vector-ref _self1334113349_ '3))
                   (_unchecked?13376_ _e1334713373_))
              (_K1334413360_ _unchecked?13376_ _off13371_ _struct-t13366_))
            (_E1334313353_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13166_)
      (let* ((_self1316713177_ _self13166_)
             (_E1316913181_
              (lambda () (error '"No clause matching" _self1316713177_)))
             (_K1317013192_
              (lambda (_typedecl13184_
                       _inline13185_
                       _dispatch13186_
                       _arity13187_)
                (if _inline13185_
                    (let ((_$e13189_ _typedecl13184_))
                      (if _$e13189_
                          _$e13189_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13187_ (cons _dispatch13186_ '())))))))
        (if (##structure-instance-of?
             _self1316713177_
             (##type-id gxc#!lambda::t))
            (let* ((_e1317113195_ (##vector-ref _self1316713177_ '1))
                   (_e1317213198_ (##vector-ref _self1316713177_ '2))
                   (_arity13201_ _e1317213198_)
                   (_e1317313203_ (##vector-ref _self1316713177_ '3))
                   (_dispatch13206_ _e1317313203_)
                   (_e1317413208_ (##vector-ref _self1316713177_ '4))
                   (_inline13211_ _e1317413208_)
                   (_e1317513213_ (##vector-ref _self1316713177_ '5))
                   (_typedecl13216_ _e1317513213_))
              (_K1317013192_
               _typedecl13216_
               _inline13211_
               _dispatch13206_
               _arity13201_))
            (_E1316913181_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self12977_)
      (letrec ((_clause-e12979_
                (lambda (_clause13009_)
                  (let* ((_clause1301013018_ _clause13009_)
                         (_E1301213022_
                          (lambda ()
                            (error '"No clause matching" _clause1301013018_)))
                         (_K1301313028_
                          (lambda (_dispatch13025_ _arity13026_)
                            (cons _arity13026_ (cons _dispatch13025_ '())))))
                    (if (##structure-instance-of?
                         _clause1301013018_
                         (##type-id gxc#!lambda::t))
                        (let* ((_e1301413031_
                                (##vector-ref _clause1301013018_ '1))
                               (_e1301513034_
                                (##vector-ref _clause1301013018_ '2))
                               (_arity13037_ _e1301513034_)
                               (_e1301613039_
                                (##vector-ref _clause1301013018_ '3))
                               (_dispatch13042_ _e1301613039_))
                          (_K1301313028_ _dispatch13042_ _arity13037_))
                        (_E1301213022_))))))
        (let* ((_self1298012987_ _self12977_)
               (_E1298212991_
                (lambda () (error '"No clause matching" _self1298012987_)))
               (_K1298312998_
                (lambda (_clauses12994_)
                  (let ((_clauses12996_ (map _clause-e12979_ _clauses12994_)))
                    (cons '@case-lambda _clauses12996_)))))
          (if (##structure-instance-of?
               _self1298012987_
               (##type-id gxc#!case-lambda::t))
              (let* ((_e1298413001_ (##vector-ref _self1298012987_ '1))
                     (_e1298513004_ (##vector-ref _self1298012987_ '2))
                     (_clauses13007_ _e1298513004_))
                (_K1298312998_ _clauses13007_))
              (_E1298212991_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self12820_)
      (let* ((_self1282112829_ _self12820_)
             (_E1282312833_
              (lambda () (error '"No clause matching" _self1282112829_)))
             (_K1282412839_
              (lambda (_dispatch12836_ _table12837_)
                (cons '@kw-lambda
                      (cons _table12837_ (cons _dispatch12836_ '()))))))
        (if (##structure-instance-of?
             _self1282112829_
             (##type-id gxc#!kw-lambda::t))
            (let* ((_e1282512842_ (##vector-ref _self1282112829_ '1))
                   (_e1282612845_ (##vector-ref _self1282112829_ '2))
                   (_table12848_ _e1282612845_)
                   (_e1282712850_ (##vector-ref _self1282112829_ '3))
                   (_dispatch12853_ _e1282712850_))
              (_K1282412839_ _dispatch12853_ _table12848_))
            (_E1282312833_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self12663_)
      (let* ((_self1266412672_ _self12663_)
             (_E1266612676_
              (lambda () (error '"No clause matching" _self1266412672_)))
             (_K1266712682_
              (lambda (_main12679_ _keys12680_)
                (cons '@kw-lambda-dispatch
                      (cons _keys12680_ (cons _main12679_ '()))))))
        (if (##structure-instance-of?
             _self1266412672_
             (##type-id gxc#!kw-lambda-primary::t))
            (let* ((_e1266812685_ (##vector-ref _self1266412672_ '1))
                   (_e1266912688_ (##vector-ref _self1266412672_ '2))
                   (_keys12691_ _e1266912688_)
                   (_e1267012693_ (##vector-ref _self1266412672_ '3))
                   (_main12696_ _e1267012693_))
              (_K1266712682_ _main12696_ _keys12691_))
            (_E1266612676_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx12539_) (gxc#generate-runtime-binding-id _stx12539_))))
