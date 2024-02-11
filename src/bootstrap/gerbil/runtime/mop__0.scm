(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707674929)
  (begin
    (define type-id
      (lambda (_klass84815_)
        (if (let () (declare (not safe)) (type-descriptor? _klass84815_))
            (let () (declare (not safe)) (##type-id _klass84815_))
            (if (let () (declare (not safe)) (not _klass84815_))
                '#f
                (error '"not a type descriptor" _klass84815_)))))
    (define type=?
      (lambda (_x84812_ _y84813_)
        (let ((__tmp89409 (let () (declare (not safe)) (type-id _x84812_)))
              (__tmp89408 (let () (declare (not safe)) (type-id _y84813_))))
          (declare (not safe))
          (eq? __tmp89409 __tmp89408))))
    (define type-descriptor?
      (lambda (_klass84810_)
        (if (let () (declare (not safe)) (##type? _klass84810_))
            (let ((__tmp89410
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass84810_))))
              (declare (not safe))
              (eq? __tmp89410 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass84808_)
        (let ((__tmp89411
               (let () (declare (not safe)) (##type-flags _klass84808_))))
          (declare (not safe))
          (##fxbit-set? '21 __tmp89411))))
    (define type-final?
      (lambda (_klass84806_)
        (let ((__tmp89412
               (let () (declare (not safe)) (##type-flags _klass84806_))))
          (declare (not safe))
          (##fxbit-set? '22 __tmp89412))))
    (define class-type?
      (lambda (_klass84804_)
        (let () (declare (not safe)) (type-descriptor? _klass84804_))))
    (define properties-form
      (lambda (_properties84770_)
        (map (lambda (_e8477184773_)
               (let* ((_g8477584782_ _e8477184773_)
                      (_E8477784786_
                       (lambda () (error '"No clause matching" _g8477584782_)))
                      (_K8477884792_
                       (lambda (_val84789_ _key84790_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84790_ 'direct-supers:))
                             (let ((__tmp89413 (map type-id _val84789_)))
                               (declare (not safe))
                               (cons _key84790_ __tmp89413))
                             (let ()
                               (declare (not safe))
                               (cons _key84790_ _val84789_))))))
                 (if (let () (declare (not safe)) (##pair? _g8477584782_))
                     (let ((_hd8477984795_
                            (let ()
                              (declare (not safe))
                              (##car _g8477584782_)))
                           (_tl8478084797_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8477584782_))))
                       (let* ((_key84800_ _hd8477984795_)
                              (_val84802_ _tl8478084797_))
                         (declare (not safe))
                         (_K8477884792_ _val84802_ _key84800_)))
                     (let () (declare (not safe)) (_E8477784786_)))))
             _properties84770_)))
    (define make-type-descriptor
      (lambda (_type-id84677_
               _type-name84678_
               _type-super84679_
               _precedence-list84680_
               _all-slots84681_
               _properties84682_
               _constructor84683_
               _slot-table84684_
               _methods84685_)
        (letrec ((_make-props!84687_
                  (lambda (_key84739_)
                    (letrec* ((_ht84741_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!84742_
                               (lambda (_ht84763_ _slots84764_)
                                 (for-each
                                  (lambda (_g8476584767_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht84763_
                                       _g8476584767_
                                       '#t)))
                                  _slots84764_)))
                              (_put-alist!84743_
                               (lambda (_ht84752_ _key84753_ _alist84754_)
                                 (let ((_$e84756_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key84753_ _alist84754_))))
                                   (if _$e84756_
                                       ((lambda (_g8475884760_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84742_
                                             _ht84752_
                                             _g8475884760_)))
                                        _$e84756_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84743_
                         _ht84741_
                         _key84739_
                         _properties84682_))
                      (for-each
                       (lambda (_mixin84745_)
                         (let ((_alist84747_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin84745_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist84747_))
                                   (let ((__tmp89415
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key84739_
                                                     _alist84747_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp89415)))
                               (let ((__tmp89414
                                      (let ()
                                        (declare (not safe))
                                        (type-descriptor-slot-list
                                         _mixin84745_))))
                                 (declare (not safe))
                                 (_put-slots!84742_ _ht84741_ __tmp89414))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84743_
                                  _ht84741_
                                  _key84739_
                                  _alist84747_)))))
                       _precedence-list84680_)
                      _ht84741_))))
          (let* ((_transparent?84689_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties84682_)))
                 (_all-slots-printable?84694_
                  (let ((_$e84691_ _transparent?84689_))
                    (if _$e84691_
                        _$e84691_
                        (let ((__tmp89416
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties84682_))))
                          (declare (not safe))
                          (eq? '#t __tmp89416)))))
                 (_printable84696_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84694_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84687_ 'print:))
                      '#f))
                 (_all-slots-equalable?84701_
                  (let ((_$e84698_ _transparent?84689_))
                    (if _$e84698_
                        _$e84698_
                        (let ((__tmp89417
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties84682_))))
                          (declare (not safe))
                          (eq? '#t __tmp89417)))))
                 (_equalable84703_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84701_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84687_ 'equal:))
                      '#f))
                 (_first-new-field84705_
                  (if _type-super84679_
                      (let ((__tmp89418
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super84679_))))
                        (declare (not safe))
                        (##vector-length __tmp89418))
                      '1))
                 (_field-info-length84707_
                  (let ((__tmp89419
                         (let ((__tmp89420
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots84681_))))
                           (declare (not safe))
                           (##fx- __tmp89420 _first-new-field84705_))))
                    (declare (not safe))
                    (##fx* '3 __tmp89419)))
                 (_field-info84709_ (make-vector _field-info-length84707_ '#f))
                 (_struct?84711_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties84682_)))
                 (_final?84713_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties84682_)))
                 (_opaque?84718_
                  (let ((_$e84715_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84701_))))
                    (if _$e84715_
                        _$e84715_
                        (if _type-super84679_
                            (let ((__tmp89421
                                   (let ((__tmp89422
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super84679_))))
                                     (declare (not safe))
                                     (##fxand __tmp89422 '1))))
                              (declare (not safe))
                              (##fx= __tmp89421 '1))
                            '#f))))
                 (_type-flags84720_
                  (let ((__tmp89425 (if _opaque?84718_ '1 '0))
                        (__tmp89424
                         (if _struct?84711_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '21))
                             '0))
                        (__tmp89423
                         (if _final?84713_
                             (let ()
                               (declare (not safe))
                               (##fxarithmetic-shift '1 '22))
                             '0)))
                    (declare (not safe))
                    (##fxior '24 __tmp89425 __tmp89424 __tmp89423))))
            (let _loop84723_ ((_i84725_ _first-new-field84705_) (_j84726_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84726_ _field-info-length84707_))
                  (let* ((_slot84728_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots84681_ _i84725_)))
                         (_flags84736_
                          (if _transparent?84689_
                              '0
                              (let ((__tmp89427
                                     (if (or _all-slots-printable?84694_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable84696_
                                                _slot84728_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp89426
                                     (if (or _all-slots-equalable?84701_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable84703_
                                                _slot84728_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp89427 __tmp89426)))))
                    (vector-set! _field-info84709_ _j84726_ _slot84728_)
                    (vector-set!
                     _field-info84709_
                     (let () (declare (not safe)) (##fx+ _j84726_ '1))
                     _flags84736_)
                    (let ((__tmp89429
                           (let () (declare (not safe)) (##fx+ _i84725_ '1)))
                          (__tmp89428
                           (let () (declare (not safe)) (##fx+ _j84726_ '3))))
                      (declare (not safe))
                      (_loop84723_ __tmp89429 __tmp89428)))
                  '#!void))
            (let ()
              (declare (not safe))
              (##structure
               ##type-type
               _type-id84677_
               _type-name84678_
               _type-flags84720_
               _type-super84679_
               _field-info84709_
               _precedence-list84680_
               _all-slots84681_
               _slot-table84684_
               _properties84682_
               _constructor84683_
               _methods84685_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass84675_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84675_
           '6
           ##type-type
           type-descriptor-precedence-list))))
    (define type-descriptor-all-slots
      (lambda (_klass84673_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84673_
           '7
           ##type-type
           type-descriptor-all-slots))))
    (define type-descriptor-slot-table
      (lambda (_klass84671_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84671_
           '8
           ##type-type
           type-descriptor-slot-table))))
    (define type-descriptor-properties
      (lambda (_klass84669_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84669_
           '9
           ##type-type
           type-descriptor-properties))))
    (define type-descriptor-constructor
      (lambda (_klass84667_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84667_
           '10
           ##type-type
           type-descriptor-constructor))))
    (define type-descriptor-methods
      (lambda (_klass84665_)
        (let ()
          (declare (not safe))
          (##structure-ref
           _klass84665_
           '11
           ##type-type
           type-descriptor-methods))))
    (define type-descriptor-methods-set!
      (lambda (_klass84662_ _ht84663_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84662_
           _ht84663_
           '11
           ##type-type
           type-descriptor-methods-set!))))
    (define type-descriptor-slot-list
      (lambda (_klass84660_)
        (cdr (vector->list
              (let ()
                (declare (not safe))
                (type-descriptor-all-slots _klass84660_))))))
    (define type-descriptor-fields
      (lambda (_klass84658_)
        (let ((__tmp89430
               (let ((__tmp89431
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass84658_))))
                 (declare (not safe))
                 (##vector-length __tmp89431))))
          (declare (not safe))
          (##fx- __tmp89430 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass84656_)
        (let ((__tmp89432
               (let () (declare (not safe)) (##type-flags _klass84656_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp89432))))
    (define type-descriptor-seal!
      (lambda (_klass84654_)
        (let ((__tmp89433
               (let ((__tmp89435
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp89434
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84654_))))
                 (declare (not safe))
                 (##fxior __tmp89435 __tmp89434))))
          (declare (not safe))
          (##structure-set!
           _klass84654_
           __tmp89433
           '3
           ##type-type
           type-descriptor-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84645_ _maybe-super-struct84646_)
        (let ((_maybe-super-struct-id84648_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84646_))))
          (let _lp84650_ ((_super-struct84652_ _maybe-sub-struct84645_))
            (if (let () (declare (not safe)) (not _super-struct84652_))
                '#f
                (if (let ((__tmp89437
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct84652_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84648_ __tmp89437))
                    '#t
                    (let ((__tmp89436
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84652_))))
                      (declare (not safe))
                      (_lp84650_ __tmp89436))))))))
    (define base-struct/1
      (lambda (_klass84643_)
        (if (let () (declare (not safe)) (class-type? _klass84643_))
            (if (let () (declare (not safe)) (type-struct? _klass84643_))
                _klass84643_
                (let () (declare (not safe)) (##type-super _klass84643_)))
            (if (let () (declare (not safe)) (not _klass84643_))
                '#f
                (error '"not a class or false" _klass84643_)))))
    (define base-struct/2
      (lambda (_klass184631_ _klass284632_)
        (let ((_s184634_
               (let () (declare (not safe)) (base-struct/1 _klass184631_)))
              (_s284635_
               (let () (declare (not safe)) (base-struct/1 _klass284632_))))
          (if (or (let () (declare (not safe)) (not _s184634_))
                  (and _s284635_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184634_ _s284635_))))
              _s284635_
              (if (or (let () (declare (not safe)) (not _s284635_))
                      (and _s184634_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284635_ _s184634_))))
                  _s184634_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184631_
                         _klass284632_
                         _s184634_
                         _s284635_))))))
    (define base-struct/list
      (lambda (_all-supers84515_)
        (let* ((_all-supers8451684541_ _all-supers84515_)
               (_E8452184545_
                (lambda ()
                  (error '"No clause matching" _all-supers8451684541_))))
          (let ((_K8453984628_ (lambda () '#f))
                (_K8453684614_
                 (lambda (_x84612_)
                   (let () (declare (not safe)) (base-struct/1 _x84612_))))
                (_K8453184591_
                 (lambda (_y84588_ _x84589_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84589_ _y84588_))))
                (_K8452284552_
                 (lambda (_y84549_ _x84550_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84550_ _y84549_)))))
            (let* ((___match8940589406_
                    (lambda (_hd8452384555_ _tl8452484557_)
                      (let ((_x84560_ _hd8452384555_))
                        (letrec ((_splice-rest8452684562_
                                  (lambda (_rest8453084569_ _y84571_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8453084569_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8452284552_ _y84571_ _x84560_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8452184545_)))))
                                 (_splice-try8452884564_
                                  (lambda (_hd8452984573_
                                           _rest8453084575_
                                           _y8452584576_)
                                    (let ((_y84579_ _hd8452984573_))
                                      (let ((__tmp89439
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8453084575_)))
                                            (__tmp89438
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84579_ _y8452584576_))))
                                        (declare (not safe))
                                        (_splice-loop8452784566_
                                         __tmp89439
                                         __tmp89438)))))
                                 (_splice-loop8452784566_
                                  (lambda (_rest8453084581_ _y8452584582_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8453084581_))
                                        (let ((__tmp89441
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8453084581_))))
                                          (declare (not safe))
                                          (_splice-try8452884564_
                                           __tmp89441
                                           _rest8453084581_
                                           _y8452584582_))
                                        (let ((__tmp89440
                                               (reverse _y8452584582_)))
                                          (declare (not safe))
                                          (_splice-rest8452684562_
                                           _rest8453084581_
                                           __tmp89440))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8452784566_ _tl8452484557_ '()))))))
                   (_try-match8451884624_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8451684541_))
                          (let ((_tl8453884619_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8451684541_)))
                                (_hd8453784617_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8451684541_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8453884619_))
                                (let ((_x84622_ _hd8453784617_))
                                  (declare (not safe))
                                  (base-struct/1 _x84622_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8453884619_))
                                    (let ((_tl8453584603_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8453884619_)))
                                          (_hd8453484601_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8453884619_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8453584603_))
                                          (let ((_x84599_ _hd8453784617_)
                                                (_y84606_ _hd8453484601_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8453184591_
                                               _y84606_
                                               _x84599_)))
                                          (___match8940589406_
                                           _hd8453784617_
                                           _tl8453884619_)))
                                    (___match8940589406_
                                     _hd8453784617_
                                     _tl8453884619_))))
                          (let () (declare (not safe)) (_E8452184545_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8451684541_))
                  (let () (declare (not safe)) (_K8453984628_))
                  (let () (declare (not safe)) (_try-match8451884624_))))))))
    (define base-struct
      (lambda _all-supers84513_
        (let () (declare (not safe)) (base-struct/list _all-supers84513_))))
    (define find-super-constructor
      (lambda (_super84465_)
        (let _lp84467_ ((_rest84469_ _super84465_) (_constructor84470_ '#f))
          (let* ((_rest8447184479_ _rest84469_)
                 (_else8447384487_ (lambda () _constructor84470_))
                 (_K8447584501_
                  (lambda (_rest84490_ _hd84491_)
                    (let ((_$e84493_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd84491_))))
                      (if _$e84493_
                          ((lambda (_xconstructor84496_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84470_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84470_
                                            _xconstructor84496_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84467_ _rest84490_ _xconstructor84496_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84470_
                                        _xconstructor84496_)))
                           _$e84493_)
                          (let ()
                            (declare (not safe))
                            (_lp84467_ _rest84490_ _constructor84470_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8447184479_))
                (let ((_hd8447684504_
                       (let () (declare (not safe)) (##car _rest8447184479_)))
                      (_tl8447784506_
                       (let () (declare (not safe)) (##cdr _rest8447184479_))))
                  (let* ((_hd84509_ _hd8447684504_)
                         (_rest84511_ _tl8447784506_))
                    (declare (not safe))
                    (_K8447584501_ _rest84511_ _hd84509_)))
                (let () (declare (not safe)) (_else8447384487_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84441_ _direct-slots84442_)
        (let* ((_next-slot84444_ '1)
               (_slot-table84446_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots84448_ (let () (declare (not safe)) (cons '#f '())))
               (_process-slot84452_
                (lambda (_slot84450_)
                  (if (let () (declare (not safe)) (symbol? _slot84450_))
                      '#!void
                      (error '"invalid slot name" _slot84450_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table84446_ _slot84450_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table84446_
                           _slot84450_
                           _next-slot84444_))
                        (let ((__tmp89442 (symbol->keyword _slot84450_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table84446_
                           __tmp89442
                           _next-slot84444_))
                        (set! _r-slots84448_
                              (let ()
                                (declare (not safe))
                                (cons _slot84450_ _r-slots84448_)))
                        (set! _next-slot84444_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84444_ '1)))))))
               (_process-slots84458_
                (lambda (_g8445384455_)
                  (for-each _process-slot84452_ _g8445384455_))))
          (for-each
           (lambda (_mixin84461_)
             (let ((__tmp89443
                    (let ((__tmp89444
                           (let ()
                             (declare (not safe))
                             (type-descriptor-properties _mixin84461_))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp89444 '()))))
               (declare (not safe))
               (_process-slots84458_ __tmp89443)))
           (reverse _class-precedence-list84441_))
          (let ()
            (declare (not safe))
            (_process-slots84458_ _direct-slots84442_))
          (let ((_all-slots84463_ (list->vector (reverse _r-slots84448_))))
            (values _all-slots84463_ _slot-table84446_)))))
    (define make-class-type
      (lambda (_id84404_
               _name84405_
               _direct-supers84406_
               _direct-slots84407_
               _properties84408_
               _constructor84409_)
        (let ((_$e84413_
               (let ((__tmp89445
                      (lambda (_klass84411_)
                        (let ((__tmp89446
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass84411_))))
                          (declare (not safe))
                          (not __tmp89446)))))
                 (declare (not safe))
                 (find __tmp89445 _direct-supers84406_))))
          (if _$e84413_
              ((lambda (_g8441584417_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8441584417_))
               _$e84413_)
              (let ((_$e84420_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers84406_))))
                (if _$e84420_
                    ((lambda (_g8442284424_)
                       (error '"Cannot extend final class" _g8442284424_))
                     _$e84420_)
                    '#!void))))
        (let ((_g89447_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84406_))))
          (begin
            (let ((_g89448_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g89447_) (##vector-length _g89447_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g89448_ 2)))
                  (error "Context expects 2 values" _g89448_)))
            (let ((_precedence-list84427_
                   (let () (declare (not safe)) (##vector-ref _g89447_ 0)))
                  (_struct-super84428_
                   (let () (declare (not safe)) (##vector-ref _g89447_ 1))))
              (let ((_g89449_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84427_
                        _direct-slots84407_))))
                (begin
                  (let ((_g89450_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g89449_)
                               (##vector-length _g89449_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g89450_ 2)))
                        (error "Context expects 2 values" _g89450_)))
                  (let ((_all-slots84430_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89449_ 0)))
                        (_slot-table84431_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g89449_ 1))))
                    (let* ((_properties84433_
                            (let ((__tmp89453
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84407_)))
                                  (__tmp89451
                                   (let ((__tmp89452
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84406_))))
                                     (declare (not safe))
                                     (cons __tmp89452 _properties84408_))))
                              (declare (not safe))
                              (cons __tmp89453 __tmp89451)))
                           (_constructor*84438_
                            (let ((_$e84435_ _constructor84409_))
                              (if _$e84435_
                                  _$e84435_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84406_))))))
                      (let ()
                        (declare (not safe))
                        (make-type-descriptor
                         _id84404_
                         _name84405_
                         _struct-super84428_
                         _precedence-list84427_
                         _all-slots84430_
                         _properties84433_
                         _constructor*84438_
                         _slot-table84431_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84402_)
        (let ((__tmp89454
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass84402_))))
          (declare (not safe))
          (cons _klass84402_ __tmp89454))))
    (define compute-precedence-list
      (lambda (_direct-supers84400_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           type-struct?
           eq?
           ##type-name
           '()
           _direct-supers84400_))))
    (define make-class-predicate
      (lambda (_klass84384_)
        (let ((_tid84386_
               (let () (declare (not safe)) (##type-id _klass84384_))))
          (if (let () (declare (not safe)) (type-final? _klass84384_))
              (lambda (_g8438784389_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8438784389_ _tid84386_)))
              (if (let () (declare (not safe)) (type-struct? _klass84384_))
                  (lambda (_g8439184393_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8439184393_ _tid84386_)))
                  (lambda (_g8439584397_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass84384_ _g8439584397_))))))))
    (define if-class-slot-field
      (lambda (_klass84373_
               _slot84374_
               _if-final84375_
               _if-struct84376_
               _if-struct-field84377_
               _if-class-slot84378_)
        (let ((_field84380_
               (let ((__tmp89455
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass84373_))))
                 (declare (not safe))
                 (table-ref __tmp89455 _slot84374_ '#f))))
          (if (let () (declare (not safe)) (not _field84380_))
              (error '"unknown slot" 'class: _klass84373_ 'slot: _slot84374_)
              (if (let () (declare (not safe)) (type-final? _klass84373_))
                  (_if-final84375_ _klass84373_ _slot84374_ _field84380_)
                  (if (let () (declare (not safe)) (type-struct? _klass84373_))
                      (_if-struct84376_ _klass84373_ _slot84374_ _field84380_)
                      (if (let ((_strukt84382_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass84373_))))
                            (and _strukt84382_
                                 (let ((__tmp89456
                                        (let ((__tmp89457
                                               (let ()
                                                 (declare (not safe))
                                                 (type-descriptor-all-slots
                                                  _strukt84382_))))
                                          (declare (not safe))
                                          (##vector-length __tmp89457))))
                                   (declare (not safe))
                                   (##fx< _field84380_ __tmp89456))))
                          (_if-struct-field84377_
                           _klass84373_
                           _slot84374_
                           _field84380_)
                          (_if-class-slot84378_
                           _klass84373_
                           _slot84374_
                           _field84380_))))))))
    (define make-class-slot-accessor
      (lambda (_klass84370_ _slot84371_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84370_
           _slot84371_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass84367_ _slot84368_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84367_
           _slot84368_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass84364_ _slot84365_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84364_
           _slot84365_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass84361_ _slot84362_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass84361_
           _slot84362_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object84345_ _class84346_ _slot84347_)
        (apply error
               '"not an instance"
               'object:
               _object84345_
               'class:
               _class84346_
               (if _slot84347_
                   (let ((__tmp89458
                          (let ()
                            (declare (not safe))
                            (cons _slot84347_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp89458))
                   '()))))
    (define not-an-instance__0
      (lambda (_object84352_ _class84353_)
        (let ((_slot84355_ '#f))
          (declare (not safe))
          (not-an-instance__% _object84352_ _class84353_ _slot84355_))))
    (define not-an-instance
      (lambda _g89460_
        (let ((_g89459_ (let () (declare (not safe)) (##length _g89460_))))
          (cond ((let () (declare (not safe)) (##fx= _g89459_ 2))
                 (apply (lambda (_object84352_ _class84353_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object84352_ _class84353_)))
                        _g89460_))
                ((let () (declare (not safe)) (##fx= _g89459_ 3))
                 (apply (lambda (_object84357_ _class84358_ _slot84359_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object84357_
                             _class84358_
                             _slot84359_)))
                        _g89460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g89460_))))))
    (define make-final-slot-accessor
      (lambda (_klass84338_ _slot84339_ _field84340_)
        (lambda (_obj84342_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj84342_
             _field84340_
             _klass84338_
             _slot84339_)))))
    (define make-final-slot-mutator
      (lambda (_klass84331_ _slot84332_ _field84333_)
        (lambda (_obj84335_ _val84336_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj84335_
             _val84336_
             _field84333_
             _klass84331_
             _slot84332_)))))
    (define make-struct-slot-accessor
      (lambda (_klass84325_ _slot84326_ _field84327_)
        (lambda (_obj84329_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj84329_
             _field84327_
             _klass84325_
             _slot84326_)))))
    (define make-struct-slot-mutator
      (lambda (_klass84318_ _slot84319_ _field84320_)
        (lambda (_obj84322_ _val84323_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj84322_
             _val84323_
             _field84320_
             _klass84318_
             _slot84319_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass84312_ _slot84313_ _field84314_)
        (lambda (_obj84316_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj84316_
             _field84314_
             _klass84312_
             _slot84313_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass84305_ _slot84306_ _field84307_)
        (lambda (_obj84309_ _val84310_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj84309_
             _val84310_
             _field84307_
             _klass84305_
             _slot84306_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass84299_ _slot84300_ _field84301_)
        (lambda (_obj84303_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84299_ _obj84303_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84303_ _field84301_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84303_ _klass84299_ _slot84300_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass84292_ _slot84293_ _field84294_)
        (lambda (_obj84296_ _val84297_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass84292_ _obj84296_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84296_ _field84294_ _val84297_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj84296_ _klass84292_ _slot84293_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass84286_ _slot84287_ _field84288_)
        (lambda (_obj84290_)
          (if (let ((__tmp89461
                     (let () (declare (not safe)) (##type-id _klass84286_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84290_ __tmp89461))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84290_ _field84288_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84286_ _obj84290_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj84290_ _slot84287_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84290_
                     _klass84286_
                     _slot84287_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass84279_ _slot84280_ _field84281_)
        (lambda (_obj84283_ _val84284_)
          (if (let ((__tmp89462
                     (let () (declare (not safe)) (##type-id _klass84279_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84283_ __tmp89462))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84283_ _field84281_ _val84284_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass84279_ _obj84283_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj84283_ _slot84280_ _val84284_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj84283_
                     _klass84279_
                     _slot84280_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass84273_ _slot84274_ _field84275_)
        (lambda (_obj84277_)
          (if (let ((__tmp89463
                     (let () (declare (not safe)) (##type-id _klass84273_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84277_ __tmp89463))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj84277_ _field84275_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj84277_ _slot84274_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass84266_ _slot84267_ _field84268_)
        (lambda (_obj84270_ _val84271_)
          (if (let ((__tmp89464
                     (let () (declare (not safe)) (##type-id _klass84266_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj84270_ __tmp89464))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj84270_ _field84268_ _val84271_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj84270_ _slot84267_ _val84271_))))))
    (define class-slot-offset
      (lambda (_klass84263_ _slot84264_)
        (let ((__tmp89465
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass84263_))))
          (declare (not safe))
          (table-ref __tmp89465 _slot84264_ '#f))))
    (define class-slot-ref
      (lambda (_klass84257_ _obj84258_ _slot84259_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84257_ _obj84258_))
            (let ((_off84261_
                   (let ((__tmp89466
                          (let ()
                            (declare (not safe))
                            (object-type _obj84258_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89466 _slot84259_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj84258_
               _off84261_
               _klass84257_
               _slot84259_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84258_ _klass84257_)))))
    (define class-slot-set!
      (lambda (_klass84250_ _obj84251_ _slot84252_ _val84253_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass84250_ _obj84251_))
            (let ((_off84255_
                   (let ((__tmp89467
                          (let ()
                            (declare (not safe))
                            (object-type _obj84251_))))
                     (declare (not safe))
                     (class-slot-offset __tmp89467 _slot84252_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj84251_
               _val84253_
               _off84255_
               _klass84250_
               _slot84252_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj84251_ _klass84250_)))))
    (define unchecked-field-ref
      (lambda (_obj84247_ _off84248_)
        (let ((__tmp89468
               (let () (declare (not safe)) (##structure-type _obj84247_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj84247_ _off84248_ __tmp89468 '#f))))
    (define unchecked-field-set!
      (lambda (_obj84243_ _off84244_ _val84245_)
        (let ((__tmp89469
               (let () (declare (not safe)) (##structure-type _obj84243_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj84243_
           _val84245_
           _off84244_
           __tmp89469
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj84240_ _slot84241_)
        (let ((__tmp89470
               (let ((__tmp89471
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84240_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89471 _slot84241_))))
          (declare (not safe))
          (unchecked-field-ref _obj84240_ __tmp89470))))
    (define unchecked-slot-set!
      (lambda (_obj84236_ _slot84237_ _val84238_)
        (let ((__tmp89472
               (let ((__tmp89473
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj84236_))))
                 (declare (not safe))
                 (class-slot-offset __tmp89473 _slot84237_))))
          (declare (not safe))
          (unchecked-field-set! _obj84236_ __tmp89472 _val84238_))))
    (define slot-ref__%
      (lambda (_obj84212_ _slot84213_ _E84214_)
        (if (let () (declare (not safe)) (object? _obj84212_))
            (let* ((_klass84216_
                    (let () (declare (not safe)) (object-type _obj84212_)))
                   (_$e84219_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass84216_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84216_ _slot84213_))
                        '#f)))
              (if _$e84219_
                  ((lambda (_off84222_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj84212_ _off84222_)))
                   _$e84219_)
                  (_E84214_ _obj84212_ _slot84213_)))
            (_E84214_ _obj84212_ _slot84213_))))
    (define slot-ref__0
      (lambda (_obj84227_ _slot84228_)
        (let ((_E84230_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj84227_ _slot84228_ _E84230_))))
    (define slot-ref
      (lambda _g89475_
        (let ((_g89474_ (let () (declare (not safe)) (##length _g89475_))))
          (cond ((let () (declare (not safe)) (##fx= _g89474_ 2))
                 (apply (lambda (_obj84227_ _slot84228_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj84227_ _slot84228_)))
                        _g89475_))
                ((let () (declare (not safe)) (##fx= _g89474_ 3))
                 (apply (lambda (_obj84232_ _slot84233_ _E84234_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj84232_ _slot84233_ _E84234_)))
                        _g89475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g89475_))))))
    (define slot-set!__%
      (lambda (_obj84184_ _slot84185_ _val84186_ _E84187_)
        (if (let () (declare (not safe)) (object? _obj84184_))
            (let* ((_klass84189_
                    (let () (declare (not safe)) (object-type _obj84184_)))
                   (_$e84192_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass84189_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass84189_ _slot84185_))
                        '#f)))
              (if _$e84192_
                  ((lambda (_off84195_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj84184_
                        _off84195_
                        _val84186_)))
                   _$e84192_)
                  (_E84187_ _obj84184_ _slot84185_)))
            (_E84187_ _obj84184_ _slot84185_))))
    (define slot-set!__0
      (lambda (_obj84200_ _slot84201_ _val84202_)
        (let ((_E84204_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj84200_ _slot84201_ _val84202_ _E84204_))))
    (define slot-set!
      (lambda _g89477_
        (let ((_g89476_ (let () (declare (not safe)) (##length _g89477_))))
          (cond ((let () (declare (not safe)) (##fx= _g89476_ 3))
                 (apply (lambda (_obj84200_ _slot84201_ _val84202_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj84200_ _slot84201_ _val84202_)))
                        _g89477_))
                ((let () (declare (not safe)) (##fx= _g89476_ 4))
                 (apply (lambda (_obj84206_ _slot84207_ _val84208_ _E84209_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj84206_
                             _slot84207_
                             _val84208_
                             _E84209_)))
                        _g89477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g89477_))))))
    (define __slot-error
      (lambda (_obj84180_ _slot84181_)
        (error '"Cannot find slot" 'object: _obj84180_ 'slot: _slot84181_)))
    (define subclass?
      (lambda (_maybe-sub-class84170_ _maybe-super-class84171_)
        (let* ((_maybe-super-class-id84173_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class84171_)))
               (_$e84175_
                (let ((__tmp89478
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class84170_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id84173_ __tmp89478))))
          (if _$e84175_
              _$e84175_
              (let ((__tmp89480
                     (lambda (_super-class84178_)
                       (let ((__tmp89481
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class84178_))))
                         (declare (not safe))
                         (eq? __tmp89481 _maybe-super-class-id84173_))))
                    (__tmp89479
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class84170_))))
                (declare (not safe))
                (ormap1 __tmp89480 __tmp89479))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass84167_ _obj84168_)
        (let ((__tmp89482
               (let () (declare (not safe)) (##type-id _klass84167_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj84168_ __tmp89482))))
    (define struct-instance?
      (lambda (_klass84164_ _obj84165_)
        (let ((__tmp89483
               (let () (declare (not safe)) (##type-id _klass84164_))))
          (declare (not safe))
          (##structure-instance-of? _obj84165_ __tmp89483))))
    (define class-instance?
      (lambda (_klass84159_ _obj84160_)
        (if (let () (declare (not safe)) (object? _obj84160_))
            (let ((_type84162_
                   (let () (declare (not safe)) (object-type _obj84160_))))
              (if (let () (declare (not safe)) (type-descriptor? _type84162_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type84162_ _klass84159_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass84154_ _k84155_)
        (let ((_obj84157_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass84154_ _k84155_))))
          (let () (declare (not safe)) (object-fill! _obj84157_ '#f))
          _obj84157_)))
    (define object-fill!
      (lambda (_obj84147_ _fill84148_)
        (let _loop84150_ ((_i84152_
                           (let ((__tmp89485
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj84147_))))
                             (declare (not safe))
                             (##fx- __tmp89485 '1))))
          (if (let () (declare (not safe)) (##fx> _i84152_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj84147_
                   _fill84148_
                   _i84152_
                   '#f
                   '#f))
                (let ((__tmp89484
                       (let () (declare (not safe)) (##fx- _i84152_ '1))))
                  (declare (not safe))
                  (_loop84150_ __tmp89484)))
              _obj84147_))))
    (define make-new-instance
      (lambda (_klass84145_)
        (let ((__obj89407
               (let ((__tmp89486
                      (let ((__tmp89487
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _klass84145_))))
                        (declare (not safe))
                        (##vector-length __tmp89487))))
                 (declare (not safe))
                 (##make-structure _klass84145_ __tmp89486))))
          (let () (declare (not safe)) (object-fill! __obj89407 '#f))
          __obj89407)))
    (define make-instance
      (lambda (_klass84135_ . _args84136_)
        (let* ((_obj84138_
                (let () (declare (not safe)) (make-new-instance _klass84135_)))
               (_$e84140_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass84135_))))
          (if _$e84140_
              ((lambda (_kons-id84143_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass84135_
                    _kons-id84143_
                    _obj84138_
                    _args84136_)))
               _$e84140_)
              (if (let ((__tmp89491
                         (let ()
                           (declare (not safe))
                           (type-struct? _klass84135_))))
                    (declare (not safe))
                    (not __tmp89491))
                  (let ()
                    (declare (not safe))
                    (__class-instance-init!
                     _klass84135_
                     _obj84138_
                     _args84136_))
                  (if (let ((__tmp89489
                             (let ((__tmp89490
                                    (let ()
                                      (declare (not safe))
                                      (##structure-length _obj84138_))))
                               (declare (not safe))
                               (##fx- __tmp89490 '1)))
                            (__tmp89488 (length _args84136_)))
                        (declare (not safe))
                        (##fx= __tmp89489 __tmp89488))
                      (apply ##structure _klass84135_ _args84136_)
                      (error '"arguments don't match object size"
                             'class:
                             _klass84135_
                             'slots:
                             (let ()
                               (declare (not safe))
                               (type-descriptor-slot-list _klass84135_))
                             'args:
                             _args84136_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj84132_ . _args84133_)
        (if (let ((__tmp89493 (length _args84133_))
                  (__tmp89492
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj84132_))))
              (declare (not safe))
              (##fx< __tmp89493 __tmp89492))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj84132_ _args84133_))
            (error '"too many arguments for struct"
                   'object:
                   _obj84132_
                   'args:
                   _args84133_))))
    (define __struct-instance-init!
      (lambda (_obj84091_ _args84092_)
        (let _lp84094_ ((_k84096_ '1) (_rest84097_ _args84092_))
          (let* ((_rest8409884106_ _rest84097_)
                 (_else8410084114_ (lambda () _obj84091_))
                 (_K8410284120_
                  (lambda (_rest84117_ _hd84118_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj84091_ _k84096_ _hd84118_))
                    (let ((__tmp89494
                           (let () (declare (not safe)) (##fx+ _k84096_ '1))))
                      (declare (not safe))
                      (_lp84094_ __tmp89494 _rest84117_)))))
            (if (let () (declare (not safe)) (##pair? _rest8409884106_))
                (let ((_hd8410384123_
                       (let () (declare (not safe)) (##car _rest8409884106_)))
                      (_tl8410484125_
                       (let () (declare (not safe)) (##cdr _rest8409884106_))))
                  (let* ((_hd84128_ _hd8410384123_)
                         (_rest84130_ _tl8410484125_))
                    (declare (not safe))
                    (_K8410284120_ _rest84130_ _hd84128_)))
                (let () (declare (not safe)) (_else8410084114_)))))))
    (define class-instance-init!
      (lambda (_obj84088_ . _args84089_)
        (let ((__tmp89495
               (let () (declare (not safe)) (object-type _obj84088_))))
          (declare (not safe))
          (__class-instance-init! __tmp89495 _obj84088_ _args84089_))))
    (define __class-instance-init!
      (lambda (_klass84032_ _obj84033_ _args84034_)
        (let _lp84036_ ((_rest84038_ _args84034_))
          (let* ((_rest8403984049_ _rest84038_)
                 (_else8404184057_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84038_))
                        _obj84033_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84032_
                               'rest:
                               _rest84038_))))
                 (_K8404384069_
                  (lambda (_rest84060_ _val84061_ _key84062_)
                    (let ((_$e84064_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84032_ _key84062_))))
                      (if _$e84064_
                          ((lambda (_off84067_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84033_
                                _off84067_
                                _val84061_))
                             (let ()
                               (declare (not safe))
                               (_lp84036_ _rest84060_)))
                           _$e84064_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84032_
                                 'slot:
                                 _key84062_))))))
            (if (let () (declare (not safe)) (##pair? _rest8403984049_))
                (let ((_hd8404484072_
                       (let () (declare (not safe)) (##car _rest8403984049_)))
                      (_tl8404584074_
                       (let () (declare (not safe)) (##cdr _rest8403984049_))))
                  (let ((_key84077_ _hd8404484072_))
                    (if (let () (declare (not safe)) (##pair? _tl8404584074_))
                        (let ((_hd8404684079_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8404584074_)))
                              (_tl8404784081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8404584074_))))
                          (let* ((_val84084_ _hd8404684079_)
                                 (_rest84086_ _tl8404784081_))
                            (declare (not safe))
                            (_K8404384069_ _rest84086_ _val84084_ _key84077_)))
                        (let () (declare (not safe)) (_else8404184057_)))))
                (let () (declare (not safe)) (_else8404184057_)))))))
    (define constructor-init!
      (lambda (_klass84027_ _kons-id84028_ _obj84029_ . _args84030_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84027_
           _kons-id84028_
           _obj84029_
           _args84030_))))
    (define __constructor-init!
      (lambda (_klass84017_ _kons-id84018_ _obj84019_ _args84020_)
        (let ((_$e84022_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84017_ _kons-id84018_))))
          (if _$e84022_
              ((lambda (_kons84025_)
                 (apply _kons84025_ _obj84019_ _args84020_)
                 _obj84019_)
               _$e84022_)
              (error '"missing constructor"
                     'class:
                     _klass84017_
                     'method:
                     _kons-id84018_)))))
    (define struct-copy
      (lambda (_struct84015_)
        (if (let () (declare (not safe)) (##structure? _struct84015_))
            '#!void
            (error '"not a structure" _struct84015_))
        (let () (declare (not safe)) (##structure-copy _struct84015_))))
    (define struct->list
      (lambda (_obj84013_)
        (if (let () (declare (not safe)) (object? _obj84013_))
            (let () (declare (not safe)) (##vector->list _obj84013_))
            (error '"not an object" _obj84013_))))
    (define class->list
      (lambda (_obj84000_)
        (if (let () (declare (not safe)) (object? _obj84000_))
            (let ((_klass84002_
                   (let () (declare (not safe)) (object-type _obj84000_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass84002_))
                  (let ((_all-slots84004_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass84002_))))
                    (let _loop84006_ ((_index84008_
                                       (let ((__tmp89501
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots84004_))))
                                         (declare (not safe))
                                         (##fx- __tmp89501 '1)))
                                      (_plist84009_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84008_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84002_ _plist84009_))
                          (let ((_slot84011_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots84004_
                                    _index84008_))))
                            (let ((__tmp89500
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84008_ '1)))
                                  (__tmp89496
                                   (let ((__tmp89499
                                          (symbol->keyword _slot84011_))
                                         (__tmp89497
                                          (let ((__tmp89498
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84000_
                                                    _index84008_))))
                                            (declare (not safe))
                                            (cons __tmp89498 _plist84009_))))
                                     (declare (not safe))
                                     (cons __tmp89499 __tmp89497))))
                              (declare (not safe))
                              (_loop84006_ __tmp89500 __tmp89496))))))
                  (error '"not a class type"
                         'object:
                         _obj84000_
                         'class:
                         _klass84002_)))
            (error '"not an object" _obj84000_))))
    (define call-method
      (lambda (_obj83991_ _id83992_ . _args83993_)
        (let ((_$e83995_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83991_ _id83992_))))
          (if _$e83995_
              ((lambda (_method83998_)
                 (apply _method83998_ _obj83991_ _args83993_))
               _$e83995_)
              (error '"cannot find method"
                     'object:
                     _obj83991_
                     'method:
                     _id83992_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj83988_ _id83989_)
        (if (let () (declare (not safe)) (object? _obj83988_))
            (let ((__tmp89502
                   (let () (declare (not safe)) (object-type _obj83988_))))
              (declare (not safe))
              (find-method __tmp89502 _id83989_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83982_ _id83983_)
        (let ((_$e83985_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83982_ _id83983_))))
          (if _$e83985_
              _$e83985_
              (error '"missing method"
                     'object:
                     _obj83982_
                     'method:
                     _id83983_)))))
    (define bound-method-ref
      (lambda (_obj83972_ _id83973_)
        (let ((_$e83975_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83972_ _id83973_))))
          (if _$e83975_
              ((lambda (_method83978_)
                 (lambda _args83980_
                   (apply _method83978_ _obj83972_ _args83980_)))
               _$e83975_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83965_ _id83966_)
        (let ((_method83968_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83965_ _id83966_))))
          (lambda _args83970_ (apply _method83968_ _obj83965_ _args83970_)))))
    (define find-method
      (lambda (_klass83962_ _id83963_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83962_))
            (let ()
              (declare (not safe))
              (__find-method _klass83962_ _id83963_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83962_ _id83963_)))))
    (define __find-method
      (lambda (_klass83956_ _id83957_)
        (let ((_$e83959_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83956_ _id83957_))))
          (if _$e83959_
              _$e83959_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83956_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83956_ _id83957_)))))))
    (define class-find-method
      (lambda (_klass83953_ _id83954_)
        (if (let () (declare (not safe)) (type-descriptor? _klass83953_))
            (let ()
              (declare (not safe))
              (__find-method _klass83953_ _id83954_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83946_ _id83947_)
        (let ((__tmp89503
               (lambda (_g8394883950_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8394883950_ _id83947_)))))
          (declare (not safe))
          (ormap1 __tmp89503 _mixins83946_))))
    (define builtin-find-method
      (lambda (_klass83940_ _id83941_)
        (if (let () (declare (not safe)) (##type? _klass83940_))
            (let ((_$e83943_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83940_ _id83941_))))
              (if _$e83943_
                  _$e83943_
                  (let ((__tmp89504
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83940_))))
                    (declare (not safe))
                    (builtin-find-method __tmp89504 _id83941_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83932_ _id83933_)
        (let ((_$e83935_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass83932_))))
          (if _$e83935_
              ((lambda (_ht83938_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht83938_ _id83933_ '#f)))
               _$e83935_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass83929_ _id83930_)
        (let ((__tmp89505
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass83929_))))
          (declare (not safe))
          (mixin-find-method __tmp89505 _id83930_))))
    (define builtin-method-ref
      (lambda (_klass83921_ _id83922_)
        (let ((_$e83924_
               (let ((__tmp89506
                      (let () (declare (not safe)) (##type-id _klass83921_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp89506 '#f))))
          (if _$e83924_
              ((lambda (_mtab83927_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab83927_ _id83922_ '#f)))
               _$e83924_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83887_ _id83888_ _proc83889_ _rebind?83890_)
        (letrec ((_bind!83892_
                  (lambda (_ht83905_)
                    (if (and (let () (declare (not safe)) (not _rebind?83890_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht83905_ _id83888_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83887_
                               'method:
                               _id83888_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht83905_ _id83888_ _proc83889_))))))
          (if (let () (declare (not safe)) (procedure? _proc83889_))
              '#!void
              (error '"bad method; expected procedure" _proc83889_))
          (if (let () (declare (not safe)) (type-descriptor? _klass83887_))
              (let ((_ht83894_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass83887_))))
                (if _ht83894_
                    (let () (declare (not safe)) (_bind!83892_ _ht83894_))
                    (let ((_ht83896_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass83887_ _ht83896_))
                      (let () (declare (not safe)) (_bind!83892_ _ht83896_)))))
              (if (let () (declare (not safe)) (##type? _klass83887_))
                  (let ((_ht83903_
                         (let ((_$e83898_
                                (let ((__tmp89507
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83887_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp89507
                                   '#f))))
                           (if _$e83898_
                               _$e83898_
                               (let ((_ht83901_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp89508
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83887_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp89508
                                    _ht83901_))
                                 _ht83901_)))))
                    (declare (not safe))
                    (_bind!83892_ _ht83903_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass83887_))))))
    (define bind-method!__0
      (lambda (_klass83910_ _id83911_ _proc83912_)
        (let ((_rebind?83914_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83910_
           _id83911_
           _proc83912_
           _rebind?83914_))))
    (define bind-method!
      (lambda _g89510_
        (let ((_g89509_ (let () (declare (not safe)) (##length _g89510_))))
          (cond ((let () (declare (not safe)) (##fx= _g89509_ 3))
                 (apply (lambda (_klass83910_ _id83911_ _proc83912_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83910_
                             _id83911_
                             _proc83912_)))
                        _g89510_))
                ((let () (declare (not safe)) (##fx= _g89509_ 4))
                 (apply (lambda (_klass83916_
                                 _id83917_
                                 _proc83918_
                                 _rebind?83919_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83916_
                             _id83917_
                             _proc83918_
                             _rebind?83919_)))
                        _g89510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g89510_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc83883_ _specializer83884_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc83883_ _specializer83884_))))
    (define seal-class!
      (lambda (_klass83850_)
        (letrec ((_collect-methods!83852_
                  (lambda (_mtab83868_)
                    (letrec ((_merge!83870_
                              (lambda (_tab83878_)
                                (let ((__tmp89511
                                       (lambda (_id83880_ _proc83881_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab83868_
                                            _id83880_
                                            _proc83881_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp89511 _tab83878_))))
                             (_collect-direct-methods!83871_
                              (lambda (_klass83873_)
                                (let ((_$e83875_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass83873_))))
                                  (if _$e83875_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83870_ _$e83875_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83871_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83850_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83850_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass83850_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass83850_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83850_))
                    (let ((_vtab83854_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab83855_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!83852_ _mtab83855_))
                      (let ((__tmp89512
                             (lambda (_id83857_ _proc83858_)
                               (let ((_$e83860_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc83858_
                                         '#f))))
                                 (if _$e83860_
                                     ((lambda (_specializer83863_)
                                        (let ((_proc83865_
                                               (_specializer83863_
                                                _klass83850_))
                                              (_gid83866_
                                               (let ((__tmp89513
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass83850_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp89513
                                                  '"::["
                                                  _id83857_
                                                  '"]"))))
                                          (eval (let ((__tmp89514
                                                       (let ((__tmp89515
                                                              (let ((__tmp89516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp89517
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc83865_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp89517))))
                        (declare (not safe))
                        (cons __tmp89516 '()))))
                 (declare (not safe))
                 (cons _gid83866_ __tmp89515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp89514)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab83854_
                                             _id83857_
                                             _proc83865_))))
                                      _$e83860_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab83854_
                                        _id83857_
                                        _proc83858_)))))))
                        (declare (not safe))
                        (table-for-each __tmp89512 _mtab83855_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass83850_
                         _vtab83854_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass83850_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass83799_ _obj83800_ _id83801_)
        (let ((_klass83803_
               (let () (declare (not safe)) (object-type _obj83800_)))
              (_type-id83804_
               (let () (declare (not safe)) (##type-id _subklass83799_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass83803_))
              (let _lp83806_ ((_rest83808_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83803_))))
                (let* ((_rest8380983817_ _rest83808_)
                       (_else8381183825_ (lambda () '#f))
                       (_K8381383831_
                        (lambda (_rest83828_ _klass83829_)
                          (if (let ((__tmp89520
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83829_))))
                                (declare (not safe))
                                (eq? _type-id83804_ __tmp89520))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest83828_ _id83801_))
                              (let ()
                                (declare (not safe))
                                (_lp83806_ _rest83828_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8380983817_))
                      (let ((_hd8381483834_
                             (let ()
                               (declare (not safe))
                               (##car _rest8380983817_)))
                            (_tl8381583836_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8380983817_))))
                        (let* ((_klass83839_ _hd8381483834_)
                               (_rest83841_ _tl8381583836_))
                          (declare (not safe))
                          (_K8381383831_ _rest83841_ _klass83839_)))
                      (let () (declare (not safe)) (_else8381183825_)))))
              (if (let () (declare (not safe)) (##type? _klass83803_))
                  (let _lp83843_ ((_klass83845_ _klass83803_))
                    (if (let ((__tmp89519
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83845_))))
                          (declare (not safe))
                          (eq? _type-id83804_ __tmp89519))
                        (let ((__tmp89518
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83845_))))
                          (declare (not safe))
                          (builtin-find-method __tmp89518 _id83801_))
                        (let ((_$e83847_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83845_))))
                          (if _$e83847_
                              (let ()
                                (declare (not safe))
                                (_lp83843_ _$e83847_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83789_ _obj83790_ _id83791_ . _args83792_)
        (let ((_$e83794_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83789_ _obj83790_ _id83791_))))
          (if _$e83794_
              ((lambda (_methodf83797_)
                 (apply _methodf83797_ _obj83790_ _args83792_))
               _$e83794_)
              (error '"cannot find next method"
                     'object:
                     _obj83790_
                     'method:
                     _id83791_)))))
    (define write-style (lambda (_we83787_) (macro-writeenv-style _we83787_)))
    (define write-object
      (lambda (_we83779_ _obj83780_)
        (let ((_$e83782_
               (let () (declare (not safe)) (method-ref _obj83780_ ':wr))))
          (if _$e83782_
              ((lambda (_method83785_) (_method83785_ _obj83780_ _we83779_))
               _$e83782_)
              (let ()
                (declare (not safe))
                (##default-wr _we83779_ _obj83780_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
