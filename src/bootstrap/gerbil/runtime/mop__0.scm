(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1695292370)
  (begin
    (define type-descriptor?
      (lambda (_klass10067_)
        (if (let () (declare (not safe)) (##type? _klass10067_))
            (let ((__tmp10077
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass10067_))))
              (declare (not safe))
              (eq? __tmp10077 '12))
            '#f)))
    (define struct-type?
      (lambda (_klass10065_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10065_))
            (let ((__tmp10078
                   (let ()
                     (declare (not safe))
                     (type-descriptor-mixin _klass10065_))))
              (declare (not safe))
              (not __tmp10078))
            '#f)))
    (define class-type?
      (lambda (_klass10063_)
        (if (let () (declare (not safe)) (type-descriptor? _klass10063_))
            (if (let ()
                  (declare (not safe))
                  (type-descriptor-mixin _klass10063_))
                '#t
                '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id9959_
               _type-name9960_
               _type-super9961_
               _rtd-mixin9962_
               _rtd-fields9963_
               _rtd-plist9964_
               _rtd-ctor9965_
               _rtd-slots9966_
               _rtd-methods9967_)
        (letrec ((_put-props!9969_
                  (lambda (_ht10043_ _key10044_)
                    (letrec ((_put-plist!10046_
                              (lambda (_ht10052_ _key10053_ _plist10054_)
                                (let ((_$e10056_
                                       (let ()
                                         (declare (not safe))
                                         (assgetq _key10053_ _plist10054_))))
                                  (if _$e10056_
                                      ((lambda (_lst10059_)
                                         (let ((__tmp10079
                                                (lambda (_id10061_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-set!
                                                     _ht10052_
                                                     _id10061_
                                                     '#t)))))
                                           (declare (not safe))
                                           (for-each __tmp10079 _lst10059_)))
                                       _$e10056_)
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-plist!10046_
                         _ht10043_
                         _key10044_
                         _rtd-plist9964_))
                      (if _rtd-mixin9962_
                          (let ((__tmp10080
                                 (lambda (_klass10048_)
                                   (if (let ()
                                         (declare (not safe))
                                         (type-descriptor-mixin _klass10048_))
                                       (let ((_plist10050_
                                              (let ()
                                                (declare (not safe))
                                                (type-descriptor-plist
                                                 _klass10048_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (assgetq 'transparent:
                                                        _plist10050_))
                                             (let ()
                                               (declare (not safe))
                                               (_put-plist!10046_
                                                _ht10043_
                                                'slots:
                                                _plist10050_))
                                             (let ()
                                               (declare (not safe))
                                               (_put-plist!10046_
                                                _ht10043_
                                                _key10044_
                                                _plist10050_))))
                                       '#!void))))
                            (declare (not safe))
                            (for-each __tmp10080 _rtd-mixin9962_))
                          '#!void)))))
          (let* ((_transparent?9971_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _rtd-plist9964_)))
                 (_field-names9976_
                  (let ((_$e9973_
                         (let ()
                           (declare (not safe))
                           (assq 'fields: _rtd-plist9964_))))
                    (if _$e9973_
                        (let () (declare (not safe)) (cdr _$e9973_))
                        '())))
                 (_field-names9983_
                  (let ((_$e9978_
                         (let ()
                           (declare (not safe))
                           (assq 'slots: _rtd-plist9964_))))
                    (if _$e9978_
                        ((lambda (_slots9981_)
                           (append _field-names9976_
                                   (let ()
                                     (declare (not safe))
                                     (cdr _slots9981_))))
                         _$e9978_)
                        _field-names9976_)))
                 (_g10081_
                  (if (fx= _rtd-fields9963_ (length _field-names9983_))
                      '#!void
                      (error '"Bad field descriptor; length mismatch"
                             _type-id9959_
                             _rtd-fields9963_
                             _field-names9983_)))
                 (_canonical-fields9986_
                  (if _type-super9961_
                      (let ((__tmp10082
                             (let ()
                               (declare (not safe))
                               (type-descriptor-fields _type-super9961_))))
                        (declare (not safe))
                        (list-tail _field-names9983_ __tmp10082))
                      _field-names9983_))
                 (_printable9990_
                  (if _transparent?9971_
                      '#f
                      (let ((_ht9988_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!9969_ _ht9988_ 'print:))
                        _ht9988_)))
                 (_equality9994_
                  (if _transparent?9971_
                      '#f
                      (let ((_ht9992_
                             (let ()
                               (declare (not safe))
                               (make-table 'test: eq?))))
                        (let ()
                          (declare (not safe))
                          (_put-props!9969_ _ht9992_ 'equal:))
                        _ht9992_)))
                 (_field-info10035_
                  (let _recur9996_ ((_rest9998_ _canonical-fields9986_))
                    (let* ((_rest999910007_ _rest9998_)
                           (_else1000110015_ (lambda () '()))
                           (_K1000310023_
                            (lambda (_rest10018_ _id10019_)
                              (let* ((_flags10021_
                                      (if _transparent?9971_
                                          '0
                                          (let ((__tmp10084
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _printable9990_
                                                        _id10019_
                                                        '#f))
                                                     '0
                                                     '1))
                                                (__tmp10083
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (table-ref
                                                        _equality9994_
                                                        _id10019_
                                                        '#f))
                                                     '0
                                                     '4)))
                                            (declare (not safe))
                                            (##fxior __tmp10084 __tmp10083))))
                                     (__tmp10085
                                      (let ((__tmp10086
                                             (let ((__tmp10087
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur9996_
                                                       _rest10018_))))
                                               (declare (not safe))
                                               (cons '#f __tmp10087))))
                                        (declare (not safe))
                                        (cons _flags10021_ __tmp10086))))
                                (declare (not safe))
                                (cons _id10019_ __tmp10085)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest999910007_))
                          (let ((_hd1000410026_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest999910007_)))
                                (_tl1000510028_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest999910007_))))
                            (let* ((_id10031_ _hd1000410026_)
                                   (_rest10033_ _tl1000510028_))
                              (declare (not safe))
                              (_K1000310023_ _rest10033_ _id10031_)))
                          (let () (declare (not safe)) (_else1000110015_))))))
                 (_opaque?10040_
                  (if (or _transparent?9971_
                          (let ()
                            (declare (not safe))
                            (assq 'equal: _rtd-plist9964_)))
                      (if _type-super9961_
                          (let ((__tmp10088
                                 (let ((__tmp10089
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super9961_))))
                                   (declare (not safe))
                                   (##fxand __tmp10089 '1))))
                            (declare (not safe))
                            (##fx= __tmp10088 '1))
                          '#f)
                      '#t)))
            (let ((__tmp10091 (+ '24 (if _opaque?10040_ '1 '0)))
                  (__tmp10090
                   (let ()
                     (declare (not safe))
                     (list->vector _field-info10035_))))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id9959_
               _type-name9960_
               __tmp10091
               _type-super9961_
               __tmp10090
               _rtd-mixin9962_
               _rtd-fields9963_
               _rtd-plist9964_
               _rtd-ctor9965_
               _rtd-slots9966_
               _rtd-methods9967_))))))
    (define make-struct-type-descriptor
      (lambda (_id9952_
               _name9953_
               _super9954_
               _fields9955_
               _plist9956_
               _ctor9957_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id9952_
           _name9953_
           _super9954_
           '#f
           _fields9955_
           _plist9956_
           _ctor9957_
           '#f
           '#f))))
    (define make-class-type-descriptor
      (lambda (_id9943_
               _name9944_
               _super9945_
               _mixin9946_
               _fields9947_
               _plist9948_
               _ctor9949_
               _slots9950_)
        (let ()
          (declare (not safe))
          (make-type-descriptor
           _id9943_
           _name9944_
           _super9945_
           _mixin9946_
           _fields9947_
           _plist9948_
           _ctor9949_
           _slots9950_
           '#f))))
    (define type-descriptor-mixin
      (lambda (_klass9941_)
        (let () (declare (not safe)) (##vector-ref _klass9941_ '6))))
    (define type-descriptor-fields
      (lambda (_klass9939_)
        (let () (declare (not safe)) (##vector-ref _klass9939_ '7))))
    (define type-descriptor-plist
      (lambda (_klass9937_)
        (let () (declare (not safe)) (##vector-ref _klass9937_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass9935_)
        (let () (declare (not safe)) (##vector-ref _klass9935_ '9))))
    (define type-descriptor-slots
      (lambda (_klass9933_)
        (let () (declare (not safe)) (##vector-ref _klass9933_ '10))))
    (define type-descriptor-methods
      (lambda (_klass9931_)
        (let () (declare (not safe)) (##vector-ref _klass9931_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass9928_ _ht9929_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass9928_ '11 _ht9929_))))
    (define type-descriptor-sealed?
      (lambda (_klass9926_)
        (let ((__tmp10092
               (let () (declare (not safe)) (##type-flags _klass9926_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp10092))))
    (define type-descriptor-seal!
      (lambda (_klass9924_)
        (let ((__tmp10093
               (let ((__tmp10095
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp10094
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass9924_))))
                 (declare (not safe))
                 (##fxior __tmp10095 __tmp10094))))
          (declare (not safe))
          (##vector-set! _klass9924_ '3 __tmp10093))))
    (define make-struct-type__%
      (lambda (_id9873_
               _super9874_
               _fields9875_
               _name9876_
               _plist9877_
               _ctor9878_
               _field-names9879_)
        (if (and _super9874_
                 (let ((__tmp10096
                        (let ()
                          (declare (not safe))
                          (struct-type? _super9874_))))
                   (declare (not safe))
                   (not __tmp10096)))
            (error '"Illegal super type; not a struct-type" _super9874_)
            '#!void)
        (if (and _super9874_
                 (let ((__tmp10097
                        (let ()
                          (declare (not safe))
                          (type-descriptor-plist _super9874_))))
                   (declare (not safe))
                   (assgetq 'final: __tmp10097)))
            (error '"Cannot extend final struct" _super9874_)
            '#!void)
        (let* ((_super-fields9881_
                (if _super9874_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-fields _super9874_))
                    '0))
               (_std-fields9883_ (fx+ _fields9875_ _super-fields9881_))
               (_std-field-names9893_
                (let* ((_super-fields9885_
                        (if _super9874_
                            (let ((__tmp10098
                                   (let ()
                                     (declare (not safe))
                                     (type-descriptor-plist _super9874_))))
                              (declare (not safe))
                              (assgetq 'fields: __tmp10098))
                            '()))
                       (_field-names9890_
                        (let ((_$e9887_ _field-names9879_))
                          (if _$e9887_
                              _$e9887_
                              (let ()
                                (declare (not safe))
                                (make-list _fields9875_ ':))))))
                  (append _super-fields9885_ _field-names9890_)))
               (_g10100_
                (if (let ((__tmp10099 (length _std-field-names9893_)))
                      (declare (not safe))
                      (##fx= _std-fields9883_ __tmp10099))
                    '#!void
                    (error '"Bad field specification; length mismatch"
                           _id9873_
                           _std-fields9883_
                           _std-field-names9893_)))
               (_std-plist9896_
                (let ((__tmp10101
                       (let ()
                         (declare (not safe))
                         (cons 'fields: _std-field-names9893_))))
                  (declare (not safe))
                  (cons __tmp10101 _plist9877_)))
               (_ctor9901_
                (let ((_$e9898_ _ctor9878_))
                  (if _$e9898_
                      _$e9898_
                      (if _super9874_
                          (let ()
                            (declare (not safe))
                            (type-descriptor-ctor _super9874_))
                          '#f)))))
          (let ()
            (declare (not safe))
            (make-struct-type-descriptor
             _id9873_
             _name9876_
             _super9874_
             _std-fields9883_
             _std-plist9896_
             _ctor9901_)))))
    (define make-struct-type__0
      (lambda (_id9907_
               _super9908_
               _fields9909_
               _name9910_
               _plist9911_
               _ctor9912_)
        (let ((_field-names9914_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id9907_
           _super9908_
           _fields9909_
           _name9910_
           _plist9911_
           _ctor9912_
           _field-names9914_))))
    (define make-struct-type
      (lambda _g10103_
        (let ((_g10102_ (let () (declare (not safe)) (##length _g10103_))))
          (cond ((let () (declare (not safe)) (##fx= _g10102_ 6))
                 (apply (lambda (_id9907_
                                 _super9908_
                                 _fields9909_
                                 _name9910_
                                 _plist9911_
                                 _ctor9912_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id9907_
                             _super9908_
                             _fields9909_
                             _name9910_
                             _plist9911_
                             _ctor9912_)))
                        _g10103_))
                ((let () (declare (not safe)) (##fx= _g10102_ 7))
                 (apply (lambda (_id9916_
                                 _super9917_
                                 _fields9918_
                                 _name9919_
                                 _plist9920_
                                 _ctor9921_
                                 _field-names9922_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id9916_
                             _super9917_
                             _fields9918_
                             _name9919_
                             _plist9920_
                             _ctor9921_
                             _field-names9922_)))
                        _g10103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g10103_))))))
    (define make-struct-predicate
      (lambda (_klass9864_)
        (let ((_tid9866_
               (let () (declare (not safe)) (##type-id _klass9864_))))
          (if (let ((__tmp10104
                     (let ()
                       (declare (not safe))
                       (type-descriptor-plist _klass9864_))))
                (declare (not safe))
                (assgetq 'final: __tmp10104))
              (lambda (_obj9868_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj9868_ _tid9866_)))
              (lambda (_obj9870_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj9870_ _tid9866_)))))))
    (define make-struct-field-accessor
      (lambda (_klass9857_ _field9858_)
        (let ((_off9860_
               (let ((__tmp10105
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass9857_ _field9858_))))
                 (declare (not safe))
                 (##fx+ __tmp10105 '1))))
          (lambda (_obj9862_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj9862_ _off9860_ _klass9857_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass9849_ _field9850_)
        (let ((_off9852_
               (let ((__tmp10106
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass9849_ _field9850_))))
                 (declare (not safe))
                 (##fx+ __tmp10106 '1))))
          (lambda (_obj9854_ _val9855_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj9854_
               _val9855_
               _off9852_
               _klass9849_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass9842_ _field9843_)
        (let ((_off9845_
               (let ((__tmp10107
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass9842_ _field9843_))))
                 (declare (not safe))
                 (##fx+ __tmp10107 '1))))
          (lambda (_obj9847_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj9847_
               _off9845_
               _klass9842_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass9834_ _field9835_)
        (let ((_off9837_
               (let ((__tmp10108
                      (let ()
                        (declare (not safe))
                        (struct-field-offset _klass9834_ _field9835_))))
                 (declare (not safe))
                 (##fx+ __tmp10108 '1))))
          (lambda (_obj9839_ _val9840_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9839_
               _val9840_
               _off9837_
               _klass9834_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass9828_ _field9829_)
        (let ((__tmp10109
               (let ((_$e9831_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass9828_))))
                 (if _$e9831_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-fields _$e9831_))
                     '0))))
          (declare (not safe))
          (##fx+ _field9829_ __tmp10109))))
    (define struct-field-ref
      (lambda (_klass9824_ _obj9825_ _off9826_)
        (let ((__tmp10110 (let () (declare (not safe)) (##fx+ _off9826_ '1))))
          (declare (not safe))
          (##structure-ref _obj9825_ __tmp10110 _klass9824_ '#f))))
    (define struct-field-set!
      (lambda (_klass9819_ _obj9820_ _off9821_ _val9822_)
        (let ((__tmp10111 (let () (declare (not safe)) (##fx+ _off9821_ '1))))
          (declare (not safe))
          (##structure-set! _obj9820_ _val9822_ __tmp10111 _klass9819_ '#f))))
    (define struct-subtype?
      (lambda (_klass9810_ _xklass9811_)
        (let ((_klass-t9813_
               (let () (declare (not safe)) (##type-id _klass9810_))))
          (let _lp9815_ ((_next9817_ _xklass9811_))
            (if (let () (declare (not safe)) (not _next9817_))
                '#f
                (if (let ((__tmp10113
                           (let ()
                             (declare (not safe))
                             (##type-id _next9817_))))
                      (declare (not safe))
                      (eq? _klass-t9813_ __tmp10113))
                    '#t
                    (let ((__tmp10112
                           (let ()
                             (declare (not safe))
                             (##type-super _next9817_))))
                      (declare (not safe))
                      (_lp9815_ __tmp10112))))))))
    (define make-class-type
      (lambda (_id9517_
               _super9518_
               _slots9519_
               _name9520_
               _plist9521_
               _ctor9522_)
        (letrec ((_class-slots9524_
                  (lambda (_klass9808_)
                    (let ((__tmp10114
                           (let ()
                             (declare (not safe))
                             (type-descriptor-plist _klass9808_))))
                      (declare (not safe))
                      (assgetq 'slots: __tmp10114))))
                 (_make-slots9525_
                  (lambda (_off9759_)
                    (let ((_slot-table9761_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let _lp9763_ ((_rest9765_ _super9518_)
                                     (_off9766_ _off9759_)
                                     (_slot-list9767_ '()))
                        (let* ((_rest97689776_ _rest9765_)
                               (_else97709787_
                                (lambda ()
                                  (let ((__tmp10115
                                         (lambda (_off9784_ _slot-list9785_)
                                           (values _off9784_
                                                   _slot-table9761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (reverse _slot-list9785_))))))
                                    (declare (not safe))
                                    (_merge-slots9526_
                                     _slot-table9761_
                                     _slots9519_
                                     _off9766_
                                     _slot-list9767_
                                     __tmp10115))))
                               (_K97729796_
                                (lambda (_rest9790_ _hd9791_)
                                  (let ((__tmp10117
                                         (let ()
                                           (declare (not safe))
                                           (_class-slots9524_ _hd9791_)))
                                        (__tmp10116
                                         (lambda (_off9793_ _slot-list9794_)
                                           (let ()
                                             (declare (not safe))
                                             (_lp9763_
                                              _rest9790_
                                              _off9793_
                                              _slot-list9794_)))))
                                    (declare (not safe))
                                    (_merge-slots9526_
                                     _slot-table9761_
                                     __tmp10117
                                     _off9766_
                                     _slot-list9767_
                                     __tmp10116)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest97689776_))
                              (let ((_hd97739799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest97689776_)))
                                    (_tl97749801_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest97689776_))))
                                (let* ((_hd9804_ _hd97739799_)
                                       (_rest9806_ _tl97749801_))
                                  (declare (not safe))
                                  (_K97729796_ _rest9806_ _hd9804_)))
                              (let ()
                                (declare (not safe))
                                (_else97709787_))))))))
                 (_merge-slots9526_
                  (lambda (_ht9714_ _lst9715_ _off9716_ _r9717_ _K9718_)
                    (let _lp9720_ ((_rest9722_ _lst9715_)
                                   (_off9723_ _off9716_)
                                   (_r9724_ _r9717_))
                      (let* ((_rest97259733_ _rest9722_)
                             (_else97279741_
                              (lambda () (_K9718_ _off9723_ _r9724_)))
                             (_K97299747_
                              (lambda (_rest9744_ _slot9745_)
                                (if (let ()
                                      (declare (not safe))
                                      (table-ref _ht9714_ _slot9745_ '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_lp9720_ _rest9744_ _off9723_ _r9724_))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (table-set!
                                         _ht9714_
                                         _slot9745_
                                         _off9723_))
                                      (let ((__tmp10118
                                             (let ()
                                               (declare (not safe))
                                               (symbol->keyword _slot9745_))))
                                        (declare (not safe))
                                        (table-set!
                                         _ht9714_
                                         __tmp10118
                                         _off9723_))
                                      (let ((__tmp10120
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _off9723_ '1)))
                                            (__tmp10119
                                             (let ()
                                               (declare (not safe))
                                               (cons _slot9745_ _r9724_))))
                                        (declare (not safe))
                                        (_lp9720_
                                         _rest9744_
                                         __tmp10120
                                         __tmp10119)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest97259733_))
                            (let ((_hd97309750_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest97259733_)))
                                  (_tl97319752_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest97259733_))))
                              (let* ((_slot9755_ _hd97309750_)
                                     (_rest9757_ _tl97319752_))
                                (declare (not safe))
                                (_K97299747_ _rest9757_ _slot9755_)))
                            (let () (declare (not safe)) (_else97279741_)))))))
                 (_find-super-ctor9527_
                  (lambda (_super9666_)
                    (let _lp9668_ ((_rest9670_ _super9666_) (_ctor9671_ '#f))
                      (let* ((_rest96729680_ _rest9670_)
                             (_else96749688_ (lambda () _ctor9671_))
                             (_K96769702_
                              (lambda (_rest9691_ _hd9692_)
                                (let ((_$e9694_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-ctor _hd9692_))))
                                  (if _$e9694_
                                      ((lambda (_xctor9697_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (not _ctor9671_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (eq? _ctor9671_
                                                        _xctor9697_)))
                                             (let ()
                                               (declare (not safe))
                                               (_lp9668_
                                                _rest9691_
                                                _xctor9697_))
                                             (error '"Conflicting implicit constructors"
                                                    _ctor9671_
                                                    _xctor9697_)))
                                       _$e9694_)
                                      (let ()
                                        (declare (not safe))
                                        (_lp9668_ _rest9691_ _ctor9671_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest96729680_))
                            (let ((_hd96779705_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest96729680_)))
                                  (_tl96789707_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest96729680_))))
                              (let* ((_hd9710_ _hd96779705_)
                                     (_rest9712_ _tl96789707_))
                                (declare (not safe))
                                (_K96769702_ _rest9712_ _hd9710_)))
                            (let () (declare (not safe)) (_else96749688_)))))))
                 (_find-super-struct9528_
                  (lambda (_super9613_)
                    (letrec ((_base-struct9615_
                              (lambda (_super-struct9655_ _klass9656_)
                                (if _super-struct9655_
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-subtype?
                                           _super-struct9655_
                                           _klass9656_))
                                        (let _lp9658_ ((_klass9660_
                                                        _klass9656_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _klass9660_))
                                              _klass9660_
                                              (let ((__tmp10121
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _klass9660_))))
                                                (declare (not safe))
                                                (_lp9658_ __tmp10121))))
                                        (if (let ()
                                              (declare (not safe))
                                              (struct-subtype?
                                               _klass9656_
                                               _super-struct9655_))
                                            _super-struct9655_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass9656_
                                                   _super-struct9655_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (struct-type? _klass9656_))
                                        _klass9656_
                                        (if (let ()
                                              (declare (not safe))
                                              (class-type? _klass9656_))
                                            (let _lp9662_ ((_next9664_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##type-super
                                                               _klass9656_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (not _next9664_))
                                                  '#f
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (struct-type?
                                                         _next9664_))
                                                      _next9664_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (class-type?
                                                             _next9664_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lp9662_
                                                             _next9664_))
                                                          '#f))))
                                            '#f))))))
                      (let _lp9617_ ((_rest9619_ _super9613_)
                                     (_super-struct9620_ '#f))
                        (let* ((_rest96219629_ _rest9619_)
                               (_else96239637_ (lambda () _super-struct9620_))
                               (_K96259643_
                                (lambda (_rest9640_ _hd9641_)
                                  (let ((__tmp10122
                                         (let ()
                                           (declare (not safe))
                                           (_base-struct9615_
                                            _super-struct9620_
                                            _hd9641_))))
                                    (declare (not safe))
                                    (_lp9617_ _rest9640_ __tmp10122)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest96219629_))
                              (let ((_hd96269646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest96219629_)))
                                    (_tl96279648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest96219629_))))
                                (let* ((_hd9651_ _hd96269646_)
                                       (_rest9653_ _tl96279648_))
                                  (declare (not safe))
                                  (_K96259643_ _rest9653_ _hd9651_)))
                              (let ()
                                (declare (not safe))
                                (_else96239637_))))))))
                 (_expand-struct-mixin9529_
                  (lambda (_super9568_)
                    (let _lp9570_ ((_rest9572_ _super9568_) (_mixin9573_ '()))
                      (let* ((_rest95749582_ _rest9572_)
                             (_else95769590_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (reverse _mixin9573_))))
                             (_K95789601_
                              (lambda (_rest9593_ _hd9594_)
                                (if (let ()
                                      (declare (not safe))
                                      (struct-type? _hd9594_))
                                    (let _lp29596_ ((_next9598_ _hd9594_)
                                                    (_mixin9599_ _mixin9573_))
                                      (if (let ()
                                            (declare (not safe))
                                            (not _next9598_))
                                          (let ()
                                            (declare (not safe))
                                            (_lp9570_ _rest9593_ _mixin9599_))
                                          (if (let ()
                                                (declare (not safe))
                                                (struct-type? _next9598_))
                                              (let ((__tmp10125
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-super
                                                        _next9598_)))
                                                    (__tmp10124
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _next9598_
                                                             _mixin9599_))))
                                                (declare (not safe))
                                                (_lp29596_
                                                 __tmp10125
                                                 __tmp10124))
                                              (let ()
                                                (declare (not safe))
                                                (_lp9570_
                                                 _rest9593_
                                                 _mixin9599_)))))
                                    (let ((__tmp10123
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd9594_ _mixin9573_))))
                                      (declare (not safe))
                                      (_lp9570_ _rest9593_ __tmp10123))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest95749582_))
                            (let ((_hd95799604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest95749582_)))
                                  (_tl95809606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest95749582_))))
                              (let* ((_hd9609_ _hd95799604_)
                                     (_rest9611_ _tl95809606_))
                                (declare (not safe))
                                (_K95789601_ _rest9611_ _hd9609_)))
                            (let ()
                              (declare (not safe))
                              (_else95769590_))))))))
          (let ((_$e9533_
                 (let ((__tmp10126
                        (lambda (_klass9531_)
                          (let ((__tmp10127
                                 (let ()
                                   (declare (not safe))
                                   (type-descriptor? _klass9531_))))
                            (declare (not safe))
                            (not __tmp10127)))))
                   (declare (not safe))
                   (find __tmp10126 _super9518_))))
            (if _$e9533_
                ((lambda (_klass9536_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass9536_))
                 _$e9533_)
                (let ((_$e9540_
                       (let ((__tmp10128
                              (lambda (_klass9538_)
                                (let ((__tmp10129
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-plist _klass9538_))))
                                  (declare (not safe))
                                  (assgetq 'final: __tmp10129)))))
                         (declare (not safe))
                         (find __tmp10128 _super9518_))))
                  (if _$e9540_
                      ((lambda (_klass9543_)
                         (error '"Cannot extend final class" _klass9543_))
                       _$e9540_)
                      '#!void))))
          (let* ((_std-super9545_
                  (let ()
                    (declare (not safe))
                    (_find-super-struct9528_ _super9518_)))
                 (_mixin9547_
                  (if _std-super9545_
                      (let ()
                        (declare (not safe))
                        (_expand-struct-mixin9529_ _super9518_))
                      _super9518_)))
            (let ((_g10130_
                   (let ((__tmp10132
                          (if _std-super9545_
                              (let ()
                                (declare (not safe))
                                (type-descriptor-fields _std-super9545_))
                              '0)))
                     (declare (not safe))
                     (_make-slots9525_ __tmp10132))))
              (begin
                (let ((_g10131_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g10130_)
                             (##vector-length _g10130_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g10131_ 3)))
                      (error "Context expects 3 values" _g10131_)))
                (let ((_std-fields9550_
                       (let () (declare (not safe)) (##vector-ref _g10130_ 0)))
                      (_std-slots9551_
                       (let () (declare (not safe)) (##vector-ref _g10130_ 1)))
                      (_std-slot-list9552_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g10130_ 2))))
                  (let* ((_std-mixin9554_
                          (let ()
                            (declare (not safe))
                            (class-linearize-mixins _mixin9547_)))
                         (_std-plist9558_
                          (if _std-super9545_
                              (let* ((_fields9556_
                                      (let ((__tmp10133
                                             (let ()
                                               (declare (not safe))
                                               (type-descriptor-plist
                                                _std-super9545_))))
                                        (declare (not safe))
                                        (assgetq 'fields: __tmp10133)))
                                     (__tmp10134
                                      (let ()
                                        (declare (not safe))
                                        (cons 'fields: _fields9556_))))
                                (declare (not safe))
                                (cons __tmp10134 _plist9521_))
                              _plist9521_))
                         (_std-plist9560_
                          (let ((__tmp10135
                                 (let ()
                                   (declare (not safe))
                                   (cons 'slots: _std-slot-list9552_))))
                            (declare (not safe))
                            (cons __tmp10135 _std-plist9558_)))
                         (_std-ctor9565_
                          (let ((_$e9562_ _ctor9522_))
                            (if _$e9562_
                                _$e9562_
                                (let ()
                                  (declare (not safe))
                                  (_find-super-ctor9527_ _super9518_))))))
                    (let ()
                      (declare (not safe))
                      (make-class-type-descriptor
                       _id9517_
                       _name9520_
                       _std-super9545_
                       _std-mixin9554_
                       _std-fields9550_
                       _std-plist9560_
                       _std-ctor9565_
                       _std-slots9551_))))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst9468_)
        (letrec ((_class->list9470_
                  (lambda (_klass9512_)
                    (let ((__tmp10136
                           (let ((_$e9514_
                                  (let ()
                                    (declare (not safe))
                                    (type-descriptor-mixin _klass9512_))))
                             (if _$e9514_ _$e9514_ '()))))
                      (declare (not safe))
                      (cons _klass9512_ __tmp10136)))))
          (let* ((_klass-lst94719481_ _klass-lst9468_)
                 (_else94749489_
                  (lambda ()
                    (let ((__tmp10137
                           (let ()
                             (declare (not safe))
                             (map _class->list9470_ _klass-lst9468_))))
                      (declare (not safe))
                      (__linearize-mixins __tmp10137)))))
            (let ((_K94799509_ (lambda () '()))
                  (_K94769495_
                   (lambda (_klass9493_)
                     (let ()
                       (declare (not safe))
                       (_class->list9470_ _klass9493_)))))
              (let ((_try-match94739505_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _klass-lst94719481_))
                           (let ((_tl94789500_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _klass-lst94719481_)))
                                 (_hd94779498_
                                  (let ()
                                    (declare (not safe))
                                    (##car _klass-lst94719481_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl94789500_))
                                 (let ((_klass9503_ _hd94779498_))
                                   (declare (not safe))
                                   (_class->list9470_ _klass9503_))
                                 (let ()
                                   (declare (not safe))
                                   (_else94749489_))))
                           (let () (declare (not safe)) (_else94749489_))))))
                (if (let () (declare (not safe)) (##null? _klass-lst94719481_))
                    (let () (declare (not safe)) (_K94799509_))
                    (let () (declare (not safe)) (_try-match94739505_)))))))))
    (define __linearize-mixins
      (lambda (_lst9309_)
        (letrec ((_K9311_ (lambda (_rest9432_ _r9433_)
                            (let* ((_rest94349442_ _rest9432_)
                                   (_else94369450_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (reverse _r9433_))))
                                   (_K94389456_
                                    (lambda (_rest9453_ _hd9454_)
                                      (let ()
                                        (declare (not safe))
                                        (_linearize19312_
                                         _hd9454_
                                         _rest9453_
                                         _r9433_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest94349442_))
                                  (let ((_hd94399459_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest94349442_)))
                                        (_tl94409461_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest94349442_))))
                                    (let* ((_hd9464_ _hd94399459_)
                                           (_rest9466_ _tl94409461_))
                                      (declare (not safe))
                                      (_K94389456_ _rest9466_ _hd9464_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else94369450_))))))
                 (_linearize19312_
                  (lambda (_hd9395_ _rest9396_ _r9397_)
                    (let* ((_hd93989406_ _hd9395_)
                           (_else94009414_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (_K9311_ _rest9396_ _r9397_))))
                           (_K94029420_
                            (lambda (_hd-rest9417_ _hd-first9418_)
                              (if (let ()
                                    (declare (not safe))
                                    (_findq9315_ _hd-first9418_ _rest9396_))
                                  (let ((__tmp10140 (list _hd9395_)))
                                    (declare (not safe))
                                    (_linearize29313_
                                     _rest9396_
                                     __tmp10140
                                     _r9397_))
                                  (let ((__tmp10139
                                         (let ()
                                           (declare (not safe))
                                           (cons _hd-rest9417_ _rest9396_)))
                                        (__tmp10138
                                         (let ()
                                           (declare (not safe))
                                           (_putq9314_
                                            _hd-first9418_
                                            _r9397_))))
                                    (declare (not safe))
                                    (_K9311_ __tmp10139 __tmp10138))))))
                      (if (let () (declare (not safe)) (##pair? _hd93989406_))
                          (let ((_hd94039423_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd93989406_)))
                                (_tl94049425_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd93989406_))))
                            (let* ((_hd-first9428_ _hd94039423_)
                                   (_hd-rest9430_ _tl94049425_))
                              (declare (not safe))
                              (_K94029420_ _hd-rest9430_ _hd-first9428_)))
                          (let () (declare (not safe)) (_else94009414_))))))
                 (_linearize29313_
                  (lambda (_rest9325_ _pre9326_ _r9327_)
                    (let _lp9329_ ((_rest9331_ _rest9325_)
                                   (_pre9332_ _pre9326_))
                      (let* ((_rest93339340_ _rest9331_)
                             (_E93359344_
                              (lambda ()
                                (error '"No clause matching" _rest93339340_)))
                             (_K93369383_
                              (lambda (_rest9347_ _hd9348_)
                                (let* ((_hd93499357_ _hd9348_)
                                       (_else93519365_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_lp9329_ _rest9347_ _pre9332_))))
                                       (_K93539371_
                                        (lambda (_hd-rest9368_ _hd-first9369_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_findq9315_
                                                 _hd-first9369_
                                                 _rest9347_))
                                              (let ((__tmp10144
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd9348_
                                                             _pre9332_))))
                                                (declare (not safe))
                                                (_lp9329_
                                                 _rest9347_
                                                 __tmp10144))
                                              (let ((__tmp10142
                                                     (let ((__tmp10143
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd-rest9368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest9347_))))
               (declare (not safe))
               (foldl1 cons __tmp10143 _pre9332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp10141
                                                     (let ()
                                                       (declare (not safe))
                                                       (_putq9314_
                                                        _hd-first9369_
                                                        _r9327_))))
                                                (declare (not safe))
                                                (_K9311_ __tmp10142
                                                         __tmp10141))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd93499357_))
                                      (let ((_hd93549374_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd93499357_)))
                                            (_tl93559376_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd93499357_))))
                                        (let* ((_hd-first9379_ _hd93549374_)
                                               (_hd-rest9381_ _tl93559376_))
                                          (declare (not safe))
                                          (_K93539371_
                                           _hd-rest9381_
                                           _hd-first9379_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else93519365_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest93339340_))
                            (let ((_hd93379386_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest93339340_)))
                                  (_tl93389388_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest93339340_))))
                              (let* ((_hd9391_ _hd93379386_)
                                     (_rest9393_ _tl93389388_))
                                (declare (not safe))
                                (_K93369383_ _rest9393_ _hd9391_)))
                            (let () (declare (not safe)) (_E93359344_)))))))
                 (_putq9314_
                  (lambda (_hd9322_ _lst9323_)
                    (if (let () (declare (not safe)) (memq _hd9322_ _lst9323_))
                        _lst9323_
                        (let ()
                          (declare (not safe))
                          (cons _hd9322_ _lst9323_)))))
                 (_findq9315_
                  (lambda (_hd9317_ _rest9318_)
                    (let ((__tmp10145
                           (lambda (_lst9320_)
                             (let ()
                               (declare (not safe))
                               (memq _hd9317_ _lst9320_)))))
                      (declare (not safe))
                      (find __tmp10145 _rest9318_)))))
          (let () (declare (not safe)) (_K9311_ _lst9309_ '())))))
    (define make-class-predicate
      (lambda (_klass9303_)
        (if (let ((__tmp10147
                   (let ()
                     (declare (not safe))
                     (type-descriptor-plist _klass9303_))))
              (declare (not safe))
              (assgetq 'final: __tmp10147))
            (lambda (_obj9305_)
              (let ((__tmp10146
                     (let () (declare (not safe)) (##type-id _klass9303_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj9305_ __tmp10146)))
            (lambda (_obj9307_)
              (let ()
                (declare (not safe))
                (class-instance? _klass9303_ _obj9307_))))))
    (define make-class-slot-accessor
      (lambda (_klass9298_ _slot9299_)
        (lambda (_obj9301_)
          (let () (declare (not safe)) (slot-ref _obj9301_ _slot9299_)))))
    (define make-class-slot-mutator
      (lambda (_klass9292_ _slot9293_)
        (lambda (_obj9295_ _val9296_)
          (let ()
            (declare (not safe))
            (slot-set! _obj9295_ _slot9293_ _val9296_)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass9287_ _slot9288_)
        (lambda (_obj9290_)
          (let ()
            (declare (not safe))
            (unchecked-slot-ref _obj9290_ _slot9288_)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass9281_ _slot9282_)
        (lambda (_obj9284_ _val9285_)
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _obj9284_ _slot9282_ _val9285_)))))
    (define class-slot-offset
      (lambda (_klass9273_ _slot9274_)
        (let ((_$e9276_
               (let ()
                 (declare (not safe))
                 (type-descriptor-slots _klass9273_))))
          (if _$e9276_
              ((lambda (_slots9279_)
                 (let ()
                   (declare (not safe))
                   (table-ref _slots9279_ _slot9274_ '#f)))
               _$e9276_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass9267_ _obj9268_ _slot9269_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9267_ _obj9268_))
            (let* ((_off9271_
                    (let ((__tmp10148
                           (let ()
                             (declare (not safe))
                             (object-type _obj9268_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10148 _slot9269_)))
                   (__tmp10149
                    (let () (declare (not safe)) (##fx+ _off9271_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj9268_ __tmp10149 _klass9267_ '#f))
            (error '"not an instance" _klass9267_ _obj9268_))))
    (define class-slot-set!
      (lambda (_klass9260_ _obj9261_ _slot9262_ _val9263_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass9260_ _obj9261_))
            (let* ((_off9265_
                    (let ((__tmp10150
                           (let ()
                             (declare (not safe))
                             (object-type _obj9261_))))
                      (declare (not safe))
                      (class-slot-offset __tmp10150 _slot9262_)))
                   (__tmp10151
                    (let () (declare (not safe)) (##fx+ _off9265_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj9261_
               _val9263_
               __tmp10151
               _klass9260_
               '#f))
            (error '"not an instance" _klass9260_ _obj9261_))))
    (define class-subtype?
      (lambda (_klass9245_ _xklass9246_)
        (let* ((_klass-t9248_
                (let () (declare (not safe)) (##type-id _klass9245_)))
               (_$e9250_
                (let ((__tmp10152
                       (let () (declare (not safe)) (##type-id _xklass9246_))))
                  (declare (not safe))
                  (eq? _klass-t9248_ __tmp10152))))
          (if _$e9250_
              _$e9250_
              (let ((_$e9253_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _xklass9246_))))
                (if _$e9253_
                    ((lambda (_mixin9256_)
                       (if (let ((__tmp10153
                                  (lambda (_xklass9258_)
                                    (let ((__tmp10154
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _xklass9258_))))
                                      (declare (not safe))
                                      (eq? _klass-t9248_ __tmp10154)))))
                             (declare (not safe))
                             (find __tmp10153 _mixin9256_))
                           '#t
                           '#f))
                     _$e9253_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass9242_ _obj9243_)
        (let ((__tmp10155
               (let () (declare (not safe)) (##type-id _klass9242_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj9243_ __tmp10155))))
    (define struct-instance?
      (lambda (_klass9239_ _obj9240_)
        (let ((__tmp10156
               (let () (declare (not safe)) (##type-id _klass9239_))))
          (declare (not safe))
          (##structure-instance-of? _obj9240_ __tmp10156))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass9223_ _obj9224_)
        (if (let () (declare (not safe)) (object? _obj9224_))
            (let ((_klass-id9226_
                   (let () (declare (not safe)) (##type-id _klass9223_)))
                  (_type9227_
                   (let () (declare (not safe)) (object-type _obj9224_))))
              (if (let () (declare (not safe)) (type-descriptor? _type9227_))
                  (let ((_$e9229_
                         (let ((__tmp10157
                                (let ()
                                  (declare (not safe))
                                  (##type-id _type9227_))))
                           (declare (not safe))
                           (eq? __tmp10157 _klass-id9226_))))
                    (if _$e9229_
                        _$e9229_
                        (let ((_$e9232_
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-mixin _type9227_))))
                          (if _$e9232_
                              ((lambda (_mixin9235_)
                                 (let ((__tmp10158
                                        (lambda (_type9237_)
                                          (let ((__tmp10159
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _type9237_))))
                                            (declare (not safe))
                                            (eq? __tmp10159 _klass-id9226_)))))
                                   (declare (not safe))
                                   (ormap1 __tmp10158 _mixin9235_)))
                               _$e9232_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass9218_ _k9219_)
        (let ((_obj9221_
               (let ((__tmp10160
                      (let () (declare (not safe)) (##fx+ _k9219_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp10160 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj9221_ '0 _klass9218_))
          (let ((__tmp10161 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj9221_ __tmp10161))
          _obj9221_)))
    (define make-struct-instance
      (lambda (_klass9208_ . _args9209_)
        (let* ((_fields9211_
                (let ()
                  (declare (not safe))
                  (type-descriptor-fields _klass9208_)))
               (_$e9213_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9208_))))
          (if _$e9213_
              ((lambda (_kons-id9216_)
                 (let ((__tmp10163
                        (let ()
                          (declare (not safe))
                          (make-object _klass9208_ _fields9211_))))
                   (declare (not safe))
                   (__constructor-init!
                    _klass9208_
                    _kons-id9216_
                    __tmp10163
                    _args9209_)))
               _$e9213_)
              (if (let ((__tmp10162 (length _args9209_)))
                    (declare (not safe))
                    (##fx= _fields9211_ __tmp10162))
                  (apply ##structure _klass9208_ _args9209_)
                  (error '"Arguments don't match object size"
                         _klass9208_
                         _fields9211_
                         _args9209_))))))
    (define make-class-instance
      (lambda (_klass9198_ . _args9199_)
        (let* ((_obj9201_
                (let ((__tmp10164
                       (let ()
                         (declare (not safe))
                         (type-descriptor-fields _klass9198_))))
                  (declare (not safe))
                  (make-object _klass9198_ __tmp10164)))
               (_$e9203_
                (let ()
                  (declare (not safe))
                  (type-descriptor-ctor _klass9198_))))
          (if _$e9203_
              ((lambda (_kons-id9206_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass9198_
                    _kons-id9206_
                    _obj9201_
                    _args9199_)))
               _$e9203_)
              (let ()
                (declare (not safe))
                (__class-instance-init! _klass9198_ _obj9201_ _args9199_))))))
    (define struct-instance-init!
      (lambda (_obj9195_ . _args9196_)
        (if (let ((__tmp10166 (length _args9196_))
                  (__tmp10165
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj9195_))))
              (declare (not safe))
              (##fx< __tmp10166 __tmp10165))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj9195_ _args9196_))
            (error '"Too many arguments for struct" _obj9195_ _args9196_))))
    (define __struct-instance-init!
      (lambda (_obj9154_ _args9155_)
        (let _lp9157_ ((_k9159_ '1) (_rest9160_ _args9155_))
          (let* ((_rest91619169_ _rest9160_)
                 (_else91639177_ (lambda () _obj9154_))
                 (_K91659183_
                  (lambda (_rest9180_ _hd9181_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj9154_ _k9159_ _hd9181_))
                    (let ((__tmp10167
                           (let () (declare (not safe)) (##fx+ _k9159_ '1))))
                      (declare (not safe))
                      (_lp9157_ __tmp10167 _rest9180_)))))
            (if (let () (declare (not safe)) (##pair? _rest91619169_))
                (let ((_hd91669186_
                       (let () (declare (not safe)) (##car _rest91619169_)))
                      (_tl91679188_
                       (let () (declare (not safe)) (##cdr _rest91619169_))))
                  (let* ((_hd9191_ _hd91669186_) (_rest9193_ _tl91679188_))
                    (declare (not safe))
                    (_K91659183_ _rest9193_ _hd9191_)))
                (let () (declare (not safe)) (_else91639177_)))))))
    (define class-instance-init!
      (lambda (_obj9151_ . _args9152_)
        (let ((__tmp10168
               (let () (declare (not safe)) (object-type _obj9151_))))
          (declare (not safe))
          (__class-instance-init! __tmp10168 _obj9151_ _args9152_))))
    (define __class-instance-init!
      (lambda (_klass9095_ _obj9096_ _args9097_)
        (let _lp9099_ ((_rest9101_ _args9097_))
          (let* ((_rest91029112_ _rest9101_)
                 (_else91049120_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest9101_))
                        _obj9096_
                        (error '"Unexpected class initializer arguments"
                               _rest9101_))))
                 (_K91069132_
                  (lambda (_rest9123_ _val9124_ _key9125_)
                    (let ((_$e9127_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass9095_ _key9125_))))
                      (if _$e9127_
                          ((lambda (_off9130_)
                             (let ((__tmp10169
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off9130_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj9096_ __tmp10169 _val9124_))
                             (let ()
                               (declare (not safe))
                               (_lp9099_ _rest9123_)))
                           _$e9127_)
                          (error '"No slot for keyword initializer"
                                 _klass9095_
                                 _key9125_))))))
            (if (let () (declare (not safe)) (##pair? _rest91029112_))
                (let ((_hd91079135_
                       (let () (declare (not safe)) (##car _rest91029112_)))
                      (_tl91089137_
                       (let () (declare (not safe)) (##cdr _rest91029112_))))
                  (let ((_key9140_ _hd91079135_))
                    (if (let () (declare (not safe)) (##pair? _tl91089137_))
                        (let ((_hd91099142_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl91089137_)))
                              (_tl91109144_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl91089137_))))
                          (let* ((_val9147_ _hd91099142_)
                                 (_rest9149_ _tl91109144_))
                            (declare (not safe))
                            (_K91069132_ _rest9149_ _val9147_ _key9140_)))
                        (let () (declare (not safe)) (_else91049120_)))))
                (let () (declare (not safe)) (_else91049120_)))))))
    (define constructor-init!
      (lambda (_klass9090_ _kons-id9091_ _obj9092_ . _args9093_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass9090_
           _kons-id9091_
           _obj9092_
           _args9093_))))
    (define __constructor-init!
      (lambda (_klass9080_ _kons-id9081_ _obj9082_ _args9083_)
        (let ((_$e9085_
               (let ()
                 (declare (not safe))
                 (__find-method _klass9080_ _kons-id9081_))))
          (if _$e9085_
              ((lambda (_kons9088_)
                 (apply _kons9088_ _obj9082_ _args9083_)
                 _obj9082_)
               _$e9085_)
              (error '"Missing constructor" _klass9080_ _kons-id9081_)))))
    (define struct-copy
      (lambda (_struct9078_)
        (if (let () (declare (not safe)) (##structure? _struct9078_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct9078_))
        (let () (declare (not safe)) (##structure-copy _struct9078_))))
    (define struct->list
      (lambda (_obj9076_)
        (if (let () (declare (not safe)) (object? _obj9076_))
            (let () (declare (not safe)) (##vector->list _obj9076_))
            (error '"Not an object" _obj9076_))))
    (define class->list
      (lambda (_obj9063_)
        (if (let () (declare (not safe)) (object? _obj9063_))
            (let ((_klass9065_
                   (let () (declare (not safe)) (object-type _obj9063_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass9065_))
                  (let ((_$e9067_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-slots _klass9065_))))
                    (if _$e9067_
                        ((lambda (_slots9070_)
                           (let ((__tmp10170
                                  (let ((__tmp10171
                                         (lambda (_slot9072_ _off9073_ _r9074_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (keyword? _slot9072_))
                                               (let ((__tmp10172
                                                      (let ((__tmp10173
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-field-ref _obj9063_ _off9073_))))
                (declare (not safe))
                (cons __tmp10173 _r9074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _slot9072_ __tmp10172))
                                               _r9074_))))
                                    (declare (not safe))
                                    (hash-fold __tmp10171 '() _slots9070_))))
                             (declare (not safe))
                             (cons _klass9065_ __tmp10170)))
                         _$e9067_)
                        (list _klass9065_)))
                  (error '"Not a class type" _obj9063_ _klass9065_)))
            (error '"Not an object" _obj9063_))))
    (define unchecked-field-ref
      (lambda (_obj9060_ _off9061_)
        (let ((__tmp10174 (let () (declare (not safe)) (##fx+ _off9061_ '1))))
          (declare (not safe))
          (##vector-ref _obj9060_ __tmp10174))))
    (define unchecked-field-set!
      (lambda (_obj9056_ _off9057_ _val9058_)
        (let ((__tmp10175 (let () (declare (not safe)) (##fx+ _off9057_ '1))))
          (declare (not safe))
          (##vector-set! _obj9056_ __tmp10175 _val9058_))))
    (define unchecked-slot-ref
      (lambda (_obj9053_ _slot9054_)
        (let ((__tmp10176
               (let ((__tmp10177
                      (let () (declare (not safe)) (object-type _obj9053_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10177 _slot9054_))))
          (declare (not safe))
          (unchecked-field-ref _obj9053_ __tmp10176))))
    (define unchecked-slot-set!
      (lambda (_obj9049_ _slot9050_ _val9051_)
        (let ((__tmp10178
               (let ((__tmp10179
                      (let () (declare (not safe)) (object-type _obj9049_))))
                 (declare (not safe))
                 (class-slot-offset __tmp10179 _slot9050_))))
          (declare (not safe))
          (unchecked-field-set! _obj9049_ __tmp10178 _val9051_))))
    (define slot-ref__%
      (lambda (_obj9025_ _slot9026_ _E9027_)
        (if (let () (declare (not safe)) (object? _obj9025_))
            (let* ((_klass9029_
                    (let () (declare (not safe)) (object-type _obj9025_)))
                   (_$e9032_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9029_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9029_ _slot9026_))
                        '#f)))
              (if _$e9032_
                  ((lambda (_off9035_)
                     (let ((__tmp10180
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9035_ '1))))
                       (declare (not safe))
                       (##vector-ref _obj9025_ __tmp10180)))
                   _$e9032_)
                  (_E9027_ _obj9025_ _slot9026_)))
            (_E9027_ _obj9025_ _slot9026_))))
    (define slot-ref__0
      (lambda (_obj9040_ _slot9041_)
        (let ((_E9043_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj9040_ _slot9041_ _E9043_))))
    (define slot-ref
      (lambda _g10182_
        (let ((_g10181_ (let () (declare (not safe)) (##length _g10182_))))
          (cond ((let () (declare (not safe)) (##fx= _g10181_ 2))
                 (apply (lambda (_obj9040_ _slot9041_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj9040_ _slot9041_)))
                        _g10182_))
                ((let () (declare (not safe)) (##fx= _g10181_ 3))
                 (apply (lambda (_obj9045_ _slot9046_ _E9047_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj9045_ _slot9046_ _E9047_)))
                        _g10182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g10182_))))))
    (define slot-set!__%
      (lambda (_obj8997_ _slot8998_ _val8999_ _E9000_)
        (if (let () (declare (not safe)) (object? _obj8997_))
            (let* ((_klass9002_
                    (let () (declare (not safe)) (object-type _obj8997_)))
                   (_$e9005_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass9002_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass9002_ _slot8998_))
                        '#f)))
              (if _$e9005_
                  ((lambda (_off9008_)
                     (let ((__tmp10183
                            (let ()
                              (declare (not safe))
                              (##fx+ _off9008_ '1))))
                       (declare (not safe))
                       (##vector-set! _obj8997_ __tmp10183 _val8999_)))
                   _$e9005_)
                  (_E9000_ _obj8997_ _slot8998_)))
            (_E9000_ _obj8997_ _slot8998_))))
    (define slot-set!__0
      (lambda (_obj9013_ _slot9014_ _val9015_)
        (let ((_E9017_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj9013_ _slot9014_ _val9015_ _E9017_))))
    (define slot-set!
      (lambda _g10185_
        (let ((_g10184_ (let () (declare (not safe)) (##length _g10185_))))
          (cond ((let () (declare (not safe)) (##fx= _g10184_ 3))
                 (apply (lambda (_obj9013_ _slot9014_ _val9015_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj9013_ _slot9014_ _val9015_)))
                        _g10185_))
                ((let () (declare (not safe)) (##fx= _g10184_ 4))
                 (apply (lambda (_obj9019_ _slot9020_ _val9021_ _E9022_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj9019_
                             _slot9020_
                             _val9021_
                             _E9022_)))
                        _g10185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g10185_))))))
    (define __slot-error
      (lambda (_obj8993_ _slot8994_)
        (error '"Cannot find slot" _obj8993_ _slot8994_)))
    (define call-method
      (lambda (_obj8984_ _id8985_ . _args8986_)
        (let ((_$e8988_
               (let () (declare (not safe)) (method-ref _obj8984_ _id8985_))))
          (if _$e8988_
              ((lambda (_method8991_)
                 (apply _method8991_ _obj8984_ _args8986_))
               _$e8988_)
              (error '"Cannot find method" _obj8984_ _id8985_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj8981_ _id8982_)
        (if (let () (declare (not safe)) (object? _obj8981_))
            (let ((__tmp10186
                   (let () (declare (not safe)) (object-type _obj8981_))))
              (declare (not safe))
              (find-method __tmp10186 _id8982_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj8975_ _id8976_)
        (let ((_$e8978_
               (let () (declare (not safe)) (method-ref _obj8975_ _id8976_))))
          (if _$e8978_
              _$e8978_
              (error '"Missing method" _obj8975_ _id8976_)))))
    (define bound-method-ref
      (lambda (_obj8965_ _id8966_)
        (let ((_$e8968_
               (let () (declare (not safe)) (method-ref _obj8965_ _id8966_))))
          (if _$e8968_
              ((lambda (_method8971_)
                 (lambda _args8973_ (apply _method8971_ _obj8965_ _args8973_)))
               _$e8968_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj8958_ _id8959_)
        (let ((_method8961_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj8958_ _id8959_))))
          (lambda _args8963_ (apply _method8961_ _obj8958_ _args8963_)))))
    (define find-method
      (lambda (_klass8952_ _id8953_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8952_))
            (let () (declare (not safe)) (__find-method _klass8952_ _id8953_))
            (if (let () (declare (not safe)) (##type? _klass8952_))
                (let ((_$e8955_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass8952_ _id8953_))))
                  (if _$e8955_
                      _$e8955_
                      (let ((__tmp10187
                             (let ()
                               (declare (not safe))
                               (##type-super _klass8952_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10187 _id8953_))))
                '#f))))
    (define __find-method
      (lambda (_klass8941_ _id8942_)
        (let ((_$e8944_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass8941_ _id8942_))))
          (if _$e8944_
              _$e8944_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass8941_))
                  '#f
                  (let ((_$e8947_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-mixin _klass8941_))))
                    (if _$e8947_
                        ((lambda (_mixin8950_)
                           (let ()
                             (declare (not safe))
                             (mixin-find-method _mixin8950_ _id8942_)))
                         _$e8947_)
                        (let ((__tmp10188
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass8941_))))
                          (declare (not safe))
                          (struct-find-method __tmp10188 _id8942_)))))))))
    (define struct-find-method
      (lambda (_klass8932_ _id8933_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8932_))
            (let ((_$e8935_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass8932_ _id8933_))))
              (if _$e8935_
                  _$e8935_
                  (let ((__tmp10190
                         (let ()
                           (declare (not safe))
                           (##type-super _klass8932_))))
                    (declare (not safe))
                    (struct-find-method __tmp10190 _id8933_))))
            (if (let () (declare (not safe)) (##type? _klass8932_))
                (let ((_$e8938_
                       (let ()
                         (declare (not safe))
                         (builtin-method-ref _klass8932_ _id8933_))))
                  (if _$e8938_
                      _$e8938_
                      (let ((__tmp10189
                             (let ()
                               (declare (not safe))
                               (##type-super _klass8932_))))
                        (declare (not safe))
                        (builtin-find-method __tmp10189 _id8933_))))
                '#f))))
    (define class-find-method
      (lambda (_klass8926_ _id8927_)
        (if (let () (declare (not safe)) (type-descriptor? _klass8926_))
            (let ((_$e8929_
                   (let ()
                     (declare (not safe))
                     (direct-method-ref _klass8926_ _id8927_))))
              (if _$e8929_
                  _$e8929_
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass8926_ _id8927_))))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin8883_ _id8884_)
        (let _lp8886_ ((_rest8888_ _mixin8883_))
          (let* ((_rest88898897_ _rest8888_)
                 (_else88918905_ (lambda () '#f))
                 (_K88938914_
                  (lambda (_rest8908_ _klass8909_)
                    (let ((_$e8911_
                           (let ()
                             (declare (not safe))
                             (direct-method-ref _klass8909_ _id8884_))))
                      (if _$e8911_
                          _$e8911_
                          (let ()
                            (declare (not safe))
                            (_lp8886_ _rest8908_)))))))
            (if (let () (declare (not safe)) (##pair? _rest88898897_))
                (let ((_hd88948917_
                       (let () (declare (not safe)) (##car _rest88898897_)))
                      (_tl88958919_
                       (let () (declare (not safe)) (##cdr _rest88898897_))))
                  (let* ((_klass8922_ _hd88948917_) (_rest8924_ _tl88958919_))
                    (declare (not safe))
                    (_K88938914_ _rest8924_ _klass8922_)))
                (let () (declare (not safe)) (_else88918905_)))))))
    (define builtin-find-method
      (lambda (_klass8877_ _id8878_)
        (if (let () (declare (not safe)) (##type? _klass8877_))
            (let ((_$e8880_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass8877_ _id8878_))))
              (if _$e8880_
                  _$e8880_
                  (let ((__tmp10191
                         (let ()
                           (declare (not safe))
                           (##type-super _klass8877_))))
                    (declare (not safe))
                    (builtin-find-method __tmp10191 _id8878_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass8869_ _id8870_)
        (let ((_$e8872_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass8869_))))
          (if _$e8872_
              ((lambda (_ht8875_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht8875_ _id8870_ '#f)))
               _$e8872_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass8861_ _id8862_)
        (let ((_$e8864_
               (let ()
                 (declare (not safe))
                 (type-descriptor-mixin _klass8861_))))
          (if _$e8864_
              ((lambda (_mixin8867_)
                 (let ()
                   (declare (not safe))
                   (mixin-find-method _mixin8867_ _id8862_)))
               _$e8864_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass8853_ _id8854_)
        (let ((_$e8856_
               (let ((__tmp10192
                      (let () (declare (not safe)) (##type-id _klass8853_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp10192 '#f))))
          (if _$e8856_
              ((lambda (_mtab8859_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab8859_ _id8854_ '#f)))
               _$e8856_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass8819_ _id8820_ _proc8821_ _rebind?8822_)
        (letrec ((_bind!8824_
                  (lambda (_ht8837_)
                    (if (and (let () (declare (not safe)) (not _rebind?8822_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht8837_ _id8820_ '#f)))
                        (error '"Method already bound" _klass8819_ _id8820_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht8837_ _id8820_ _proc8821_))))))
          (if (let () (declare (not safe)) (procedure? _proc8821_))
              '#!void
              (error '"Bad method; expected procedure" _proc8821_))
          (if (let () (declare (not safe)) (type-descriptor? _klass8819_))
              (let ((_ht8826_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass8819_))))
                (if _ht8826_
                    (let () (declare (not safe)) (_bind!8824_ _ht8826_))
                    (let ((_ht8828_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass8819_ _ht8828_))
                      (let () (declare (not safe)) (_bind!8824_ _ht8828_)))))
              (if (let () (declare (not safe)) (##type? _klass8819_))
                  (let ((_ht8835_
                         (let ((_$e8830_
                                (let ((__tmp10193
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass8819_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp10193
                                   '#f))))
                           (if _$e8830_
                               _$e8830_
                               (let ((_ht8833_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp10194
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass8819_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp10194
                                    _ht8833_))
                                 _ht8833_)))))
                    (declare (not safe))
                    (_bind!8824_ _ht8835_))
                  (error '"Bad class; expected type-descriptor"
                         _klass8819_))))))
    (define bind-method!__0
      (lambda (_klass8842_ _id8843_ _proc8844_)
        (let ((_rebind?8846_ '#t))
          (declare (not safe))
          (bind-method!__% _klass8842_ _id8843_ _proc8844_ _rebind?8846_))))
    (define bind-method!
      (lambda _g10196_
        (let ((_g10195_ (let () (declare (not safe)) (##length _g10196_))))
          (cond ((let () (declare (not safe)) (##fx= _g10195_ 3))
                 (apply (lambda (_klass8842_ _id8843_ _proc8844_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0 _klass8842_ _id8843_ _proc8844_)))
                        _g10196_))
                ((let () (declare (not safe)) (##fx= _g10195_ 4))
                 (apply (lambda (_klass8848_ _id8849_ _proc8850_ _rebind?8851_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass8848_
                             _id8849_
                             _proc8850_
                             _rebind?8851_)))
                        _g10196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g10196_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc8815_ _specializer8816_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc8815_ _specializer8816_))))
    (define seal-class!
      (lambda (_klass8730_)
        (letrec ((_collect-methods!8732_
                  (lambda (_mtab8748_)
                    (letrec ((_merge!8750_
                              (lambda (_tab8810_)
                                (let ((__tmp10197
                                       (lambda (_id8812_ _proc8813_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab8748_
                                            _id8812_
                                            _proc8813_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp10197 _tab8810_))))
                             (_collect-direct-methods!8751_
                              (lambda (_klass8805_)
                                (let ((_$e8807_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass8805_))))
                                  (if _$e8807_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!8750_ _$e8807_))
                                      '#!void)))))
                      (let ((_$e8753_
                             (let ()
                               (declare (not safe))
                               (type-descriptor-mixin _klass8730_))))
                        (if _$e8753_
                            ((lambda (_mixin8756_)
                               (let _recur8758_ ((_rest8760_ _mixin8756_))
                                 (let* ((_rest87618769_ _rest8760_)
                                        (_else87638777_ (lambda () '#!void))
                                        (_K87658786_
                                         (lambda (_rest8780_ _klass8781_)
                                           (let ()
                                             (declare (not safe))
                                             (_recur8758_ _rest8780_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (type-descriptor?
                                                  _klass8781_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_collect-direct-methods!8751_
                                                  _klass8781_))
                                               (let ((_$e8783_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass8781_))
                                                          (let ((__tmp10201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##type-id _klass8781_))))
                    (declare (not safe))
                    (table-ref __builtin-type-methods __tmp10201 '#f))
                  '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e8783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (_merge!8750_ _$e8783_))
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest87618769_))
                                       (let ((_hd87668789_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest87618769_)))
                                             (_tl87678791_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest87618769_))))
                                         (let* ((_klass8794_ _hd87668789_)
                                                (_rest8796_ _tl87678791_))
                                           (declare (not safe))
                                           (_K87658786_
                                            _rest8796_
                                            _klass8794_)))
                                       '#!void))))
                             _$e8753_)
                            (let _recur8798_ ((_klass8800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass8730_))))
                              (if (let ()
                                    (declare (not safe))
                                    (type-descriptor? _klass8800_))
                                  (begin
                                    (let ((__tmp10200
                                           (let ()
                                             (declare (not safe))
                                             (##type-super _klass8800_))))
                                      (declare (not safe))
                                      (_recur8798_ __tmp10200))
                                    (let ()
                                      (declare (not safe))
                                      (_collect-direct-methods!8751_
                                       _klass8800_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass8800_))
                                      (begin
                                        (let ((__tmp10198
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass8800_))))
                                          (declare (not safe))
                                          (_recur8798_ __tmp10198))
                                        (let ((_$e8802_
                                               (let ((__tmp10199
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass8800_))))
                                                 (declare (not safe))
                                                 (table-ref
                                                  __builtin-type-methods
                                                  __tmp10199
                                                  '#f))))
                                          (if _$e8802_
                                              (let ()
                                                (declare (not safe))
                                                (_merge!8750_ _$e8802_))
                                              '#!void)))
                                      '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_collect-direct-methods!8751_ _klass8730_))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass8730_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass8730_))
                  '#!void
                  (begin
                    (if (let ((__tmp10202
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-plist _klass8730_))))
                          (declare (not safe))
                          (assgetq 'final: __tmp10202))
                        '#!void
                        (error '"Cannot seal non-final class" _klass8730_))
                    (let ((_vtab8734_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab8735_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!8732_ _mtab8735_))
                      (let ((__tmp10203
                             (lambda (_id8737_ _proc8738_)
                               (let ((_$e8740_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc8738_
                                         '#f))))
                                 (if _$e8740_
                                     ((lambda (_specializer8743_)
                                        (let ((_proc8745_
                                               (_specializer8743_ _klass8730_))
                                              (_gid8746_
                                               (let ((__tmp10204
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass8730_))))
                                                 (declare (not safe))
                                                 (make-symbol
                                                  __tmp10204
                                                  '"::["
                                                  _id8737_
                                                  '"]"))))
                                          (let ((__tmp10205
                                                 (let ((__tmp10206
                                                        (let ((__tmp10207
                                                               (let ((__tmp10208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp10209
                                     (let ()
                                       (declare (not safe))
                                       (cons _proc8745_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp10209))))
                         (declare (not safe))
                         (cons __tmp10208 '()))))
                  (declare (not safe))
                  (cons _gid8746_ __tmp10207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'def __tmp10206))))
                                            (declare (not safe))
                                            (eval __tmp10205))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab8734_
                                             _id8737_
                                             _proc8745_))))
                                      _$e8740_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab8734_
                                        _id8737_
                                        _proc8738_)))))))
                        (declare (not safe))
                        (table-for-each __tmp10203 _mtab8735_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass8730_ _vtab8734_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass8730_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass8667_ _obj8668_ _id8669_)
        (let ((_klass8671_
               (let () (declare (not safe)) (object-type _obj8668_)))
              (_type-id8672_
               (let () (declare (not safe)) (##type-id _subklass8667_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass8671_))
              (let ((_$e8674_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-mixin _klass8671_))))
                (if _$e8674_
                    ((lambda (_mixin8677_)
                       (let _lp8679_ ((_rest8681_
                                       (let ()
                                         (declare (not safe))
                                         (cons _klass8671_ _mixin8677_))))
                         (let* ((_rest86828690_ _rest8681_)
                                (_else86848698_ (lambda () '#f))
                                (_K86868704_
                                 (lambda (_rest8701_ _klass8702_)
                                   (if (let ((__tmp10214
                                              (let ()
                                                (declare (not safe))
                                                (##type-id _klass8702_))))
                                         (declare (not safe))
                                         (eq? _type-id8672_ __tmp10214))
                                       (let ()
                                         (declare (not safe))
                                         (mixin-find-method
                                          _rest8701_
                                          _id8669_))
                                       (let ()
                                         (declare (not safe))
                                         (_lp8679_ _rest8701_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest86828690_))
                               (let ((_hd86878707_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest86828690_)))
                                     (_tl86888709_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest86828690_))))
                                 (let* ((_klass8712_ _hd86878707_)
                                        (_rest8714_ _tl86888709_))
                                   (declare (not safe))
                                   (_K86868704_ _rest8714_ _klass8712_)))
                               (let ()
                                 (declare (not safe))
                                 (_else86848698_))))))
                     _$e8674_)
                    (let _lp8716_ ((_klass8718_ _klass8671_))
                      (if (let ((__tmp10213
                                 (let ()
                                   (declare (not safe))
                                   (##type-id _klass8718_))))
                            (declare (not safe))
                            (eq? _type-id8672_ __tmp10213))
                          (let ((__tmp10212
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass8718_))))
                            (declare (not safe))
                            (struct-find-method __tmp10212 _id8669_))
                          (let ((_$e8720_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass8718_))))
                            (if _$e8720_
                                (let ()
                                  (declare (not safe))
                                  (_lp8716_ _$e8720_))
                                '#f))))))
              (if (let () (declare (not safe)) (##type? _klass8671_))
                  (let _lp8723_ ((_klass8725_ _klass8671_))
                    (if (let ((__tmp10211
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass8725_))))
                          (declare (not safe))
                          (eq? _type-id8672_ __tmp10211))
                        (let ((__tmp10210
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass8725_))))
                          (declare (not safe))
                          (builtin-find-method __tmp10210 _id8669_))
                        (let ((_$e8727_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass8725_))))
                          (if _$e8727_
                              (let () (declare (not safe)) (_lp8723_ _$e8727_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass8657_ _obj8658_ _id8659_ . _args8660_)
        (let ((_$e8662_
               (let ()
                 (declare (not safe))
                 (next-method _subklass8657_ _obj8658_ _id8659_))))
          (if _$e8662_
              ((lambda (_methodf8665_)
                 (apply _methodf8665_ _obj8658_ _args8660_))
               _$e8662_)
              (error '"Cannot find next method" _obj8658_ _id8659_)))))
    (define write-style (lambda (_we8655_) (macro-writeenv-style _we8655_)))
    (define write-object
      (lambda (_we8647_ _obj8648_)
        (let ((_$e8650_
               (let () (declare (not safe)) (method-ref _obj8648_ ':wr))))
          (if _$e8650_
              ((lambda (_method8653_) (_method8653_ _obj8648_ _we8647_))
               _$e8650_)
              (let ()
                (declare (not safe))
                (##default-wr _we8647_ _obj8648_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
