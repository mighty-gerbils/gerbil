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
    (lambda _$args6388_
      (apply make-struct-instance gxc#optimizer-info::t _$args6388_)))
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
    (lambda (_self6386_)
      (direct-struct-instance-init!
       _self6386_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info (gxc#make-optimizer-info)))))
  (define gxc#optimize!
    (lambda (_ctx6381_)
      (begin
        (gxc#optimizer-load-ssxi-deps _ctx6381_)
        (hash-put!
         (gxc#optimizer-info-ssxi (gxc#current-compile-optimizer-info))
         (gx#expander-context-id _ctx6381_)
         '#t)
        (let ((_code6383_
               (gxc#optimize-source (gx#module-context-code _ctx6381_))))
          (gx#module-context-code-set! _ctx6381_ _code6383_)))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx6342_)
      ((letrec ((_lp6344_
                 (lambda (_rest6346_)
                   (let ((_rest63476355_ _rest6346_))
                     (let ((_E63506359_
                            (lambda ()
                              (error '"No clause matching" _rest63476355_))))
                       (let ((_else63496363_ (lambda () (void))))
                         (let ((_K63516369_
                                (lambda (_rest6366_ _hd6367_)
                                  (if (gx#module-context? _hd6367_)
                                      (begin
                                        (gxc#optimizer-load-prelude-ssxi
                                         _ctx6342_)
                                        (gxc#optimizer-load-ssxi _hd6367_)
                                        (_lp6344_
                                         (append (gx#module-context-import
                                                  _hd6367_)
                                                 _rest6366_)))
                                      (if (gx#module-import? _hd6367_)
                                          (_lp6344_
                                           (cons (gx#module-import-source
                                                  _hd6367_)
                                                 _rest6366_))
                                          (if (gx#module-export? _hd6367_)
                                              (_lp6344_
                                               (cons (gx#module-export-context
                                                      _hd6367_)
                                                     _rest6366_))
                                              (if (gx#import-set? _hd6367_)
                                                  (_lp6344_
                                                   (cons (gx#import-set-source
                                                          _hd6367_)
                                                         _rest6366_))
                                                  (error '"Unexpected module import"
                                                         _hd6367_))))))))
                           (if (##pair? _rest63476355_)
                               (let ((_hd63526372_ (##car _rest63476355_))
                                     (_tl63536374_ (##cdr _rest63476355_)))
                                 (let ((_hd6377_ _hd63526372_))
                                   (let ((_rest6379_ _tl63536374_))
                                     (_K63516369_ _rest6379_ _hd6377_))))
                               (_else63496363_)))))))))
         _lp6344_)
       (gx#module-context-import _ctx6342_))))
  (define gxc#optimizer-load-prelude-ssxi
    (lambda (_ctx6337_)
      (let ((_$e6339_ (gx#core-context-prelude _ctx6337_)))
        (if _$e6339_ (gxc#optimizer-load-ssxi _$e6339_) (void)))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx6317_)
      (if (if (gx#module-context? _ctx6317_)
              (list? (gx#module-context-path _ctx6317_))
              '#f)
          '#!void
          (let ((_ht6319_
                 (gxc#optimizer-info-ssxi
                  (gxc#current-compile-optimizer-info))))
            (let ((_id6321_ (gx#expander-context-id _ctx6317_)))
              (let ((_mod6323_ (hash-get _ht6319_ _id6321_)))
                (let ()
                  (let ((_$e6326_ _mod6323_))
                    (if _$e6326_
                        _$e6326_
                        (let ((_mod6329_
                               (gxc#optimizer-import-ssxi _ctx6317_)))
                          (let ((_val6334_
                                 (let ((_$e6331_ _mod6329_))
                                   (if _$e6331_ _$e6331_ '#!void))))
                            (let ()
                              (begin
                                (hash-put! _ht6319_ _id6321_ _val6334_)
                                _val6334_)))))))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx6294_)
      (let ((_catch-e6296_
             (lambda (_exn6315_)
               (begin
                 (if (gxc#current-compile-verbose)
                     (begin
                       (displayln
                        '"Failed to load ssxi module for "
                        (gx#expander-context-id _ctx6294_))
                       (display-exception _exn6315_))
                     '#!void)
                 '#f))))
        (let ((_import-e6297_
               (lambda ()
                 (let ((_str-id6300_
                        (string-append
                         (symbol->string (gx#expander-context-id _ctx6294_))
                         '".ssxi")))
                   (let ((_artefact-path6308_
                          (let ((_odir63016303_
                                 (gxc#current-compile-output-dir)))
                            (if _odir63016303_
                                (let ((_odir6306_ _odir63016303_))
                                  (path-expand
                                   (string-append _str-id6300_ '".ss")
                                   _odir6306_))
                                '#f))))
                     (let ((_library-path6310_
                            (string->symbol
                             (string-append '":" _str-id6300_))))
                       (let ((_ssxi-path6312_
                              (if (if _artefact-path6308_
                                      (file-exists? _artefact-path6308_)
                                      '#f)
                                  _artefact-path6308_
                                  _library-path6310_)))
                         (let ()
                           (begin
                             (gxc#verbose
                              '"Loading ssxi module "
                              _ssxi-path6312_)
                             (gx#import-module
                              _ssxi-path6312_
                              '#t
                              '#t))))))))))
          (with-catch _catch-e6296_ _import-e6297_)))))
  (define gxc#!type::t (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args6291_ (apply make-struct-instance gxc#!type::t _$args6291_)))
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
    (lambda _$args6288_
      (apply make-struct-instance gxc#!struct-type::t _$args6288_)))
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
    (lambda _$args6285_
      (apply make-struct-instance gxc#!struct-pred::t _$args6285_)))
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
    (lambda _$args6282_
      (apply make-struct-instance gxc#!struct-cons::t _$args6282_)))
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
    (lambda _$args6279_
      (apply make-struct-instance gxc#!struct-getf::t _$args6279_)))
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
    (lambda _$args6276_
      (apply make-struct-instance gxc#!struct-setf::t _$args6276_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (begin)
  (define gxc#optimizer-declare-type!
    (lambda (_sym6273_ _type6274_)
      (begin
        (if (gxc#!type? _type6274_)
            '#!void
            (error '"bad declaration: expected !type" _sym6273_ _type6274_))
        (gxc#verbose
         '"declare-type "
         _sym6273_
         '" "
         _type6274_
         '" "
         (gxc#!type-id _type6274_))
        (hash-put!
         (gxc#optimizer-info-type (gxc#current-compile-optimizer-info))
         _sym6273_
         _type6274_))))
  (define gxc#optimize-source (lambda (_stx6271_) _stx6271_)))
