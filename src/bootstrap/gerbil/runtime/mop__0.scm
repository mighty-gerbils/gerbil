(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1695201399)
  (begin
    (define type-descriptor?
      (lambda (_klass4073_)
        (if (let () (declare (not safe)) (##type? _klass4073_))
            (eq? (let () (declare (not safe)) (##structure-length _klass4073_))
                 '12)
            '#f)))
    (define struct-type?
      (lambda (_klass4071_)
        (if (type-descriptor? _klass4071_)
            (not (type-descriptor-mixin _klass4071_))
            '#f)))
    (define class-type?
      (lambda (_klass4069_)
        (if (type-descriptor? _klass4069_)
            (if (type-descriptor-mixin _klass4069_) '#t '#f)
            '#f)))
    (define make-type-descriptor
      (lambda (_type-id3965_
               _type-name3966_
               _type-super3967_
               _rtd-mixin3968_
               _rtd-fields3969_
               _rtd-plist3970_
               _rtd-ctor3971_
               _rtd-slots3972_
               _rtd-methods3973_)
        (letrec ((_put-props!3975_
                  (lambda (_ht4049_ _key4050_)
                    (letrec ((_put-plist!4052_
                              (lambda (_ht4058_ _key4059_ _plist4060_)
                                (let ((_$e4062_
                                       (assgetq _key4059_ _plist4060_)))
                                  (if _$e4062_
                                      ((lambda (_lst4065_)
                                         (for-each
                                          (lambda (_id4067_)
                                            (hash-put! _ht4058_ _id4067_ '#t))
                                          _lst4065_))
                                       _$e4062_)
                                      '#!void)))))
                      (_put-plist!4052_ _ht4049_ _key4050_ _rtd-plist3970_)
                      (if _rtd-mixin3968_
                          (for-each
                           (lambda (_klass4054_)
                             (if (type-descriptor-mixin _klass4054_)
                                 (let ((_plist4056_
                                        (type-descriptor-plist _klass4054_)))
                                   (if (assgetq 'transparent: _plist4056_)
                                       (_put-plist!4052_
                                        _ht4049_
                                        'slots:
                                        _plist4056_)
                                       (_put-plist!4052_
                                        _ht4049_
                                        _key4050_
                                        _plist4056_)))
                                 '#!void))
                           _rtd-mixin3968_)
                          '#!void)))))
          (let* ((_transparent?3977_ (assgetq 'transparent: _rtd-plist3970_))
                 (_field-names3982_
                  (let ((_$e3979_ (assq 'fields: _rtd-plist3970_)))
                    (if _$e3979_ (cdr _$e3979_) '())))
                 (_field-names3989_
                  (let ((_$e3984_ (assq 'slots: _rtd-plist3970_)))
                    (if _$e3984_
                        ((lambda (_slots3987_)
                           (append _field-names3982_ (cdr _slots3987_)))
                         _$e3984_)
                        _field-names3982_)))
                 (_g4074_ (if (fx= _rtd-fields3969_ (length _field-names3989_))
                              '#!void
                              (error '"Bad field descriptor; length mismatch"
                                     _type-id3965_
                                     _rtd-fields3969_
                                     _field-names3989_)))
                 (_canonical-fields3992_
                  (if _type-super3967_
                      (list-tail
                       _field-names3989_
                       (type-descriptor-fields _type-super3967_))
                      _field-names3989_))
                 (_printable3996_
                  (if _transparent?3977_
                      '#f
                      (let ((_ht3994_ (make-hash-table-eq)))
                        (_put-props!3975_ _ht3994_ 'print:)
                        _ht3994_)))
                 (_equality4000_
                  (if _transparent?3977_
                      '#f
                      (let ((_ht3998_ (make-hash-table-eq)))
                        (_put-props!3975_ _ht3998_ 'equal:)
                        _ht3998_)))
                 (_field-info4041_
                  (let _recur4002_ ((_rest4004_ _canonical-fields3992_))
                    (let* ((_rest40054013_ _rest4004_)
                           (_E40084017_
                            (lambda ()
                              (error '"No clause matching" _rest40054013_)))
                           (_else40074021_ (lambda () '()))
                           (_K40094029_
                            (lambda (_rest4024_ _id4025_)
                              (let ((_flags4027_
                                     (if _transparent?3977_
                                         '0
                                         (let ((__tmp4076
                                                (if (hash-get
                                                     _printable3996_
                                                     _id4025_)
                                                    '0
                                                    '1))
                                               (__tmp4075
                                                (if (hash-get
                                                     _equality4000_
                                                     _id4025_)
                                                    '0
                                                    '4)))
                                           (declare (not safe))
                                           (##fxior __tmp4076 __tmp4075)))))
                                (cons* _id4025_
                                       _flags4027_
                                       '#f
                                       (_recur4002_ _rest4024_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest40054013_))
                          (let ((_hd40104032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest40054013_)))
                                (_tl40114034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest40054013_))))
                            (let* ((_id4037_ _hd40104032_)
                                   (_rest4039_ _tl40114034_))
                              (_K40094029_ _rest4039_ _id4037_)))
                          (_else40074021_)))))
                 (_opaque?4046_
                  (if (or _transparent?3977_ (assq 'equal: _rtd-plist3970_))
                      (if _type-super3967_
                          (let ((__tmp4077
                                 (let ((__tmp4078
                                        (let ()
                                          (declare (not safe))
                                          (##type-flags _type-super3967_))))
                                   (declare (not safe))
                                   (##fxand __tmp4078 '1))))
                            (declare (not safe))
                            (##fx= __tmp4077 '1))
                          '#f)
                      '#t)))
            (let ((__tmp4080 (+ '24 (if _opaque?4046_ '1 '0)))
                  (__tmp4079 (list->vector _field-info4041_)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id3965_
               _type-name3966_
               __tmp4080
               _type-super3967_
               __tmp4079
               _rtd-mixin3968_
               _rtd-fields3969_
               _rtd-plist3970_
               _rtd-ctor3971_
               _rtd-slots3972_
               _rtd-methods3973_))))))
    (define make-struct-type-descriptor
      (lambda (_id3958_
               _name3959_
               _super3960_
               _fields3961_
               _plist3962_
               _ctor3963_)
        (make-type-descriptor
         _id3958_
         _name3959_
         _super3960_
         '#f
         _fields3961_
         _plist3962_
         _ctor3963_
         '#f
         '#f)))
    (define make-class-type-descriptor
      (lambda (_id3949_
               _name3950_
               _super3951_
               _mixin3952_
               _fields3953_
               _plist3954_
               _ctor3955_
               _slots3956_)
        (make-type-descriptor
         _id3949_
         _name3950_
         _super3951_
         _mixin3952_
         _fields3953_
         _plist3954_
         _ctor3955_
         _slots3956_
         '#f)))
    (define type-descriptor-mixin
      (lambda (_klass3947_)
        (let () (declare (not safe)) (##vector-ref _klass3947_ '6))))
    (define type-descriptor-fields
      (lambda (_klass3945_)
        (let () (declare (not safe)) (##vector-ref _klass3945_ '7))))
    (define type-descriptor-plist
      (lambda (_klass3943_)
        (let () (declare (not safe)) (##vector-ref _klass3943_ '8))))
    (define type-descriptor-ctor
      (lambda (_klass3941_)
        (let () (declare (not safe)) (##vector-ref _klass3941_ '9))))
    (define type-descriptor-slots
      (lambda (_klass3939_)
        (let () (declare (not safe)) (##vector-ref _klass3939_ '10))))
    (define type-descriptor-methods
      (lambda (_klass3937_)
        (let () (declare (not safe)) (##vector-ref _klass3937_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass3934_ _ht3935_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass3934_ '11 _ht3935_))))
    (define type-descriptor-sealed?
      (lambda (_klass3932_)
        (let ((__tmp4081
               (let () (declare (not safe)) (##type-flags _klass3932_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp4081))))
    (define type-descriptor-seal!
      (lambda (_klass3930_)
        (let ((__tmp4082
               (let ((__tmp4084
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp4083
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass3930_))))
                 (declare (not safe))
                 (##fxior __tmp4084 __tmp4083))))
          (declare (not safe))
          (##vector-set! _klass3930_ '3 __tmp4082))))
    (define make-struct-type
      (let ((_opt-lambda38773910_
             (lambda (_id3879_
                      _super3880_
                      _fields3881_
                      _name3882_
                      _plist3883_
                      _ctor3884_
                      _field-names3885_)
               (if (and _super3880_ (not (struct-type? _super3880_)))
                   (error '"Illegal super type; not a struct-type" _super3880_)
                   '#!void)
               (if (and _super3880_
                        (assgetq 'final: (type-descriptor-plist _super3880_)))
                   (error '"Cannot extend final struct" _super3880_)
                   '#!void)
               (let* ((_super-fields3887_
                       (if _super3880_
                           (type-descriptor-fields _super3880_)
                           '0))
                      (_std-fields3889_ (fx+ _fields3881_ _super-fields3887_))
                      (_std-field-names3899_
                       (let* ((_super-fields3891_
                               (if _super3880_
                                   (assgetq 'fields:
                                            (type-descriptor-plist
                                             _super3880_))
                                   '()))
                              (_field-names3896_
                               (let ((_$e3893_ _field-names3885_))
                                 (if _$e3893_
                                     _$e3893_
                                     (make-list _fields3881_ ':)))))
                         (append _super-fields3891_ _field-names3896_)))
                      (_g4085_ (if (let ((__tmp4086
                                          (length _std-field-names3899_)))
                                     (declare (not safe))
                                     (##fx= _std-fields3889_ __tmp4086))
                                   '#!void
                                   (error '"Bad field specification; length mismatch"
                                          _id3879_
                                          _std-fields3889_
                                          _std-field-names3899_)))
                      (_std-plist3902_
                       (cons (cons 'fields: _std-field-names3899_)
                             _plist3883_))
                      (_ctor3907_
                       (let ((_$e3904_ _ctor3884_))
                         (if _$e3904_
                             _$e3904_
                             (if _super3880_
                                 (type-descriptor-ctor _super3880_)
                                 '#f)))))
                 (make-struct-type-descriptor
                  _id3879_
                  _name3882_
                  _super3880_
                  _std-fields3889_
                  _std-plist3902_
                  _ctor3907_)))))
        (lambda _g4088_
          (let ((_g4087_ (let () (declare (not safe)) (##length _g4088_))))
            (cond ((let () (declare (not safe)) (##fx= _g4087_ 6))
                   (apply (lambda (_id3913_
                                   _super3914_
                                   _fields3915_
                                   _name3916_
                                   _plist3917_
                                   _ctor3918_)
                            (let ((_field-names3920_ '#f))
                              (_opt-lambda38773910_
                               _id3913_
                               _super3914_
                               _fields3915_
                               _name3916_
                               _plist3917_
                               _ctor3918_
                               _field-names3920_)))
                          _g4088_))
                  ((let () (declare (not safe)) (##fx= _g4087_ 7))
                   (apply _opt-lambda38773910_ _g4088_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-struct-type
                    _g4088_)))))))
    (define make-struct-predicate
      (lambda (_klass3870_)
        (let ((_tid3872_
               (let () (declare (not safe)) (##type-id _klass3870_))))
          (if (assgetq 'final: (type-descriptor-plist _klass3870_))
              (lambda (_obj3874_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj3874_ _tid3872_)))
              (lambda (_obj3876_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj3876_ _tid3872_)))))))
    (define make-struct-field-accessor
      (lambda (_klass3863_ _field3864_)
        (let ((_off3866_
               (let ((__tmp4089 (struct-field-offset _klass3863_ _field3864_)))
                 (declare (not safe))
                 (##fx+ __tmp4089 '1))))
          (lambda (_obj3868_)
            (let ()
              (declare (not safe))
              (##structure-ref _obj3868_ _off3866_ _klass3863_ '#f))))))
    (define make-struct-field-mutator
      (lambda (_klass3855_ _field3856_)
        (let ((_off3858_
               (let ((__tmp4090 (struct-field-offset _klass3855_ _field3856_)))
                 (declare (not safe))
                 (##fx+ __tmp4090 '1))))
          (lambda (_obj3860_ _val3861_)
            (let ()
              (declare (not safe))
              (##structure-set!
               _obj3860_
               _val3861_
               _off3858_
               _klass3855_
               '#f))))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass3848_ _field3849_)
        (let ((_off3851_
               (let ((__tmp4091 (struct-field-offset _klass3848_ _field3849_)))
                 (declare (not safe))
                 (##fx+ __tmp4091 '1))))
          (lambda (_obj3853_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-ref
               _obj3853_
               _off3851_
               _klass3848_
               '#f))))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass3840_ _field3841_)
        (let ((_off3843_
               (let ((__tmp4092 (struct-field-offset _klass3840_ _field3841_)))
                 (declare (not safe))
                 (##fx+ __tmp4092 '1))))
          (lambda (_obj3845_ _val3846_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _obj3845_
               _val3846_
               _off3843_
               _klass3840_
               '#f))))))
    (define struct-field-offset
      (lambda (_klass3834_ _field3835_)
        (let ((__tmp4093
               (let ((_$e3837_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass3834_))))
                 (if _$e3837_ (type-descriptor-fields _$e3837_) '0))))
          (declare (not safe))
          (##fx+ _field3835_ __tmp4093))))
    (define struct-field-ref
      (lambda (_klass3830_ _obj3831_ _off3832_)
        (let ((__tmp4094 (let () (declare (not safe)) (##fx+ _off3832_ '1))))
          (declare (not safe))
          (##structure-ref _obj3831_ __tmp4094 _klass3830_ '#f))))
    (define struct-field-set!
      (lambda (_klass3825_ _obj3826_ _off3827_ _val3828_)
        (let ((__tmp4095 (let () (declare (not safe)) (##fx+ _off3827_ '1))))
          (declare (not safe))
          (##structure-set! _obj3826_ _val3828_ __tmp4095 _klass3825_ '#f))))
    (define struct-subtype?
      (lambda (_klass3816_ _xklass3817_)
        (let ((_klass-t3819_
               (let () (declare (not safe)) (##type-id _klass3816_))))
          (let _lp3821_ ((_next3823_ _xklass3817_))
            (if (not _next3823_)
                '#f
                (if (eq? _klass-t3819_
                         (let () (declare (not safe)) (##type-id _next3823_)))
                    '#t
                    (_lp3821_
                     (let ()
                       (declare (not safe))
                       (##type-super _next3823_)))))))))
    (define make-class-type
      (lambda (_id3523_
               _super3524_
               _slots3525_
               _name3526_
               _plist3527_
               _ctor3528_)
        (letrec ((_class-slots3530_
                  (lambda (_klass3814_)
                    (assgetq 'slots: (type-descriptor-plist _klass3814_))))
                 (_make-slots3531_
                  (lambda (_off3765_)
                    (let ((_slot-table3767_ (make-hash-table-eq)))
                      (let _lp3769_ ((_rest3771_ _super3524_)
                                     (_off3772_ _off3765_)
                                     (_slot-list3773_ '()))
                        (let* ((_rest37743782_ _rest3771_)
                               (_E37773786_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest37743782_)))
                               (_else37763793_
                                (lambda ()
                                  (_merge-slots3532_
                                   _slot-table3767_
                                   _slots3525_
                                   _off3772_
                                   _slot-list3773_
                                   (lambda (_off3790_ _slot-list3791_)
                                     (values _off3790_
                                             _slot-table3767_
                                             (reverse _slot-list3791_))))))
                               (_K37783802_
                                (lambda (_rest3796_ _hd3797_)
                                  (_merge-slots3532_
                                   _slot-table3767_
                                   (_class-slots3530_ _hd3797_)
                                   _off3772_
                                   _slot-list3773_
                                   (lambda (_off3799_ _slot-list3800_)
                                     (_lp3769_
                                      _rest3796_
                                      _off3799_
                                      _slot-list3800_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest37743782_))
                              (let ((_hd37793805_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest37743782_)))
                                    (_tl37803807_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest37743782_))))
                                (let* ((_hd3810_ _hd37793805_)
                                       (_rest3812_ _tl37803807_))
                                  (_K37783802_ _rest3812_ _hd3810_)))
                              (_else37763793_)))))))
                 (_merge-slots3532_
                  (lambda (_ht3720_ _lst3721_ _off3722_ _r3723_ _K3724_)
                    (let _lp3726_ ((_rest3728_ _lst3721_)
                                   (_off3729_ _off3722_)
                                   (_r3730_ _r3723_))
                      (let* ((_rest37313739_ _rest3728_)
                             (_E37343743_
                              (lambda ()
                                (error '"No clause matching" _rest37313739_)))
                             (_else37333747_
                              (lambda () (_K3724_ _off3729_ _r3730_)))
                             (_K37353753_
                              (lambda (_rest3750_ _slot3751_)
                                (if (hash-get _ht3720_ _slot3751_)
                                    (_lp3726_ _rest3750_ _off3729_ _r3730_)
                                    (begin
                                      (hash-put! _ht3720_ _slot3751_ _off3729_)
                                      (hash-put!
                                       _ht3720_
                                       (symbol->keyword _slot3751_)
                                       _off3729_)
                                      (_lp3726_
                                       _rest3750_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _off3729_ '1))
                                       (cons _slot3751_ _r3730_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest37313739_))
                            (let ((_hd37363756_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest37313739_)))
                                  (_tl37373758_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest37313739_))))
                              (let* ((_slot3761_ _hd37363756_)
                                     (_rest3763_ _tl37373758_))
                                (_K37353753_ _rest3763_ _slot3761_)))
                            (_else37333747_))))))
                 (_find-super-ctor3533_
                  (lambda (_super3672_)
                    (let _lp3674_ ((_rest3676_ _super3672_) (_ctor3677_ '#f))
                      (let* ((_rest36783686_ _rest3676_)
                             (_E36813690_
                              (lambda ()
                                (error '"No clause matching" _rest36783686_)))
                             (_else36803694_ (lambda () _ctor3677_))
                             (_K36823708_
                              (lambda (_rest3697_ _hd3698_)
                                (let ((_$e3700_
                                       (type-descriptor-ctor _hd3698_)))
                                  (if _$e3700_
                                      ((lambda (_xctor3703_)
                                         (if (or (not _ctor3677_)
                                                 (eq? _ctor3677_ _xctor3703_))
                                             (_lp3674_ _rest3697_ _xctor3703_)
                                             (error '"Conflicting implicit constructors"
                                                    _ctor3677_
                                                    _xctor3703_)))
                                       _$e3700_)
                                      (_lp3674_ _rest3697_ _ctor3677_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest36783686_))
                            (let ((_hd36833711_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest36783686_)))
                                  (_tl36843713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest36783686_))))
                              (let* ((_hd3716_ _hd36833711_)
                                     (_rest3718_ _tl36843713_))
                                (_K36823708_ _rest3718_ _hd3716_)))
                            (_else36803694_))))))
                 (_find-super-struct3534_
                  (lambda (_super3619_)
                    (letrec ((_base-struct3621_
                              (lambda (_super-struct3661_ _klass3662_)
                                (if _super-struct3661_
                                    (if (struct-subtype?
                                         _super-struct3661_
                                         _klass3662_)
                                        (let _lp3664_ ((_klass3666_
                                                        _klass3662_))
                                          (if (struct-type? _klass3666_)
                                              _klass3666_
                                              (_lp3664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass3666_)))))
                                        (if (struct-subtype?
                                             _klass3662_
                                             _super-struct3661_)
                                            _super-struct3661_
                                            (error '"Bad mixin: incompatible struct bases"
                                                   _klass3662_
                                                   _super-struct3661_)))
                                    (if (struct-type? _klass3662_)
                                        _klass3662_
                                        (if (class-type? _klass3662_)
                                            (let _lp3668_ ((_next3670_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##type-super
                                                               _klass3662_))))
                                              (if (not _next3670_)
                                                  '#f
                                                  (if (struct-type? _next3670_)
                                                      _next3670_
                                                      (if (class-type?
                                                           _next3670_)
                                                          (_lp3668_ _next3670_)
                                                          '#f))))
                                            '#f))))))
                      (let _lp3623_ ((_rest3625_ _super3619_)
                                     (_super-struct3626_ '#f))
                        (let* ((_rest36273635_ _rest3625_)
                               (_E36303639_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest36273635_)))
                               (_else36293643_ (lambda () _super-struct3626_))
                               (_K36313649_
                                (lambda (_rest3646_ _hd3647_)
                                  (_lp3623_
                                   _rest3646_
                                   (_base-struct3621_
                                    _super-struct3626_
                                    _hd3647_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest36273635_))
                              (let ((_hd36323652_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest36273635_)))
                                    (_tl36333654_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest36273635_))))
                                (let* ((_hd3657_ _hd36323652_)
                                       (_rest3659_ _tl36333654_))
                                  (_K36313649_ _rest3659_ _hd3657_)))
                              (_else36293643_)))))))
                 (_expand-struct-mixin3535_
                  (lambda (_super3574_)
                    (let _lp3576_ ((_rest3578_ _super3574_) (_mixin3579_ '()))
                      (let* ((_rest35803588_ _rest3578_)
                             (_E35833592_
                              (lambda ()
                                (error '"No clause matching" _rest35803588_)))
                             (_else35823596_ (lambda () (reverse _mixin3579_)))
                             (_K35843607_
                              (lambda (_rest3599_ _hd3600_)
                                (if (struct-type? _hd3600_)
                                    (let _lp23602_ ((_next3604_ _hd3600_)
                                                    (_mixin3605_ _mixin3579_))
                                      (if (not _next3604_)
                                          (_lp3576_ _rest3599_ _mixin3605_)
                                          (if (struct-type? _next3604_)
                                              (_lp23602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _next3604_))
                                               (cons _next3604_ _mixin3605_))
                                              (_lp3576_
                                               _rest3599_
                                               _mixin3605_))))
                                    (_lp3576_
                                     _rest3599_
                                     (cons _hd3600_ _mixin3579_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest35803588_))
                            (let ((_hd35853610_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest35803588_)))
                                  (_tl35863612_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest35803588_))))
                              (let* ((_hd3615_ _hd35853610_)
                                     (_rest3617_ _tl35863612_))
                                (_K35843607_ _rest3617_ _hd3615_)))
                            (_else35823596_)))))))
          (let ((_$e3539_
                 (find (lambda (_klass3537_)
                         (not (type-descriptor? _klass3537_)))
                       _super3524_)))
            (if _$e3539_
                ((lambda (_klass3542_)
                   (error '"Illegal super class; not a type descriptor"
                          _klass3542_))
                 _$e3539_)
                (let ((_$e3546_
                       (find (lambda (_klass3544_)
                               (assgetq 'final:
                                        (type-descriptor-plist _klass3544_)))
                             _super3524_)))
                  (if _$e3546_
                      ((lambda (_klass3549_)
                         (error '"Cannot extend final class" _klass3549_))
                       _$e3546_)
                      '#!void))))
          (let* ((_std-super3551_ (_find-super-struct3534_ _super3524_))
                 (_mixin3553_
                  (if _std-super3551_
                      (_expand-struct-mixin3535_ _super3524_)
                      _super3524_)))
            (let ((_g4096_ (_make-slots3531_
                            (if _std-super3551_
                                (type-descriptor-fields _std-super3551_)
                                '0))))
              (begin
                (let ((_g4097_ (let ()
                                 (declare (not safe))
                                 (if (##values? _g4096_)
                                     (##vector-length _g4096_)
                                     1))))
                  (if (not (let () (declare (not safe)) (##fx= _g4097_ 3)))
                      (error "Context expects 3 values" _g4097_)))
                (let ((_std-fields3556_
                       (let () (declare (not safe)) (##vector-ref _g4096_ 0)))
                      (_std-slots3557_
                       (let () (declare (not safe)) (##vector-ref _g4096_ 1)))
                      (_std-slot-list3558_
                       (let () (declare (not safe)) (##vector-ref _g4096_ 2))))
                  (let* ((_std-mixin3560_ (class-linearize-mixins _mixin3553_))
                         (_std-plist3564_
                          (if _std-super3551_
                              (let ((_fields3562_
                                     (assgetq 'fields:
                                              (type-descriptor-plist
                                               _std-super3551_))))
                                (cons (cons 'fields: _fields3562_)
                                      _plist3527_))
                              _plist3527_))
                         (_std-plist3566_
                          (cons (cons 'slots: _std-slot-list3558_)
                                _std-plist3564_))
                         (_std-ctor3571_
                          (let ((_$e3568_ _ctor3528_))
                            (if _$e3568_
                                _$e3568_
                                (_find-super-ctor3533_ _super3524_)))))
                    (make-class-type-descriptor
                     _id3523_
                     _name3526_
                     _std-super3551_
                     _std-mixin3560_
                     _std-fields3556_
                     _std-plist3566_
                     _std-ctor3571_
                     _std-slots3557_)))))))))
    (define class-linearize-mixins
      (lambda (_klass-lst3474_)
        (letrec ((_class->list3476_
                  (lambda (_klass3518_)
                    (cons _klass3518_
                          (let ((_$e3520_ (type-descriptor-mixin _klass3518_)))
                            (if _$e3520_ _$e3520_ '()))))))
          (let* ((_klass-lst34773487_ _klass-lst3474_)
                 (_E34813491_
                  (lambda ()
                    (error '"No clause matching" _klass-lst34773487_)))
                 (_else34803495_
                  (lambda ()
                    (__linearize-mixins
                     (map _class->list3476_ _klass-lst3474_))))
                 (_try-match34793511_
                  (lambda ()
                    (let ((_K34823501_
                           (lambda (_klass3499_)
                             (_class->list3476_ _klass3499_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _klass-lst34773487_))
                          (let ((_hd34833504_
                                 (let ()
                                   (declare (not safe))
                                   (##car _klass-lst34773487_)))
                                (_tl34843506_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _klass-lst34773487_))))
                            (let ((_klass3509_ _hd34833504_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl34843506_))
                                  (_K34823501_ _klass3509_)
                                  (_else34803495_))))
                          (_else34803495_)))))
                 (_K34853515_ (lambda () '())))
            (if (let () (declare (not safe)) (##null? _klass-lst34773487_))
                (_K34853515_)
                (_try-match34793511_))))))
    (define __linearize-mixins
      (lambda (_lst3315_)
        (letrec ((_K3317_ (lambda (_rest3438_ _r3439_)
                            (let* ((_rest34403448_ _rest3438_)
                                   (_E34433452_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _rest34403448_)))
                                   (_else34423456_
                                    (lambda () (reverse _r3439_)))
                                   (_K34443462_
                                    (lambda (_rest3459_ _hd3460_)
                                      (_linearize13318_
                                       _hd3460_
                                       _rest3459_
                                       _r3439_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _rest34403448_))
                                  (let ((_hd34453465_
                                         (let ()
                                           (declare (not safe))
                                           (##car _rest34403448_)))
                                        (_tl34463467_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _rest34403448_))))
                                    (let* ((_hd3470_ _hd34453465_)
                                           (_rest3472_ _tl34463467_))
                                      (_K34443462_ _rest3472_ _hd3470_)))
                                  (_else34423456_)))))
                 (_linearize13318_
                  (lambda (_hd3401_ _rest3402_ _r3403_)
                    (let* ((_hd34043412_ _hd3401_)
                           (_E34073416_
                            (lambda ()
                              (error '"No clause matching" _hd34043412_)))
                           (_else34063420_
                            (lambda () (_K3317_ _rest3402_ _r3403_)))
                           (_K34083426_
                            (lambda (_hd-rest3423_ _hd-first3424_)
                              (if (_findq3321_ _hd-first3424_ _rest3402_)
                                  (_linearize23319_
                                   _rest3402_
                                   (list _hd3401_)
                                   _r3403_)
                                  (_K3317_ (cons _hd-rest3423_ _rest3402_)
                                           (_putq3320_
                                            _hd-first3424_
                                            _r3403_))))))
                      (if (let () (declare (not safe)) (##pair? _hd34043412_))
                          (let ((_hd34093429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd34043412_)))
                                (_tl34103431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd34043412_))))
                            (let* ((_hd-first3434_ _hd34093429_)
                                   (_hd-rest3436_ _tl34103431_))
                              (_K34083426_ _hd-rest3436_ _hd-first3434_)))
                          (_else34063420_)))))
                 (_linearize23319_
                  (lambda (_rest3331_ _pre3332_ _r3333_)
                    (let _lp3335_ ((_rest3337_ _rest3331_)
                                   (_pre3338_ _pre3332_))
                      (let* ((_rest33393346_ _rest3337_)
                             (_E33413350_
                              (lambda ()
                                (error '"No clause matching" _rest33393346_)))
                             (_K33423389_
                              (lambda (_rest3353_ _hd3354_)
                                (let* ((_hd33553363_ _hd3354_)
                                       (_E33583367_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _hd33553363_)))
                                       (_else33573371_
                                        (lambda ()
                                          (_lp3335_ _rest3353_ _pre3338_)))
                                       (_K33593377_
                                        (lambda (_hd-rest3374_ _hd-first3375_)
                                          (if (_findq3321_
                                               _hd-first3375_
                                               _rest3353_)
                                              (_lp3335_
                                               _rest3353_
                                               (cons _hd3354_ _pre3338_))
                                              (_K3317_ (foldl cons
                                                              (cons _hd-rest3374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest3353_)
                      _pre3338_)
               (_putq3320_ _hd-first3375_ _r3333_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd33553363_))
                                      (let ((_hd33603380_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd33553363_)))
                                            (_tl33613382_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd33553363_))))
                                        (let* ((_hd-first3385_ _hd33603380_)
                                               (_hd-rest3387_ _tl33613382_))
                                          (_K33593377_
                                           _hd-rest3387_
                                           _hd-first3385_)))
                                      (_else33573371_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest33393346_))
                            (let ((_hd33433392_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest33393346_)))
                                  (_tl33443394_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest33393346_))))
                              (let* ((_hd3397_ _hd33433392_)
                                     (_rest3399_ _tl33443394_))
                                (_K33423389_ _rest3399_ _hd3397_)))
                            (_E33413350_))))))
                 (_putq3320_
                  (lambda (_hd3328_ _lst3329_)
                    (if (memq _hd3328_ _lst3329_)
                        _lst3329_
                        (cons _hd3328_ _lst3329_))))
                 (_findq3321_
                  (lambda (_hd3323_ _rest3324_)
                    (find (lambda (_lst3326_) (memq _hd3323_ _lst3326_))
                          _rest3324_))))
          (_K3317_ _lst3315_ '()))))
    (define make-class-predicate
      (lambda (_klass3309_)
        (if (assgetq 'final: (type-descriptor-plist _klass3309_))
            (lambda (_obj3311_) (direct-class-instance? _klass3309_ _obj3311_))
            (lambda (_obj3313_) (class-instance? _klass3309_ _obj3313_)))))
    (define make-class-slot-accessor
      (lambda (_klass3304_ _slot3305_)
        (lambda (_obj3307_) (slot-ref _obj3307_ _slot3305_))))
    (define make-class-slot-mutator
      (lambda (_klass3298_ _slot3299_)
        (lambda (_obj3301_ _val3302_)
          (slot-set! _obj3301_ _slot3299_ _val3302_))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass3293_ _slot3294_)
        (lambda (_obj3296_) (unchecked-slot-ref _obj3296_ _slot3294_))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass3287_ _slot3288_)
        (lambda (_obj3290_ _val3291_)
          (unchecked-slot-set! _obj3290_ _slot3288_ _val3291_))))
    (define class-slot-offset
      (lambda (_klass3279_ _slot3280_)
        (let ((_$e3282_ (type-descriptor-slots _klass3279_)))
          (if _$e3282_
              ((lambda (_slots3285_) (hash-get _slots3285_ _slot3280_))
               _$e3282_)
              '#f))))
    (define class-slot-ref
      (lambda (_klass3273_ _obj3274_ _slot3275_)
        (if (class-instance? _klass3273_ _obj3274_)
            (let* ((_off3277_
                    (class-slot-offset (object-type _obj3274_) _slot3275_))
                   (__tmp4098
                    (let () (declare (not safe)) (##fx+ _off3277_ '1))))
              (declare (not safe))
              (##unchecked-structure-ref _obj3274_ __tmp4098 _klass3273_ '#f))
            (error '"not an instance" _klass3273_ _obj3274_))))
    (define class-slot-set!
      (lambda (_klass3266_ _obj3267_ _slot3268_ _val3269_)
        (if (class-instance? _klass3266_ _obj3267_)
            (let* ((_off3271_
                    (class-slot-offset (object-type _obj3267_) _slot3268_))
                   (__tmp4099
                    (let () (declare (not safe)) (##fx+ _off3271_ '1))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj3267_
               _val3269_
               __tmp4099
               _klass3266_
               '#f))
            (error '"not an instance" _klass3266_ _obj3267_))))
    (define class-subtype?
      (lambda (_klass3251_ _xklass3252_)
        (let* ((_klass-t3254_
                (let () (declare (not safe)) (##type-id _klass3251_)))
               (_$e3256_
                (eq? _klass-t3254_
                     (let () (declare (not safe)) (##type-id _xklass3252_)))))
          (if _$e3256_
              _$e3256_
              (let ((_$e3259_ (type-descriptor-mixin _xklass3252_)))
                (if _$e3259_
                    ((lambda (_mixin3262_)
                       (if (find (lambda (_xklass3264_)
                                   (eq? _klass-t3254_
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass3264_))))
                                 _mixin3262_)
                           '#t
                           '#f))
                     _$e3259_)
                    '#f))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass3248_ _obj3249_)
        (let ((__tmp4100
               (let () (declare (not safe)) (##type-id _klass3248_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj3249_ __tmp4100))))
    (define struct-instance?
      (lambda (_klass3245_ _obj3246_)
        (let ((__tmp4101
               (let () (declare (not safe)) (##type-id _klass3245_))))
          (declare (not safe))
          (##structure-instance-of? _obj3246_ __tmp4101))))
    (define direct-struct-instance? direct-instance?)
    (define class-instance?
      (lambda (_klass3229_ _obj3230_)
        (if (object? _obj3230_)
            (let ((_klass-id3232_
                   (let () (declare (not safe)) (##type-id _klass3229_)))
                  (_type3233_ (object-type _obj3230_)))
              (if (type-descriptor? _type3233_)
                  (let ((_$e3235_
                         (eq? (let ()
                                (declare (not safe))
                                (##type-id _type3233_))
                              _klass-id3232_)))
                    (if _$e3235_
                        _$e3235_
                        (let ((_$e3238_ (type-descriptor-mixin _type3233_)))
                          (if _$e3238_
                              ((lambda (_mixin3241_)
                                 (ormap (lambda (_type3243_)
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##type-id _type3243_))
                                               _klass-id3232_))
                                        _mixin3241_))
                               _$e3238_)
                              '#f))))
                  '#f))
            '#f)))
    (define direct-class-instance? direct-instance?)
    (define make-object
      (lambda (_klass3224_ _k3225_)
        (let ((_obj3227_
               (let ((__tmp4102
                      (let () (declare (not safe)) (##fx+ _k3225_ '1))))
                 (declare (not safe))
                 (##make-vector __tmp4102 '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj3227_ '0 _klass3224_))
          (let ((__tmp4103 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj3227_ __tmp4103))
          _obj3227_)))
    (define make-struct-instance
      (lambda (_klass3214_ . _args3215_)
        (let* ((_fields3217_ (type-descriptor-fields _klass3214_))
               (_$e3219_ (type-descriptor-ctor _klass3214_)))
          (if _$e3219_
              ((lambda (_kons-id3222_)
                 (__constructor-init!
                  _klass3214_
                  _kons-id3222_
                  (make-object _klass3214_ _fields3217_)
                  _args3215_))
               _$e3219_)
              (if (let ((__tmp4104 (length _args3215_)))
                    (declare (not safe))
                    (##fx= _fields3217_ __tmp4104))
                  (apply ##structure _klass3214_ _args3215_)
                  (error '"Arguments don't match object size"
                         _klass3214_
                         _fields3217_
                         _args3215_))))))
    (define make-class-instance
      (lambda (_klass3204_ . _args3205_)
        (let* ((_obj3207_
                (make-object _klass3204_ (type-descriptor-fields _klass3204_)))
               (_$e3209_ (type-descriptor-ctor _klass3204_)))
          (if _$e3209_
              ((lambda (_kons-id3212_)
                 (__constructor-init!
                  _klass3204_
                  _kons-id3212_
                  _obj3207_
                  _args3205_))
               _$e3209_)
              (__class-instance-init! _klass3204_ _obj3207_ _args3205_)))))
    (define struct-instance-init!
      (lambda (_obj3201_ . _args3202_)
        (if (let ((__tmp4106 (length _args3202_))
                  (__tmp4105
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj3201_))))
              (declare (not safe))
              (##fx< __tmp4106 __tmp4105))
            (__struct-instance-init! _obj3201_ _args3202_)
            (error '"Too many arguments for struct" _obj3201_ _args3202_))))
    (define __struct-instance-init!
      (lambda (_obj3160_ _args3161_)
        (let _lp3163_ ((_k3165_ '1) (_rest3166_ _args3161_))
          (let* ((_rest31673175_ _rest3166_)
                 (_E31703179_
                  (lambda () (error '"No clause matching" _rest31673175_)))
                 (_else31693183_ (lambda () _obj3160_))
                 (_K31713189_
                  (lambda (_rest3186_ _hd3187_)
                    (let ()
                      (declare (not safe))
                      (##vector-set! _obj3160_ _k3165_ _hd3187_))
                    (_lp3163_
                     (let () (declare (not safe)) (##fx+ _k3165_ '1))
                     _rest3186_))))
            (if (let () (declare (not safe)) (##pair? _rest31673175_))
                (let ((_hd31723192_
                       (let () (declare (not safe)) (##car _rest31673175_)))
                      (_tl31733194_
                       (let () (declare (not safe)) (##cdr _rest31673175_))))
                  (let* ((_hd3197_ _hd31723192_) (_rest3199_ _tl31733194_))
                    (_K31713189_ _rest3199_ _hd3197_)))
                (_else31693183_))))))
    (define class-instance-init!
      (lambda (_obj3157_ . _args3158_)
        (__class-instance-init! (object-type _obj3157_) _obj3157_ _args3158_)))
    (define __class-instance-init!
      (lambda (_klass3101_ _obj3102_ _args3103_)
        (let _lp3105_ ((_rest3107_ _args3103_))
          (let* ((_rest31083118_ _rest3107_)
                 (_E31113122_
                  (lambda () (error '"No clause matching" _rest31083118_)))
                 (_else31103126_
                  (lambda ()
                    (if (null? _rest3107_)
                        _obj3102_
                        (error '"Unexpected class initializer arguments"
                               _rest3107_))))
                 (_K31123138_
                  (lambda (_rest3129_ _val3130_ _key3131_)
                    (let ((_$e3133_ (class-slot-offset _klass3101_ _key3131_)))
                      (if _$e3133_
                          ((lambda (_off3136_)
                             (let ((__tmp4107
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _off3136_ '1))))
                               (declare (not safe))
                               (##vector-set! _obj3102_ __tmp4107 _val3130_))
                             (_lp3105_ _rest3129_))
                           _$e3133_)
                          (error '"No slot for keyword initializer"
                                 _klass3101_
                                 _key3131_))))))
            (if (let () (declare (not safe)) (##pair? _rest31083118_))
                (let ((_hd31133141_
                       (let () (declare (not safe)) (##car _rest31083118_)))
                      (_tl31143143_
                       (let () (declare (not safe)) (##cdr _rest31083118_))))
                  (let ((_key3146_ _hd31133141_))
                    (if (let () (declare (not safe)) (##pair? _tl31143143_))
                        (let ((_hd31153148_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl31143143_)))
                              (_tl31163150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl31143143_))))
                          (let* ((_val3153_ _hd31153148_)
                                 (_rest3155_ _tl31163150_))
                            (_K31123138_ _rest3155_ _val3153_ _key3146_)))
                        (_else31103126_))))
                (_else31103126_))))))
    (define constructor-init!
      (lambda (_klass3096_ _kons-id3097_ _obj3098_ . _args3099_)
        (__constructor-init! _klass3096_ _kons-id3097_ _obj3098_ _args3099_)))
    (define __constructor-init!
      (lambda (_klass3086_ _kons-id3087_ _obj3088_ _args3089_)
        (let ((_$e3091_ (__find-method _klass3086_ _kons-id3087_)))
          (if _$e3091_
              ((lambda (_kons3094_)
                 (apply _kons3094_ _obj3088_ _args3089_)
                 _obj3088_)
               _$e3091_)
              (error '"Missing constructor" _klass3086_ _kons-id3087_)))))
    (define struct-copy
      (lambda (_struct3084_)
        (if (let () (declare (not safe)) (##structure? _struct3084_))
            '#!void
            (error '"Not a structure" 'struct-copy _struct3084_))
        (let () (declare (not safe)) (##structure-copy _struct3084_))))
    (define struct->list
      (lambda (_obj3082_)
        (if (object? _obj3082_)
            (let () (declare (not safe)) (##vector->list _obj3082_))
            (error '"Not an object" _obj3082_))))
    (define class->list
      (lambda (_obj3069_)
        (if (object? _obj3069_)
            (let ((_klass3071_ (object-type _obj3069_)))
              (if (type-descriptor? _klass3071_)
                  (let ((_$e3073_ (type-descriptor-slots _klass3071_)))
                    (if _$e3073_
                        ((lambda (_slots3076_)
                           (cons _klass3071_
                                 (hash-fold
                                  (lambda (_slot3078_ _off3079_ _r3080_)
                                    (if (keyword? _slot3078_)
                                        (cons* _slot3078_
                                               (unchecked-field-ref
                                                _obj3069_
                                                _off3079_)
                                               _r3080_)
                                        _r3080_))
                                  '()
                                  _slots3076_)))
                         _$e3073_)
                        (list _klass3071_)))
                  (error '"Not a class type" _obj3069_ _klass3071_)))
            (error '"Not an object" _obj3069_))))
    (define unchecked-field-ref
      (lambda (_obj3066_ _off3067_)
        (let ((__tmp4108 (let () (declare (not safe)) (##fx+ _off3067_ '1))))
          (declare (not safe))
          (##vector-ref _obj3066_ __tmp4108))))
    (define unchecked-field-set!
      (lambda (_obj3062_ _off3063_ _val3064_)
        (let ((__tmp4109 (let () (declare (not safe)) (##fx+ _off3063_ '1))))
          (declare (not safe))
          (##vector-set! _obj3062_ __tmp4109 _val3064_))))
    (define unchecked-slot-ref
      (lambda (_obj3059_ _slot3060_)
        (unchecked-field-ref
         _obj3059_
         (class-slot-offset (object-type _obj3059_) _slot3060_))))
    (define unchecked-slot-set!
      (lambda (_obj3055_ _slot3056_ _val3057_)
        (unchecked-field-set!
         _obj3055_
         (class-slot-offset (object-type _obj3055_) _slot3056_)
         _val3057_)))
    (define slot-ref
      (let ((_opt-lambda30293043_
             (lambda (_obj3031_ _slot3032_ _E3033_)
               (if (object? _obj3031_)
                   (let* ((_klass3035_ (object-type _obj3031_))
                          (_$e3038_
                           (if (type-descriptor? _klass3035_)
                               (class-slot-offset _klass3035_ _slot3032_)
                               '#f)))
                     (if _$e3038_
                         ((lambda (_off3041_)
                            (let ((__tmp4110
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _off3041_ '1))))
                              (declare (not safe))
                              (##vector-ref _obj3031_ __tmp4110)))
                          _$e3038_)
                         (_E3033_ _obj3031_ _slot3032_)))
                   (_E3033_ _obj3031_ _slot3032_)))))
        (lambda _g4112_
          (let ((_g4111_ (let () (declare (not safe)) (##length _g4112_))))
            (cond ((let () (declare (not safe)) (##fx= _g4111_ 2))
                   (apply (lambda (_obj3046_ _slot3047_)
                            (let ((_E3049_ __slot-error))
                              (_opt-lambda30293043_
                               _obj3046_
                               _slot3047_
                               _E3049_)))
                          _g4112_))
                  ((let () (declare (not safe)) (##fx= _g4111_ 3))
                   (apply _opt-lambda30293043_ _g4112_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    slot-ref
                    _g4112_)))))))
    (define slot-set!
      (let ((_opt-lambda30013016_
             (lambda (_obj3003_ _slot3004_ _val3005_ _E3006_)
               (if (object? _obj3003_)
                   (let* ((_klass3008_ (object-type _obj3003_))
                          (_$e3011_
                           (if (type-descriptor? _klass3008_)
                               (class-slot-offset _klass3008_ _slot3004_)
                               '#f)))
                     (if _$e3011_
                         ((lambda (_off3014_)
                            (let ((__tmp4113
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _off3014_ '1))))
                              (declare (not safe))
                              (##vector-set! _obj3003_ __tmp4113 _val3005_)))
                          _$e3011_)
                         (_E3006_ _obj3003_ _slot3004_)))
                   (_E3006_ _obj3003_ _slot3004_)))))
        (lambda _g4115_
          (let ((_g4114_ (let () (declare (not safe)) (##length _g4115_))))
            (cond ((let () (declare (not safe)) (##fx= _g4114_ 3))
                   (apply (lambda (_obj3019_ _slot3020_ _val3021_)
                            (let ((_E3023_ __slot-error))
                              (_opt-lambda30013016_
                               _obj3019_
                               _slot3020_
                               _val3021_
                               _E3023_)))
                          _g4115_))
                  ((let () (declare (not safe)) (##fx= _g4114_ 4))
                   (apply _opt-lambda30013016_ _g4115_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    slot-set!
                    _g4115_)))))))
    (define __slot-error
      (lambda (_obj2999_ _slot3000_)
        (error '"Cannot find slot" _obj2999_ _slot3000_)))
    (define call-method
      (lambda (_obj2990_ _id2991_ . _args2992_)
        (let ((_$e2994_ (method-ref _obj2990_ _id2991_)))
          (if _$e2994_
              ((lambda (_method2997_)
                 (apply _method2997_ _obj2990_ _args2992_))
               _$e2994_)
              (error '"Cannot find method" _obj2990_ _id2991_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj2987_ _id2988_)
        (if (object? _obj2987_)
            (find-method (object-type _obj2987_) _id2988_)
            '#f)))
    (define checked-method-ref
      (lambda (_obj2981_ _id2982_)
        (let ((_$e2984_ (method-ref _obj2981_ _id2982_)))
          (if _$e2984_
              _$e2984_
              (error '"Missing method" _obj2981_ _id2982_)))))
    (define bound-method-ref
      (lambda (_obj2971_ _id2972_)
        (let ((_$e2974_ (method-ref _obj2971_ _id2972_)))
          (if _$e2974_
              ((lambda (_method2977_)
                 (lambda _args2979_ (apply _method2977_ _obj2971_ _args2979_)))
               _$e2974_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj2964_ _id2965_)
        (let ((_method2967_ (checked-method-ref _obj2964_ _id2965_)))
          (lambda _args2969_ (apply _method2967_ _obj2964_ _args2969_)))))
    (define find-method
      (lambda (_klass2958_ _id2959_)
        (if (type-descriptor? _klass2958_)
            (__find-method _klass2958_ _id2959_)
            (if (let () (declare (not safe)) (##type? _klass2958_))
                (let ((_$e2961_ (builtin-method-ref _klass2958_ _id2959_)))
                  (if _$e2961_
                      _$e2961_
                      (builtin-find-method
                       (let () (declare (not safe)) (##type-super _klass2958_))
                       _id2959_)))
                '#f))))
    (define __find-method
      (lambda (_klass2947_ _id2948_)
        (let ((_$e2950_ (direct-method-ref _klass2947_ _id2948_)))
          (if _$e2950_
              _$e2950_
              (if (type-descriptor-sealed? _klass2947_)
                  '#f
                  (let ((_$e2953_ (type-descriptor-mixin _klass2947_)))
                    (if _$e2953_
                        ((lambda (_mixin2956_)
                           (mixin-find-method _mixin2956_ _id2948_))
                         _$e2953_)
                        (struct-find-method
                         (let ()
                           (declare (not safe))
                           (##type-super _klass2947_))
                         _id2948_))))))))
    (define struct-find-method
      (lambda (_klass2938_ _id2939_)
        (if (type-descriptor? _klass2938_)
            (let ((_$e2941_ (direct-method-ref _klass2938_ _id2939_)))
              (if _$e2941_
                  _$e2941_
                  (struct-find-method
                   (let () (declare (not safe)) (##type-super _klass2938_))
                   _id2939_)))
            (if (let () (declare (not safe)) (##type? _klass2938_))
                (let ((_$e2944_ (builtin-method-ref _klass2938_ _id2939_)))
                  (if _$e2944_
                      _$e2944_
                      (builtin-find-method
                       (let () (declare (not safe)) (##type-super _klass2938_))
                       _id2939_)))
                '#f))))
    (define class-find-method
      (lambda (_klass2932_ _id2933_)
        (if (type-descriptor? _klass2932_)
            (let ((_$e2935_ (direct-method-ref _klass2932_ _id2933_)))
              (if _$e2935_ _$e2935_ (mixin-method-ref _klass2932_ _id2933_)))
            '#f)))
    (define mixin-find-method
      (lambda (_mixin2889_ _id2890_)
        (let _lp2892_ ((_rest2894_ _mixin2889_))
          (let* ((_rest28952903_ _rest2894_)
                 (_E28982907_
                  (lambda () (error '"No clause matching" _rest28952903_)))
                 (_else28972911_ (lambda () '#f))
                 (_K28992920_
                  (lambda (_rest2914_ _klass2915_)
                    (let ((_$e2917_ (direct-method-ref _klass2915_ _id2890_)))
                      (if _$e2917_ _$e2917_ (_lp2892_ _rest2914_))))))
            (if (let () (declare (not safe)) (##pair? _rest28952903_))
                (let ((_hd29002923_
                       (let () (declare (not safe)) (##car _rest28952903_)))
                      (_tl29012925_
                       (let () (declare (not safe)) (##cdr _rest28952903_))))
                  (let* ((_klass2928_ _hd29002923_) (_rest2930_ _tl29012925_))
                    (_K28992920_ _rest2930_ _klass2928_)))
                (_else28972911_))))))
    (define builtin-find-method
      (lambda (_klass2883_ _id2884_)
        (if (let () (declare (not safe)) (##type? _klass2883_))
            (let ((_$e2886_ (builtin-method-ref _klass2883_ _id2884_)))
              (if _$e2886_
                  _$e2886_
                  (builtin-find-method
                   (let () (declare (not safe)) (##type-super _klass2883_))
                   _id2884_)))
            '#f)))
    (define direct-method-ref
      (lambda (_klass2875_ _id2876_)
        (let ((_$e2878_ (type-descriptor-methods _klass2875_)))
          (if _$e2878_
              ((lambda (_ht2881_) (hash-get _ht2881_ _id2876_)) _$e2878_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass2867_ _id2868_)
        (let ((_$e2870_ (type-descriptor-mixin _klass2867_)))
          (if _$e2870_
              ((lambda (_mixin2873_) (mixin-find-method _mixin2873_ _id2868_))
               _$e2870_)
              '#f))))
    (define builtin-method-ref
      (lambda (_klass2859_ _id2860_)
        (let ((_$e2862_
               (hash-get
                __builtin-type-methods
                (let () (declare (not safe)) (##type-id _klass2859_)))))
          (if _$e2862_
              ((lambda (_mtab2865_) (hash-get _mtab2865_ _id2860_)) _$e2862_)
              '#f))))
    (define bind-method!
      (let ((_opt-lambda28232845_
             (lambda (_klass2825_ _id2826_ _proc2827_ _rebind?2828_)
               (letrec ((_bind!2830_
                         (lambda (_ht2843_)
                           (if (and (not _rebind?2828_)
                                    (hash-get _ht2843_ _id2826_))
                               (error '"Method already bound"
                                      _klass2825_
                                      _id2826_)
                               (hash-put! _ht2843_ _id2826_ _proc2827_)))))
                 (if (procedure? _proc2827_)
                     '#!void
                     (error '"Bad method; expected procedure" _proc2827_))
                 (if (type-descriptor? _klass2825_)
                     (let ((_ht2832_ (type-descriptor-methods _klass2825_)))
                       (if _ht2832_
                           (_bind!2830_ _ht2832_)
                           (let ((_ht2834_ (make-hash-table-eq)))
                             (type-descriptor-methods-set!
                              _klass2825_
                              _ht2834_)
                             (_bind!2830_ _ht2834_))))
                     (if (let () (declare (not safe)) (##type? _klass2825_))
                         (let ((_ht2841_
                                (let ((_$e2836_
                                       (hash-get
                                        __builtin-type-methods
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass2825_)))))
                                  (if _$e2836_
                                      _$e2836_
                                      (let ((_ht2839_ (make-hash-table-eq)))
                                        (hash-put!
                                         __builtin-type-methods
                                         (let ()
                                           (declare (not safe))
                                           (##type-id _klass2825_))
                                         _ht2839_)
                                        _ht2839_)))))
                           (_bind!2830_ _ht2841_))
                         (error '"Bad class; expected type-descriptor"
                                _klass2825_)))))))
        (lambda _g4117_
          (let ((_g4116_ (let () (declare (not safe)) (##length _g4117_))))
            (cond ((let () (declare (not safe)) (##fx= _g4116_ 3))
                   (apply (lambda (_klass2848_ _id2849_ _proc2850_)
                            (let ((_rebind?2852_ '#t))
                              (_opt-lambda28232845_
                               _klass2848_
                               _id2849_
                               _proc2850_
                               _rebind?2852_)))
                          _g4117_))
                  ((let () (declare (not safe)) (##fx= _g4116_ 4))
                   (apply _opt-lambda28232845_ _g4117_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    bind-method!
                    _g4117_)))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc2821_ _specializer2822_)
        (hash-put! __method-specializers _proc2821_ _specializer2822_)))
    (define seal-class!
      (lambda (_klass2736_)
        (letrec ((_collect-methods!2738_
                  (lambda (_mtab2754_)
                    (letrec ((_merge!2756_
                              (lambda (_tab2816_)
                                (hash-for-each
                                 (lambda (_id2818_ _proc2819_)
                                   (hash-put! _mtab2754_ _id2818_ _proc2819_))
                                 _tab2816_)))
                             (_collect-direct-methods!2757_
                              (lambda (_klass2811_)
                                (let ((_$e2813_
                                       (type-descriptor-methods _klass2811_)))
                                  (if _$e2813_
                                      (_merge!2756_ _$e2813_)
                                      '#!void)))))
                      (let ((_$e2759_ (type-descriptor-mixin _klass2736_)))
                        (if _$e2759_
                            ((lambda (_mixin2762_)
                               (let _recur2764_ ((_rest2766_ _mixin2762_))
                                 (let* ((_rest27672775_ _rest2766_)
                                        (_E27702779_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest27672775_)))
                                        (_else27692783_ (lambda () (void)))
                                        (_K27712792_
                                         (lambda (_rest2786_ _klass2787_)
                                           (_recur2764_ _rest2786_)
                                           (if (type-descriptor? _klass2787_)
                                               (_collect-direct-methods!2757_
                                                _klass2787_)
                                               (let ((_$e2789_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type? _klass2787_))
                                                          (hash-get
                                                           __builtin-type-methods
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##type-id
                                                              _klass2787_)))
                                                          '#f)))
                                                 (if _$e2789_
                                                     (_merge!2756_ _$e2789_)
                                                     '#!void))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest27672775_))
                                       (let ((_hd27722795_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest27672775_)))
                                             (_tl27732797_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest27672775_))))
                                         (let* ((_klass2800_ _hd27722795_)
                                                (_rest2802_ _tl27732797_))
                                           (_K27712792_
                                            _rest2802_
                                            _klass2800_)))
                                       (_else27692783_)))))
                             _$e2759_)
                            (let _recur2804_ ((_klass2806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##type-super _klass2736_))))
                              (if (type-descriptor? _klass2806_)
                                  (begin
                                    (_recur2804_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _klass2806_)))
                                    (_collect-direct-methods!2757_
                                     _klass2806_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _klass2806_))
                                      (begin
                                        (_recur2804_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super _klass2806_)))
                                        (let ((_$e2808_
                                               (hash-get
                                                __builtin-type-methods
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass2806_)))))
                                          (if _$e2808_
                                              (_merge!2756_ _$e2808_)
                                              '#!void)))
                                      '#!void)))))
                      (_collect-direct-methods!2757_ _klass2736_)))))
          (if (type-descriptor? _klass2736_)
              (if (type-descriptor-sealed? _klass2736_)
                  '#!void
                  (begin
                    (if (assgetq 'final: (type-descriptor-plist _klass2736_))
                        '#!void
                        (error '"Cannot seal non-final class" _klass2736_))
                    (let ((_vtab2740_ (make-hash-table-eq))
                          (_mtab2741_ (make-hash-table-eq)))
                      (_collect-methods!2738_ _mtab2741_)
                      (hash-for-each
                       (lambda (_id2743_ _proc2744_)
                         (let ((_$e2746_
                                (hash-get __method-specializers _proc2744_)))
                           (if _$e2746_
                               ((lambda (_specializer2749_)
                                  (let ((_proc2751_
                                         (_specializer2749_ _klass2736_))
                                        (_gid2752_
                                         (make-symbol
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _klass2736_))
                                          '"::["
                                          _id2743_
                                          '"]")))
                                    (eval (cons 'def
                                                (cons _gid2752_
                                                      (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _proc2751_ '()))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (hash-put!
                                     _vtab2740_
                                     _id2743_
                                     _proc2751_)))
                                _$e2746_)
                               (hash-put! _vtab2740_ _id2743_ _proc2744_))))
                       _mtab2741_)
                      (type-descriptor-methods-set! _klass2736_ _vtab2740_)
                      (type-descriptor-seal! _klass2736_))))
              '#!void))))
    (define next-method
      (lambda (_subklass2673_ _obj2674_ _id2675_)
        (let ((_klass2677_ (object-type _obj2674_))
              (_type-id2678_
               (let () (declare (not safe)) (##type-id _subklass2673_))))
          (if (type-descriptor? _klass2677_)
              (let ((_$e2680_ (type-descriptor-mixin _klass2677_)))
                (if _$e2680_
                    ((lambda (_mixin2683_)
                       (let _lp2685_ ((_rest2687_
                                       (cons _klass2677_ _mixin2683_)))
                         (let* ((_rest26882696_ _rest2687_)
                                (_E26912700_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _rest26882696_)))
                                (_else26902704_ (lambda () '#f))
                                (_K26922710_
                                 (lambda (_rest2707_ _klass2708_)
                                   (if (eq? _type-id2678_
                                            (let ()
                                              (declare (not safe))
                                              (##type-id _klass2708_)))
                                       (mixin-find-method _rest2707_ _id2675_)
                                       (_lp2685_ _rest2707_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest26882696_))
                               (let ((_hd26932713_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest26882696_)))
                                     (_tl26942715_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest26882696_))))
                                 (let* ((_klass2718_ _hd26932713_)
                                        (_rest2720_ _tl26942715_))
                                   (_K26922710_ _rest2720_ _klass2718_)))
                               (_else26902704_)))))
                     _$e2680_)
                    (let _lp2722_ ((_klass2724_ _klass2677_))
                      (if (eq? _type-id2678_
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass2724_)))
                          (struct-find-method
                           (let ()
                             (declare (not safe))
                             (##type-super _klass2724_))
                           _id2675_)
                          (let ((_$e2726_
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _klass2724_))))
                            (if _$e2726_ (_lp2722_ _$e2726_) '#f))))))
              (if (let () (declare (not safe)) (##type? _klass2677_))
                  (let _lp2729_ ((_klass2731_ _klass2677_))
                    (if (eq? _type-id2678_
                             (let ()
                               (declare (not safe))
                               (##type-id _klass2731_)))
                        (builtin-find-method
                         (let ()
                           (declare (not safe))
                           (##type-super _klass2731_))
                         _id2675_)
                        (let ((_$e2733_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass2731_))))
                          (if _$e2733_ (_lp2729_ _$e2733_) '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass2663_ _obj2664_ _id2665_ . _args2666_)
        (let ((_$e2668_ (next-method _subklass2663_ _obj2664_ _id2665_)))
          (if _$e2668_
              ((lambda (_methodf2671_)
                 (apply _methodf2671_ _obj2664_ _args2666_))
               _$e2668_)
              (error '"Cannot find next method" _obj2664_ _id2665_)))))
    (define write-style (lambda (_we2661_) (macro-writeenv-style _we2661_)))
    (define write-object
      (lambda (_we2653_ _obj2654_)
        (let ((_$e2656_ (method-ref _obj2654_ ':wr)))
          (if _$e2656_
              ((lambda (_method2659_) (_method2659_ _obj2654_ _we2653_))
               _$e2656_)
              (let ()
                (declare (not safe))
                (##default-wr _we2653_ _obj2654_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
