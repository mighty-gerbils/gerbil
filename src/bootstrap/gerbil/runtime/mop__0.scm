(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707844654)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots85885_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods))
             (_slot-vector85887_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots85885_))))
             (_slot-table85894_
              (let ((_slot-table85889_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot85891_ _field85892_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table85889_ _slot85891_ _field85892_))
                   (let ((__tmp90602 (symbol->keyword _slot85891_)))
                     (declare (not safe))
                     (table-set! _slot-table85889_ __tmp90602 _field85892_)))
                 _slots85885_
                 (let ((__tmp90603 (length _slots85885_)))
                   (declare (not safe))
                   (iota __tmp90603 '1)))
                _slot-table85889_))
             (_flags85896_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields85902_
              (list->vector
               (apply append
                      (map (lambda (_g8589785899_) (list _g8589785899_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots85885_ '5))))))
             (_properties85904_
              (let ((__tmp90606
                     (let ((__tmp90607
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots85885_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp90607)))
                    (__tmp90604
                     (let ((__tmp90605
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp90605 '()))))
                (declare (not safe))
                (cons __tmp90606 __tmp90604)))
             (_t85906_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags85896_
                 ##type-type
                 _fields85902_
                 '()
                 _slot-vector85887_
                 _slot-table85894_
                 _properties85904_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t85906_ _t85906_))
        _t85906_))
    (define class-type?
      (lambda (_obj85883_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj85883_ class::t.id))))
    (define class-type=?
      (lambda (_x85880_ _y85881_)
        (let ((__tmp90609 (##structure-ref _x85880_ '1 class::t '#f))
              (__tmp90608 (##structure-ref _y85881_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp90609 __tmp90608))))
    (define type-opaque?
      (lambda (_type85878_)
        (let ((__tmp90610
               (let ((__tmp90611
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85878_))))
                 (declare (not safe))
                 (##fxand __tmp90611 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp90610 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type85876_)
        (let ((__tmp90612
               (let ((__tmp90613
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85876_))))
                 (declare (not safe))
                 (##fxand __tmp90613 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90612 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type85874_)
        (let ((__tmp90614
               (let ((__tmp90615
                      (let ()
                        (declare (not safe))
                        (##type-flags _type85874_))))
                 (declare (not safe))
                 (##fxand __tmp90615 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp90614 '0))))
    (define class-type-struct?
      (lambda (_klass85872_)
        (let ((__tmp90616
               (let ((__tmp90617
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85872_))))
                 (declare (not safe))
                 (##fxand __tmp90617 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp90616 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass85870_)
        (let ((__tmp90618
               (let ((__tmp90619
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85870_))))
                 (declare (not safe))
                 (##fxand __tmp90619 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp90618 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass85868_)
        (let ((__tmp90620
               (let ((__tmp90621
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85868_))))
                 (declare (not safe))
                 (##fxand __tmp90621 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp90620 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties85834_)
        (map (lambda (_e8583585837_)
               (let* ((_g8583985846_ _e8583585837_)
                      (_E8584185850_
                       (lambda () (error '"No clause matching" _g8583985846_)))
                      (_K8584285856_
                       (lambda (_val85853_ _key85854_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key85854_ 'direct-supers:))
                             (let ((__tmp90622 (map class-type-id _val85853_)))
                               (declare (not safe))
                               (cons _key85854_ __tmp90622))
                             (let ()
                               (declare (not safe))
                               (cons _key85854_ _val85853_))))))
                 (if (let () (declare (not safe)) (##pair? _g8583985846_))
                     (let ((_hd8584385859_
                            (let ()
                              (declare (not safe))
                              (##car _g8583985846_)))
                           (_tl8584485861_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8583985846_))))
                       (let* ((_key85864_ _hd8584385859_)
                              (_val85866_ _tl8584485861_))
                         (declare (not safe))
                         (_K8584285856_ _val85866_ _key85864_)))
                     (let () (declare (not safe)) (_E8584185850_)))))
             _properties85834_)))
    (define make-class-type-descriptor
      (lambda (_type-id85733_
               _type-name85734_
               _type-super85735_
               _precedence-list85736_
               _slot-vector85737_
               _properties85738_
               _constructor85739_
               _slot-table85740_
               _methods85741_)
        (letrec ((_make-props!85743_
                  (lambda (_key85803_)
                    (letrec* ((_ht85805_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!85806_
                               (lambda (_ht85827_ _slots85828_)
                                 (for-each
                                  (lambda (_g8582985831_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht85827_
                                       _g8582985831_
                                       '#t)))
                                  _slots85828_)))
                              (_put-alist!85807_
                               (lambda (_ht85816_ _key85817_ _alist85818_)
                                 (let ((_$e85820_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key85817_ _alist85818_))))
                                   (if _$e85820_
                                       ((lambda (_g8582285824_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!85806_
                                             _ht85816_
                                             _g8582285824_)))
                                        _$e85820_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!85807_
                         _ht85805_
                         _key85803_
                         _properties85738_))
                      (for-each
                       (lambda (_mixin85809_)
                         (let ((_alist85811_
                                (##structure-ref
                                 _mixin85809_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist85811_))
                                   (let ((__tmp90624
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key85803_
                                                     _alist85811_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp90624)))
                               (let ((__tmp90623
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin85809_))))
                                 (declare (not safe))
                                 (_put-slots!85806_ _ht85805_ __tmp90623))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!85807_
                                  _ht85805_
                                  _key85803_
                                  _alist85811_)))))
                       _precedence-list85736_)
                      _ht85805_))))
          (let* ((_transparent?85745_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties85738_)))
                 (_all-slots-printable?85750_
                  (let ((_$e85747_ _transparent?85745_))
                    (if _$e85747_
                        _$e85747_
                        (let ((__tmp90625
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties85738_))))
                          (declare (not safe))
                          (eq? '#t __tmp90625)))))
                 (_printable85752_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?85750_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85743_ 'print:))
                      '#f))
                 (_all-slots-equalable?85757_
                  (let ((_$e85754_ _transparent?85745_))
                    (if _$e85754_
                        _$e85754_
                        (let ((__tmp90626
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties85738_))))
                          (declare (not safe))
                          (eq? '#t __tmp90626)))))
                 (_equalable85759_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?85757_))
                      (let ()
                        (declare (not safe))
                        (_make-props!85743_ 'equal:))
                      '#f))
                 (_first-new-field85761_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super85735_
                         'gerbil#class::t))
                      (let ((__tmp90627
                             (##structure-ref
                              _type-super85735_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp90627))
                      '1))
                 (_field-info-length85763_
                  (let ((__tmp90628
                         (let ((__tmp90629
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector85737_))))
                           (declare (not safe))
                           (##fx- __tmp90629 _first-new-field85761_))))
                    (declare (not safe))
                    (##fx* '3 __tmp90628)))
                 (_field-info85765_ (make-vector _field-info-length85763_ '#f))
                 (_struct?85767_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties85738_)))
                 (_final?85769_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties85738_)))
                 (_metaclass85777_
                  (let ((_metaclass8577085772_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties85738_))))
                    (if _metaclass8577085772_
                        (let ((_metaclass85775_ _metaclass8577085772_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass85775_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id85733_
                                     'metaclass:
                                     _metaclass85775_))
                          _metaclass85775_)
                        '#f)))
                 (_opaque?85782_
                  (let ((_$e85779_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?85757_))))
                    (if _$e85779_
                        _$e85779_
                        (if _type-super85735_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super85735_))
                            '#f))))
                 (_type-flags85784_
                  (let ((__tmp90633 (if _final?85769_ '0 type-flag-extensible))
                        (__tmp90632 (if _opaque?85782_ type-flag-opaque '0))
                        (__tmp90631
                         (if _struct?85767_ class-type-flag-struct '0))
                        (__tmp90630
                         (if _metaclass85777_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp90633
                             __tmp90632
                             __tmp90631
                             __tmp90630))))
            (let _loop85787_ ((_i85789_ _first-new-field85761_) (_j85790_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j85790_ _field-info-length85763_))
                  (let* ((_slot85792_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector85737_ _i85789_)))
                         (_flags85800_
                          (if _transparent?85745_
                              '0
                              (let ((__tmp90635
                                     (if (or _all-slots-printable?85750_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable85752_
                                                _slot85792_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp90634
                                     (if (or _all-slots-equalable?85757_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable85759_
                                                _slot85792_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp90635 __tmp90634)))))
                    (vector-set! _field-info85765_ _j85790_ _slot85792_)
                    (vector-set!
                     _field-info85765_
                     (let () (declare (not safe)) (##fx+ _j85790_ '1))
                     _flags85800_)
                    (let ((__tmp90637
                           (let () (declare (not safe)) (##fx+ _i85789_ '1)))
                          (__tmp90636
                           (let () (declare (not safe)) (##fx+ _j85790_ '3))))
                      (declare (not safe))
                      (_loop85787_ __tmp90637 __tmp90636)))
                  '#!void))
            (if _metaclass85777_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass85777_
                   _type-id85733_
                   _type-name85734_
                   _type-flags85784_
                   _type-super85735_
                   _field-info85765_
                   _precedence-list85736_
                   _slot-vector85737_
                   _slot-table85740_
                   _properties85738_
                   _constructor85739_
                   _methods85741_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id85733_
                   _type-name85734_
                   _type-flags85784_
                   _type-super85735_
                   _field-info85765_
                   _precedence-list85736_
                   _slot-vector85737_
                   _slot-table85740_
                   _properties85738_
                   _constructor85739_
                   _methods85741_)))))))
    (define class-type-id
      (lambda (_klass85731_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85731_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass85729_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85729_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass85726_ _val85727_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85726_ _val85727_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass85721_ _val85723_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85721_
           _val85723_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass85719_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85719_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass85717_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85717_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass85714_ _val85715_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85714_ _val85715_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass85709_ _val85711_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85709_
           _val85711_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass85707_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85707_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass85705_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85705_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass85702_ _val85703_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85702_ _val85703_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass85697_ _val85699_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85697_
           _val85699_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass85695_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85695_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass85693_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85693_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass85690_ _val85691_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85690_ _val85691_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass85685_ _val85687_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85685_
           _val85687_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass85683_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85683_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass85681_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85681_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass85678_ _val85679_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85678_ _val85679_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass85673_ _val85675_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85673_
           _val85675_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass85671_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85671_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass85669_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass85669_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass85666_ _val85667_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85666_
           _val85667_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass85661_ _val85663_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85661_
           _val85663_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass85659_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85659_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass85657_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85657_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass85654_ _val85655_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85654_
           _val85655_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass85649_ _val85651_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85649_
           _val85651_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass85647_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85647_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass85645_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85645_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass85642_ _val85643_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85642_ _val85643_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass85637_ _val85639_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85637_
           _val85639_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass85635_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85635_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass85633_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85633_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass85630_ _val85631_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85630_ _val85631_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass85625_ _val85627_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85625_
           _val85627_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass85623_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85623_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass85621_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85621_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass85618_ _val85619_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass85618_
           _val85619_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass85613_ _val85615_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85613_
           _val85615_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass85611_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass85611_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass85609_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass85609_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass85606_ _val85607_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass85606_ _val85607_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass85601_ _val85603_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85601_
           _val85603_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass85599_)
        (cdr (vector->list (##structure-ref _klass85599_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass85597_)
        (let ((__tmp90638
               (let ((__tmp90639
                      (##structure-ref _klass85597_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp90639))))
          (declare (not safe))
          (##fx- __tmp90638 '1))))
    (define class-type-seal!
      (lambda (_klass85595_)
        (let ((__tmp90640
               (let ((__tmp90641
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85595_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90641))))
          (declare (not safe))
          (##structure-set!
           _klass85595_
           __tmp90640
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass85593_)
        (let ((__tmp90642
               (let ((__tmp90643
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass85593_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp90643))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass85593_
           __tmp90642
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct85584_ _maybe-super-struct85585_)
        (let ((_maybe-super-struct-id85587_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct85585_))))
          (let _lp85589_ ((_super-struct85591_ _maybe-sub-struct85584_))
            (if (let () (declare (not safe)) (not _super-struct85591_))
                '#f
                (if (let ((__tmp90645
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct85591_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id85587_ __tmp90645))
                    '#t
                    (let ((__tmp90644
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct85591_))))
                      (declare (not safe))
                      (_lp85589_ __tmp90644))))))))
    (define base-struct/1
      (lambda (_klass85582_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass85582_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass85582_))
                _klass85582_
                (let () (declare (not safe)) (##type-super _klass85582_)))
            (if (let () (declare (not safe)) (not _klass85582_))
                '#f
                (error '"not a class or false" _klass85582_)))))
    (define base-struct/2
      (lambda (_klass185570_ _klass285571_)
        (let ((_s185573_
               (let () (declare (not safe)) (base-struct/1 _klass185570_)))
              (_s285574_
               (let () (declare (not safe)) (base-struct/1 _klass285571_))))
          (if (or (let () (declare (not safe)) (not _s185573_))
                  (and _s285574_
                       (let ()
                         (declare (not safe))
                         (substruct? _s185573_ _s285574_))))
              _s285574_
              (if (or (let () (declare (not safe)) (not _s285574_))
                      (and _s185573_
                           (let ()
                             (declare (not safe))
                             (substruct? _s285574_ _s185573_))))
                  _s185573_
                  (error '"bad mixin: incompatible struct bases"
                         _klass185570_
                         _klass285571_
                         _s185573_
                         _s285574_))))))
    (define base-struct/list
      (lambda (_all-supers85454_)
        (let* ((_all-supers8545585480_ _all-supers85454_)
               (_E8546085484_
                (lambda ()
                  (error '"No clause matching" _all-supers8545585480_))))
          (let ((_K8547885567_ (lambda () '#f))
                (_K8547585553_
                 (lambda (_x85551_)
                   (let () (declare (not safe)) (base-struct/1 _x85551_))))
                (_K8547085530_
                 (lambda (_y85527_ _x85528_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x85528_ _y85527_))))
                (_K8546185491_
                 (lambda (_y85488_ _x85489_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x85489_ _y85488_)))))
            (let* ((___match9059790598_
                    (lambda (_hd8546285494_ _tl8546385496_)
                      (let ((_x85499_ _hd8546285494_))
                        (letrec ((_splice-rest8546585501_
                                  (lambda (_rest8546985508_ _y85510_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8546985508_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8546185491_ _y85510_ _x85499_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8546085484_)))))
                                 (_splice-try8546785503_
                                  (lambda (_hd8546885512_
                                           _rest8546985514_
                                           _y8546485515_)
                                    (let ((_y85518_ _hd8546885512_))
                                      (let ((__tmp90647
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8546985514_)))
                                            (__tmp90646
                                             (let ()
                                               (declare (not safe))
                                               (cons _y85518_ _y8546485515_))))
                                        (declare (not safe))
                                        (_splice-loop8546685505_
                                         __tmp90647
                                         __tmp90646)))))
                                 (_splice-loop8546685505_
                                  (lambda (_rest8546985520_ _y8546485521_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8546985520_))
                                        (let ((__tmp90649
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8546985520_))))
                                          (declare (not safe))
                                          (_splice-try8546785503_
                                           __tmp90649
                                           _rest8546985520_
                                           _y8546485521_))
                                        (let ((__tmp90648
                                               (reverse _y8546485521_)))
                                          (declare (not safe))
                                          (_splice-rest8546585501_
                                           _rest8546985520_
                                           __tmp90648))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8546685505_ _tl8546385496_ '()))))))
                   (_try-match8545785563_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8545585480_))
                          (let ((_tl8547785558_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8545585480_)))
                                (_hd8547685556_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8545585480_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8547785558_))
                                (let ((_x85561_ _hd8547685556_))
                                  (declare (not safe))
                                  (base-struct/1 _x85561_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8547785558_))
                                    (let ((_tl8547485542_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8547785558_)))
                                          (_hd8547385540_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8547785558_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8547485542_))
                                          (let ((_x85538_ _hd8547685556_)
                                                (_y85545_ _hd8547385540_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8547085530_
                                               _y85545_
                                               _x85538_)))
                                          (___match9059790598_
                                           _hd8547685556_
                                           _tl8547785558_)))
                                    (___match9059790598_
                                     _hd8547685556_
                                     _tl8547785558_))))
                          (let () (declare (not safe)) (_E8546085484_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8545585480_))
                  (let () (declare (not safe)) (_K8547885567_))
                  (let () (declare (not safe)) (_try-match8545785563_))))))))
    (define base-struct
      (lambda _all-supers85452_
        (let () (declare (not safe)) (base-struct/list _all-supers85452_))))
    (define find-super-constructor
      (lambda (_super85404_)
        (let _lp85406_ ((_rest85408_ _super85404_) (_constructor85409_ '#f))
          (let* ((_rest8541085418_ _rest85408_)
                 (_else8541285426_ (lambda () _constructor85409_))
                 (_K8541485440_
                  (lambda (_rest85429_ _hd85430_)
                    (let ((_$e85432_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd85430_
                              '10
                              class::t
                              '#f))))
                      (if _$e85432_
                          ((lambda (_xconstructor85435_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor85409_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor85409_
                                            _xconstructor85435_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp85406_ _rest85429_ _xconstructor85435_))
                                 (error '"conflicting implicit constructors"
                                        _constructor85409_
                                        _xconstructor85435_)))
                           _$e85432_)
                          (let ()
                            (declare (not safe))
                            (_lp85406_ _rest85429_ _constructor85409_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8541085418_))
                (let ((_hd8541585443_
                       (let () (declare (not safe)) (##car _rest8541085418_)))
                      (_tl8541685445_
                       (let () (declare (not safe)) (##cdr _rest8541085418_))))
                  (let* ((_hd85448_ _hd8541585443_)
                         (_rest85450_ _tl8541685445_))
                    (declare (not safe))
                    (_K8541485440_ _rest85450_ _hd85448_)))
                (let () (declare (not safe)) (_else8541285426_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list85380_ _direct-slots85381_)
        (let* ((_next-slot85383_ '1)
               (_slot-table85385_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots85387_ '(__class))
               (_process-slot85391_
                (lambda (_slot85389_)
                  (if (let () (declare (not safe)) (symbol? _slot85389_))
                      '#!void
                      (error '"invalid slot name" _slot85389_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table85385_ _slot85389_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table85385_
                           _slot85389_
                           _next-slot85383_))
                        (let ((__tmp90650 (symbol->keyword _slot85389_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table85385_
                           __tmp90650
                           _next-slot85383_))
                        (set! _r-slots85387_
                              (let ()
                                (declare (not safe))
                                (cons _slot85389_ _r-slots85387_)))
                        (set! _next-slot85383_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot85383_ '1)))))))
               (_process-slots85397_
                (lambda (_g8539285394_)
                  (for-each _process-slot85391_ _g8539285394_))))
          (for-each
           (lambda (_mixin85400_)
             (let ((__tmp90651
                    (let ((__tmp90652
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin85400_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp90652 '()))))
               (declare (not safe))
               (_process-slots85397_ __tmp90651)))
           (reverse _class-precedence-list85380_))
          (let ()
            (declare (not safe))
            (_process-slots85397_ _direct-slots85381_))
          (let ((_slot-vector85402_ (list->vector (reverse _r-slots85387_))))
            (values _slot-vector85402_ _slot-table85385_)))))
    (define make-class-type
      (lambda (_id85342_
               _name85343_
               _direct-supers85344_
               _direct-slots85345_
               _properties85346_
               _constructor85347_)
        (let ((_$e85352_
               (let ((__tmp90653
                      (lambda (_$obj85349_)
                        (let ((__tmp90654
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj85349_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp90654)))))
                 (declare (not safe))
                 (find __tmp90653 _direct-supers85344_))))
          (if _$e85352_
              ((lambda (_g8535485356_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8535485356_))
               _$e85352_)
              (let ((_$e85359_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers85344_))))
                (if _$e85359_
                    ((lambda (_g8536185363_)
                       (error '"Cannot extend final class" _g8536185363_))
                     _$e85359_)
                    '#!void))))
        (let ((_g90655_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers85344_))))
          (begin
            (let ((_g90656_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g90655_) (##vector-length _g90655_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g90656_ 2)))
                  (error "Context expects 2 values" _g90656_)))
            (let ((_precedence-list85366_
                   (let () (declare (not safe)) (##vector-ref _g90655_ 0)))
                  (_struct-super85367_
                   (let () (declare (not safe)) (##vector-ref _g90655_ 1))))
              (let ((_g90657_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list85366_
                        _direct-slots85345_))))
                (begin
                  (let ((_g90658_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g90657_)
                               (##vector-length _g90657_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g90658_ 2)))
                        (error "Context expects 2 values" _g90658_)))
                  (let ((_slot-vector85369_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90657_ 0)))
                        (_slot-table85370_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g90657_ 1))))
                    (let* ((_properties85372_
                            (let ((__tmp90661
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots85345_)))
                                  (__tmp90659
                                   (let ((__tmp90660
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers85344_))))
                                     (declare (not safe))
                                     (cons __tmp90660 _properties85346_))))
                              (declare (not safe))
                              (cons __tmp90661 __tmp90659)))
                           (_constructor*85377_
                            (let ((_$e85374_ _constructor85347_))
                              (if _$e85374_
                                  _$e85374_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers85344_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id85342_
                         _name85343_
                         _struct-super85367_
                         _precedence-list85366_
                         _slot-vector85369_
                         _properties85372_
                         _constructor*85377_
                         _slot-table85370_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass85340_)
        (let ((__tmp90662
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass85340_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass85340_ __tmp90662))))
    (define compute-precedence-list
      (lambda (_direct-supers85338_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers85338_))))
    (define make-class-predicate
      (lambda (_klass85322_)
        (let ((_tid85324_
               (let () (declare (not safe)) (##type-id _klass85322_))))
          (if (let () (declare (not safe)) (class-type-final? _klass85322_))
              (lambda (_g8532585327_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8532585327_ _tid85324_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass85322_))
                  (lambda (_g8532985331_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8532985331_ _tid85324_)))
                  (lambda (_g8533385335_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass85322_ _g8533385335_))))))))
    (define if-class-slot-field
      (lambda (_klass85311_
               _slot85312_
               _if-final85313_
               _if-struct85314_
               _if-struct-field85315_
               _if-class-slot85316_)
        (let ((_field85318_
               (let ((__tmp90663
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass85311_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (table-ref __tmp90663 _slot85312_ '#f))))
          (if (let () (declare (not safe)) (not _field85318_))
              (error '"unknown slot" 'class: _klass85311_ 'slot: _slot85312_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass85311_))
                  (_if-final85313_ _klass85311_ _slot85312_ _field85318_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass85311_))
                      (_if-struct85314_ _klass85311_ _slot85312_ _field85318_)
                      (if (let ((_strukt85320_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass85311_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt85320_
                                    'gerbil#class::t))
                                 (let ((__tmp90664
                                        (let ((__tmp90665
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt85320_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp90665))))
                                   (declare (not safe))
                                   (##fx< _field85318_ __tmp90664))))
                          (_if-struct-field85315_
                           _klass85311_
                           _slot85312_
                           _field85318_)
                          (_if-class-slot85316_
                           _klass85311_
                           _slot85312_
                           _field85318_))))))))
    (define make-class-slot-accessor
      (lambda (_klass85308_ _slot85309_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85308_
           _slot85309_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass85305_ _slot85306_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85305_
           _slot85306_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass85302_ _slot85303_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85302_
           _slot85303_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass85299_ _slot85300_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass85299_
           _slot85300_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object85283_ _class85284_ _slot85285_)
        (apply error
               '"not an instance"
               'object:
               _object85283_
               'class:
               _class85284_
               (if _slot85285_
                   (let ((__tmp90666
                          (let ()
                            (declare (not safe))
                            (cons _slot85285_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp90666))
                   '()))))
    (define not-an-instance__0
      (lambda (_object85290_ _class85291_)
        (let ((_slot85293_ '#f))
          (declare (not safe))
          (not-an-instance__% _object85290_ _class85291_ _slot85293_))))
    (define not-an-instance
      (lambda _g90668_
        (let ((_g90667_ (let () (declare (not safe)) (##length _g90668_))))
          (cond ((let () (declare (not safe)) (##fx= _g90667_ 2))
                 (apply (lambda (_object85290_ _class85291_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object85290_ _class85291_)))
                        _g90668_))
                ((let () (declare (not safe)) (##fx= _g90667_ 3))
                 (apply (lambda (_object85295_ _class85296_ _slot85297_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object85295_
                             _class85296_
                             _slot85297_)))
                        _g90668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g90668_))))))
    (define make-final-slot-accessor
      (lambda (_klass85276_ _slot85277_ _field85278_)
        (lambda (_obj85280_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj85280_
             _field85278_
             _klass85276_
             _slot85277_)))))
    (define make-final-slot-mutator
      (lambda (_klass85269_ _slot85270_ _field85271_)
        (lambda (_obj85273_ _val85274_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj85273_
             _val85274_
             _field85271_
             _klass85269_
             _slot85270_)))))
    (define make-struct-slot-accessor
      (lambda (_klass85263_ _slot85264_ _field85265_)
        (lambda (_obj85267_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj85267_
             _field85265_
             _klass85263_
             _slot85264_)))))
    (define make-struct-slot-mutator
      (lambda (_klass85256_ _slot85257_ _field85258_)
        (lambda (_obj85260_ _val85261_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj85260_
             _val85261_
             _field85258_
             _klass85256_
             _slot85257_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass85250_ _slot85251_ _field85252_)
        (lambda (_obj85254_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj85254_
             _field85252_
             _klass85250_
             _slot85251_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass85243_ _slot85244_ _field85245_)
        (lambda (_obj85247_ _val85248_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj85247_
             _val85248_
             _field85245_
             _klass85243_
             _slot85244_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass85237_ _slot85238_ _field85239_)
        (lambda (_obj85241_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass85237_ _obj85241_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj85241_ _field85239_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj85241_ _klass85237_ _slot85238_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass85230_ _slot85231_ _field85232_)
        (lambda (_obj85234_ _val85235_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass85230_ _obj85234_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85234_ _field85232_ _val85235_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj85234_ _klass85230_ _slot85231_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass85224_ _slot85225_ _field85226_)
        (lambda (_obj85228_)
          (if (let ((__tmp90669
                     (let () (declare (not safe)) (##type-id _klass85224_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85228_ __tmp90669))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj85228_ _field85226_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass85224_ _obj85228_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj85228_ _slot85225_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj85228_
                     _klass85224_
                     _slot85225_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass85217_ _slot85218_ _field85219_)
        (lambda (_obj85221_ _val85222_)
          (if (let ((__tmp90670
                     (let () (declare (not safe)) (##type-id _klass85217_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85221_ __tmp90670))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85221_ _field85219_ _val85222_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass85217_ _obj85221_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj85221_ _slot85218_ _val85222_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj85221_
                     _klass85217_
                     _slot85218_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass85211_ _slot85212_ _field85213_)
        (lambda (_obj85215_)
          (if (let ((__tmp90671
                     (let () (declare (not safe)) (##type-id _klass85211_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85215_ __tmp90671))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj85215_ _field85213_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj85215_ _slot85212_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass85204_ _slot85205_ _field85206_)
        (lambda (_obj85208_ _val85209_)
          (if (let ((__tmp90672
                     (let () (declare (not safe)) (##type-id _klass85204_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj85208_ __tmp90672))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj85208_ _field85206_ _val85209_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj85208_ _slot85205_ _val85209_))))))
    (define class-slot-offset
      (lambda (_klass85201_ _slot85202_)
        (let ((__tmp90673
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass85201_ '8 class::t '#f))))
          (declare (not safe))
          (table-ref __tmp90673 _slot85202_ '#f))))
    (define class-slot-ref
      (lambda (_klass85195_ _obj85196_ _slot85197_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass85195_ _obj85196_))
            (let ((_off85199_
                   (let ((__tmp90674
                          (let ()
                            (declare (not safe))
                            (object-type _obj85196_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90674 _slot85197_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj85196_
               _off85199_
               _klass85195_
               _slot85197_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj85196_ _klass85195_)))))
    (define class-slot-set!
      (lambda (_klass85188_ _obj85189_ _slot85190_ _val85191_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass85188_ _obj85189_))
            (let ((_off85193_
                   (let ((__tmp90675
                          (let ()
                            (declare (not safe))
                            (object-type _obj85189_))))
                     (declare (not safe))
                     (class-slot-offset __tmp90675 _slot85190_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj85189_
               _val85191_
               _off85193_
               _klass85188_
               _slot85190_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj85189_ _klass85188_)))))
    (define unchecked-field-ref
      (lambda (_obj85185_ _off85186_)
        (let ((__tmp90676
               (let () (declare (not safe)) (##structure-type _obj85185_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj85185_ _off85186_ __tmp90676 '#f))))
    (define unchecked-field-set!
      (lambda (_obj85181_ _off85182_ _val85183_)
        (let ((__tmp90677
               (let () (declare (not safe)) (##structure-type _obj85181_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj85181_
           _val85183_
           _off85182_
           __tmp90677
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj85178_ _slot85179_)
        (let ((__tmp90678
               (let ((__tmp90679
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj85178_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90679 _slot85179_))))
          (declare (not safe))
          (unchecked-field-ref _obj85178_ __tmp90678))))
    (define unchecked-slot-set!
      (lambda (_obj85174_ _slot85175_ _val85176_)
        (let ((__tmp90680
               (let ((__tmp90681
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj85174_))))
                 (declare (not safe))
                 (class-slot-offset __tmp90681 _slot85175_))))
          (declare (not safe))
          (unchecked-field-set! _obj85174_ __tmp90680 _val85176_))))
    (define slot-ref__%
      (lambda (_obj85150_ _slot85151_ _E85152_)
        (if (let () (declare (not safe)) (object? _obj85150_))
            (let* ((_klass85154_
                    (let () (declare (not safe)) (object-type _obj85150_)))
                   (_$e85157_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass85154_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass85154_ _slot85151_))
                        '#f)))
              (if _$e85157_
                  ((lambda (_off85160_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj85150_ _off85160_)))
                   _$e85157_)
                  (_E85152_ _obj85150_ _slot85151_)))
            (_E85152_ _obj85150_ _slot85151_))))
    (define slot-ref__0
      (lambda (_obj85165_ _slot85166_)
        (let ((_E85168_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj85165_ _slot85166_ _E85168_))))
    (define slot-ref
      (lambda _g90683_
        (let ((_g90682_ (let () (declare (not safe)) (##length _g90683_))))
          (cond ((let () (declare (not safe)) (##fx= _g90682_ 2))
                 (apply (lambda (_obj85165_ _slot85166_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj85165_ _slot85166_)))
                        _g90683_))
                ((let () (declare (not safe)) (##fx= _g90682_ 3))
                 (apply (lambda (_obj85170_ _slot85171_ _E85172_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj85170_ _slot85171_ _E85172_)))
                        _g90683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g90683_))))))
    (define slot-set!__%
      (lambda (_obj85122_ _slot85123_ _val85124_ _E85125_)
        (if (let () (declare (not safe)) (object? _obj85122_))
            (let* ((_klass85127_
                    (let () (declare (not safe)) (object-type _obj85122_)))
                   (_$e85130_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass85127_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass85127_ _slot85123_))
                        '#f)))
              (if _$e85130_
                  ((lambda (_off85133_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj85122_
                        _off85133_
                        _val85124_)))
                   _$e85130_)
                  (_E85125_ _obj85122_ _slot85123_)))
            (_E85125_ _obj85122_ _slot85123_))))
    (define slot-set!__0
      (lambda (_obj85138_ _slot85139_ _val85140_)
        (let ((_E85142_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj85138_ _slot85139_ _val85140_ _E85142_))))
    (define slot-set!
      (lambda _g90685_
        (let ((_g90684_ (let () (declare (not safe)) (##length _g90685_))))
          (cond ((let () (declare (not safe)) (##fx= _g90684_ 3))
                 (apply (lambda (_obj85138_ _slot85139_ _val85140_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj85138_ _slot85139_ _val85140_)))
                        _g90685_))
                ((let () (declare (not safe)) (##fx= _g90684_ 4))
                 (apply (lambda (_obj85144_ _slot85145_ _val85146_ _E85147_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj85144_
                             _slot85145_
                             _val85146_
                             _E85147_)))
                        _g90685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g90685_))))))
    (define __slot-error
      (lambda (_obj85118_ _slot85119_)
        (error '"Cannot find slot" 'object: _obj85118_ 'slot: _slot85119_)))
    (define subclass?
      (lambda (_maybe-sub-class85108_ _maybe-super-class85109_)
        (let* ((_maybe-super-class-id85111_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class85109_)))
               (_$e85113_
                (let ((__tmp90686
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class85108_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id85111_ __tmp90686))))
          (if _$e85113_
              _$e85113_
              (let ((__tmp90688
                     (lambda (_super-class85116_)
                       (let ((__tmp90689
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class85116_))))
                         (declare (not safe))
                         (eq? __tmp90689 _maybe-super-class-id85111_))))
                    (__tmp90687
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class85108_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp90688 __tmp90687))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass85105_ _obj85106_)
        (let ((__tmp90690
               (let () (declare (not safe)) (##type-id _klass85105_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj85106_ __tmp90690))))
    (define struct-instance?
      (lambda (_klass85102_ _obj85103_)
        (let ((__tmp90691
               (let () (declare (not safe)) (##type-id _klass85102_))))
          (declare (not safe))
          (##structure-instance-of? _obj85103_ __tmp90691))))
    (define class-instance?
      (lambda (_klass85097_ _obj85098_)
        (if (let () (declare (not safe)) (object? _obj85098_))
            (let ((_type85100_
                   (let () (declare (not safe)) (object-type _obj85098_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type85100_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type85100_ _klass85097_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass85092_ _k85093_)
        (let ((_obj85095_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass85092_ _k85093_))))
          (let () (declare (not safe)) (object-fill! _obj85095_ '#f))
          _obj85095_)))
    (define object-fill!
      (lambda (_obj85085_ _fill85086_)
        (let _loop85088_ ((_i85090_
                           (let ((__tmp90693
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj85085_))))
                             (declare (not safe))
                             (##fx- __tmp90693 '1))))
          (if (let () (declare (not safe)) (##fx> _i85090_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj85085_
                   _fill85086_
                   _i85090_
                   '#f
                   '#f))
                (let ((__tmp90692
                       (let () (declare (not safe)) (##fx- _i85090_ '1))))
                  (declare (not safe))
                  (_loop85088_ __tmp90692)))
              _obj85085_))))
    (define new-instance
      (lambda (_klass85083_)
        (let ((__obj90599
               (let ((__tmp90694
                      (let ((__tmp90695
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass85083_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp90695))))
                 (declare (not safe))
                 (##make-structure _klass85083_ __tmp90694))))
          (let () (declare (not safe)) (object-fill! __obj90599 '#f))
          __obj90599)))
    (define make-instance
      (lambda (_klass85073_ . _args85074_)
        (let* ((_obj85076_
                (let () (declare (not safe)) (new-instance _klass85073_)))
               (_$e85078_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass85073_ '10 class::t '#f))))
          (if _$e85078_
              ((lambda (_kons-id85081_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass85073_
                    _kons-id85081_
                    _obj85076_
                    _args85074_)))
               _$e85078_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass85073_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass85073_
                     _obj85076_
                     _args85074_))
                  (if (let ((__tmp90699
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass85073_))))
                        (declare (not safe))
                        (not __tmp90699))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass85073_
                         _obj85076_
                         _args85074_))
                      (if (let ((__tmp90697
                                 (let ((__tmp90698
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj85076_))))
                                   (declare (not safe))
                                   (##fx- __tmp90698 '1)))
                                (__tmp90696 (length _args85074_)))
                            (declare (not safe))
                            (##fx= __tmp90697 __tmp90696))
                          (apply ##structure _klass85073_ _args85074_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass85073_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass85073_))
                                 'args:
                                 _args85074_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj85070_ . _args85071_)
        (if (let ((__tmp90701 (length _args85071_))
                  (__tmp90700
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj85070_))))
              (declare (not safe))
              (##fx< __tmp90701 __tmp90700))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj85070_ _args85071_))
            (error '"too many arguments for struct"
                   'object:
                   _obj85070_
                   'args:
                   _args85071_))))
    (define __struct-instance-init!
      (lambda (_obj85029_ _args85030_)
        (let _lp85032_ ((_k85034_ '1) (_rest85035_ _args85030_))
          (let* ((_rest8503685044_ _rest85035_)
                 (_else8503885052_ (lambda () _obj85029_))
                 (_K8504085058_
                  (lambda (_rest85055_ _hd85056_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj85029_ _k85034_ _hd85056_))
                    (let ((__tmp90702
                           (let () (declare (not safe)) (##fx+ _k85034_ '1))))
                      (declare (not safe))
                      (_lp85032_ __tmp90702 _rest85055_)))))
            (if (let () (declare (not safe)) (##pair? _rest8503685044_))
                (let ((_hd8504185061_
                       (let () (declare (not safe)) (##car _rest8503685044_)))
                      (_tl8504285063_
                       (let () (declare (not safe)) (##cdr _rest8503685044_))))
                  (let* ((_hd85066_ _hd8504185061_)
                         (_rest85068_ _tl8504285063_))
                    (declare (not safe))
                    (_K8504085058_ _rest85068_ _hd85066_)))
                (let () (declare (not safe)) (_else8503885052_)))))))
    (define class-instance-init!
      (lambda (_obj85026_ . _args85027_)
        (let ((__tmp90703
               (let () (declare (not safe)) (object-type _obj85026_))))
          (declare (not safe))
          (__class-instance-init! __tmp90703 _obj85026_ _args85027_))))
    (define __class-instance-init!
      (lambda (_klass84970_ _obj84971_ _args84972_)
        (let _lp84974_ ((_rest84976_ _args84972_))
          (let* ((_rest8497784987_ _rest84976_)
                 (_else8497984995_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest84976_))
                        _obj84971_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass84970_
                               'rest:
                               _rest84976_))))
                 (_K8498185007_
                  (lambda (_rest84998_ _val84999_ _key85000_)
                    (let ((_$e85002_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass84970_ _key85000_))))
                      (if _$e85002_
                          ((lambda (_off85005_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj84971_
                                _off85005_
                                _val84999_))
                             (let ()
                               (declare (not safe))
                               (_lp84974_ _rest84998_)))
                           _$e85002_)
                          (error '"unknown slot"
                                 'class:
                                 _klass84970_
                                 'slot:
                                 _key85000_))))))
            (if (let () (declare (not safe)) (##pair? _rest8497784987_))
                (let ((_hd8498285010_
                       (let () (declare (not safe)) (##car _rest8497784987_)))
                      (_tl8498385012_
                       (let () (declare (not safe)) (##cdr _rest8497784987_))))
                  (let ((_key85015_ _hd8498285010_))
                    (if (let () (declare (not safe)) (##pair? _tl8498385012_))
                        (let ((_hd8498485017_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8498385012_)))
                              (_tl8498585019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8498385012_))))
                          (let* ((_val85022_ _hd8498485017_)
                                 (_rest85024_ _tl8498585019_))
                            (declare (not safe))
                            (_K8498185007_ _rest85024_ _val85022_ _key85015_)))
                        (let () (declare (not safe)) (_else8497984995_)))))
                (let () (declare (not safe)) (_else8497984995_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass84966_ _obj84967_ _args84968_)
        (apply call-method
               _klass84966_
               'instance-init!
               _obj84967_
               _args84968_)))
    (define constructor-init!
      (lambda (_klass84961_ _kons-id84962_ _obj84963_ . _args84964_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass84961_
           _kons-id84962_
           _obj84963_
           _args84964_))))
    (define __constructor-init!
      (lambda (_klass84951_ _kons-id84952_ _obj84953_ _args84954_)
        (let ((_$e84956_
               (let ()
                 (declare (not safe))
                 (__find-method _klass84951_ _obj84953_ _kons-id84952_))))
          (if _$e84956_
              ((lambda (_kons84959_)
                 (apply _kons84959_ _obj84953_ _args84954_)
                 _obj84953_)
               _$e84956_)
              (error '"missing constructor"
                     'class:
                     _klass84951_
                     'method:
                     _kons-id84952_)))))
    (define struct-copy
      (lambda (_struct84949_)
        (if (let () (declare (not safe)) (##structure? _struct84949_))
            '#!void
            (error '"not a structure" _struct84949_))
        (let () (declare (not safe)) (##structure-copy _struct84949_))))
    (define struct->list
      (lambda (_obj84947_)
        (if (let () (declare (not safe)) (object? _obj84947_))
            (let () (declare (not safe)) (##vector->list _obj84947_))
            (error '"not an object" _obj84947_))))
    (define class->list
      (lambda (_obj84934_)
        (if (let () (declare (not safe)) (object? _obj84934_))
            (let ((_klass84936_
                   (let () (declare (not safe)) (object-type _obj84934_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass84936_ 'gerbil#class::t))
                  (let ((_slot-vector84938_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass84936_
                            '7
                            class::t
                            '#f))))
                    (let _loop84940_ ((_index84942_
                                       (let ((__tmp90709
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector84938_))))
                                         (declare (not safe))
                                         (##fx- __tmp90709 '1)))
                                      (_plist84943_ '()))
                      (if (let () (declare (not safe)) (##fx< _index84942_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass84936_ _plist84943_))
                          (let ((_slot84945_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector84938_
                                    _index84942_))))
                            (let ((__tmp90708
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index84942_ '1)))
                                  (__tmp90704
                                   (let ((__tmp90707
                                          (symbol->keyword _slot84945_))
                                         (__tmp90705
                                          (let ((__tmp90706
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj84934_
                                                    _index84942_))))
                                            (declare (not safe))
                                            (cons __tmp90706 _plist84943_))))
                                     (declare (not safe))
                                     (cons __tmp90707 __tmp90705))))
                              (declare (not safe))
                              (_loop84940_ __tmp90708 __tmp90704))))))
                  (error '"not a class type"
                         'object:
                         _obj84934_
                         'class:
                         _klass84936_)))
            (error '"not an object" _obj84934_))))
    (define call-method
      (lambda (_obj84925_ _id84926_ . _args84927_)
        (let ((_$e84929_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84925_ _id84926_))))
          (if _$e84929_
              ((lambda (_method84932_)
                 (apply _method84932_ _obj84925_ _args84927_))
               _$e84929_)
              (error '"cannot find method"
                     'object:
                     _obj84925_
                     'method:
                     _id84926_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj84922_ _id84923_)
        (if (let () (declare (not safe)) (object? _obj84922_))
            (let ((__tmp90710
                   (let () (declare (not safe)) (object-type _obj84922_))))
              (declare (not safe))
              (find-method __tmp90710 _obj84922_ _id84923_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj84916_ _id84917_)
        (let ((_$e84919_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84916_ _id84917_))))
          (if _$e84919_
              _$e84919_
              (error '"missing method"
                     'object:
                     _obj84916_
                     'method:
                     _id84917_)))))
    (define bound-method-ref
      (lambda (_obj84906_ _id84907_)
        (let ((_$e84909_
               (let ()
                 (declare (not safe))
                 (method-ref _obj84906_ _id84907_))))
          (if _$e84909_
              ((lambda (_method84912_)
                 (lambda _args84914_
                   (apply _method84912_ _obj84906_ _args84914_)))
               _$e84909_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj84899_ _id84900_)
        (let ((_method84902_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj84899_ _id84900_))))
          (lambda _args84904_ (apply _method84902_ _obj84899_ _args84904_)))))
    (define find-method
      (lambda (_klass84895_ _obj84896_ _id84897_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84895_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84895_ _obj84896_ _id84897_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass84895_ _obj84896_ _id84897_)))))
    (define __find-method
      (lambda (_klass84888_ _obj84889_ _id84890_)
        (let ((_$e84892_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass84888_ _obj84889_ _id84890_))))
          (if _$e84892_
              _$e84892_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84888_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass84888_ _obj84889_ _id84890_)))))))
    (define class-find-method
      (lambda (_klass84884_ _obj84885_ _id84886_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84884_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass84884_ _obj84885_ _id84886_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins84876_ _obj84877_ _id84878_)
        (let ((__tmp90711
               (lambda (_g8487984881_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8487984881_ _obj84877_ _id84878_)))))
          (declare (not safe))
          (ormap1 __tmp90711 _mixins84876_))))
    (define builtin-find-method
      (lambda (_klass84869_ _obj84870_ _id84871_)
        (if (let () (declare (not safe)) (##type? _klass84869_))
            (let ((_$e84873_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass84869_ _obj84870_ _id84871_))))
              (if _$e84873_
                  _$e84873_
                  (let ((__tmp90712
                         (let ()
                           (declare (not safe))
                           (##type-super _klass84869_))))
                    (declare (not safe))
                    (builtin-find-method __tmp90712 _obj84870_ _id84871_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass84846_ _obj84847_ _id84848_)
        (letrec ((_metaclass-resolve-method84850_
                  (lambda ()
                    (let ((__method90600
                           (let ()
                             (declare (not safe))
                             (method-ref _klass84846_ 'direct-method-ref))))
                      (if __method90600
                          (__method90600 _klass84846_ _obj84847_ _id84848_)
                          (error '"Missing method"
                                 _klass84846_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!84851_
                  (lambda ()
                    (let ((_method84866_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method84850_))))
                      (let ((__tmp90714
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass84846_
                                '11
                                class::t
                                '#f)))
                            (__tmp90713 (if _method84866_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp90714 _id84848_ __tmp90713))
                      _method84866_))))
          (let ((_$e84853_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass84846_ '11 class::t '#f))))
            (if _$e84853_
                ((lambda (_ht84856_)
                   (let ((_method84858_
                          (let ()
                            (declare (not safe))
                            (table-ref _ht84856_ _id84848_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method84858_))
                         _method84858_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass84846_))
                             (let ((_$e84860_ _method84858_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e84860_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method84850_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e84860_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!84851_)))))
                             '#f))))
                 _$e84853_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass84846_))
                    (let ((_tab84863_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84846_
                         _tab84863_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!84851_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass84842_ _obj84843_ _id84844_)
        (let ((__tmp90715 (##structure-ref _klass84842_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp90715 _obj84843_ _id84844_))))
    (define builtin-method-ref
      (lambda (_klass84833_ _obj84834_ _id84835_)
        (let ((_$e84837_
               (let ((__tmp90716
                      (let () (declare (not safe)) (##type-id _klass84833_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp90716 '#f))))
          (if _$e84837_
              ((lambda (_mtab84840_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab84840_ _id84835_ '#f)))
               _$e84837_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass84799_ _id84800_ _proc84801_ _rebind?84802_)
        (letrec ((_bind!84804_
                  (lambda (_ht84817_)
                    (if (and (let () (declare (not safe)) (not _rebind?84802_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht84817_ _id84800_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass84799_
                               'method:
                               _id84800_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht84817_ _id84800_ _proc84801_))))))
          (if (let () (declare (not safe)) (procedure? _proc84801_))
              '#!void
              (error '"bad method; expected procedure" _proc84801_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84799_ 'gerbil#class::t))
              (let ((_ht84806_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass84799_
                        '11
                        class::t
                        '#f))))
                (if _ht84806_
                    (let () (declare (not safe)) (_bind!84804_ _ht84806_))
                    (let ((_ht84808_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass84799_
                         _ht84808_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!84804_ _ht84808_)))))
              (if (let () (declare (not safe)) (##type? _klass84799_))
                  (let ((_ht84815_
                         (let ((_$e84810_
                                (let ((__tmp90717
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass84799_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp90717
                                   '#f))))
                           (if _$e84810_
                               _$e84810_
                               (let ((_ht84813_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp90718
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass84799_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp90718
                                    _ht84813_))
                                 _ht84813_)))))
                    (declare (not safe))
                    (_bind!84804_ _ht84815_))
                  (error '"bad class; expected class or builtin type"
                         _klass84799_))))))
    (define bind-method!__0
      (lambda (_klass84822_ _id84823_ _proc84824_)
        (let ((_rebind?84826_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass84822_
           _id84823_
           _proc84824_
           _rebind?84826_))))
    (define bind-method!
      (lambda _g90720_
        (let ((_g90719_ (let () (declare (not safe)) (##length _g90720_))))
          (cond ((let () (declare (not safe)) (##fx= _g90719_ 3))
                 (apply (lambda (_klass84822_ _id84823_ _proc84824_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass84822_
                             _id84823_
                             _proc84824_)))
                        _g90720_))
                ((let () (declare (not safe)) (##fx= _g90719_ 4))
                 (apply (lambda (_klass84828_
                                 _id84829_
                                 _proc84830_
                                 _rebind?84831_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass84828_
                             _id84829_
                             _proc84830_
                             _rebind?84831_)))
                        _g90720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g90720_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc84795_ _specializer84796_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc84795_ _specializer84796_))))
    (define seal-class!
      (lambda (_klass84762_)
        (letrec ((_collect-methods!84764_
                  (lambda (_mtab84780_)
                    (letrec ((_merge!84782_
                              (lambda (_tab84790_)
                                (let ((__tmp90721
                                       (lambda (_id84792_ _proc84793_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab84780_
                                            _id84792_
                                            _proc84793_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp90721 _tab84790_))))
                             (_collect-direct-methods!84783_
                              (lambda (_klass84785_)
                                (let ((_$e84787_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass84785_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e84787_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!84782_ _$e84787_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!84783_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass84762_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84762_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass84762_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass84762_))
                        '#!void
                        (error '"cannot seal non-final class" _klass84762_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass84762_))
                        (let ((__method90601
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass84762_ 'seal-class!))))
                          (if __method90601
                              (__method90601 _klass84762_)
                              (error '"Missing method"
                                     _klass84762_
                                     'seal-class!)))
                        (let ((_vtab84766_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_mtab84767_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?))))
                          (let ()
                            (declare (not safe))
                            (_collect-methods!84764_ _mtab84767_))
                          (let ((__tmp90722
                                 (lambda (_id84769_ _proc84770_)
                                   (let ((_$e84772_
                                          (let ()
                                            (declare (not safe))
                                            (table-ref
                                             __method-specializers
                                             _proc84770_
                                             '#f))))
                                     (if _$e84772_
                                         ((lambda (_specializer84775_)
                                            (let ((_proc84777_
                                                   (_specializer84775_
                                                    _klass84762_))
                                                  (_gid84778_
                                                   (let ((__tmp90723
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##type-id
                                                             _klass84762_))))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      __tmp90723
                                                      '"::["
                                                      _id84769_
                                                      '"]"))))
                                              (eval (let ((__tmp90724
                                                           (let ((__tmp90725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp90726
                                 (let ((__tmp90727
                                        (let ()
                                          (declare (not safe))
                                          (cons _proc84777_ '()))))
                                   (declare (not safe))
                                   (cons 'quote __tmp90727))))
                            (declare (not safe))
                            (cons __tmp90726 '()))))
                     (declare (not safe))
                     (cons _gid84778_ __tmp90725))))
              (declare (not safe))
              (cons 'def __tmp90724)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (table-set!
                                                 _vtab84766_
                                                 _id84769_
                                                 _proc84777_))))
                                          _$e84772_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _vtab84766_
                                            _id84769_
                                            _proc84770_)))))))
                            (declare (not safe))
                            (table-for-each __tmp90722 _mtab84767_))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass84762_
                             _vtab84766_
                             '11
                             class::t
                             '#f))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass84762_))))
              '#!void))))
    (define next-method
      (lambda (_subklass84711_ _obj84712_ _id84713_)
        (let ((_klass84715_
               (let () (declare (not safe)) (object-type _obj84712_)))
              (_type-id84716_
               (let () (declare (not safe)) (##type-id _subklass84711_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass84715_ 'gerbil#class::t))
              (let _lp84718_ ((_rest84720_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass84715_))))
                (let* ((_rest8472184729_ _rest84720_)
                       (_else8472384737_ (lambda () '#f))
                       (_K8472584743_
                        (lambda (_rest84740_ _klass84741_)
                          (if (let ((__tmp90730
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass84741_))))
                                (declare (not safe))
                                (eq? _type-id84716_ __tmp90730))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest84740_
                                 _obj84712_
                                 _id84713_))
                              (let ()
                                (declare (not safe))
                                (_lp84718_ _rest84740_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8472184729_))
                      (let ((_hd8472684746_
                             (let ()
                               (declare (not safe))
                               (##car _rest8472184729_)))
                            (_tl8472784748_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8472184729_))))
                        (let* ((_klass84751_ _hd8472684746_)
                               (_rest84753_ _tl8472784748_))
                          (declare (not safe))
                          (_K8472584743_ _rest84753_ _klass84751_)))
                      (let () (declare (not safe)) (_else8472384737_)))))
              (if (let () (declare (not safe)) (##type? _klass84715_))
                  (let _lp84755_ ((_klass84757_ _klass84715_))
                    (if (let ((__tmp90729
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass84757_))))
                          (declare (not safe))
                          (eq? _type-id84716_ __tmp90729))
                        (let ((__tmp90728
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84757_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp90728
                           _obj84712_
                           _id84713_))
                        (let ((_$e84759_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass84757_))))
                          (if _$e84759_
                              (let ()
                                (declare (not safe))
                                (_lp84755_ _$e84759_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass84701_ _obj84702_ _id84703_ . _args84704_)
        (let ((_$e84706_
               (let ()
                 (declare (not safe))
                 (next-method _subklass84701_ _obj84702_ _id84703_))))
          (if _$e84706_
              ((lambda (_methodf84709_)
                 (apply _methodf84709_ _obj84702_ _args84704_))
               _$e84706_)
              (error '"cannot find next method"
                     'object:
                     _obj84702_
                     'method:
                     _id84703_)))))
    (define write-style (lambda (_we84699_) (macro-writeenv-style _we84699_)))
    (define write-object
      (lambda (_we84691_ _obj84692_)
        (let ((_$e84694_
               (let () (declare (not safe)) (method-ref _obj84692_ ':wr))))
          (if _$e84694_
              ((lambda (_method84697_) (_method84697_ _obj84692_ _we84691_))
               _$e84694_)
              (let ()
                (declare (not safe))
                (##default-wr _we84691_ _obj84692_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
