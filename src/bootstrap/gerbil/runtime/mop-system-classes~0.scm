(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1770405371)
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
      (let ((__tmp136448 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp136448 '())))
    (define subtyped::t
      (let ((__tmp136449 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp136449 '())))
    (define structure::t
      (let ((__tmp136450 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp136450 '())))
    (define immediate::t
      (let ((__tmp136451 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp136451 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp136452 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp136452 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp136453 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp136453 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp136454 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp136454 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp136455 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp136455 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp136456 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp136456 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp136457 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp136457 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp136458 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp136458 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp136459 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp136459 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp136460 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp136460 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp136461 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp136461 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp136462 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp136462 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp136463 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp136463 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp136464 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp136464 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp136465 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp136465 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp136466 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp136466 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp136467 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp136467 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp136468 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp136468 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp136469 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp136469 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp136470 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp136470 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp136471 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp136471 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp136472 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp136472 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp136473 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp136473 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp136474 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp136474 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp136475 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp136475 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp136476 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp136476 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp136477 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp136477 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp136478 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp136478 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp136479 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp136479 '())))
    (define pair::t
      (let ((__tmp136480 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp136480 '())))
    (define null::t
      (let ((__tmp136481 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp136481 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp136482 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp136482 '())))
    (define vector::t
      (let ((__tmp136483 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp136483 '())))
    (define string::t
      (let ((__tmp136484 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp136484 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp136485 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp136485 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp136486 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp136486 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp136487 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp136487 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp136488 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp136488 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp136489 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp136489 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp136490 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp136490 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp136491 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp136491 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp136492 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp136492 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp136493 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp136493 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp136494 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp136494 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp136495 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp136495 '((acyclic: . #t)))))
    (define values::t
      (let ((__tmp136496 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'values __tmp136496 '())))
    (define box::t
      (let ((__tmp136497 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp136497 '())))
    (define frame::t
      (let ((__tmp136498 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp136498 '())))
    (define continuation::t
      (let ((__tmp136499 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp136499 '())))
    (define promise::t
      (let ((__tmp136500 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp136500 '())))
    (define weak::t
      (let ((__tmp136501 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp136501 '())))
    (define foreign::t
      (let ((__tmp136502 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp136502 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp136503 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp136503 '())))
    (define return::t
      (let ((__tmp136504 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp136504 '())))
    (define time::t
      (let ((__tmp136505 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp136505 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp136506 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp136506 '())))
    (define thread-group::t
      (let ((__tmp136507 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp136507 '())))
    (define mutex::t
      (let ((__tmp136508 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp136508 '())))
    (define condvar::t
      (let ((__tmp136509 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp136509 '())))
    (define port::t
      (let ((__tmp136510 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136510 '())))
    (define object-port::t
      (let ((__tmp136511 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136511 '())))
    (define character-port::t
      (let ((__tmp136512 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136512 '())))
    (define byte-port::t
      (let ((__tmp136513 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136513 '())))
    (define device-port::t
      (let ((__tmp136514 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136514 '())))
    (define vector-port::t
      (let ((__tmp136515 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136515 '())))
    (define string-port::t
      (let ((__tmp136516 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136516 '())))
    (define u8vector-port::t
      (let ((__tmp136517 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136517 '())))
    (define raw-device-port::t
      (let ((__tmp136518 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136518 '())))
    (define tcp-server-port::t
      (let ((__tmp136519 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136519 '())))
    (define udp-port::t
      (let ((__tmp136520 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136520 '())))
    (define directory-port::t
      (let ((__tmp136521 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136521 '())))
    (define event-queue-port::t
      (let ((__tmp136522 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp136522 '())))
    (define table::t
      (let ((__tmp136523 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp136523 '())))
    (define readenv::t
      (let ((__tmp136524 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136524 '())))
    (define writeenv::t
      (let ((__tmp136525 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp136525 '())))
    (define readtable::t
      (let ((__tmp136526 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp136526 '())))
    (define processor::t
      (let ((__tmp136527 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp136527 '())))
    (define vm::t
      (let ((__tmp136528 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp136528 '())))
    (define file-info::t
      (let ((__tmp136529 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136529 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp136530 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136530 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp136531 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp136531 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj136444%_)
        (let ((_%$e136446%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj136444%_)))))
          (if _%$e136446%_
              _%$e136446%_
              (not (let ((__tmp136532
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj136444%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp136532 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj136442%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136442%_))
            (builtin-object? _%obj136442%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj136440%_)
        (if (let () (declare (not safe)) (##structure? _%obj136440%_))
            (not (let ((__tmp136533
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj136440%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp136533 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj136438%_)
        (if (let () (declare (not safe)) (immediate? _%obj136438%_))
            (if (char? _%obj136438%_)
                '#f
                (if (fixnum? _%obj136438%_) '#f (not (flonum? _%obj136438%_))))
            '#f)))
    (define special?
      (lambda (_%obj136436%_)
        (let () (declare (not safe)) (##special? _%obj136436%_))))
    (define unbound? (lambda (_%obj136434%_) (eq? _%obj136434%_ '#!unbound)))
    (define unbound2? (lambda (_%obj136432%_) (eq? _%obj136432%_ '#!unbound2)))
    (define ddsl-token?
      (lambda (_%obj136424%_)
        (let ((_%$e136426%_ (eq? _%obj136424%_ '#!key)))
          (if _%$e136426%_
              _%$e136426%_
              (let ((_%$e136429%_ (eq? _%obj136424%_ '#!optional)))
                (if _%$e136429%_ _%$e136429%_ (eq? _%obj136424%_ '#!rest)))))))
    (define ddsl-key? (lambda (_%obj136422%_) (eq? _%obj136422%_ '#!key)))
    (define ddsl-optional?
      (lambda (_%obj136420%_) (eq? _%obj136420%_ '#!optional)))
    (define ddsl-rest? (lambda (_%obj136418%_) (eq? _%obj136418%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj136416%_)
        (if (flonum? _%obj136416%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj136416%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj136414%_)
        (if (flonum? _%obj136414%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj136414%_))
            '#f)))
    (define sequence?
      (lambda (_%obj136406%_)
        (let ((_%$e136408%_ (vector? _%obj136406%_)))
          (if _%$e136408%_
              _%$e136408%_
              (let ((_%$e136411%_ (string? _%obj136406%_)))
                (if _%$e136411%_ _%$e136411%_ (hvector? _%obj136406%_)))))))
    (define hvector?
      (lambda (_%obj136377%_)
        (let ((_%$e136379%_ (u8vector? _%obj136377%_)))
          (if _%$e136379%_
              _%$e136379%_
              (let ((_%$e136382%_ (s8vector? _%obj136377%_)))
                (if _%$e136382%_
                    _%$e136382%_
                    (let ((_%$e136385%_ (u16vector? _%obj136377%_)))
                      (if _%$e136385%_
                          _%$e136385%_
                          (let ((_%$e136388%_ (s16vector? _%obj136377%_)))
                            (if _%$e136388%_
                                _%$e136388%_
                                (let ((_%$e136391%_
                                       (u32vector? _%obj136377%_)))
                                  (if _%$e136391%_
                                      _%$e136391%_
                                      (let ((_%$e136394%_
                                             (s32vector? _%obj136377%_)))
                                        (if _%$e136394%_
                                            _%$e136394%_
                                            (let ((_%$e136397%_
                                                   (u64vector? _%obj136377%_)))
                                              (if _%$e136397%_
                                                  _%$e136397%_
                                                  (let ((_%$e136400%_
                                                         (s64vector?
                                                          _%obj136377%_)))
                                                    (if _%$e136400%_
                                                        _%$e136400%_
                                                        (let ((_%$e136403%_
                                                               (f32vector?
                                                                _%obj136377%_)))
                                                          (if _%$e136403%_
                                                              _%$e136403%_
                                                              (f64vector?
                                                               _%obj136377%_)))))))))))))))))))))
    (define weak?
      (lambda (_%obj136375%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj136375%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj136375%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj136373%_)
        (let ((__tmp136534
               (let ((__tmp136535 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp136535))))
          (declare (not safe))
          (##structure-instance-of? _%obj136373%_ __tmp136534))))
    (define character-port?
      (lambda (_%obj136371%_)
        (let ((__tmp136536
               (let ((__tmp136537 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp136537))))
          (declare (not safe))
          (##structure-instance-of? _%obj136371%_ __tmp136536))))
    (define device-port?
      (lambda (_%obj136369%_)
        (let ((__tmp136538
               (let ((__tmp136539 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136539))))
          (declare (not safe))
          (##structure-instance-of? _%obj136369%_ __tmp136538))))
    (define vector-port?
      (lambda (_%obj136367%_)
        (let ((__tmp136540
               (let ((__tmp136541 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136541))))
          (declare (not safe))
          (##structure-instance-of? _%obj136367%_ __tmp136540))))
    (define string-port?
      (lambda (_%obj136365%_)
        (let ((__tmp136542
               (let ((__tmp136543 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp136543))))
          (declare (not safe))
          (##structure-instance-of? _%obj136365%_ __tmp136542))))
    (define u8vector-port?
      (lambda (_%obj136363%_)
        (let ((__tmp136544
               (let ((__tmp136545 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp136545))))
          (declare (not safe))
          (##structure-instance-of? _%obj136363%_ __tmp136544))))
    (define raw-device-port?
      (lambda (_%obj136361%_)
        (let ((__tmp136546
               (let ((__tmp136547 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp136547))))
          (declare (not safe))
          (##structure-instance-of? _%obj136361%_ __tmp136546))))
    (define tcp-server-port?
      (lambda (_%obj136359%_)
        (let ((__tmp136548
               (let ((__tmp136549 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp136549))))
          (declare (not safe))
          (##structure-instance-of? _%obj136359%_ __tmp136548))))
    (define udp-port?
      (lambda (_%obj136357%_)
        (let ((__tmp136550
               (let ((__tmp136551 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp136551))))
          (declare (not safe))
          (##structure-instance-of? _%obj136357%_ __tmp136550))))
    (define directory-port?
      (lambda (_%obj136355%_)
        (let ((__tmp136552
               (let ((__tmp136553 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp136553))))
          (declare (not safe))
          (##structure-instance-of? _%obj136355%_ __tmp136552))))
    (define event-queue-port?
      (lambda (_%obj136353%_)
        (let ((__tmp136554
               (let ((__tmp136555 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp136555))))
          (declare (not safe))
          (##structure-instance-of? _%obj136353%_ __tmp136554))))
    (define readenv?
      (lambda (_%obj136351%_)
        (let ((__tmp136556
               (let ((__tmp136557 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp136557))))
          (declare (not safe))
          (##structure-instance-of? _%obj136351%_ __tmp136556))))
    (define writeenv?
      (lambda (_%obj136349%_)
        (let ((__tmp136558
               (let ((__tmp136559 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp136559))))
          (declare (not safe))
          (##structure-instance-of? _%obj136349%_ __tmp136558))))
    (define vm?
      (lambda (_%obj136347%_)
        (let ((__tmp136560
               (let ((__tmp136561 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp136561))))
          (declare (not safe))
          (##structure-instance-of? _%obj136347%_ __tmp136560))))))
