(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710677337)
  (begin
    (declare
      (not optimize-dead-definitions
           immediate::t
           char::t
           boolean::t
           atom::t
           void::t
           eof::t
           true::t
           false::t
           special::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           cpxnum::t
           symbolic::t
           symbol::t
           keyword::t
           list::t
           pair::t
           null::t
           sequence::t
           vector::t
           string::t
           hvector::t
           u8vector::t
           s8vector::t
           u16vector::t
           s16vector::t
           u32vector::t
           s32vector::t
           u64vector::t
           s64vector::t
           f32vector::t
           f64vector::t
           values::t
           box::t
           frame::t
           continuation::t
           promise::t
           weak::t
           foreign::t
           procedure::t))
    (define immediate::t
      (let () (declare (not safe)) (__make-system-class 'immediate '())))
    (define char::t
      (let ((__tmp66047 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66047)))
    (define boolean::t
      (let ((__tmp66048 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66048)))
    (define atom::t
      (let ((__tmp66049 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66049)))
    (define void::t
      (let ((__tmp66050 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66050)))
    (define eof::t
      (let ((__tmp66051 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66051)))
    (define true::t
      (let ((__tmp66052
             (let ((__tmp66053
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66053))))
        (declare (not safe))
        (__make-system-class 'true __tmp66052)))
    (define false::t
      (let ((__tmp66054
             (let ((__tmp66055
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66055))))
        (declare (not safe))
        (__make-system-class 'false __tmp66054)))
    (define special::t
      (let ((__tmp66056 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66056)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66057 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66057)))
    (define integer::t
      (let ((__tmp66058 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66058)))
    (define fixnum::t
      (let ((__tmp66059
             (let ((__tmp66060
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66060))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66059)))
    (define bignum::t
      (let ((__tmp66061 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66061)))
    (define ratnum::t
      (let ((__tmp66062 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66062)))
    (define flonum::t
      (let ((__tmp66063 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66063)))
    (define cpxnum::t
      (let ((__tmp66064 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66064)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66065 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66065)))
    (define keyword::t
      (let ((__tmp66066 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66066)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66067 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66067)))
    (define null::t
      (let ((__tmp66068
             (let ((__tmp66069
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66069))))
        (declare (not safe))
        (__make-system-class 'null __tmp66068)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66070 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66070)))
    (define string::t
      (let ((__tmp66071 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66071)))
    (define hvector::t
      (let ((__tmp66072 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66072)))
    (define u8vector::t
      (let ((__tmp66073 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66073)))
    (define s8vector::t
      (let ((__tmp66074 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66074)))
    (define u16vector::t
      (let ((__tmp66075 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66075)))
    (define s16vector::t
      (let ((__tmp66076 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66076)))
    (define u32vector::t
      (let ((__tmp66077 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66077)))
    (define s32vector::t
      (let ((__tmp66078 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66078)))
    (define u64vector::t
      (let ((__tmp66079 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66079)))
    (define s64vector::t
      (let ((__tmp66080 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66080)))
    (define f32vector::t
      (let ((__tmp66081 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66081)))
    (define f64vector::t
      (let ((__tmp66082 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66082)))
    (define values::t
      (let () (declare (not safe)) (__make-system-class 'values '())))
    (define box::t
      (let () (declare (not safe)) (__make-system-class 'box '())))
    (define frame::t
      (let () (declare (not safe)) (__make-system-class 'frame '())))
    (define continuation::t
      (let () (declare (not safe)) (__make-system-class 'continuation '())))
    (define promise::t
      (let () (declare (not safe)) (__make-system-class 'promise '())))
    (define weak::t
      (let () (declare (not safe)) (__make-system-class 'weak '())))
    (define foreign::t
      (let () (declare (not safe)) (__make-system-class 'foreign '())))
    (define procedure::t
      (let () (declare (not safe)) (__make-system-class 'procedure '())))
    (define time::t
      (let ((__tmp66083 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66083)))
    (define thread::t
      (let ((__tmp66084 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66084)))
    (define thread-group::t
      (let ((__tmp66085 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66085)))
    (define mutex::t
      (let ((__tmp66086 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66086)))
    (define condvar::t
      (let ((__tmp66087 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66087)))
    (define port::t
      (let ((__tmp66088 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66088)))
    (define object-port::t
      (let ((__tmp66089 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66089)))
    (define character-port::t
      (let ((__tmp66090 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66090)))
    (define byte-port::t
      (let ((__tmp66091 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66091)))
    (define device-port::t
      (let ((__tmp66092 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66092)))
    (define vector-port::t
      (let ((__tmp66093 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66093)))
    (define string-port::t
      (let ((__tmp66094 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66094)))
    (define u8vector-port::t
      (let ((__tmp66095 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66095)))
    (define raw-device-port::t
      (let ((__tmp66096 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66096)))
    (define tcp-server-port::t
      (let ((__tmp66097 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66097)))
    (define udp-port::t
      (let ((__tmp66098 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66098)))
    (define directory-port::t
      (let ((__tmp66099 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66099)))
    (define event-queue-port::t
      (let ((__tmp66100 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66100)))
    (define table::t
      (let ((__tmp66101 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66101)))
    (define readenv::t
      (let ((__tmp66102 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66102)))
    (define writeenv::t
      (let ((__tmp66103 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66103)))
    (define readtable::t
      (let ((__tmp66104 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66104)))
    (define processor::t
      (let ((__tmp66105 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66105)))
    (define vm::t
      (let ((__tmp66106 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66106)))
    (define file-info::t
      (let ((__tmp66107 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66107)))
    (define socket-info::t
      (let ((__tmp66108 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66108)))
    (define address-info::t
      (let ((__tmp66109 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66109)))
    (define atom?
      (lambda (_obj66046_)
        (if (let () (declare (not safe)) (immediate? _obj66046_))
            (if (let ((__tmp66111
                       (let () (declare (not safe)) (char? _obj66046_))))
                  (declare (not safe))
                  (not __tmp66111))
                (let ((__tmp66110
                       (let () (declare (not safe)) (fixnum? _obj66046_))))
                  (declare (not safe))
                  (not __tmp66110))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66044_)
        (if (fx= (let () (declare (not safe)) (##type _obj66044_)) '2)
            (if (let ((__tmp66116
                       (let () (declare (not safe)) (char? _obj66044_))))
                  (declare (not safe))
                  (not __tmp66116))
                (if (let ((__tmp66115
                           (let () (declare (not safe)) (null? _obj66044_))))
                      (declare (not safe))
                      (not __tmp66115))
                    (if (let ((__tmp66114
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66044_))))
                          (declare (not safe))
                          (not __tmp66114))
                        (if (let ((__tmp66113
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66044_ '#!void))))
                              (declare (not safe))
                              (not __tmp66113))
                            (let ((__tmp66112
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66044_))))
                              (declare (not safe))
                              (not __tmp66112))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66036_)
        (let ((_$e66038_ (let () (declare (not safe)) (vector? _obj66036_))))
          (if _$e66038_
              _$e66038_
              (let ((_$e66041_
                     (let () (declare (not safe)) (string? _obj66036_))))
                (if _$e66041_
                    _$e66041_
                    (let () (declare (not safe)) (hvector? _obj66036_))))))))
    (define hvector?
      (lambda (_obj66007_)
        (let ((_$e66009_ (let () (declare (not safe)) (u8vector? _obj66007_))))
          (if _$e66009_
              _$e66009_
              (let ((_$e66012_ (s8vector? _obj66007_)))
                (if _$e66012_
                    _$e66012_
                    (let ((_$e66015_ (u16vector? _obj66007_)))
                      (if _$e66015_
                          _$e66015_
                          (let ((_$e66018_ (s16vector? _obj66007_)))
                            (if _$e66018_
                                _$e66018_
                                (let ((_$e66021_ (u32vector? _obj66007_)))
                                  (if _$e66021_
                                      _$e66021_
                                      (let ((_$e66024_
                                             (s32vector? _obj66007_)))
                                        (if _$e66024_
                                            _$e66024_
                                            (let ((_$e66027_
                                                   (u64vector? _obj66007_)))
                                              (if _$e66027_
                                                  _$e66027_
                                                  (let ((_$e66030_
                                                         (s64vector?
                                                          _obj66007_)))
                                                    (if _$e66030_
                                                        _$e66030_
                                                        (let ((_$e66033_
                                                               (f32vector?
                                                                _obj66007_)))
                                                          (if _$e66033_
                                                              _$e66033_
                                                              (f64vector?
                                                               _obj66007_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66005_)
        (if (let () (declare (not safe)) (##subtyped? _obj66005_))
            (let ((__tmp66118
                   (let () (declare (not safe)) (##subtype _obj66005_)))
                  (__tmp66117 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66118 __tmp66117))
            '#f)))
    (define object-port?
      (lambda (_obj66003_)
        (let ((__tmp66119
               (let ((__tmp66120 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66120))))
          (declare (not safe))
          (##structure-instance-of? _obj66003_ __tmp66119))))
    (define character-port?
      (lambda (_obj66001_)
        (let ((__tmp66121
               (let ((__tmp66122 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66122))))
          (declare (not safe))
          (##structure-instance-of? _obj66001_ __tmp66121))))
    (define device-port?
      (lambda (_obj65999_)
        (let ((__tmp66123
               (let ((__tmp66124 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66124))))
          (declare (not safe))
          (##structure-instance-of? _obj65999_ __tmp66123))))
    (define vector-port?
      (lambda (_obj65997_)
        (let ((__tmp66125
               (let ((__tmp66126 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66126))))
          (declare (not safe))
          (##structure-instance-of? _obj65997_ __tmp66125))))
    (define string-port?
      (lambda (_obj65995_)
        (let ((__tmp66127
               (let ((__tmp66128 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66128))))
          (declare (not safe))
          (##structure-instance-of? _obj65995_ __tmp66127))))
    (define u8vector-port?
      (lambda (_obj65993_)
        (let ((__tmp66129
               (let ((__tmp66130 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66130))))
          (declare (not safe))
          (##structure-instance-of? _obj65993_ __tmp66129))))
    (define raw-device-port?
      (lambda (_obj65991_)
        (let ((__tmp66131
               (let ((__tmp66132 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66132))))
          (declare (not safe))
          (##structure-instance-of? _obj65991_ __tmp66131))))
    (define tcp-server-port?
      (lambda (_obj65989_)
        (let ((__tmp66133
               (let ((__tmp66134 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66134))))
          (declare (not safe))
          (##structure-instance-of? _obj65989_ __tmp66133))))
    (define udp-port?
      (lambda (_obj65987_)
        (let ((__tmp66135
               (let ((__tmp66136 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66136))))
          (declare (not safe))
          (##structure-instance-of? _obj65987_ __tmp66135))))
    (define directory-port?
      (lambda (_obj65985_)
        (let ((__tmp66137
               (let ((__tmp66138 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66138))))
          (declare (not safe))
          (##structure-instance-of? _obj65985_ __tmp66137))))
    (define event-queue-port?
      (lambda (_obj65983_)
        (let ((__tmp66139
               (let ((__tmp66140 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66140))))
          (declare (not safe))
          (##structure-instance-of? _obj65983_ __tmp66139))))
    (define readenv?
      (lambda (_obj65981_)
        (let ((__tmp66141
               (let ((__tmp66142 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66142))))
          (declare (not safe))
          (##structure-instance-of? _obj65981_ __tmp66141))))
    (define writeenv?
      (lambda (_obj65979_)
        (let ((__tmp66143
               (let ((__tmp66144 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66144))))
          (declare (not safe))
          (##structure-instance-of? _obj65979_ __tmp66143))))
    (define vm?
      (lambda (_obj65977_)
        (let ((__tmp66145
               (let ((__tmp66146 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66146))))
          (declare (not safe))
          (##structure-instance-of? _obj65977_ __tmp66145))))))
