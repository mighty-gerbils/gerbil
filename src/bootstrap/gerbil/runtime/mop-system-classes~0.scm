(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1710715074)
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
           procedure::t
           return::t))
    (define immediate::t
      (let () (declare (not safe)) (__make-system-class 'immediate '())))
    (define char::t
      (let ((__tmp66054 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'char __tmp66054)))
    (define boolean::t
      (let ((__tmp66055 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'boolean __tmp66055)))
    (define atom::t
      (let ((__tmp66056 (let () (declare (not safe)) (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'atom __tmp66056)))
    (define void::t
      (let ((__tmp66057 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'void __tmp66057)))
    (define eof::t
      (let ((__tmp66058 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'eof __tmp66058)))
    (define true::t
      (let ((__tmp66059
             (let ((__tmp66060
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66060))))
        (declare (not safe))
        (__make-system-class 'true __tmp66059)))
    (define false::t
      (let ((__tmp66061
             (let ((__tmp66062
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons boolean::t __tmp66062))))
        (declare (not safe))
        (__make-system-class 'false __tmp66061)))
    (define special::t
      (let ((__tmp66063 (let () (declare (not safe)) (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'special __tmp66063)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp66064 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'real __tmp66064)))
    (define integer::t
      (let ((__tmp66065 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'integer __tmp66065)))
    (define fixnum::t
      (let ((__tmp66066
             (let ((__tmp66067
                    (let () (declare (not safe)) (cons immediate::t '()))))
               (declare (not safe))
               (cons integer::t __tmp66067))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp66066)))
    (define bignum::t
      (let ((__tmp66068 (let () (declare (not safe)) (cons integer::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp66068)))
    (define ratnum::t
      (let ((__tmp66069 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp66069)))
    (define flonum::t
      (let ((__tmp66070 (let () (declare (not safe)) (cons real::t '()))))
        (declare (not safe))
        (__make-system-class 'flonum __tmp66070)))
    (define cpxnum::t
      (let ((__tmp66071 (let () (declare (not safe)) (cons number::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp66071)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp66072 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'symbol __tmp66072)))
    (define keyword::t
      (let ((__tmp66073 (let () (declare (not safe)) (cons symbolic::t '()))))
        (declare (not safe))
        (__make-system-class 'keyword __tmp66073)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp66074 (let () (declare (not safe)) (cons list::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp66074)))
    (define null::t
      (let ((__tmp66075
             (let ((__tmp66076
                    (let () (declare (not safe)) (cons atom::t '()))))
               (declare (not safe))
               (cons list::t __tmp66076))))
        (declare (not safe))
        (__make-system-class 'null __tmp66075)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp66077 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'vector __tmp66077)))
    (define string::t
      (let ((__tmp66078 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'string __tmp66078)))
    (define hvector::t
      (let ((__tmp66079 (let () (declare (not safe)) (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'hvector __tmp66079)))
    (define u8vector::t
      (let ((__tmp66080 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp66080)))
    (define s8vector::t
      (let ((__tmp66081 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's8vector __tmp66081)))
    (define u16vector::t
      (let ((__tmp66082 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp66082)))
    (define s16vector::t
      (let ((__tmp66083 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's16vector __tmp66083)))
    (define u32vector::t
      (let ((__tmp66084 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp66084)))
    (define s32vector::t
      (let ((__tmp66085 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's32vector __tmp66085)))
    (define u64vector::t
      (let ((__tmp66086 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp66086)))
    (define s64vector::t
      (let ((__tmp66087 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 's64vector __tmp66087)))
    (define f32vector::t
      (let ((__tmp66088 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp66088)))
    (define f64vector::t
      (let ((__tmp66089 (let () (declare (not safe)) (cons hvector::t '()))))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp66089)))
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
    (define return::t
      (let () (declare (not safe)) (__make-system-class 'return '())))
    (define time::t
      (let ((__tmp66090 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp66090)))
    (define thread::t
      (let ((__tmp66091 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp66091)))
    (define thread-group::t
      (let ((__tmp66092 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp66092)))
    (define mutex::t
      (let ((__tmp66093 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp66093)))
    (define condvar::t
      (let ((__tmp66094 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp66094)))
    (define port::t
      (let ((__tmp66095 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp66095)))
    (define object-port::t
      (let ((__tmp66096 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp66096)))
    (define character-port::t
      (let ((__tmp66097 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp66097)))
    (define byte-port::t
      (let ((__tmp66098 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp66098)))
    (define device-port::t
      (let ((__tmp66099 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66099)))
    (define vector-port::t
      (let ((__tmp66100 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66100)))
    (define string-port::t
      (let ((__tmp66101 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp66101)))
    (define u8vector-port::t
      (let ((__tmp66102 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp66102)))
    (define raw-device-port::t
      (let ((__tmp66103 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp66103)))
    (define tcp-server-port::t
      (let ((__tmp66104 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp66104)))
    (define udp-port::t
      (let ((__tmp66105 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp66105)))
    (define directory-port::t
      (let ((__tmp66106 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp66106)))
    (define event-queue-port::t
      (let ((__tmp66107 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp66107)))
    (define table::t
      (let ((__tmp66108 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp66108)))
    (define readenv::t
      (let ((__tmp66109 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp66109)))
    (define writeenv::t
      (let ((__tmp66110 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp66110)))
    (define readtable::t
      (let ((__tmp66111 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp66111)))
    (define processor::t
      (let ((__tmp66112 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp66112)))
    (define vm::t
      (let ((__tmp66113 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp66113)))
    (define file-info::t
      (let ((__tmp66114 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp66114)))
    (define socket-info::t
      (let ((__tmp66115 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp66115)))
    (define address-info::t
      (let ((__tmp66116 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp66116)))
    (define atom?
      (lambda (_obj66053_)
        (if (let () (declare (not safe)) (immediate? _obj66053_))
            (if (let ((__tmp66118
                       (let () (declare (not safe)) (char? _obj66053_))))
                  (declare (not safe))
                  (not __tmp66118))
                (let ((__tmp66117
                       (let () (declare (not safe)) (fixnum? _obj66053_))))
                  (declare (not safe))
                  (not __tmp66117))
                '#f)
            '#f)))
    (define special?
      (lambda (_obj66051_)
        (if (fx= (let () (declare (not safe)) (##type _obj66051_)) '2)
            (if (let ((__tmp66123
                       (let () (declare (not safe)) (char? _obj66051_))))
                  (declare (not safe))
                  (not __tmp66123))
                (if (let ((__tmp66122
                           (let () (declare (not safe)) (null? _obj66051_))))
                      (declare (not safe))
                      (not __tmp66122))
                    (if (let ((__tmp66121
                               (let ()
                                 (declare (not safe))
                                 (boolean? _obj66051_))))
                          (declare (not safe))
                          (not __tmp66121))
                        (if (let ((__tmp66120
                                   (let ()
                                     (declare (not safe))
                                     (eq? _obj66051_ '#!void))))
                              (declare (not safe))
                              (not __tmp66120))
                            (let ((__tmp66119
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _obj66051_))))
                              (declare (not safe))
                              (not __tmp66119))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_obj66043_)
        (let ((_$e66045_ (let () (declare (not safe)) (vector? _obj66043_))))
          (if _$e66045_
              _$e66045_
              (let ((_$e66048_
                     (let () (declare (not safe)) (string? _obj66043_))))
                (if _$e66048_
                    _$e66048_
                    (let () (declare (not safe)) (hvector? _obj66043_))))))))
    (define hvector?
      (lambda (_obj66014_)
        (let ((_$e66016_ (let () (declare (not safe)) (u8vector? _obj66014_))))
          (if _$e66016_
              _$e66016_
              (let ((_$e66019_ (s8vector? _obj66014_)))
                (if _$e66019_
                    _$e66019_
                    (let ((_$e66022_ (u16vector? _obj66014_)))
                      (if _$e66022_
                          _$e66022_
                          (let ((_$e66025_ (s16vector? _obj66014_)))
                            (if _$e66025_
                                _$e66025_
                                (let ((_$e66028_ (u32vector? _obj66014_)))
                                  (if _$e66028_
                                      _$e66028_
                                      (let ((_$e66031_
                                             (s32vector? _obj66014_)))
                                        (if _$e66031_
                                            _$e66031_
                                            (let ((_$e66034_
                                                   (u64vector? _obj66014_)))
                                              (if _$e66034_
                                                  _$e66034_
                                                  (let ((_$e66037_
                                                         (s64vector?
                                                          _obj66014_)))
                                                    (if _$e66037_
                                                        _$e66037_
                                                        (let ((_$e66040_
                                                               (f32vector?
                                                                _obj66014_)))
                                                          (if _$e66040_
                                                              _$e66040_
                                                              (f64vector?
                                                               _obj66014_)))))))))))))))))))))
    (define weak?
      (lambda (_obj66012_)
        (if (let () (declare (not safe)) (##subtyped? _obj66012_))
            (let ((__tmp66125
                   (let () (declare (not safe)) (##subtype _obj66012_)))
                  (__tmp66124 (macro-subtype-weak)))
              (declare (not safe))
              (eq? __tmp66125 __tmp66124))
            '#f)))
    (define object-port?
      (lambda (_obj66010_)
        (let ((__tmp66126
               (let ((__tmp66127 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp66127))))
          (declare (not safe))
          (##structure-instance-of? _obj66010_ __tmp66126))))
    (define character-port?
      (lambda (_obj66008_)
        (let ((__tmp66128
               (let ((__tmp66129 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp66129))))
          (declare (not safe))
          (##structure-instance-of? _obj66008_ __tmp66128))))
    (define device-port?
      (lambda (_obj66006_)
        (let ((__tmp66130
               (let ((__tmp66131 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66131))))
          (declare (not safe))
          (##structure-instance-of? _obj66006_ __tmp66130))))
    (define vector-port?
      (lambda (_obj66004_)
        (let ((__tmp66132
               (let ((__tmp66133 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66133))))
          (declare (not safe))
          (##structure-instance-of? _obj66004_ __tmp66132))))
    (define string-port?
      (lambda (_obj66002_)
        (let ((__tmp66134
               (let ((__tmp66135 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp66135))))
          (declare (not safe))
          (##structure-instance-of? _obj66002_ __tmp66134))))
    (define u8vector-port?
      (lambda (_obj66000_)
        (let ((__tmp66136
               (let ((__tmp66137 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp66137))))
          (declare (not safe))
          (##structure-instance-of? _obj66000_ __tmp66136))))
    (define raw-device-port?
      (lambda (_obj65998_)
        (let ((__tmp66138
               (let ((__tmp66139 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp66139))))
          (declare (not safe))
          (##structure-instance-of? _obj65998_ __tmp66138))))
    (define tcp-server-port?
      (lambda (_obj65996_)
        (let ((__tmp66140
               (let ((__tmp66141 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp66141))))
          (declare (not safe))
          (##structure-instance-of? _obj65996_ __tmp66140))))
    (define udp-port?
      (lambda (_obj65994_)
        (let ((__tmp66142
               (let ((__tmp66143 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp66143))))
          (declare (not safe))
          (##structure-instance-of? _obj65994_ __tmp66142))))
    (define directory-port?
      (lambda (_obj65992_)
        (let ((__tmp66144
               (let ((__tmp66145 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp66145))))
          (declare (not safe))
          (##structure-instance-of? _obj65992_ __tmp66144))))
    (define event-queue-port?
      (lambda (_obj65990_)
        (let ((__tmp66146
               (let ((__tmp66147 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp66147))))
          (declare (not safe))
          (##structure-instance-of? _obj65990_ __tmp66146))))
    (define readenv?
      (lambda (_obj65988_)
        (let ((__tmp66148
               (let ((__tmp66149 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp66149))))
          (declare (not safe))
          (##structure-instance-of? _obj65988_ __tmp66148))))
    (define writeenv?
      (lambda (_obj65986_)
        (let ((__tmp66150
               (let ((__tmp66151 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp66151))))
          (declare (not safe))
          (##structure-instance-of? _obj65986_ __tmp66150))))
    (define vm?
      (lambda (_obj65984_)
        (let ((__tmp66152
               (let ((__tmp66153 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp66153))))
          (declare (not safe))
          (##structure-instance-of? _obj65984_ __tmp66152))))))
