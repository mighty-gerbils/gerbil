(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
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
    (lambda _$args6386_
      (apply make-struct-instance gxc#optimizer-info::t _$args6386_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (begin)
  (define gxc#optimizer-info:::init!
    (lambda (_self6384_)
      (direct-struct-instance-init!
       _self6384_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info (gxc#make-optimizer-info)))))
  (define gxc#optimize!
    (lambda (_ctx6379_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx6379_)
        (hash-put!
         (gxc#optimizer-info-ssxi (gxc#current-compile-optimizer-info))
         (gx#expander-context-id _ctx6379_)
         '#t)
        (let ((_code6381_
               (gxc#optimize-source (gx#module-context-code _ctx6379_))))
          (gx#module-context-code-set! _ctx6379_ _code6381_)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx6340_)
      ((letrec ((_lp6342_
                 (lambda (_rest6344_)
                   (let ((_rest63456353_ _rest6344_))
                     (let ((_E63486357_
                            (lambda ()
                              (error '"No clause matching" _rest63456353_))))
                       (let ((_else63476361_ (lambda () (void))))
                         (let ((_K63496367_
                                (lambda (_rest6364_ _hd6365_)
                                  (if (gx#module-context? _hd6365_)
                                      (begin
                                        (gxc#optimizer-load-prelude-ssxi
                                         _ctx6340_)
                                        (gxc#optimizer-load-ssxi _hd6365_)
                                        (_lp6342_
                                         (append (gx#module-context-import
                                                  _hd6365_)
                                                 _rest6364_)))
                                      (if (gx#module-import? _hd6365_)
                                          (_lp6342_
                                           (cons (gx#module-import-source
                                                  _hd6365_)
                                                 _rest6364_))
                                          (if (gx#module-export? _hd6365_)
                                              (_lp6342_
                                               (cons (gx#module-export-context
                                                      _hd6365_)
                                                     _rest6364_))
                                              (if (gx#import-set? _hd6365_)
                                                  (_lp6342_
                                                   (cons (gx#import-set-source
                                                          _hd6365_)
                                                         _rest6364_))
                                                  (error '"Unexpected module import"
                                                         _hd6365_))))))))
                           (if (##pair? _rest63456353_)
                               (let ((_hd63506370_ (##car _rest63456353_))
                                     (_tl63516372_ (##cdr _rest63456353_)))
                                 (let ((_hd6375_ _hd63506370_))
                                   (let ((_rest6377_ _tl63516372_))
                                     (_K63496367_ _rest6377_ _hd6375_))))
                               (_else63476361_)))))))))
         _lp6342_)
       (gx#module-context-import _ctx6340_))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx6335_)
      (let ((_$e6337_ (gx#core-context-prelude _ctx6335_)))
        (if _$e6337_ (gxc#optimizer-load-ssxi _$e6337_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx6315_)
      (if (if (gx#module-context? _ctx6315_)
              (list? (gx#module-context-path _ctx6315_))
              '#f)
          '#!void
          (let ((_ht6317_
                 (gxc#optimizer-info-ssxi
                  (gxc#current-compile-optimizer-info))))
            (let ((_id6319_ (gx#expander-context-id _ctx6315_)))
              (let ((_mod6321_ (hash-get _ht6317_ _id6319_)))
                (let ()
                  (let ((_$e6324_ _mod6321_))
                    (if _$e6324_
                        _$e6324_
                        (let ((_mod6327_
                               (gxc#optimizer-import-ssxi _ctx6315_)))
                          (let ((_val6332_
                                 (let ((_$e6329_ _mod6327_))
                                   (if _$e6329_ _$e6329_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht6317_ _id6319_ _val6332_)
                                _val6332_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx6292_)
      (let ((_catch-e6294_
             (lambda (_exn6313_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (gx#expander-context-id _ctx6292_))
                       (display-exception _exn6313_))
                     '#!void)
                 '#f))))
        (let ((_import-e6295_
               (lambda ()
                 (let ((_str-id6298_
                        (string-append
                         (symbol->string (gx#expander-context-id _ctx6292_))
                         '".ssxi")))
                   (let ((_artefact-path6306_
                          (let ((_odir62996301_
                                 (gxc#current-compile-output-dir)))
                            (if _odir62996301_
                                (let ((_odir6304_ _odir62996301_))
                                  (path-expand
                                   (string-append _str-id6298_ '".ss")
                                   _odir6304_))
                                '#f))))
                     (let ((_library-path6308_
                            (string->symbol
                             (string-append '":" _str-id6298_))))
                       (let ((_ssxi-path6310_
                              (if (if _artefact-path6306_
                                      (file-exists? _artefact-path6306_)
                                      '#f)
                                  _artefact-path6306_
                                  _library-path6308_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path6310_)
                             (gx#import-module
                              _ssxi-path6310_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e6294_ _import-e6295_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args6289_ (apply make-struct-instance gxc#!type::t _$args6289_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (begin)
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '5
     '!struct-type
     '()
     '#f))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args6286_
      (apply make-struct-instance gxc#!struct-type::t _$args6286_)))
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
  (begin)
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!type::t
     '0
     '!struct-pred
     '()
     '#f))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args6283_
      (apply make-struct-instance gxc#!struct-pred::t _$args6283_)))
  (begin)
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!type::t
     '0
     '!struct-cons
     '()
     '#f))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args6280_
      (apply make-struct-instance gxc#!struct-cons::t _$args6280_)))
  (begin)
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!type::t
     '1
     '!struct-getf
     '()
     '#f))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args6277_
      (apply make-struct-instance gxc#!struct-getf::t _$args6277_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (begin)
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!type::t
     '1
     '!struct-setf
     '()
     '#f))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args6274_
      (apply make-struct-instance gxc#!struct-setf::t _$args6274_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (begin)
  (define gxc#optimizer-declare-type!
    (lambda (_sym6271_ _type6272_)
      (displayln '"declare-type! " _sym6271_ '" " _type6272_)))
  (define gxc#optimize-source (lambda (_stx6269_) _stx6269_)))
