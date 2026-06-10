(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1781119038)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           structure::t
           immediate::t
           special::t
           atom::t
           char::t
           boolean::t
           true::t
           false::t
           eof::t
           void::t
           unbound::t
           unbound2::t
           dssl-token::t
           optional::t
           rest::t
           key::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           stflonum::t
           haflonum::t
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
    (define builtin::t (__make-system-class 'builtin (cons t::t '()) '()))
    (define subtyped::t
      (__make-system-class 'subtyped (cons builtin::t '()) '()))
    (define structure::t
      (__make-system-class 'structure (cons subtyped::t '()) '()))
    (define immediate::t
      (__make-system-class
       'immediate
       (cons builtin::t '())
       '((acyclic: . #t))))
    (define special::t
      (__make-system-class
       'special
       (cons immediate::t '())
       '((acyclic: . #t))))
    (define atom::t
      (__make-system-class 'atom (cons special::t '()) '((acyclic: . #t))))
    (define char::t
      (__make-system-class 'char (cons special::t '()) '((acyclic: . #t))))
    (define boolean::t
      (__make-system-class 'boolean (cons special::t '()) '((acyclic: . #t))))
    (define true::t
      (__make-system-class
       'true
       (cons boolean::t (cons atom::t '()))
       '((acyclic: . #t))))
    (define false::t
      (__make-system-class
       'false
       (cons boolean::t (cons atom::t '()))
       '((acyclic: . #t))))
    (define eof::t
      (__make-system-class 'eof (cons atom::t '()) '((acyclic: . #t))))
    (define void::t
      (__make-system-class 'void (cons atom::t '()) '((acyclic: . #t))))
    (define unbound::t
      (__make-system-class 'unbound (cons atom::t '()) '((acyclic: . #t))))
    (define unbound2::t
      (__make-system-class 'unbound2 (cons atom::t '()) '((acyclic: . #t))))
    (define unused::t
      (__make-system-class 'unused (cons atom::t '()) '((acyclic: . #t))))
    (define deleted::t
      (__make-system-class 'deleted (cons atom::t '()) '((acyclic: . #t))))
    (define absent::t
      (__make-system-class 'absent (cons atom::t '()) '((acyclic: . #t))))
    (define dssl-token::t
      (__make-system-class 'dssl-token (cons atom::t '()) '((acyclic: . #t))))
    (define optional::t
      (__make-system-class
       'optional
       (cons dssl-token::t '())
       '((acyclic: . #t))))
    (define rest::t
      (__make-system-class 'rest (cons dssl-token::t '()) '((acyclic: . #t))))
    (define key::t
      (__make-system-class 'key (cons dssl-token::t '()) '((acyclic: . #t))))
    (define unknown::t
      (__make-system-class 'unknown (cons atom::t '()) '((acyclic: . #t))))
    (define number::t
      (__make-system-class 'number (cons builtin::t '()) '((acyclic: . #t))))
    (define real::t
      (__make-system-class 'real (cons number::t '()) '((acyclic: . #t))))
    (define integer::t
      (__make-system-class 'integer (cons real::t '()) '((acyclic: . #t))))
    (define fixnum::t
      (__make-system-class
       'fixnum
       (cons integer::t (cons immediate::t '()))
       '((acyclic: . #t))))
    (define bignum::t
      (__make-system-class
       'bignum
       (cons integer::t (cons subtyped::t '()))
       '((acyclic: . #t))))
    (define ratnum::t
      (__make-system-class
       'ratnum
       (cons real::t (cons subtyped::t '()))
       '((acyclic: . #t))))
    (define flonum::t
      (__make-system-class 'flonum (cons real::t '()) '((acyclic: . #t))))
    (define stflonum::t
      (__make-system-class
       'stflonum
       (cons flonum::t (cons immediate::t '()))
       '((acyclic: . #t))))
    (define haflonum::t
      (__make-system-class
       'haflonum
       (cons flonum::t (cons subtyped::t '()))
       '((acyclic: . #t))))
    (define cpxnum::t
      (__make-system-class
       'cpxnum
       (cons number::t (cons subtyped::t '()))
       '((acyclic: . #t))))
    (define symbolic::t
      (__make-system-class
       'symbolic
       (cons subtyped::t '())
       '((acyclic: . #t))))
    (define symbol::t
      (__make-system-class 'symbol (cons symbolic::t '()) '((acyclic: . #t))))
    (define keyword::t
      (__make-system-class 'keyword (cons symbolic::t '()) '((acyclic: . #t))))
    (define list::t (__make-system-class 'list (cons builtin::t '()) '()))
    (define pair::t
      (__make-system-class 'pair (cons list::t (cons subtyped::t '())) '()))
    (define null::t
      (__make-system-class
       'null
       (cons list::t (cons atom::t '()))
       '((acyclic: . #t))))
    (define sequence::t
      (__make-system-class 'sequence (cons subtyped::t '()) '()))
    (define vector::t (__make-system-class 'vector (cons sequence::t '()) '()))
    (define string::t
      (__make-system-class 'string (cons sequence::t '()) '((acyclic: . #t))))
    (define hvector::t
      (__make-system-class 'hvector (cons sequence::t '()) '((acyclic: . #t))))
    (define u8vector::t
      (__make-system-class 'u8vector (cons hvector::t '()) '((acyclic: . #t))))
    (define s8vector::t
      (__make-system-class 's8vector (cons hvector::t '()) '((acyclic: . #t))))
    (define u16vector::t
      (__make-system-class
       'u16vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define s16vector::t
      (__make-system-class
       's16vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define u32vector::t
      (__make-system-class
       'u32vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define s32vector::t
      (__make-system-class
       's32vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define u64vector::t
      (__make-system-class
       'u64vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define s64vector::t
      (__make-system-class
       's64vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define f32vector::t
      (__make-system-class
       'f32vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define f64vector::t
      (__make-system-class
       'f64vector
       (cons hvector::t '())
       '((acyclic: . #t))))
    (define hunk::t (__make-system-class 'hunk (cons subtyped::t '()) '()))
    (define values::t
      (__make-system-class 'values (cons hunk::t (cons sequence::t '())) '()))
    (define box::t (__make-system-class 'box (cons hunk::t '()) '()))
    (define frame::t (__make-system-class 'frame (cons subtyped::t '()) '()))
    (define continuation::t
      (__make-system-class 'continuation (cons subtyped::t '()) '()))
    (define promise::t
      (__make-system-class 'promise (cons subtyped::t '()) '()))
    (define weak::t (__make-system-class 'weak (cons subtyped::t '()) '()))
    (define foreign::t
      (__make-system-class 'foreign (cons subtyped::t '()) '((acyclic: . #t))))
    (define procedure::t
      (__make-system-class 'procedure (cons subtyped::t '()) '()))
    (define return::t (__make-system-class 'return (cons subtyped::t '()) '()))
    (define time::t (__shadow-class (macro-type-time) '((acyclic: . #t))))
    (define thread::t (__shadow-class (macro-type-thread) '()))
    (define thread-group::t (__shadow-class (macro-type-tgroup) '()))
    (define mutex::t (__shadow-class (macro-type-mutex) '()))
    (define condvar::t (__shadow-class (macro-type-condvar) '()))
    (define port::t (__shadow-class (macro-type-port) '()))
    (define object-port::t (__shadow-class (macro-type-object-port) '()))
    (define character-port::t (__shadow-class (macro-type-character-port) '()))
    (define byte-port::t (__shadow-class (macro-type-byte-port) '()))
    (define device-port::t (__shadow-class (macro-type-device-port) '()))
    (define vector-port::t (__shadow-class (macro-type-vector-port) '()))
    (define string-port::t (__shadow-class (macro-type-string-port) '()))
    (define u8vector-port::t (__shadow-class (macro-type-u8vector-port) '()))
    (define raw-device-port::t
      (__shadow-class (macro-type-raw-device-port) '()))
    (define tcp-server-port::t
      (__shadow-class (macro-type-tcp-server-port) '()))
    (define udp-port::t (__shadow-class (macro-type-udp-port) '()))
    (define directory-port::t (__shadow-class (macro-type-directory-port) '()))
    (define event-queue-port::t
      (__shadow-class (macro-type-event-queue-port) '()))
    (define table::t (__shadow-class (macro-type-table) '()))
    (define readenv::t (__shadow-class (macro-type-readenv) '()))
    (define writeenv::t (__shadow-class (macro-type-writeenv) '()))
    (define readtable::t (__shadow-class (macro-type-readtable) '()))
    (define processor::t (__shadow-class (macro-type-processor) '()))
    (define vm::t (__shadow-class (macro-type-vm) '()))
    (define file-info::t
      (__shadow-class (macro-type-file-info) '((acyclic: . #t))))
    (define socket-info::t
      (__shadow-class (macro-type-socket-info) '((acyclic: . #t))))
    (define address-info::t
      (__shadow-class (macro-type-address-info) '((acyclic: . #t))))
    (define builtin-object?
      (lambda (_%obj121824%_)
        (let ((_%$e121826%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj121824%_)))))
          (if _%$e121826%_
              _%$e121826%_
              (not (class-type?
                    (let ()
                      (declare (not safe))
                      (##structure-type _%obj121824%_))))))))
    (define builtin-subtyped?
      (lambda (_%obj121822%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj121822%_))
            (builtin-object? _%obj121822%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj121820%_)
        (if (let () (declare (not safe)) (##structure? _%obj121820%_))
            (not (class-type?
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj121820%_))))
            '#f)))
    (define atom?
      (lambda (_%obj121818%_)
        (if (let () (declare (not safe)) (##special? _%obj121818%_))
            (let ((__tmp121828
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj121818%_ '0))))
              (declare (not safe))
              (##fx< __tmp121828 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj121816%_)
        (let () (declare (not safe)) (##special? _%obj121816%_))))
    (define unbound-object?
      (lambda (_%obj121814%_) (eq? _%obj121814%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj121812%_) (eq? _%obj121812%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj121810%_) (eq? _%obj121810%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj121808%_) (eq? _%obj121808%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj121806%_) (eq? _%obj121806%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj121798%_)
        (let ((_%$e121800%_ (eq? _%obj121798%_ '#!key)))
          (if _%$e121800%_
              _%$e121800%_
              (let ((_%$e121803%_ (eq? _%obj121798%_ '#!optional)))
                (if _%$e121803%_ _%$e121803%_ (eq? _%obj121798%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj121796%_) (eq? _%obj121796%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj121794%_) (eq? _%obj121794%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj121792%_) (eq? _%obj121792%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj121790%_)
        (if (flonum? _%obj121790%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj121790%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj121788%_)
        (if (flonum? _%obj121788%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj121788%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec121785%_ (make-vector '32 '#f)))
        (vector-set! _%vec121785%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-string) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec121785%_ (macro-subtype-f64vector) '#t)
        _%vec121785%_))
    (define sequence?
      (lambda (_%obj121783%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj121783%_))
            (let ((__tmp121829
                   (let () (declare (not safe)) (##subtype _%obj121783%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp121829))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec121780%_ (make-vector '32 '#f)))
        (vector-set! _%vec121780%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec121780%_ (macro-subtype-f64vector) '#t)
        _%vec121780%_))
    (define hvector?
      (lambda (_%obj121778%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj121778%_))
            (let ((__tmp121830
                   (let () (declare (not safe)) (##subtype _%obj121778%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp121830))
            '#f)))
    (define weak?
      (lambda (_%obj121776%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj121776%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj121776%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj121774%_)
        (let ((__tmp121831
               (let ((__tmp121832 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp121832))))
          (declare (not safe))
          (##structure-instance-of? _%obj121774%_ __tmp121831))))
    (define character-port?
      (lambda (_%obj121772%_)
        (let ((__tmp121833
               (let ((__tmp121834 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp121834))))
          (declare (not safe))
          (##structure-instance-of? _%obj121772%_ __tmp121833))))
    (define byte-port?
      (lambda (_%obj121770%_)
        (let ((__tmp121835
               (let ((__tmp121836 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp121836))))
          (declare (not safe))
          (##structure-instance-of? _%obj121770%_ __tmp121835))))
    (define device-port?
      (lambda (_%obj121768%_)
        (let ((__tmp121837
               (let ((__tmp121838 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp121838))))
          (declare (not safe))
          (##structure-instance-of? _%obj121768%_ __tmp121837))))
    (define vector-port?
      (lambda (_%obj121766%_)
        (let ((__tmp121839
               (let ((__tmp121840 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp121840))))
          (declare (not safe))
          (##structure-instance-of? _%obj121766%_ __tmp121839))))
    (define string-port?
      (lambda (_%obj121764%_)
        (let ((__tmp121841
               (let ((__tmp121842 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp121842))))
          (declare (not safe))
          (##structure-instance-of? _%obj121764%_ __tmp121841))))
    (define u8vector-port?
      (lambda (_%obj121762%_)
        (let ((__tmp121843
               (let ((__tmp121844 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp121844))))
          (declare (not safe))
          (##structure-instance-of? _%obj121762%_ __tmp121843))))
    (define raw-device-port?
      (lambda (_%obj121760%_)
        (let ((__tmp121845
               (let ((__tmp121846 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp121846))))
          (declare (not safe))
          (##structure-instance-of? _%obj121760%_ __tmp121845))))
    (define tcp-server-port?
      (lambda (_%obj121758%_)
        (let ((__tmp121847
               (let ((__tmp121848 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp121848))))
          (declare (not safe))
          (##structure-instance-of? _%obj121758%_ __tmp121847))))
    (define udp-port?
      (lambda (_%obj121756%_)
        (let ((__tmp121849
               (let ((__tmp121850 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp121850))))
          (declare (not safe))
          (##structure-instance-of? _%obj121756%_ __tmp121849))))
    (define directory-port?
      (lambda (_%obj121754%_)
        (let ((__tmp121851
               (let ((__tmp121852 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp121852))))
          (declare (not safe))
          (##structure-instance-of? _%obj121754%_ __tmp121851))))
    (define event-queue-port?
      (lambda (_%obj121752%_)
        (let ((__tmp121853
               (let ((__tmp121854 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp121854))))
          (declare (not safe))
          (##structure-instance-of? _%obj121752%_ __tmp121853))))
    (define readenv?
      (lambda (_%obj121750%_)
        (let ((__tmp121855
               (let ((__tmp121856 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp121856))))
          (declare (not safe))
          (##structure-instance-of? _%obj121750%_ __tmp121855))))
    (define writeenv?
      (lambda (_%obj121748%_)
        (let ((__tmp121857
               (let ((__tmp121858 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp121858))))
          (declare (not safe))
          (##structure-instance-of? _%obj121748%_ __tmp121857))))
    (define vm?
      (lambda (_%obj121746%_)
        (let ((__tmp121859
               (let ((__tmp121860 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp121860))))
          (declare (not safe))
          (##structure-instance-of? _%obj121746%_ __tmp121859))))))
