(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712084084)
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
      (let ((__tmp97999 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp97999)))
    (define boolean::t
      (let ((__tmp98000 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp98000)))
    (define atom::t
      (let ((__tmp98001 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp98001)))
    (define void::t
      (let ((__tmp98002 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp98002)))
    (define eof::t
      (let ((__tmp98003 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp98003)))
    (define true::t
      (let ((__tmp98004 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp98004)))
    (define false::t
      (let ((__tmp98005 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp98005)))
    (define special::t
      (let ((__tmp98006 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp98006)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp98007 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp98007)))
    (define integer::t
      (let ((__tmp98008 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp98008)))
    (define fixnum::t
      (let ((__tmp98009 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp98009)))
    (define bignum::t
      (let ((__tmp98010 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp98010)))
    (define ratnum::t
      (let ((__tmp98011 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp98011)))
    (define flonum::t
      (let ((__tmp98012 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp98012)))
    (define cpxnum::t
      (let ((__tmp98013 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp98013)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp98014 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp98014)))
    (define keyword::t
      (let ((__tmp98015 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp98015)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp98016 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp98016)))
    (define null::t
      (let ((__tmp98017 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp98017)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp98018 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp98018)))
    (define string::t
      (let ((__tmp98019 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp98019)))
    (define hvector::t
      (let ((__tmp98020 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp98020)))
    (define u8vector::t
      (let ((__tmp98021 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp98021)))
    (define s8vector::t
      (let ((__tmp98022 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp98022)))
    (define u16vector::t
      (let ((__tmp98023 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp98023)))
    (define s16vector::t
      (let ((__tmp98024 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp98024)))
    (define u32vector::t
      (let ((__tmp98025 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp98025)))
    (define s32vector::t
      (let ((__tmp98026 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp98026)))
    (define u64vector::t
      (let ((__tmp98027 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp98027)))
    (define s64vector::t
      (let ((__tmp98028 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp98028)))
    (define f32vector::t
      (let ((__tmp98029 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp98029)))
    (define f64vector::t
      (let ((__tmp98030 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp98030)))
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
      (let ((__tmp98031 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp98031)))
    (define thread::t
      (let ((__tmp98032 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp98032)))
    (define thread-group::t
      (let ((__tmp98033 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp98033)))
    (define mutex::t
      (let ((__tmp98034 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp98034)))
    (define condvar::t
      (let ((__tmp98035 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp98035)))
    (define port::t
      (let ((__tmp98036 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp98036)))
    (define object-port::t
      (let ((__tmp98037 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp98037)))
    (define character-port::t
      (let ((__tmp98038 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp98038)))
    (define byte-port::t
      (let ((__tmp98039 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp98039)))
    (define device-port::t
      (let ((__tmp98040 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98040)))
    (define vector-port::t
      (let ((__tmp98041 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98041)))
    (define string-port::t
      (let ((__tmp98042 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp98042)))
    (define u8vector-port::t
      (let ((__tmp98043 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp98043)))
    (define raw-device-port::t
      (let ((__tmp98044 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp98044)))
    (define tcp-server-port::t
      (let ((__tmp98045 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp98045)))
    (define udp-port::t
      (let ((__tmp98046 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp98046)))
    (define directory-port::t
      (let ((__tmp98047 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp98047)))
    (define event-queue-port::t
      (let ((__tmp98048 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp98048)))
    (define table::t
      (let ((__tmp98049 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp98049)))
    (define readenv::t
      (let ((__tmp98050 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp98050)))
    (define writeenv::t
      (let ((__tmp98051 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp98051)))
    (define readtable::t
      (let ((__tmp98052 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp98052)))
    (define processor::t
      (let ((__tmp98053 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp98053)))
    (define vm::t
      (let ((__tmp98054 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp98054)))
    (define file-info::t
      (let ((__tmp98055 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp98055)))
    (define socket-info::t
      (let ((__tmp98056 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp98056)))
    (define address-info::t
      (let ((__tmp98057 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp98057)))
    (define atom?
      (lambda (_%obj97998%_)
        (if (let () (declare (not safe)) (immediate? _%obj97998%_))
            (if (let ((__tmp98058
                       (let () (declare (not safe)) (char? _%obj97998%_))))
                  (declare (not safe))
                  (not __tmp98058))
                (let ((__tmp98059
                       (let () (declare (not safe)) (fixnum? _%obj97998%_))))
                  (declare (not safe))
                  (not __tmp98059))
                '#f)
            '#f)))
    (define special?
      (lambda (_%obj97996%_)
        (if (let ((__tmp98060
                   (let () (declare (not safe)) (##type _%obj97996%_))))
              (declare (not safe))
              (##fx= __tmp98060 '2))
            (if (let ((__tmp98061
                       (let () (declare (not safe)) (char? _%obj97996%_))))
                  (declare (not safe))
                  (not __tmp98061))
                (if (let ((__tmp98062
                           (let () (declare (not safe)) (null? _%obj97996%_))))
                      (declare (not safe))
                      (not __tmp98062))
                    (if (let ((__tmp98063
                               (let ()
                                 (declare (not safe))
                                 (boolean? _%obj97996%_))))
                          (declare (not safe))
                          (not __tmp98063))
                        (if (let ((__tmp98064
                                   (let ()
                                     (declare (not safe))
                                     (eq? _%obj97996%_ '#!void))))
                              (declare (not safe))
                              (not __tmp98064))
                            (let ((__tmp98065
                                   (let ()
                                     (declare (not safe))
                                     (eof-object? _%obj97996%_))))
                              (declare (not safe))
                              (not __tmp98065))
                            '#f)
                        '#f)
                    '#f)
                '#f)
            '#f)))
    (define sequence?
      (lambda (_%obj97988%_)
        (let ((_%$e97990%_
               (let () (declare (not safe)) (vector? _%obj97988%_))))
          (if _%$e97990%_
              _%$e97990%_
              (let ((_%$e97993%_
                     (let () (declare (not safe)) (string? _%obj97988%_))))
                (if _%$e97993%_
                    _%$e97993%_
                    (let () (declare (not safe)) (hvector? _%obj97988%_))))))))
    (define hvector?
      (lambda (_%obj97959%_)
        (let ((_%$e97961%_
               (let () (declare (not safe)) (u8vector? _%obj97959%_))))
          (if _%$e97961%_
              _%$e97961%_
              (let ((_%$e97964%_
                     (let () (declare (not safe)) (s8vector? _%obj97959%_))))
                (if _%$e97964%_
                    _%$e97964%_
                    (let ((_%$e97967%_
                           (let ()
                             (declare (not safe))
                             (u16vector? _%obj97959%_))))
                      (if _%$e97967%_
                          _%$e97967%_
                          (let ((_%$e97970%_
                                 (let ()
                                   (declare (not safe))
                                   (s16vector? _%obj97959%_))))
                            (if _%$e97970%_
                                _%$e97970%_
                                (let ((_%$e97973%_
                                       (let ()
                                         (declare (not safe))
                                         (u32vector? _%obj97959%_))))
                                  (if _%$e97973%_
                                      _%$e97973%_
                                      (let ((_%$e97976%_
                                             (let ()
                                               (declare (not safe))
                                               (s32vector? _%obj97959%_))))
                                        (if _%$e97976%_
                                            _%$e97976%_
                                            (let ((_%$e97979%_
                                                   (u64vector? _%obj97959%_)))
                                              (if _%$e97979%_
                                                  _%$e97979%_
                                                  (let ((_%$e97982%_
                                                         (s64vector?
                                                          _%obj97959%_)))
                                                    (if _%$e97982%_
                                                        _%$e97982%_
                                                        (let ((_%$e97985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (f32vector? _%obj97959%_))))
                  (if _%$e97985%_
                      _%$e97985%_
                      (let ()
                        (declare (not safe))
                        (f64vector? _%obj97959%_))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define weak?
      (lambda (_%obj97957%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj97957%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj97957%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj97955%_)
        (let ((__tmp98066
               (let ((__tmp98067 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp98067))))
          (declare (not safe))
          (##structure-instance-of? _%obj97955%_ __tmp98066))))
    (define character-port?
      (lambda (_%obj97953%_)
        (let ((__tmp98068
               (let ((__tmp98069 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp98069))))
          (declare (not safe))
          (##structure-instance-of? _%obj97953%_ __tmp98068))))
    (define device-port?
      (lambda (_%obj97951%_)
        (let ((__tmp98070
               (let ((__tmp98071 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98071))))
          (declare (not safe))
          (##structure-instance-of? _%obj97951%_ __tmp98070))))
    (define vector-port?
      (lambda (_%obj97949%_)
        (let ((__tmp98072
               (let ((__tmp98073 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98073))))
          (declare (not safe))
          (##structure-instance-of? _%obj97949%_ __tmp98072))))
    (define string-port?
      (lambda (_%obj97947%_)
        (let ((__tmp98074
               (let ((__tmp98075 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp98075))))
          (declare (not safe))
          (##structure-instance-of? _%obj97947%_ __tmp98074))))
    (define u8vector-port?
      (lambda (_%obj97945%_)
        (let ((__tmp98076
               (let ((__tmp98077 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp98077))))
          (declare (not safe))
          (##structure-instance-of? _%obj97945%_ __tmp98076))))
    (define raw-device-port?
      (lambda (_%obj97943%_)
        (let ((__tmp98078
               (let ((__tmp98079 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp98079))))
          (declare (not safe))
          (##structure-instance-of? _%obj97943%_ __tmp98078))))
    (define tcp-server-port?
      (lambda (_%obj97941%_)
        (let ((__tmp98080
               (let ((__tmp98081 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp98081))))
          (declare (not safe))
          (##structure-instance-of? _%obj97941%_ __tmp98080))))
    (define udp-port?
      (lambda (_%obj97939%_)
        (let ((__tmp98082
               (let ((__tmp98083 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp98083))))
          (declare (not safe))
          (##structure-instance-of? _%obj97939%_ __tmp98082))))
    (define directory-port?
      (lambda (_%obj97937%_)
        (let ((__tmp98084
               (let ((__tmp98085 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp98085))))
          (declare (not safe))
          (##structure-instance-of? _%obj97937%_ __tmp98084))))
    (define event-queue-port?
      (lambda (_%obj97935%_)
        (let ((__tmp98086
               (let ((__tmp98087 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp98087))))
          (declare (not safe))
          (##structure-instance-of? _%obj97935%_ __tmp98086))))
    (define readenv?
      (lambda (_%obj97933%_)
        (let ((__tmp98088
               (let ((__tmp98089 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp98089))))
          (declare (not safe))
          (##structure-instance-of? _%obj97933%_ __tmp98088))))
    (define writeenv?
      (lambda (_%obj97931%_)
        (let ((__tmp98090
               (let ((__tmp98091 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp98091))))
          (declare (not safe))
          (##structure-instance-of? _%obj97931%_ __tmp98090))))
    (define vm?
      (lambda (_%obj97929%_)
        (let ((__tmp98092
               (let ((__tmp98093 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp98093))))
          (declare (not safe))
          (##structure-instance-of? _%obj97929%_ __tmp98092))))))
