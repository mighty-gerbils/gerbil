(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1742222163)
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
      (let ((__tmp102984 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp102984)))
    (define boolean::t
      (let ((__tmp102985 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp102985)))
    (define atom::t
      (let ((__tmp102986 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp102986)))
    (define void::t
      (let ((__tmp102987 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp102987)))
    (define eof::t
      (let ((__tmp102988 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp102988)))
    (define true::t
      (let ((__tmp102989 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp102989)))
    (define false::t
      (let ((__tmp102990 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp102990)))
    (define special::t
      (let ((__tmp102991 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp102991)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp102992 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp102992)))
    (define integer::t
      (let ((__tmp102993 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp102993)))
    (define fixnum::t
      (let ((__tmp102994 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp102994)))
    (define bignum::t
      (let ((__tmp102995 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp102995)))
    (define ratnum::t
      (let ((__tmp102996 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp102996)))
    (define flonum::t
      (let ((__tmp102997 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp102997)))
    (define cpxnum::t
      (let ((__tmp102998 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp102998)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp102999 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp102999)))
    (define keyword::t
      (let ((__tmp103000 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp103000)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp103001 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp103001)))
    (define null::t
      (let ((__tmp103002 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp103002)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp103003 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp103003)))
    (define string::t
      (let ((__tmp103004 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp103004)))
    (define hvector::t
      (let ((__tmp103005 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp103005)))
    (define u8vector::t
      (let ((__tmp103006 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp103006)))
    (define s8vector::t
      (let ((__tmp103007 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp103007)))
    (define u16vector::t
      (let ((__tmp103008 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp103008)))
    (define s16vector::t
      (let ((__tmp103009 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp103009)))
    (define u32vector::t
      (let ((__tmp103010 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp103010)))
    (define s32vector::t
      (let ((__tmp103011 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp103011)))
    (define u64vector::t
      (let ((__tmp103012 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp103012)))
    (define s64vector::t
      (let ((__tmp103013 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp103013)))
    (define f32vector::t
      (let ((__tmp103014 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp103014)))
    (define f64vector::t
      (let ((__tmp103015 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp103015)))
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
      (let ((__tmp103016 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp103016)))
    (define thread::t
      (let ((__tmp103017 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp103017)))
    (define thread-group::t
      (let ((__tmp103018 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp103018)))
    (define mutex::t
      (let ((__tmp103019 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp103019)))
    (define condvar::t
      (let ((__tmp103020 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp103020)))
    (define port::t
      (let ((__tmp103021 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp103021)))
    (define object-port::t
      (let ((__tmp103022 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp103022)))
    (define character-port::t
      (let ((__tmp103023 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp103023)))
    (define byte-port::t
      (let ((__tmp103024 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp103024)))
    (define device-port::t
      (let ((__tmp103025 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103025)))
    (define vector-port::t
      (let ((__tmp103026 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103026)))
    (define string-port::t
      (let ((__tmp103027 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp103027)))
    (define u8vector-port::t
      (let ((__tmp103028 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp103028)))
    (define raw-device-port::t
      (let ((__tmp103029 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp103029)))
    (define tcp-server-port::t
      (let ((__tmp103030 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp103030)))
    (define udp-port::t
      (let ((__tmp103031 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp103031)))
    (define directory-port::t
      (let ((__tmp103032 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp103032)))
    (define event-queue-port::t
      (let ((__tmp103033 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp103033)))
    (define table::t
      (let ((__tmp103034 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp103034)))
    (define readenv::t
      (let ((__tmp103035 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp103035)))
    (define writeenv::t
      (let ((__tmp103036 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp103036)))
    (define readtable::t
      (let ((__tmp103037 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp103037)))
    (define processor::t
      (let ((__tmp103038 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp103038)))
    (define vm::t
      (let ((__tmp103039 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp103039)))
    (define file-info::t
      (let ((__tmp103040 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp103040)))
    (define socket-info::t
      (let ((__tmp103041 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp103041)))
    (define address-info::t
      (let ((__tmp103042 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp103042)))
    (define atom?
      (lambda (_%obj102983%_)
        (if (let () (declare (not safe)) (immediate? _%obj102983%_))
            (if (char? _%obj102983%_) '#f (not (fixnum? _%obj102983%_)))
            '#f)))
    (define special?
      (lambda (_%obj102981%_)
        (if (let ((__tmp103043
                   (let () (declare (not safe)) (##type _%obj102981%_))))
              (declare (not safe))
              (##fx= __tmp103043 '2))
            (if (char? _%obj102981%_)
                '#f
                (if (null? _%obj102981%_)
                    '#f
                    (if (boolean? _%obj102981%_)
                        '#f
                        (if (eq? _%obj102981%_ '#!void)
                            '#f
                            (not (eof-object? _%obj102981%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj102973%_)
        (let ((_%$e102975%_ (vector? _%obj102973%_)))
          (if _%$e102975%_
              _%$e102975%_
              (let ((_%$e102978%_ (string? _%obj102973%_)))
                (if _%$e102978%_ _%$e102978%_ (hvector? _%obj102973%_)))))))
    (define hvector?
      (lambda (_%obj102944%_)
        (let ((_%$e102946%_ (u8vector? _%obj102944%_)))
          (if _%$e102946%_
              _%$e102946%_
              (let ((_%$e102949%_ (s8vector? _%obj102944%_)))
                (if _%$e102949%_
                    _%$e102949%_
                    (let ((_%$e102952%_ (u16vector? _%obj102944%_)))
                      (if _%$e102952%_
                          _%$e102952%_
                          (let ((_%$e102955%_ (s16vector? _%obj102944%_)))
                            (if _%$e102955%_
                                _%$e102955%_
                                (let ((_%$e102958%_
                                       (u32vector? _%obj102944%_)))
                                  (if _%$e102958%_
                                      _%$e102958%_
                                      (let ((_%$e102961%_
                                             (s32vector? _%obj102944%_)))
                                        (if _%$e102961%_
                                            _%$e102961%_
                                            (let ((_%$e102964%_
                                                   (u64vector? _%obj102944%_)))
                                              (if _%$e102964%_
                                                  _%$e102964%_
                                                  (let ((_%$e102967%_
                                                         (s64vector?
                                                          _%obj102944%_)))
                                                    (if _%$e102967%_
                                                        _%$e102967%_
                                                        (let ((_%$e102970%_
                                                               (f32vector?
                                                                _%obj102944%_)))
                                                          (if _%$e102970%_
                                                              _%$e102970%_
                                                              (f64vector?
                                                               _%obj102944%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj102942%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj102942%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj102942%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj102940%_)
        (let ((__tmp103044
               (let ((__tmp103045 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp103045))))
          (declare (not safe))
          (##structure-instance-of? _%obj102940%_ __tmp103044))))
    (define character-port?
      (lambda (_%obj102938%_)
        (let ((__tmp103046
               (let ((__tmp103047 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp103047))))
          (declare (not safe))
          (##structure-instance-of? _%obj102938%_ __tmp103046))))
    (define device-port?
      (lambda (_%obj102936%_)
        (let ((__tmp103048
               (let ((__tmp103049 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103049))))
          (declare (not safe))
          (##structure-instance-of? _%obj102936%_ __tmp103048))))
    (define vector-port?
      (lambda (_%obj102934%_)
        (let ((__tmp103050
               (let ((__tmp103051 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103051))))
          (declare (not safe))
          (##structure-instance-of? _%obj102934%_ __tmp103050))))
    (define string-port?
      (lambda (_%obj102932%_)
        (let ((__tmp103052
               (let ((__tmp103053 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp103053))))
          (declare (not safe))
          (##structure-instance-of? _%obj102932%_ __tmp103052))))
    (define u8vector-port?
      (lambda (_%obj102930%_)
        (let ((__tmp103054
               (let ((__tmp103055 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp103055))))
          (declare (not safe))
          (##structure-instance-of? _%obj102930%_ __tmp103054))))
    (define raw-device-port?
      (lambda (_%obj102928%_)
        (let ((__tmp103056
               (let ((__tmp103057 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp103057))))
          (declare (not safe))
          (##structure-instance-of? _%obj102928%_ __tmp103056))))
    (define tcp-server-port?
      (lambda (_%obj102926%_)
        (let ((__tmp103058
               (let ((__tmp103059 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp103059))))
          (declare (not safe))
          (##structure-instance-of? _%obj102926%_ __tmp103058))))
    (define udp-port?
      (lambda (_%obj102924%_)
        (let ((__tmp103060
               (let ((__tmp103061 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp103061))))
          (declare (not safe))
          (##structure-instance-of? _%obj102924%_ __tmp103060))))
    (define directory-port?
      (lambda (_%obj102922%_)
        (let ((__tmp103062
               (let ((__tmp103063 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp103063))))
          (declare (not safe))
          (##structure-instance-of? _%obj102922%_ __tmp103062))))
    (define event-queue-port?
      (lambda (_%obj102920%_)
        (let ((__tmp103064
               (let ((__tmp103065 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp103065))))
          (declare (not safe))
          (##structure-instance-of? _%obj102920%_ __tmp103064))))
    (define readenv?
      (lambda (_%obj102918%_)
        (let ((__tmp103066
               (let ((__tmp103067 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp103067))))
          (declare (not safe))
          (##structure-instance-of? _%obj102918%_ __tmp103066))))
    (define writeenv?
      (lambda (_%obj102916%_)
        (let ((__tmp103068
               (let ((__tmp103069 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp103069))))
          (declare (not safe))
          (##structure-instance-of? _%obj102916%_ __tmp103068))))
    (define vm?
      (lambda (_%obj102914%_)
        (let ((__tmp103070
               (let ((__tmp103071 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp103071))))
          (declare (not safe))
          (##structure-instance-of? _%obj102914%_ __tmp103070))))))
