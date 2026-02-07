(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770505713)
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
    (define builtin::t
      (let ((__tmp136456 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp136456 '())))
    (define subtyped::t
      (let ((__tmp136457 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp136457 '())))
    (define structure::t
      (let ((__tmp136458 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp136458 '())))
    (define immediate::t
      (let ((__tmp136459 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp136459 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp136460 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp136460 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp136461 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp136461 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp136462 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp136462 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp136463 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp136463 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp136464 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp136464 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp136465 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp136465 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp136466 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp136466 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp136467 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp136467 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp136468 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp136468 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp136469 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp136469 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp136470 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp136470 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp136471 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp136471 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp136472 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp136472 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp136473 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp136473 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp136474 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp136474 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp136475 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp136475 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp136476 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp136476 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp136477 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp136477 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp136478 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp136478 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp136479 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp136479 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp136480 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp136480 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp136481 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp136481 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp136482 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp136482 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp136483 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp136483 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp136484 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp136484 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp136485 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp136485 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp136486 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp136486 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp136487 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp136487 '())))
    (define pair::t
      (let ((__tmp136488 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp136488 '())))
    (define null::t
      (let ((__tmp136489 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp136489 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp136490 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp136490 '())))
    (define vector::t
      (let ((__tmp136491 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp136491 '())))
    (define string::t
      (let ((__tmp136492 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp136492 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp136493 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp136493 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp136494 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp136494 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp136495 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp136495 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp136496 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp136496 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp136497 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp136497 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp136498 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp136498 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp136499 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp136499 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp136500 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp136500 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp136501 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp136501 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp136502 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp136502 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp136503 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp136503 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp136504 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp136504 '())))
    (define box::t
      (let ((__tmp136505 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp136505 '())))
    (define frame::t
      (let ((__tmp136506 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp136506 '())))
    (define continuation::t
      (let ((__tmp136507 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp136507 '())))
    (define promise::t
      (let ((__tmp136508 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp136508 '())))
    (define weak::t
      (let ((__tmp136509 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp136509 '())))
    (define foreign::t
      (let ((__tmp136510 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp136510 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp136511 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp136511 '())))
    (define return::t
      (let ((__tmp136512 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp136512 '())))
    (define time::t
      (let ((__tmp136513 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp136513 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp136514 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp136514 '())))
    (define thread-group::t
      (let ((__tmp136515 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp136515 '())))
    (define mutex::t
      (let ((__tmp136516 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp136516 '())))
    (define condvar::t
      (let ((__tmp136517 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp136517 '())))
    (define port::t
      (let ((__tmp136518 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136518 '())))
    (define object-port::t
      (let ((__tmp136519 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136519 '())))
    (define character-port::t
      (let ((__tmp136520 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136520 '())))
    (define byte-port::t
      (let ((__tmp136521 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136521 '())))
    (define device-port::t
      (let ((__tmp136522 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136522 '())))
    (define vector-port::t
      (let ((__tmp136523 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136523 '())))
    (define string-port::t
      (let ((__tmp136524 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136524 '())))
    (define u8vector-port::t
      (let ((__tmp136525 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136525 '())))
    (define raw-device-port::t
      (let ((__tmp136526 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136526 '())))
    (define tcp-server-port::t
      (let ((__tmp136527 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136527 '())))
    (define udp-port::t
      (let ((__tmp136528 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136528 '())))
    (define directory-port::t
      (let ((__tmp136529 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136529 '())))
    (define event-queue-port::t
      (let ((__tmp136530 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136530 '())))
    (define table::t
      (let ((__tmp136531 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp136531 '())))
    (define readenv::t
      (let ((__tmp136532 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136532 '())))
    (define writeenv::t
      (let ((__tmp136533 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136533 '())))
    (define readtable::t
      (let ((__tmp136534 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp136534 '())))
    (define processor::t
      (let ((__tmp136535 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp136535 '())))
    (define vm::t
      (let ((__tmp136536 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp136536 '())))
    (define file-info::t
      (let ((__tmp136537 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136537 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp136538 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136538 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp136539 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136539 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj136452%_)
        (let ((_%$e136454%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj136452%_)))))
          (if _%$e136454%_
              _%$e136454%_
              (not (let ((__tmp136540
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj136452%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp136540 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj136450%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136450%_))
            (builtin-object? _%obj136450%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj136448%_)
        (if (let () (declare (not safe)) (##structure? _%obj136448%_))
            (not (let ((__tmp136541
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj136448%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp136541 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj136446%_)
        (if (let () (declare (not safe)) (immediate? _%obj136446%_))
            (if (char? _%obj136446%_)
                '#f
                (if (fixnum? _%obj136446%_) '#f (not (flonum? _%obj136446%_))))
            '#f)))
    (define special?
      (lambda (_%obj136444%_)
        (let () (declare (not safe)) (##special? _%obj136444%_))))
    (define unbound? (lambda (_%obj136442%_) (eq? _%obj136442%_ '#!unbound)))
    (define unbound2? (lambda (_%obj136440%_) (eq? _%obj136440%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj136432%_)
        (let ((_%$e136434%_ (eq? _%obj136432%_ '#!key)))
          (if _%$e136434%_
              _%$e136434%_
              (let ((_%$e136437%_ (eq? _%obj136432%_ '#!optional)))
                (if _%$e136437%_ _%$e136437%_ (eq? _%obj136432%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj136430%_) (eq? _%obj136430%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj136428%_) (eq? _%obj136428%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj136426%_) (eq? _%obj136426%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj136424%_)
        (if (flonum? _%obj136424%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj136424%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj136422%_)
        (if (flonum? _%obj136422%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj136422%_))
            '#f)))
    (define sequence?
      (lambda (_%obj136414%_)
        (let ((_%$e136416%_ (vector? _%obj136414%_)))
          (if _%$e136416%_
              _%$e136416%_
              (let ((_%$e136419%_ (string? _%obj136414%_)))
                (if _%$e136419%_ _%$e136419%_ (hvector? _%obj136414%_)))))))
    (define hvector?
      (lambda (_%obj136385%_)
        (let ((_%$e136387%_ (u8vector? _%obj136385%_)))
          (if _%$e136387%_
              _%$e136387%_
              (let ((_%$e136390%_ (s8vector? _%obj136385%_)))
                (if _%$e136390%_
                    _%$e136390%_
                    (let ((_%$e136393%_ (u16vector? _%obj136385%_)))
                      (if _%$e136393%_
                          _%$e136393%_
                          (let ((_%$e136396%_ (s16vector? _%obj136385%_)))
                            (if _%$e136396%_
                                _%$e136396%_
                                (let ((_%$e136399%_
                                       (u32vector? _%obj136385%_)))
                                  (if _%$e136399%_
                                      _%$e136399%_
                                      (let ((_%$e136402%_
                                             (s32vector? _%obj136385%_)))
                                        (if _%$e136402%_
                                            _%$e136402%_
                                            (let ((_%$e136405%_
                                                   (u64vector? _%obj136385%_)))
                                              (if _%$e136405%_
                                                  _%$e136405%_
                                                  (let ((_%$e136408%_
                                                         (s64vector?
                                                          _%obj136385%_)))
                                                    (if _%$e136408%_
                                                        _%$e136408%_
                                                        (let ((_%$e136411%_
                                                               (f32vector?
                                                                _%obj136385%_)))
                                                          (if _%$e136411%_
                                                              _%$e136411%_
                                                              (f64vector?
                                                               _%obj136385%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj136383%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136383%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj136383%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj136381%_)
        (let ((__tmp136542
               (let ((__tmp136543 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp136543))))
          (declare (not safe))
          (##structure-instance-of? _%obj136381%_ __tmp136542))))
    (define character-port?
      (lambda (_%obj136379%_)
        (let ((__tmp136544
               (let ((__tmp136545 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp136545))))
          (declare (not safe))
          (##structure-instance-of? _%obj136379%_ __tmp136544))))
    (define device-port?
      (lambda (_%obj136377%_)
        (let ((__tmp136546
               (let ((__tmp136547 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136547))))
          (declare (not safe))
          (##structure-instance-of? _%obj136377%_ __tmp136546))))
    (define vector-port?
      (lambda (_%obj136375%_)
        (let ((__tmp136548
               (let ((__tmp136549 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136549))))
          (declare (not safe))
          (##structure-instance-of? _%obj136375%_ __tmp136548))))
    (define string-port?
      (lambda (_%obj136373%_)
        (let ((__tmp136550
               (let ((__tmp136551 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp136551))))
          (declare (not safe))
          (##structure-instance-of? _%obj136373%_ __tmp136550))))
    (define u8vector-port?
      (lambda (_%obj136371%_)
        (let ((__tmp136552
               (let ((__tmp136553 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136553))))
          (declare (not safe))
          (##structure-instance-of? _%obj136371%_ __tmp136552))))
    (define raw-device-port?
      (lambda (_%obj136369%_)
        (let ((__tmp136554
               (let ((__tmp136555 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136555))))
          (declare (not safe))
          (##structure-instance-of? _%obj136369%_ __tmp136554))))
    (define tcp-server-port?
      (lambda (_%obj136367%_)
        (let ((__tmp136556
               (let ((__tmp136557 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp136557))))
          (declare (not safe))
          (##structure-instance-of? _%obj136367%_ __tmp136556))))
    (define udp-port?
      (lambda (_%obj136365%_)
        (let ((__tmp136558
               (let ((__tmp136559 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp136559))))
          (declare (not safe))
          (##structure-instance-of? _%obj136365%_ __tmp136558))))
    (define directory-port?
      (lambda (_%obj136363%_)
        (let ((__tmp136560
               (let ((__tmp136561 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp136561))))
          (declare (not safe))
          (##structure-instance-of? _%obj136363%_ __tmp136560))))
    (define event-queue-port?
      (lambda (_%obj136361%_)
        (let ((__tmp136562
               (let ((__tmp136563 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp136563))))
          (declare (not safe))
          (##structure-instance-of? _%obj136361%_ __tmp136562))))
    (define readenv?
      (lambda (_%obj136359%_)
        (let ((__tmp136564
               (let ((__tmp136565 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp136565))))
          (declare (not safe))
          (##structure-instance-of? _%obj136359%_ __tmp136564))))
    (define writeenv?
      (lambda (_%obj136357%_)
        (let ((__tmp136566
               (let ((__tmp136567 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp136567))))
          (declare (not safe))
          (##structure-instance-of? _%obj136357%_ __tmp136566))))
    (define vm?
      (lambda (_%obj136355%_)
        (let ((__tmp136568
               (let ((__tmp136569 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp136569))))
          (declare (not safe))
          (##structure-instance-of? _%obj136355%_ __tmp136568))))))
