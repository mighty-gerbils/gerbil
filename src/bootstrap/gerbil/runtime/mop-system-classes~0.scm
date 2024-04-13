(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1712993615)
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
      (let ((__tmp100106 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp100106)))
    (define boolean::t
      (let ((__tmp100107 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp100107)))
    (define atom::t
      (let ((__tmp100108 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp100108)))
    (define void::t
      (let ((__tmp100109 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp100109)))
    (define eof::t
      (let ((__tmp100110 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp100110)))
    (define true::t
      (let ((__tmp100111 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp100111)))
    (define false::t
      (let ((__tmp100112 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp100112)))
    (define special::t
      (let ((__tmp100113 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp100113)))
    (define number::t
      (let () (declare (not safe)) (__make-system-class 'number '())))
    (define real::t
      (let ((__tmp100114 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp100114)))
    (define integer::t
      (let ((__tmp100115 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp100115)))
    (define fixnum::t
      (let ((__tmp100116 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp100116)))
    (define bignum::t
      (let ((__tmp100117 (cons integer::t '())))
        (declare (not safe))
        (__make-system-class 'bignum __tmp100117)))
    (define ratnum::t
      (let ((__tmp100118 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp100118)))
    (define flonum::t
      (let ((__tmp100119 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp100119)))
    (define cpxnum::t
      (let ((__tmp100120 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp100120)))
    (define symbolic::t
      (let () (declare (not safe)) (__make-system-class 'symbolic '())))
    (define symbol::t
      (let ((__tmp100121 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp100121)))
    (define keyword::t
      (let ((__tmp100122 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp100122)))
    (define list::t
      (let () (declare (not safe)) (__make-system-class 'list '())))
    (define pair::t
      (let ((__tmp100123 (cons list::t '())))
        (declare (not safe))
        (__make-system-class 'pair __tmp100123)))
    (define null::t
      (let ((__tmp100124 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp100124)))
    (define sequence::t
      (let () (declare (not safe)) (__make-system-class 'sequence '())))
    (define vector::t
      (let ((__tmp100125 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp100125)))
    (define string::t
      (let ((__tmp100126 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp100126)))
    (define hvector::t
      (let ((__tmp100127 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp100127)))
    (define u8vector::t
      (let ((__tmp100128 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp100128)))
    (define s8vector::t
      (let ((__tmp100129 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp100129)))
    (define u16vector::t
      (let ((__tmp100130 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp100130)))
    (define s16vector::t
      (let ((__tmp100131 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp100131)))
    (define u32vector::t
      (let ((__tmp100132 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp100132)))
    (define s32vector::t
      (let ((__tmp100133 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp100133)))
    (define u64vector::t
      (let ((__tmp100134 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp100134)))
    (define s64vector::t
      (let ((__tmp100135 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp100135)))
    (define f32vector::t
      (let ((__tmp100136 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp100136)))
    (define f64vector::t
      (let ((__tmp100137 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp100137)))
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
      (let ((__tmp100138 (macro-type-time)))
        (declare (not safe))
        (__shadow-class __tmp100138)))
    (define thread::t
      (let ((__tmp100139 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class __tmp100139)))
    (define thread-group::t
      (let ((__tmp100140 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class __tmp100140)))
    (define mutex::t
      (let ((__tmp100141 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class __tmp100141)))
    (define condvar::t
      (let ((__tmp100142 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class __tmp100142)))
    (define port::t
      (let ((__tmp100143 (macro-type-port)))
        (declare (not safe))
        (__shadow-class __tmp100143)))
    (define object-port::t
      (let ((__tmp100144 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class __tmp100144)))
    (define character-port::t
      (let ((__tmp100145 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class __tmp100145)))
    (define byte-port::t
      (let ((__tmp100146 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class __tmp100146)))
    (define device-port::t
      (let ((__tmp100147 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100147)))
    (define vector-port::t
      (let ((__tmp100148 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100148)))
    (define string-port::t
      (let ((__tmp100149 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class __tmp100149)))
    (define u8vector-port::t
      (let ((__tmp100150 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class __tmp100150)))
    (define raw-device-port::t
      (let ((__tmp100151 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class __tmp100151)))
    (define tcp-server-port::t
      (let ((__tmp100152 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class __tmp100152)))
    (define udp-port::t
      (let ((__tmp100153 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class __tmp100153)))
    (define directory-port::t
      (let ((__tmp100154 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class __tmp100154)))
    (define event-queue-port::t
      (let ((__tmp100155 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class __tmp100155)))
    (define table::t
      (let ((__tmp100156 (macro-type-table)))
        (declare (not safe))
        (__shadow-class __tmp100156)))
    (define readenv::t
      (let ((__tmp100157 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class __tmp100157)))
    (define writeenv::t
      (let ((__tmp100158 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class __tmp100158)))
    (define readtable::t
      (let ((__tmp100159 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class __tmp100159)))
    (define processor::t
      (let ((__tmp100160 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class __tmp100160)))
    (define vm::t
      (let ((__tmp100161 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class __tmp100161)))
    (define file-info::t
      (let ((__tmp100162 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class __tmp100162)))
    (define socket-info::t
      (let ((__tmp100163 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class __tmp100163)))
    (define address-info::t
      (let ((__tmp100164 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class __tmp100164)))
    (define atom?
      (lambda (_%obj100105%_)
        (if (let () (declare (not safe)) (immediate? _%obj100105%_))
            (if (char? _%obj100105%_) '#f (not (fixnum? _%obj100105%_)))
            '#f)))
    (define special?
      (lambda (_%obj100103%_)
        (if (let ((__tmp100165
                   (let () (declare (not safe)) (##type _%obj100103%_))))
              (declare (not safe))
              (##fx= __tmp100165 '2))
            (if (char? _%obj100103%_)
                '#f
                (if (null? _%obj100103%_)
                    '#f
                    (if (boolean? _%obj100103%_)
                        '#f
                        (if (eq? _%obj100103%_ '#!void)
                            '#f
                            (not (eof-object? _%obj100103%_))))))
            '#f)))
    (define sequence?
      (lambda (_%obj100095%_)
        (let ((_%$e100097%_ (vector? _%obj100095%_)))
          (if _%$e100097%_
              _%$e100097%_
              (let ((_%$e100100%_ (string? _%obj100095%_)))
                (if _%$e100100%_ _%$e100100%_ (hvector? _%obj100095%_)))))))
    (define hvector?
      (lambda (_%obj100066%_)
        (let ((_%$e100068%_ (u8vector? _%obj100066%_)))
          (if _%$e100068%_
              _%$e100068%_
              (let ((_%$e100071%_ (s8vector? _%obj100066%_)))
                (if _%$e100071%_
                    _%$e100071%_
                    (let ((_%$e100074%_ (u16vector? _%obj100066%_)))
                      (if _%$e100074%_
                          _%$e100074%_
                          (let ((_%$e100077%_ (s16vector? _%obj100066%_)))
                            (if _%$e100077%_
                                _%$e100077%_
                                (let ((_%$e100080%_
                                       (u32vector? _%obj100066%_)))
                                  (if _%$e100080%_
                                      _%$e100080%_
                                      (let ((_%$e100083%_
                                             (s32vector? _%obj100066%_)))
                                        (if _%$e100083%_
                                            _%$e100083%_
                                            (let ((_%$e100086%_
                                                   (u64vector? _%obj100066%_)))
                                              (if _%$e100086%_
                                                  _%$e100086%_
                                                  (let ((_%$e100089%_
                                                         (s64vector?
                                                          _%obj100066%_)))
                                                    (if _%$e100089%_
                                                        _%$e100089%_
                                                        (let ((_%$e100092%_
                                                               (f32vector?
                                                                _%obj100066%_)))
                                                          (if _%$e100092%_
                                                              _%$e100092%_
                                                              (f64vector?
                                                               _%obj100066%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj100064%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj100064%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj100064%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj100062%_)
        (let ((__tmp100166
               (let ((__tmp100167 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp100167))))
          (declare (not safe))
          (##structure-instance-of? _%obj100062%_ __tmp100166))))
    (define character-port?
      (lambda (_%obj100060%_)
        (let ((__tmp100168
               (let ((__tmp100169 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp100169))))
          (declare (not safe))
          (##structure-instance-of? _%obj100060%_ __tmp100168))))
    (define device-port?
      (lambda (_%obj100058%_)
        (let ((__tmp100170
               (let ((__tmp100171 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100171))))
          (declare (not safe))
          (##structure-instance-of? _%obj100058%_ __tmp100170))))
    (define vector-port?
      (lambda (_%obj100056%_)
        (let ((__tmp100172
               (let ((__tmp100173 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100173))))
          (declare (not safe))
          (##structure-instance-of? _%obj100056%_ __tmp100172))))
    (define string-port?
      (lambda (_%obj100054%_)
        (let ((__tmp100174
               (let ((__tmp100175 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp100175))))
          (declare (not safe))
          (##structure-instance-of? _%obj100054%_ __tmp100174))))
    (define u8vector-port?
      (lambda (_%obj100052%_)
        (let ((__tmp100176
               (let ((__tmp100177 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp100177))))
          (declare (not safe))
          (##structure-instance-of? _%obj100052%_ __tmp100176))))
    (define raw-device-port?
      (lambda (_%obj100050%_)
        (let ((__tmp100178
               (let ((__tmp100179 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp100179))))
          (declare (not safe))
          (##structure-instance-of? _%obj100050%_ __tmp100178))))
    (define tcp-server-port?
      (lambda (_%obj100048%_)
        (let ((__tmp100180
               (let ((__tmp100181 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp100181))))
          (declare (not safe))
          (##structure-instance-of? _%obj100048%_ __tmp100180))))
    (define udp-port?
      (lambda (_%obj100046%_)
        (let ((__tmp100182
               (let ((__tmp100183 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp100183))))
          (declare (not safe))
          (##structure-instance-of? _%obj100046%_ __tmp100182))))
    (define directory-port?
      (lambda (_%obj100044%_)
        (let ((__tmp100184
               (let ((__tmp100185 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp100185))))
          (declare (not safe))
          (##structure-instance-of? _%obj100044%_ __tmp100184))))
    (define event-queue-port?
      (lambda (_%obj100042%_)
        (let ((__tmp100186
               (let ((__tmp100187 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp100187))))
          (declare (not safe))
          (##structure-instance-of? _%obj100042%_ __tmp100186))))
    (define readenv?
      (lambda (_%obj100040%_)
        (let ((__tmp100188
               (let ((__tmp100189 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp100189))))
          (declare (not safe))
          (##structure-instance-of? _%obj100040%_ __tmp100188))))
    (define writeenv?
      (lambda (_%obj100038%_)
        (let ((__tmp100190
               (let ((__tmp100191 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp100191))))
          (declare (not safe))
          (##structure-instance-of? _%obj100038%_ __tmp100190))))
    (define vm?
      (lambda (_%obj100036%_)
        (let ((__tmp100192
               (let ((__tmp100193 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp100193))))
          (declare (not safe))
          (##structure-instance-of? _%obj100036%_ __tmp100192))))))
