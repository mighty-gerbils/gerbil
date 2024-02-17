(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708168067)
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
      (let* ((_slots92576_
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
             (_slot-vector92578_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots92576_))))
             (_slot-table92585_
              (let ((_slot-table92580_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot92582_ _field92583_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table92580_ _slot92582_ _field92583_))
                   (let ((__tmp97293 (symbol->keyword _slot92582_)))
                     (declare (not safe))
                     (table-set! _slot-table92580_ __tmp97293 _field92583_)))
                 _slots92576_
                 (let ((__tmp97294 (length _slots92576_)))
                   (declare (not safe))
                   (iota __tmp97294 '1)))
                _slot-table92580_))
             (_flags92587_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields92593_
              (list->vector
               (apply append
                      (map (lambda (_g9258892590_) (list _g9258892590_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots92576_ '5))))))
             (_properties92595_
              (let ((__tmp97297
                     (let ((__tmp97298
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots92576_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp97298)))
                    (__tmp97295
                     (let ((__tmp97296
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp97296 '()))))
                (declare (not safe))
                (cons __tmp97297 __tmp97295)))
             (_t92597_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags92587_
                 ##type-type
                 _fields92593_
                 '()
                 _slot-vector92578_
                 _slot-table92585_
                 _properties92595_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t92597_ _t92597_))
        _t92597_))
    (define class-type?
      (lambda (_obj92574_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj92574_ class::t.id))))
    (define class-type=?
      (lambda (_x92571_ _y92572_)
        (let ((__tmp97300 (##structure-ref _x92571_ '1 class::t '#f))
              (__tmp97299 (##structure-ref _y92572_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp97300 __tmp97299))))
    (define type-opaque?
      (lambda (_type92569_)
        (let ((__tmp97301
               (let ((__tmp97302
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92569_))))
                 (declare (not safe))
                 (##fxand __tmp97302 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp97301 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type92567_)
        (let ((__tmp97303
               (let ((__tmp97304
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92567_))))
                 (declare (not safe))
                 (##fxand __tmp97304 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp97303 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type92565_)
        (let ((__tmp97305
               (let ((__tmp97306
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92565_))))
                 (declare (not safe))
                 (##fxand __tmp97306 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp97305 '0))))
    (define class-type-struct?
      (lambda (_klass92563_)
        (let ((__tmp97307
               (let ((__tmp97308
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92563_))))
                 (declare (not safe))
                 (##fxand __tmp97308 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp97307 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass92561_)
        (let ((__tmp97309
               (let ((__tmp97310
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92561_))))
                 (declare (not safe))
                 (##fxand __tmp97310 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp97309 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass92559_)
        (let ((__tmp97311
               (let ((__tmp97312
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92559_))))
                 (declare (not safe))
                 (##fxand __tmp97312 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp97311 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties92525_)
        (map (lambda (_e9252692528_)
               (let* ((_g9253092537_ _e9252692528_)
                      (_E9253292541_
                       (lambda () (error '"No clause matching" _g9253092537_)))
                      (_K9253392547_
                       (lambda (_val92544_ _key92545_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key92545_ 'direct-supers:))
                             (let ((__tmp97313 (map class-type-id _val92544_)))
                               (declare (not safe))
                               (cons _key92545_ __tmp97313))
                             (let ()
                               (declare (not safe))
                               (cons _key92545_ _val92544_))))))
                 (if (let () (declare (not safe)) (##pair? _g9253092537_))
                     (let ((_hd9253492550_
                            (let ()
                              (declare (not safe))
                              (##car _g9253092537_)))
                           (_tl9253592552_
                            (let ()
                              (declare (not safe))
                              (##cdr _g9253092537_))))
                       (let* ((_key92555_ _hd9253492550_)
                              (_val92557_ _tl9253592552_))
                         (declare (not safe))
                         (_K9253392547_ _val92557_ _key92555_)))
                     (let () (declare (not safe)) (_E9253292541_)))))
             _properties92525_)))
    (define make-class-type-descriptor
      (lambda (_type-id92424_
               _type-name92425_
               _type-super92426_
               _precedence-list92427_
               _slot-vector92428_
               _properties92429_
               _constructor92430_
               _slot-table92431_
               _methods92432_)
        (letrec ((_make-props!92434_
                  (lambda (_key92494_)
                    (letrec* ((_ht92496_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!92497_
                               (lambda (_ht92518_ _slots92519_)
                                 (for-each
                                  (lambda (_g9252092522_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht92518_
                                       _g9252092522_
                                       '#t)))
                                  _slots92519_)))
                              (_put-alist!92498_
                               (lambda (_ht92507_ _key92508_ _alist92509_)
                                 (let ((_$e92511_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key92508_ _alist92509_))))
                                   (if _$e92511_
                                       ((lambda (_g9251392515_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!92497_
                                             _ht92507_
                                             _g9251392515_)))
                                        _$e92511_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!92498_
                         _ht92496_
                         _key92494_
                         _properties92429_))
                      (for-each
                       (lambda (_mixin92500_)
                         (let ((_alist92502_
                                (##structure-ref
                                 _mixin92500_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist92502_))
                                   (let ((__tmp97315
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key92494_
                                                     _alist92502_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp97315)))
                               (let ((__tmp97314
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin92500_))))
                                 (declare (not safe))
                                 (_put-slots!92497_ _ht92496_ __tmp97314))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!92498_
                                  _ht92496_
                                  _key92494_
                                  _alist92502_)))))
                       _precedence-list92427_)
                      _ht92496_))))
          (let* ((_transparent?92436_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties92429_)))
                 (_all-slots-printable?92441_
                  (let ((_$e92438_ _transparent?92436_))
                    (if _$e92438_
                        _$e92438_
                        (let ((__tmp97316
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties92429_))))
                          (declare (not safe))
                          (eq? '#t __tmp97316)))))
                 (_printable92443_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?92441_))
                      (let ()
                        (declare (not safe))
                        (_make-props!92434_ 'print:))
                      '#f))
                 (_all-slots-equalable?92448_
                  (let ((_$e92445_ _transparent?92436_))
                    (if _$e92445_
                        _$e92445_
                        (let ((__tmp97317
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties92429_))))
                          (declare (not safe))
                          (eq? '#t __tmp97317)))))
                 (_equalable92450_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?92448_))
                      (let ()
                        (declare (not safe))
                        (_make-props!92434_ 'equal:))
                      '#f))
                 (_first-new-field92452_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super92426_
                         'gerbil#class::t))
                      (let ((__tmp97318
                             (##structure-ref
                              _type-super92426_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp97318))
                      '1))
                 (_field-info-length92454_
                  (let ((__tmp97319
                         (let ((__tmp97320
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector92428_))))
                           (declare (not safe))
                           (##fx- __tmp97320 _first-new-field92452_))))
                    (declare (not safe))
                    (##fx* '3 __tmp97319)))
                 (_field-info92456_ (make-vector _field-info-length92454_ '#f))
                 (_struct?92458_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties92429_)))
                 (_final?92460_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties92429_)))
                 (_metaclass92468_
                  (let ((_metaclass9246192463_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties92429_))))
                    (if _metaclass9246192463_
                        (let ((_metaclass92466_ _metaclass9246192463_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass92466_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id92424_
                                     'metaclass:
                                     _metaclass92466_))
                          _metaclass92466_)
                        '#f)))
                 (_opaque?92473_
                  (let ((_$e92470_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?92448_))))
                    (if _$e92470_
                        _$e92470_
                        (if _type-super92426_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super92426_))
                            '#f))))
                 (_type-flags92475_
                  (let ((__tmp97324 (if _final?92460_ '0 type-flag-extensible))
                        (__tmp97323 (if _opaque?92473_ type-flag-opaque '0))
                        (__tmp97322
                         (if _struct?92458_ class-type-flag-struct '0))
                        (__tmp97321
                         (if _metaclass92468_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp97324
                             __tmp97323
                             __tmp97322
                             __tmp97321))))
            (let _loop92478_ ((_i92480_ _first-new-field92452_) (_j92481_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j92481_ _field-info-length92454_))
                  (let* ((_slot92483_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector92428_ _i92480_)))
                         (_flags92491_
                          (if _transparent?92436_
                              '0
                              (let ((__tmp97326
                                     (if (or _all-slots-printable?92441_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable92443_
                                                _slot92483_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp97325
                                     (if (or _all-slots-equalable?92448_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable92450_
                                                _slot92483_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp97326 __tmp97325)))))
                    (vector-set! _field-info92456_ _j92481_ _slot92483_)
                    (vector-set!
                     _field-info92456_
                     (let () (declare (not safe)) (##fx+ _j92481_ '1))
                     _flags92491_)
                    (let ((__tmp97328
                           (let () (declare (not safe)) (##fx+ _i92480_ '1)))
                          (__tmp97327
                           (let () (declare (not safe)) (##fx+ _j92481_ '3))))
                      (declare (not safe))
                      (_loop92478_ __tmp97328 __tmp97327)))
                  '#!void))
            (if _metaclass92468_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass92468_
                   _type-id92424_
                   _type-name92425_
                   _type-flags92475_
                   _type-super92426_
                   _field-info92456_
                   _precedence-list92427_
                   _slot-vector92428_
                   _slot-table92431_
                   _properties92429_
                   _constructor92430_
                   _methods92432_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id92424_
                   _type-name92425_
                   _type-flags92475_
                   _type-super92426_
                   _field-info92456_
                   _precedence-list92427_
                   _slot-vector92428_
                   _slot-table92431_
                   _properties92429_
                   _constructor92430_
                   _methods92432_)))))))
    (define class-type-id
      (lambda (_klass92422_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92422_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass92420_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92420_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass92417_ _val92418_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92417_ _val92418_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass92412_ _val92414_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92412_
           _val92414_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass92410_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92410_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass92408_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92408_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass92405_ _val92406_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92405_ _val92406_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass92400_ _val92402_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92400_
           _val92402_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass92398_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92398_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass92396_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92396_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass92393_ _val92394_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92393_ _val92394_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass92388_ _val92390_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92388_
           _val92390_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass92386_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92386_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass92384_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92384_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass92381_ _val92382_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92381_ _val92382_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass92376_ _val92378_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92376_
           _val92378_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass92374_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92374_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass92372_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92372_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass92369_ _val92370_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92369_ _val92370_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass92364_ _val92366_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92364_
           _val92366_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass92362_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92362_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass92360_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass92360_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass92357_ _val92358_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass92357_
           _val92358_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass92352_ _val92354_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92352_
           _val92354_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass92350_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92350_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass92348_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92348_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass92345_ _val92346_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass92345_
           _val92346_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass92340_ _val92342_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92340_
           _val92342_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass92338_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92338_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass92336_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92336_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass92333_ _val92334_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92333_ _val92334_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass92328_ _val92330_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92328_
           _val92330_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass92326_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92326_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass92324_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92324_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass92321_ _val92322_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92321_ _val92322_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass92316_ _val92318_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92316_
           _val92318_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass92314_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92314_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass92312_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92312_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass92309_ _val92310_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass92309_
           _val92310_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass92304_ _val92306_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92304_
           _val92306_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass92302_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass92302_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass92300_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass92300_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass92297_ _val92298_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass92297_ _val92298_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass92292_ _val92294_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92292_
           _val92294_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass92290_)
        (cdr (vector->list (##structure-ref _klass92290_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass92288_)
        (let ((__tmp97329
               (let ((__tmp97330
                      (##structure-ref _klass92288_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp97330))))
          (declare (not safe))
          (##fx- __tmp97329 '1))))
    (define class-type-seal!
      (lambda (_klass92286_)
        (let ((__tmp97331
               (let ((__tmp97332
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92286_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp97332))))
          (declare (not safe))
          (##structure-set!
           _klass92286_
           __tmp97331
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass92284_)
        (let ((__tmp97333
               (let ((__tmp97334
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92284_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp97334))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass92284_
           __tmp97333
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct92275_ _maybe-super-struct92276_)
        (let ((_maybe-super-struct-id92278_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct92276_))))
          (let _lp92280_ ((_super-struct92282_ _maybe-sub-struct92275_))
            (if (let () (declare (not safe)) (not _super-struct92282_))
                '#f
                (if (let ((__tmp97336
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct92282_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id92278_ __tmp97336))
                    '#t
                    (let ((__tmp97335
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct92282_))))
                      (declare (not safe))
                      (_lp92280_ __tmp97335))))))))
    (define base-struct/1
      (lambda (_klass92273_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass92273_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass92273_))
                _klass92273_
                (let () (declare (not safe)) (##type-super _klass92273_)))
            (if (let () (declare (not safe)) (not _klass92273_))
                '#f
                (error '"not a class or false" _klass92273_)))))
    (define base-struct/2
      (lambda (_klass192261_ _klass292262_)
        (let ((_s192264_
               (let () (declare (not safe)) (base-struct/1 _klass192261_)))
              (_s292265_
               (let () (declare (not safe)) (base-struct/1 _klass292262_))))
          (if (or (let () (declare (not safe)) (not _s192264_))
                  (and _s292265_
                       (let ()
                         (declare (not safe))
                         (substruct? _s192264_ _s292265_))))
              _s292265_
              (if (or (let () (declare (not safe)) (not _s292265_))
                      (and _s192264_
                           (let ()
                             (declare (not safe))
                             (substruct? _s292265_ _s192264_))))
                  _s192264_
                  (error '"bad mixin: incompatible struct bases"
                         _klass192261_
                         _klass292262_
                         _s192264_
                         _s292265_))))))
    (define base-struct/list
      (lambda (_all-supers92145_)
        (let* ((_all-supers9214692171_ _all-supers92145_)
               (_E9215192175_
                (lambda ()
                  (error '"No clause matching" _all-supers9214692171_))))
          (let ((_K9216992258_ (lambda () '#f))
                (_K9216692244_
                 (lambda (_x92242_)
                   (let () (declare (not safe)) (base-struct/1 _x92242_))))
                (_K9216192221_
                 (lambda (_y92218_ _x92219_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x92219_ _y92218_))))
                (_K9215292182_
                 (lambda (_y92179_ _x92180_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x92180_ _y92179_)))))
            (let* ((___match9728897289_
                    (lambda (_hd9215392185_ _tl9215492187_)
                      (let ((_x92190_ _hd9215392185_))
                        (letrec ((_splice-rest9215692192_
                                  (lambda (_rest9216092199_ _y92201_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest9216092199_))
                                        (let ()
                                          (declare (not safe))
                                          (_K9215292182_ _y92201_ _x92190_))
                                        (let ()
                                          (declare (not safe))
                                          (_E9215192175_)))))
                                 (_splice-try9215892194_
                                  (lambda (_hd9215992203_
                                           _rest9216092205_
                                           _y9215592206_)
                                    (let ((_y92209_ _hd9215992203_))
                                      (let ((__tmp97338
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest9216092205_)))
                                            (__tmp97337
                                             (let ()
                                               (declare (not safe))
                                               (cons _y92209_ _y9215592206_))))
                                        (declare (not safe))
                                        (_splice-loop9215792196_
                                         __tmp97338
                                         __tmp97337)))))
                                 (_splice-loop9215792196_
                                  (lambda (_rest9216092211_ _y9215592212_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest9216092211_))
                                        (let ((__tmp97340
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest9216092211_))))
                                          (declare (not safe))
                                          (_splice-try9215892194_
                                           __tmp97340
                                           _rest9216092211_
                                           _y9215592212_))
                                        (let ((__tmp97339
                                               (reverse _y9215592212_)))
                                          (declare (not safe))
                                          (_splice-rest9215692192_
                                           _rest9216092211_
                                           __tmp97339))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop9215792196_ _tl9215492187_ '()))))))
                   (_try-match9214892254_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers9214692171_))
                          (let ((_tl9216892249_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers9214692171_)))
                                (_hd9216792247_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers9214692171_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl9216892249_))
                                (let ((_x92252_ _hd9216792247_))
                                  (declare (not safe))
                                  (base-struct/1 _x92252_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl9216892249_))
                                    (let ((_tl9216592233_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl9216892249_)))
                                          (_hd9216492231_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl9216892249_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl9216592233_))
                                          (let ((_x92229_ _hd9216792247_)
                                                (_y92236_ _hd9216492231_))
                                            (let ()
                                              (declare (not safe))
                                              (_K9216192221_
                                               _y92236_
                                               _x92229_)))
                                          (___match9728897289_
                                           _hd9216792247_
                                           _tl9216892249_)))
                                    (___match9728897289_
                                     _hd9216792247_
                                     _tl9216892249_))))
                          (let () (declare (not safe)) (_E9215192175_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers9214692171_))
                  (let () (declare (not safe)) (_K9216992258_))
                  (let () (declare (not safe)) (_try-match9214892254_))))))))
    (define base-struct
      (lambda _all-supers92143_
        (let () (declare (not safe)) (base-struct/list _all-supers92143_))))
    (define find-super-constructor
      (lambda (_super92095_)
        (let _lp92097_ ((_rest92099_ _super92095_) (_constructor92100_ '#f))
          (let* ((_rest9210192109_ _rest92099_)
                 (_else9210392117_ (lambda () _constructor92100_))
                 (_K9210592131_
                  (lambda (_rest92120_ _hd92121_)
                    (let ((_$e92123_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd92121_
                              '10
                              class::t
                              '#f))))
                      (if _$e92123_
                          ((lambda (_xconstructor92126_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor92100_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor92100_
                                            _xconstructor92126_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp92097_ _rest92120_ _xconstructor92126_))
                                 (error '"conflicting implicit constructors"
                                        _constructor92100_
                                        _xconstructor92126_)))
                           _$e92123_)
                          (let ()
                            (declare (not safe))
                            (_lp92097_ _rest92120_ _constructor92100_)))))))
            (if (let () (declare (not safe)) (##pair? _rest9210192109_))
                (let ((_hd9210692134_
                       (let () (declare (not safe)) (##car _rest9210192109_)))
                      (_tl9210792136_
                       (let () (declare (not safe)) (##cdr _rest9210192109_))))
                  (let* ((_hd92139_ _hd9210692134_)
                         (_rest92141_ _tl9210792136_))
                    (declare (not safe))
                    (_K9210592131_ _rest92141_ _hd92139_)))
                (let () (declare (not safe)) (_else9210392117_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list92071_ _direct-slots92072_)
        (let* ((_next-slot92074_ '1)
               (_slot-table92076_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots92078_ '(__class))
               (_process-slot92082_
                (lambda (_slot92080_)
                  (if (let () (declare (not safe)) (symbol? _slot92080_))
                      '#!void
                      (error '"invalid slot name" _slot92080_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table92076_ _slot92080_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table92076_
                           _slot92080_
                           _next-slot92074_))
                        (let ((__tmp97341 (symbol->keyword _slot92080_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table92076_
                           __tmp97341
                           _next-slot92074_))
                        (set! _r-slots92078_
                              (let ()
                                (declare (not safe))
                                (cons _slot92080_ _r-slots92078_)))
                        (set! _next-slot92074_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot92074_ '1)))))))
               (_process-slots92088_
                (lambda (_g9208392085_)
                  (for-each _process-slot92082_ _g9208392085_))))
          (for-each
           (lambda (_mixin92091_)
             (let ((__tmp97342
                    (let ((__tmp97343
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin92091_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp97343 '()))))
               (declare (not safe))
               (_process-slots92088_ __tmp97342)))
           (reverse _class-precedence-list92071_))
          (let ()
            (declare (not safe))
            (_process-slots92088_ _direct-slots92072_))
          (let ((_slot-vector92093_ (list->vector (reverse _r-slots92078_))))
            (values _slot-vector92093_ _slot-table92076_)))))
    (define make-class-type
      (lambda (_id92033_
               _name92034_
               _direct-supers92035_
               _direct-slots92036_
               _properties92037_
               _constructor92038_)
        (let ((_$e92043_
               (let ((__tmp97344
                      (lambda (_$obj92040_)
                        (let ((__tmp97345
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj92040_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp97345)))))
                 (declare (not safe))
                 (find __tmp97344 _direct-supers92035_))))
          (if _$e92043_
              ((lambda (_g9204592047_)
                 (error '"Illegal super class; not a class descriptor"
                        _g9204592047_))
               _$e92043_)
              (let ((_$e92050_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers92035_))))
                (if _$e92050_
                    ((lambda (_g9205292054_)
                       (error '"Cannot extend final class" _g9205292054_))
                     _$e92050_)
                    '#!void))))
        (let ((_g97346_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers92035_))))
          (begin
            (let ((_g97347_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g97346_) (##vector-length _g97346_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g97347_ 2)))
                  (error "Context expects 2 values" _g97347_)))
            (let ((_precedence-list92057_
                   (let () (declare (not safe)) (##vector-ref _g97346_ 0)))
                  (_struct-super92058_
                   (let () (declare (not safe)) (##vector-ref _g97346_ 1))))
              (let ((_g97348_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list92057_
                        _direct-slots92036_))))
                (begin
                  (let ((_g97349_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g97348_)
                               (##vector-length _g97348_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g97349_ 2)))
                        (error "Context expects 2 values" _g97349_)))
                  (let ((_slot-vector92060_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g97348_ 0)))
                        (_slot-table92061_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g97348_ 1))))
                    (let* ((_properties92063_
                            (let ((__tmp97352
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots92036_)))
                                  (__tmp97350
                                   (let ((__tmp97351
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers92035_))))
                                     (declare (not safe))
                                     (cons __tmp97351 _properties92037_))))
                              (declare (not safe))
                              (cons __tmp97352 __tmp97350)))
                           (_constructor*92068_
                            (let ((_$e92065_ _constructor92038_))
                              (if _$e92065_
                                  _$e92065_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers92035_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id92033_
                         _name92034_
                         _struct-super92058_
                         _precedence-list92057_
                         _slot-vector92060_
                         _properties92063_
                         _constructor*92068_
                         _slot-table92061_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass92031_)
        (let ((__tmp97353
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass92031_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass92031_ __tmp97353))))
    (define compute-precedence-list
      (lambda (_direct-supers92029_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers92029_))))
    (define make-class-predicate
      (lambda (_klass92013_)
        (let ((_tid92015_
               (let () (declare (not safe)) (##type-id _klass92013_))))
          (if (let () (declare (not safe)) (class-type-final? _klass92013_))
              (lambda (_g9201692018_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g9201692018_ _tid92015_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass92013_))
                  (lambda (_g9202092022_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g9202092022_ _tid92015_)))
                  (lambda (_g9202492026_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass92013_ _g9202492026_))))))))
    (define if-class-slot-field
      (lambda (_klass92002_
               _slot92003_
               _if-final92004_
               _if-struct92005_
               _if-struct-field92006_
               _if-class-slot92007_)
        (let ((_field92009_
               (let ((__tmp97354
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass92002_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (table-ref __tmp97354 _slot92003_ '#f))))
          (if (let () (declare (not safe)) (not _field92009_))
              (error '"unknown slot" 'class: _klass92002_ 'slot: _slot92003_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass92002_))
                  (_if-final92004_ _klass92002_ _slot92003_ _field92009_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass92002_))
                      (_if-struct92005_ _klass92002_ _slot92003_ _field92009_)
                      (if (let ((_strukt92011_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass92002_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt92011_
                                    'gerbil#class::t))
                                 (let ((__tmp97355
                                        (let ((__tmp97356
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt92011_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp97356))))
                                   (declare (not safe))
                                   (##fx< _field92009_ __tmp97355))))
                          (_if-struct-field92006_
                           _klass92002_
                           _slot92003_
                           _field92009_)
                          (_if-class-slot92007_
                           _klass92002_
                           _slot92003_
                           _field92009_))))))))
    (define make-class-slot-accessor
      (lambda (_klass91999_ _slot92000_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91999_
           _slot92000_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass91996_ _slot91997_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91996_
           _slot91997_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass91993_ _slot91994_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91993_
           _slot91994_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass91990_ _slot91991_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91990_
           _slot91991_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object91974_ _class91975_ _slot91976_)
        (apply error
               '"not an instance"
               'object:
               _object91974_
               'class:
               _class91975_
               (if _slot91976_
                   (let ((__tmp97357
                          (let ()
                            (declare (not safe))
                            (cons _slot91976_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp97357))
                   '()))))
    (define not-an-instance__0
      (lambda (_object91981_ _class91982_)
        (let ((_slot91984_ '#f))
          (declare (not safe))
          (not-an-instance__% _object91981_ _class91982_ _slot91984_))))
    (define not-an-instance
      (lambda _g97359_
        (let ((_g97358_ (let () (declare (not safe)) (##length _g97359_))))
          (cond ((let () (declare (not safe)) (##fx= _g97358_ 2))
                 (apply (lambda (_object91981_ _class91982_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object91981_ _class91982_)))
                        _g97359_))
                ((let () (declare (not safe)) (##fx= _g97358_ 3))
                 (apply (lambda (_object91986_ _class91987_ _slot91988_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object91986_
                             _class91987_
                             _slot91988_)))
                        _g97359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97359_))))))
    (define make-final-slot-accessor
      (lambda (_klass91967_ _slot91968_ _field91969_)
        (lambda (_obj91971_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj91971_
             _field91969_
             _klass91967_
             _slot91968_)))))
    (define make-final-slot-mutator
      (lambda (_klass91960_ _slot91961_ _field91962_)
        (lambda (_obj91964_ _val91965_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj91964_
             _val91965_
             _field91962_
             _klass91960_
             _slot91961_)))))
    (define make-struct-slot-accessor
      (lambda (_klass91954_ _slot91955_ _field91956_)
        (lambda (_obj91958_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj91958_
             _field91956_
             _klass91954_
             _slot91955_)))))
    (define make-struct-slot-mutator
      (lambda (_klass91947_ _slot91948_ _field91949_)
        (lambda (_obj91951_ _val91952_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj91951_
             _val91952_
             _field91949_
             _klass91947_
             _slot91948_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass91941_ _slot91942_ _field91943_)
        (lambda (_obj91945_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj91945_
             _field91943_
             _klass91941_
             _slot91942_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass91934_ _slot91935_ _field91936_)
        (lambda (_obj91938_ _val91939_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj91938_
             _val91939_
             _field91936_
             _klass91934_
             _slot91935_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass91928_ _slot91929_ _field91930_)
        (lambda (_obj91932_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass91928_ _obj91932_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj91932_ _field91930_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj91932_ _klass91928_ _slot91929_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass91921_ _slot91922_ _field91923_)
        (lambda (_obj91925_ _val91926_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass91921_ _obj91925_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91925_ _field91923_ _val91926_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj91925_ _klass91921_ _slot91922_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass91915_ _slot91916_ _field91917_)
        (lambda (_obj91919_)
          (if (let ((__tmp97360
                     (let () (declare (not safe)) (##type-id _klass91915_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91919_ __tmp97360))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj91919_ _field91917_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass91915_ _obj91919_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj91919_ _slot91916_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj91919_
                     _klass91915_
                     _slot91916_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass91908_ _slot91909_ _field91910_)
        (lambda (_obj91912_ _val91913_)
          (if (let ((__tmp97361
                     (let () (declare (not safe)) (##type-id _klass91908_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91912_ __tmp97361))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91912_ _field91910_ _val91913_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass91908_ _obj91912_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj91912_ _slot91909_ _val91913_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj91912_
                     _klass91908_
                     _slot91909_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass91902_ _slot91903_ _field91904_)
        (lambda (_obj91906_)
          (if (let ((__tmp97362
                     (let () (declare (not safe)) (##type-id _klass91902_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91906_ __tmp97362))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj91906_ _field91904_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj91906_ _slot91903_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass91895_ _slot91896_ _field91897_)
        (lambda (_obj91899_ _val91900_)
          (if (let ((__tmp97363
                     (let () (declare (not safe)) (##type-id _klass91895_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91899_ __tmp97363))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91899_ _field91897_ _val91900_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj91899_ _slot91896_ _val91900_))))))
    (define class-slot-offset
      (lambda (_klass91892_ _slot91893_)
        (let ((__tmp97364
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass91892_ '8 class::t '#f))))
          (declare (not safe))
          (table-ref __tmp97364 _slot91893_ '#f))))
    (define class-slot-ref
      (lambda (_klass91886_ _obj91887_ _slot91888_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass91886_ _obj91887_))
            (let ((_off91890_
                   (let ((__tmp97365
                          (let ()
                            (declare (not safe))
                            (object-type _obj91887_))))
                     (declare (not safe))
                     (class-slot-offset __tmp97365 _slot91888_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj91887_
               _off91890_
               _klass91886_
               _slot91888_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj91887_ _klass91886_)))))
    (define class-slot-set!
      (lambda (_klass91879_ _obj91880_ _slot91881_ _val91882_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass91879_ _obj91880_))
            (let ((_off91884_
                   (let ((__tmp97366
                          (let ()
                            (declare (not safe))
                            (object-type _obj91880_))))
                     (declare (not safe))
                     (class-slot-offset __tmp97366 _slot91881_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj91880_
               _val91882_
               _off91884_
               _klass91879_
               _slot91881_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj91880_ _klass91879_)))))
    (define unchecked-field-ref
      (lambda (_obj91876_ _off91877_)
        (let ((__tmp97367
               (let () (declare (not safe)) (##structure-type _obj91876_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj91876_ _off91877_ __tmp97367 '#f))))
    (define unchecked-field-set!
      (lambda (_obj91872_ _off91873_ _val91874_)
        (let ((__tmp97368
               (let () (declare (not safe)) (##structure-type _obj91872_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj91872_
           _val91874_
           _off91873_
           __tmp97368
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj91869_ _slot91870_)
        (let ((__tmp97369
               (let ((__tmp97370
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj91869_))))
                 (declare (not safe))
                 (class-slot-offset __tmp97370 _slot91870_))))
          (declare (not safe))
          (unchecked-field-ref _obj91869_ __tmp97369))))
    (define unchecked-slot-set!
      (lambda (_obj91865_ _slot91866_ _val91867_)
        (let ((__tmp97371
               (let ((__tmp97372
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj91865_))))
                 (declare (not safe))
                 (class-slot-offset __tmp97372 _slot91866_))))
          (declare (not safe))
          (unchecked-field-set! _obj91865_ __tmp97371 _val91867_))))
    (define slot-ref__%
      (lambda (_obj91841_ _slot91842_ _E91843_)
        (if (let () (declare (not safe)) (object? _obj91841_))
            (let* ((_klass91845_
                    (let () (declare (not safe)) (object-type _obj91841_)))
                   (_$e91848_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass91845_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass91845_ _slot91842_))
                        '#f)))
              (if _$e91848_
                  ((lambda (_off91851_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj91841_ _off91851_)))
                   _$e91848_)
                  (_E91843_ _obj91841_ _slot91842_)))
            (_E91843_ _obj91841_ _slot91842_))))
    (define slot-ref__0
      (lambda (_obj91856_ _slot91857_)
        (let ((_E91859_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj91856_ _slot91857_ _E91859_))))
    (define slot-ref
      (lambda _g97374_
        (let ((_g97373_ (let () (declare (not safe)) (##length _g97374_))))
          (cond ((let () (declare (not safe)) (##fx= _g97373_ 2))
                 (apply (lambda (_obj91856_ _slot91857_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj91856_ _slot91857_)))
                        _g97374_))
                ((let () (declare (not safe)) (##fx= _g97373_ 3))
                 (apply (lambda (_obj91861_ _slot91862_ _E91863_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj91861_ _slot91862_ _E91863_)))
                        _g97374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97374_))))))
    (define slot-set!__%
      (lambda (_obj91813_ _slot91814_ _val91815_ _E91816_)
        (if (let () (declare (not safe)) (object? _obj91813_))
            (let* ((_klass91818_
                    (let () (declare (not safe)) (object-type _obj91813_)))
                   (_$e91821_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass91818_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass91818_ _slot91814_))
                        '#f)))
              (if _$e91821_
                  ((lambda (_off91824_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj91813_
                        _off91824_
                        _val91815_)))
                   _$e91821_)
                  (_E91816_ _obj91813_ _slot91814_)))
            (_E91816_ _obj91813_ _slot91814_))))
    (define slot-set!__0
      (lambda (_obj91829_ _slot91830_ _val91831_)
        (let ((_E91833_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj91829_ _slot91830_ _val91831_ _E91833_))))
    (define slot-set!
      (lambda _g97376_
        (let ((_g97375_ (let () (declare (not safe)) (##length _g97376_))))
          (cond ((let () (declare (not safe)) (##fx= _g97375_ 3))
                 (apply (lambda (_obj91829_ _slot91830_ _val91831_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj91829_ _slot91830_ _val91831_)))
                        _g97376_))
                ((let () (declare (not safe)) (##fx= _g97375_ 4))
                 (apply (lambda (_obj91835_ _slot91836_ _val91837_ _E91838_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj91835_
                             _slot91836_
                             _val91837_
                             _E91838_)))
                        _g97376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97376_))))))
    (define __slot-error
      (lambda (_obj91809_ _slot91810_)
        (error '"Cannot find slot" 'object: _obj91809_ 'slot: _slot91810_)))
    (define subclass?
      (lambda (_maybe-sub-class91799_ _maybe-super-class91800_)
        (let* ((_maybe-super-class-id91802_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class91800_)))
               (_$e91804_
                (let ((__tmp97377
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class91799_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id91802_ __tmp97377))))
          (if _$e91804_
              _$e91804_
              (let ((__tmp97379
                     (lambda (_super-class91807_)
                       (let ((__tmp97380
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class91807_))))
                         (declare (not safe))
                         (eq? __tmp97380 _maybe-super-class-id91802_))))
                    (__tmp97378
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class91799_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp97379 __tmp97378))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass91796_ _obj91797_)
        (let ((__tmp97381
               (let () (declare (not safe)) (##type-id _klass91796_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj91797_ __tmp97381))))
    (define struct-instance?
      (lambda (_klass91793_ _obj91794_)
        (let ((__tmp97382
               (let () (declare (not safe)) (##type-id _klass91793_))))
          (declare (not safe))
          (##structure-instance-of? _obj91794_ __tmp97382))))
    (define class-instance?
      (lambda (_klass91788_ _obj91789_)
        (if (let () (declare (not safe)) (object? _obj91789_))
            (let ((_type91791_
                   (let () (declare (not safe)) (object-type _obj91789_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type91791_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type91791_ _klass91788_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass91783_ _k91784_)
        (let ((_obj91786_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass91783_ _k91784_))))
          (let () (declare (not safe)) (object-fill! _obj91786_ '#f))
          _obj91786_)))
    (define object-fill!
      (lambda (_obj91776_ _fill91777_)
        (let _loop91779_ ((_i91781_
                           (let ((__tmp97384
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj91776_))))
                             (declare (not safe))
                             (##fx- __tmp97384 '1))))
          (if (let () (declare (not safe)) (##fx> _i91781_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj91776_
                   _fill91777_
                   _i91781_
                   '#f
                   '#f))
                (let ((__tmp97383
                       (let () (declare (not safe)) (##fx- _i91781_ '1))))
                  (declare (not safe))
                  (_loop91779_ __tmp97383)))
              _obj91776_))))
    (define new-instance
      (lambda (_klass91774_)
        (let ((__obj97290
               (let ((__tmp97385
                      (let ((__tmp97386
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass91774_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp97386))))
                 (declare (not safe))
                 (##make-structure _klass91774_ __tmp97385))))
          (let () (declare (not safe)) (object-fill! __obj97290 '#f))
          __obj97290)))
    (define make-instance
      (lambda (_klass91764_ . _args91765_)
        (let* ((_obj91767_
                (let () (declare (not safe)) (new-instance _klass91764_)))
               (_$e91769_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass91764_ '10 class::t '#f))))
          (if _$e91769_
              ((lambda (_kons-id91772_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass91764_
                    _kons-id91772_
                    _obj91767_
                    _args91765_)))
               _$e91769_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass91764_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass91764_
                     _obj91767_
                     _args91765_))
                  (if (let ((__tmp97390
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass91764_))))
                        (declare (not safe))
                        (not __tmp97390))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass91764_
                         _obj91767_
                         _args91765_))
                      (if (let ((__tmp97388
                                 (let ((__tmp97389
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj91767_))))
                                   (declare (not safe))
                                   (##fx- __tmp97389 '1)))
                                (__tmp97387 (length _args91765_)))
                            (declare (not safe))
                            (##fx= __tmp97388 __tmp97387))
                          (apply ##structure _klass91764_ _args91765_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass91764_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass91764_))
                                 'args:
                                 _args91765_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj91761_ . _args91762_)
        (if (let ((__tmp97392 (length _args91762_))
                  (__tmp97391
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj91761_))))
              (declare (not safe))
              (##fx< __tmp97392 __tmp97391))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj91761_ _args91762_))
            (error '"too many arguments for struct"
                   'object:
                   _obj91761_
                   'args:
                   _args91762_))))
    (define __struct-instance-init!
      (lambda (_obj91720_ _args91721_)
        (let _lp91723_ ((_k91725_ '1) (_rest91726_ _args91721_))
          (let* ((_rest9172791735_ _rest91726_)
                 (_else9172991743_ (lambda () _obj91720_))
                 (_K9173191749_
                  (lambda (_rest91746_ _hd91747_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj91720_ _k91725_ _hd91747_))
                    (let ((__tmp97393
                           (let () (declare (not safe)) (##fx+ _k91725_ '1))))
                      (declare (not safe))
                      (_lp91723_ __tmp97393 _rest91746_)))))
            (if (let () (declare (not safe)) (##pair? _rest9172791735_))
                (let ((_hd9173291752_
                       (let () (declare (not safe)) (##car _rest9172791735_)))
                      (_tl9173391754_
                       (let () (declare (not safe)) (##cdr _rest9172791735_))))
                  (let* ((_hd91757_ _hd9173291752_)
                         (_rest91759_ _tl9173391754_))
                    (declare (not safe))
                    (_K9173191749_ _rest91759_ _hd91757_)))
                (let () (declare (not safe)) (_else9172991743_)))))))
    (define class-instance-init!
      (lambda (_obj91717_ . _args91718_)
        (let ((__tmp97394
               (let () (declare (not safe)) (object-type _obj91717_))))
          (declare (not safe))
          (__class-instance-init! __tmp97394 _obj91717_ _args91718_))))
    (define __class-instance-init!
      (lambda (_klass91661_ _obj91662_ _args91663_)
        (let _lp91665_ ((_rest91667_ _args91663_))
          (let* ((_rest9166891678_ _rest91667_)
                 (_else9167091686_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest91667_))
                        _obj91662_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass91661_
                               'rest:
                               _rest91667_))))
                 (_K9167291698_
                  (lambda (_rest91689_ _val91690_ _key91691_)
                    (let ((_$e91693_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass91661_ _key91691_))))
                      (if _$e91693_
                          ((lambda (_off91696_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj91662_
                                _off91696_
                                _val91690_))
                             (let ()
                               (declare (not safe))
                               (_lp91665_ _rest91689_)))
                           _$e91693_)
                          (error '"unknown slot"
                                 'class:
                                 _klass91661_
                                 'slot:
                                 _key91691_))))))
            (if (let () (declare (not safe)) (##pair? _rest9166891678_))
                (let ((_hd9167391701_
                       (let () (declare (not safe)) (##car _rest9166891678_)))
                      (_tl9167491703_
                       (let () (declare (not safe)) (##cdr _rest9166891678_))))
                  (let ((_key91706_ _hd9167391701_))
                    (if (let () (declare (not safe)) (##pair? _tl9167491703_))
                        (let ((_hd9167591708_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl9167491703_)))
                              (_tl9167691710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl9167491703_))))
                          (let* ((_val91713_ _hd9167591708_)
                                 (_rest91715_ _tl9167691710_))
                            (declare (not safe))
                            (_K9167291698_ _rest91715_ _val91713_ _key91706_)))
                        (let () (declare (not safe)) (_else9167091686_)))))
                (let () (declare (not safe)) (_else9167091686_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass91657_ _obj91658_ _args91659_)
        (apply call-method
               _klass91657_
               'instance-init!
               _obj91658_
               _args91659_)))
    (define constructor-init!
      (lambda (_klass91652_ _kons-id91653_ _obj91654_ . _args91655_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass91652_
           _kons-id91653_
           _obj91654_
           _args91655_))))
    (define __constructor-init!
      (lambda (_klass91642_ _kons-id91643_ _obj91644_ _args91645_)
        (let ((_$e91647_
               (let ()
                 (declare (not safe))
                 (__find-method _klass91642_ _obj91644_ _kons-id91643_))))
          (if _$e91647_
              ((lambda (_kons91650_)
                 (apply _kons91650_ _obj91644_ _args91645_)
                 _obj91644_)
               _$e91647_)
              (error '"missing constructor"
                     'class:
                     _klass91642_
                     'method:
                     _kons-id91643_)))))
    (define struct-copy
      (lambda (_struct91640_)
        (if (let () (declare (not safe)) (##structure? _struct91640_))
            '#!void
            (error '"not a structure" _struct91640_))
        (let () (declare (not safe)) (##structure-copy _struct91640_))))
    (define struct->list
      (lambda (_obj91638_)
        (if (let () (declare (not safe)) (object? _obj91638_))
            (let () (declare (not safe)) (##vector->list _obj91638_))
            (error '"not an object" _obj91638_))))
    (define class->list
      (lambda (_obj91625_)
        (if (let () (declare (not safe)) (object? _obj91625_))
            (let ((_klass91627_
                   (let () (declare (not safe)) (object-type _obj91625_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass91627_ 'gerbil#class::t))
                  (let ((_slot-vector91629_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass91627_
                            '7
                            class::t
                            '#f))))
                    (let _loop91631_ ((_index91633_
                                       (let ((__tmp97400
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector91629_))))
                                         (declare (not safe))
                                         (##fx- __tmp97400 '1)))
                                      (_plist91634_ '()))
                      (if (let () (declare (not safe)) (##fx< _index91633_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass91627_ _plist91634_))
                          (let ((_slot91636_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector91629_
                                    _index91633_))))
                            (let ((__tmp97399
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index91633_ '1)))
                                  (__tmp97395
                                   (let ((__tmp97398
                                          (symbol->keyword _slot91636_))
                                         (__tmp97396
                                          (let ((__tmp97397
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj91625_
                                                    _index91633_))))
                                            (declare (not safe))
                                            (cons __tmp97397 _plist91634_))))
                                     (declare (not safe))
                                     (cons __tmp97398 __tmp97396))))
                              (declare (not safe))
                              (_loop91631_ __tmp97399 __tmp97395))))))
                  (error '"not a class type"
                         'object:
                         _obj91625_
                         'class:
                         _klass91627_)))
            (error '"not an object" _obj91625_))))
    (define call-method
      (lambda (_obj91616_ _id91617_ . _args91618_)
        (let ((_$e91620_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91616_ _id91617_))))
          (if _$e91620_
              ((lambda (_method91623_)
                 (apply _method91623_ _obj91616_ _args91618_))
               _$e91620_)
              (error '"cannot find method"
                     'object:
                     _obj91616_
                     'method:
                     _id91617_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj91613_ _id91614_)
        (if (let () (declare (not safe)) (object? _obj91613_))
            (let ((__tmp97401
                   (let () (declare (not safe)) (object-type _obj91613_))))
              (declare (not safe))
              (find-method __tmp97401 _obj91613_ _id91614_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj91607_ _id91608_)
        (let ((_$e91610_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91607_ _id91608_))))
          (if _$e91610_
              _$e91610_
              (error '"missing method"
                     'object:
                     _obj91607_
                     'method:
                     _id91608_)))))
    (define bound-method-ref
      (lambda (_obj91597_ _id91598_)
        (let ((_$e91600_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91597_ _id91598_))))
          (if _$e91600_
              ((lambda (_method91603_)
                 (lambda _args91605_
                   (apply _method91603_ _obj91597_ _args91605_)))
               _$e91600_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj91590_ _id91591_)
        (let ((_method91593_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj91590_ _id91591_))))
          (lambda _args91595_ (apply _method91593_ _obj91590_ _args91595_)))))
    (define find-method
      (lambda (_klass91586_ _obj91587_ _id91588_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass91586_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass91586_ _obj91587_ _id91588_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass91586_ _obj91587_ _id91588_)))))
    (define __find-method
      (lambda (_klass91579_ _obj91580_ _id91581_)
        (let ((_$e91583_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass91579_ _obj91580_ _id91581_))))
          (if _$e91583_
              _$e91583_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass91579_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass91579_ _obj91580_ _id91581_)))))))
    (define class-find-method
      (lambda (_klass91575_ _obj91576_ _id91577_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass91575_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass91575_ _obj91576_ _id91577_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins91567_ _obj91568_ _id91569_)
        (let ((__tmp97402
               (lambda (_g9157091572_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g9157091572_ _obj91568_ _id91569_)))))
          (declare (not safe))
          (ormap1 __tmp97402 _mixins91567_))))
    (define builtin-find-method
      (lambda (_klass91560_ _obj91561_ _id91562_)
        (if (let () (declare (not safe)) (##type? _klass91560_))
            (let ((_$e91564_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass91560_ _obj91561_ _id91562_))))
              (if _$e91564_
                  _$e91564_
                  (let ((__tmp97403
                         (let ()
                           (declare (not safe))
                           (##type-super _klass91560_))))
                    (declare (not safe))
                    (builtin-find-method __tmp97403 _obj91561_ _id91562_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass91537_ _obj91538_ _id91539_)
        (letrec ((_metaclass-resolve-method91541_
                  (lambda ()
                    (let ((__method97291
                           (let ()
                             (declare (not safe))
                             (method-ref _klass91537_ 'direct-method-ref))))
                      (if __method97291
                          (__method97291 _klass91537_ _obj91538_ _id91539_)
                          (error '"Missing method"
                                 _klass91537_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!91542_
                  (lambda ()
                    (let ((_method91557_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method91541_))))
                      (let ((__tmp97405
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass91537_
                                '11
                                class::t
                                '#f)))
                            (__tmp97404 (if _method91557_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp97405 _id91539_ __tmp97404))
                      _method91557_))))
          (let ((_$e91544_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass91537_ '11 class::t '#f))))
            (if _$e91544_
                ((lambda (_ht91547_)
                   (let ((_method91549_
                          (let ()
                            (declare (not safe))
                            (table-ref _ht91547_ _id91539_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method91549_))
                         _method91549_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass91537_))
                             (let ((_$e91551_ _method91549_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e91551_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method91541_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e91551_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!91542_)))))
                             '#f))))
                 _$e91544_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass91537_))
                    (let ((_tab91554_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass91537_
                         _tab91554_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!91542_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass91533_ _obj91534_ _id91535_)
        (let ((__tmp97406 (##structure-ref _klass91533_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp97406 _obj91534_ _id91535_))))
    (define builtin-method-ref
      (lambda (_klass91524_ _obj91525_ _id91526_)
        (let ((_$e91528_
               (let ((__tmp97407
                      (let () (declare (not safe)) (##type-id _klass91524_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp97407 '#f))))
          (if _$e91528_
              ((lambda (_mtab91531_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab91531_ _id91526_ '#f)))
               _$e91528_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass91490_ _id91491_ _proc91492_ _rebind?91493_)
        (letrec ((_bind!91495_
                  (lambda (_ht91508_)
                    (if (and (let () (declare (not safe)) (not _rebind?91493_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht91508_ _id91491_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass91490_
                               'method:
                               _id91491_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht91508_ _id91491_ _proc91492_))))))
          (if (let () (declare (not safe)) (procedure? _proc91492_))
              '#!void
              (error '"bad method; expected procedure" _proc91492_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass91490_ 'gerbil#class::t))
              (let ((_ht91497_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass91490_
                        '11
                        class::t
                        '#f))))
                (if _ht91497_
                    (let () (declare (not safe)) (_bind!91495_ _ht91497_))
                    (let ((_ht91499_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass91490_
                         _ht91499_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!91495_ _ht91499_)))))
              (if (let () (declare (not safe)) (##type? _klass91490_))
                  (let ((_ht91506_
                         (let ((_$e91501_
                                (let ((__tmp97408
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass91490_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp97408
                                   '#f))))
                           (if _$e91501_
                               _$e91501_
                               (let ((_ht91504_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp97409
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass91490_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp97409
                                    _ht91504_))
                                 _ht91504_)))))
                    (declare (not safe))
                    (_bind!91495_ _ht91506_))
                  (error '"bad class; expected class or builtin type"
                         _klass91490_))))))
    (define bind-method!__0
      (lambda (_klass91513_ _id91514_ _proc91515_)
        (let ((_rebind?91517_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass91513_
           _id91514_
           _proc91515_
           _rebind?91517_))))
    (define bind-method!
      (lambda _g97411_
        (let ((_g97410_ (let () (declare (not safe)) (##length _g97411_))))
          (cond ((let () (declare (not safe)) (##fx= _g97410_ 3))
                 (apply (lambda (_klass91513_ _id91514_ _proc91515_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass91513_
                             _id91514_
                             _proc91515_)))
                        _g97411_))
                ((let () (declare (not safe)) (##fx= _g97410_ 4))
                 (apply (lambda (_klass91519_
                                 _id91520_
                                 _proc91521_
                                 _rebind?91522_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass91519_
                             _id91520_
                             _proc91521_
                             _rebind?91522_)))
                        _g97411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97411_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc91486_ _specializer91487_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc91486_ _specializer91487_))))
    (define seal-class!
      (lambda (_klass91453_)
        (letrec ((_collect-methods!91455_
                  (lambda (_mtab91471_)
                    (letrec ((_merge!91473_
                              (lambda (_tab91481_)
                                (let ((__tmp97412
                                       (lambda (_id91483_ _proc91484_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab91471_
                                            _id91483_
                                            _proc91484_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp97412 _tab91481_))))
                             (_collect-direct-methods!91474_
                              (lambda (_klass91476_)
                                (let ((_$e91478_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass91476_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e91478_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!91473_ _$e91478_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!91474_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass91453_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass91453_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass91453_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass91453_))
                        '#!void
                        (error '"cannot seal non-final class" _klass91453_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass91453_))
                        (let ((__method97292
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass91453_ 'seal-class!))))
                          (if __method97292
                              (__method97292 _klass91453_)
                              (error '"Missing method"
                                     _klass91453_
                                     'seal-class!)))
                        (if (let ((__tmp97419
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass91453_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp97419))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass91453_)
                            (let ((_vtab91457_
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (_mtab91458_
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!91455_ _mtab91458_))
                              (let ((__tmp97413
                                     (lambda (_id91460_ _proc91461_)
                                       (let ((_$e91463_
                                              (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 __method-specializers
                                                 _proc91461_
                                                 '#f))))
                                         (if _$e91463_
                                             ((lambda (_specializer91466_)
                                                (let ((_proc91468_
                                                       (_specializer91466_
                                                        _klass91453_))
                                                      (_gid91469_
                                                       (let ((__tmp97414
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass91453_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp97414 '"::[" _id91460_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp97415
                                                               (let ((__tmp97416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97417
                                     (let ((__tmp97418
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc91468_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp97418))))
                                (declare (not safe))
                                (cons __tmp97417 '()))))
                         (declare (not safe))
                         (cons _gid91469_ __tmp97416))))
                  (declare (not safe))
                  (cons 'def __tmp97415)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-set!
                                                     _vtab91457_
                                                     _id91460_
                                                     _proc91468_))))
                                              _$e91463_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _vtab91457_
                                                _id91460_
                                                _proc91461_)))))))
                                (declare (not safe))
                                (table-for-each __tmp97413 _mtab91458_))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass91453_
                                 _vtab91457_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass91453_))))
              '#!void))))
    (define next-method
      (lambda (_subklass91402_ _obj91403_ _id91404_)
        (let ((_klass91406_
               (let () (declare (not safe)) (object-type _obj91403_)))
              (_type-id91407_
               (let () (declare (not safe)) (##type-id _subklass91402_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass91406_ 'gerbil#class::t))
              (let _lp91409_ ((_rest91411_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass91406_))))
                (let* ((_rest9141291420_ _rest91411_)
                       (_else9141491428_ (lambda () '#f))
                       (_K9141691434_
                        (lambda (_rest91431_ _klass91432_)
                          (if (let ((__tmp97422
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass91432_))))
                                (declare (not safe))
                                (eq? _type-id91407_ __tmp97422))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest91431_
                                 _obj91403_
                                 _id91404_))
                              (let ()
                                (declare (not safe))
                                (_lp91409_ _rest91431_))))))
                  (if (let () (declare (not safe)) (##pair? _rest9141291420_))
                      (let ((_hd9141791437_
                             (let ()
                               (declare (not safe))
                               (##car _rest9141291420_)))
                            (_tl9141891439_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest9141291420_))))
                        (let* ((_klass91442_ _hd9141791437_)
                               (_rest91444_ _tl9141891439_))
                          (declare (not safe))
                          (_K9141691434_ _rest91444_ _klass91442_)))
                      (let () (declare (not safe)) (_else9141491428_)))))
              (if (let () (declare (not safe)) (##type? _klass91406_))
                  (let _lp91446_ ((_klass91448_ _klass91406_))
                    (if (let ((__tmp97421
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass91448_))))
                          (declare (not safe))
                          (eq? _type-id91407_ __tmp97421))
                        (let ((__tmp97420
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass91448_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp97420
                           _obj91403_
                           _id91404_))
                        (let ((_$e91450_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass91448_))))
                          (if _$e91450_
                              (let ()
                                (declare (not safe))
                                (_lp91446_ _$e91450_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass91392_ _obj91393_ _id91394_ . _args91395_)
        (let ((_$e91397_
               (let ()
                 (declare (not safe))
                 (next-method _subklass91392_ _obj91393_ _id91394_))))
          (if _$e91397_
              ((lambda (_methodf91400_)
                 (apply _methodf91400_ _obj91393_ _args91395_))
               _$e91397_)
              (error '"cannot find next method"
                     'object:
                     _obj91393_
                     'method:
                     _id91394_)))))
    (define write-style (lambda (_we91390_) (macro-writeenv-style _we91390_)))
    (define write-object
      (lambda (_we91382_ _obj91383_)
        (let ((_$e91385_
               (let () (declare (not safe)) (method-ref _obj91383_ ':wr))))
          (if _$e91385_
              ((lambda (_method91388_) (_method91388_ _obj91383_ _we91382_))
               _$e91385_)
              (let ()
                (declare (not safe))
                (##default-wr _we91382_ _obj91383_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
