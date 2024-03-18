(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1710770268)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class-type-flag-system '8192)
    (define t::t.id 'gerbil#t::t)
    (define t::t
      (let ((_flags65685_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65686_ '((direct-slots:) (system: . #t)))
            (_slot-table65687_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           t::t.id
           't
           _flags65685_
           '#f
           '#()
           '()
           '#(#f)
           _slot-table65687_
           _properties65686_
           '#f
           '#f))))
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots65661_
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
             (_slot-vector65663_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots65661_))))
             (_slot-table65670_
              (let ((_slot-table65665_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot65667_ _field65668_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65665_
                      _slot65667_
                      _field65668_))
                   (let ((__tmp65815 (symbol->keyword _slot65667_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table65665_
                      __tmp65815
                      _field65668_)))
                 _slots65661_
                 (iota (length _slots65661_) '1))
                _slot-table65665_))
             (_flags65672_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields65678_
              (list->vector
               (apply append
                      (map (lambda (_g6567365675_) (list _g6567365675_ '5 '#f))
                           (drop _slots65661_ '5)))))
             (_properties65680_
              (let ((__tmp65818
                     (let ((__tmp65819
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots65661_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp65819)))
                    (__tmp65816
                     (let ((__tmp65817
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp65817 '()))))
                (declare (not safe))
                (cons __tmp65818 __tmp65816)))
             (_t65682_
              (let ((__tmp65820 (let () (declare (not safe)) (cons t::t '()))))
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags65672_
                 ##type-type
                 _fields65678_
                 __tmp65820
                 _slot-vector65663_
                 _slot-table65670_
                 _properties65680_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t65682_ _t65682_))
        _t65682_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t.id 'gerbil#object::t)
    (define object::t
      (let ((_flags65657_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_properties65658_ '((direct-slots:) (system: . #t)))
            (_slot-table65659_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp65821 (let () (declare (not safe)) (cons t::t '()))))
          (declare (not safe))
          (##structure
           class::t
           t::t.id
           't
           _flags65657_
           '#f
           '#()
           __tmp65821
           '#(#f)
           _slot-table65659_
           _properties65658_
           '#f
           '#f))))
    (define class-type?
      (lambda (_obj65655_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj65655_ class::t.id))))
    (define class-type=?
      (lambda (_x65652_ _y65653_)
        (let ((__tmp65823 (##structure-ref _x65652_ '1 class::t '#f))
              (__tmp65822 (##structure-ref _y65653_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp65823 __tmp65822))))
    (define type-opaque?
      (lambda (_type65650_)
        (let ((__tmp65824
               (let ((__tmp65825
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65650_))))
                 (declare (not safe))
                 (##fxand __tmp65825 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp65824 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type65648_)
        (let ((__tmp65826
               (let ((__tmp65827
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65648_))))
                 (declare (not safe))
                 (##fxand __tmp65827 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65826 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type65646_)
        (let ((__tmp65828
               (let ((__tmp65829
                      (let ()
                        (declare (not safe))
                        (##type-flags _type65646_))))
                 (declare (not safe))
                 (##fxand __tmp65829 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp65828 '0))))
    (define class-type-struct?
      (lambda (_klass65644_)
        (let ((__tmp65830
               (let ((__tmp65831
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65644_))))
                 (declare (not safe))
                 (##fxand __tmp65831 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp65830 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass65642_)
        (let ((__tmp65832
               (let ((__tmp65833
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65642_))))
                 (declare (not safe))
                 (##fxand __tmp65833 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp65832 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass65640_)
        (let ((__tmp65834
               (let ((__tmp65835
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65640_))))
                 (declare (not safe))
                 (##fxand __tmp65835 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp65834 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_klass65638_)
        (let ((__tmp65836
               (let ((__tmp65837
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65638_))))
                 (declare (not safe))
                 (##fxand __tmp65837 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp65836 class-type-flag-system))))
    (define properties-form
      (lambda (_properties65604_)
        (map (lambda (_e6560565607_)
               (let* ((_g6560965616_ _e6560565607_)
                      (_E6561165620_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6560965616_))))
                      (_K6561265626_
                       (lambda (_val65623_ _key65624_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key65624_ 'direct-supers:))
                             (let ((__tmp65838 (map class-type-id _val65623_)))
                               (declare (not safe))
                               (cons _key65624_ __tmp65838))
                             (let ()
                               (declare (not safe))
                               (cons _key65624_ _val65623_))))))
                 (if (let () (declare (not safe)) (##pair? _g6560965616_))
                     (let ((_hd6561365629_
                            (let ()
                              (declare (not safe))
                              (##car _g6560965616_)))
                           (_tl6561465631_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6560965616_))))
                       (let* ((_key65634_ _hd6561365629_)
                              (_val65636_ _tl6561465631_))
                         (declare (not safe))
                         (_K6561265626_ _val65636_ _key65634_)))
                     (let () (declare (not safe)) (_E6561165620_)))))
             _properties65604_)))
    (define make-class-type-descriptor
      (lambda (_type-id65499_
               _type-name65500_
               _type-super65501_
               _precedence-list65502_
               _slot-vector65503_
               _properties65504_
               _constructor65505_
               _slot-table65506_
               _methods65507_)
        (letrec ((_make-props!65509_
                  (lambda (_key65573_)
                    (letrec* ((_ht65575_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!65576_
                               (lambda (_ht65597_ _slots65598_)
                                 (for-each
                                  (lambda (_g6559965601_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht65597_
                                       _g6559965601_
                                       '#t)))
                                  _slots65598_)))
                              (_put-alist!65577_
                               (lambda (_ht65586_ _key65587_ _alist65588_)
                                 (let ((_$e65590_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key65587_
                                           _alist65588_))))
                                   (if _$e65590_
                                       ((lambda (_g6559265594_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!65576_
                                             _ht65586_
                                             _g6559265594_)))
                                        _$e65590_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!65577_
                         _ht65575_
                         _key65573_
                         _properties65504_))
                      (for-each
                       (lambda (_mixin65579_)
                         (let ((_alist65581_
                                (##structure-ref
                                 _mixin65579_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist65581_))
                                   (let ((__tmp65840
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key65573_
                                             _alist65581_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp65840)))
                               (let ((__tmp65839
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin65579_))))
                                 (declare (not safe))
                                 (_put-slots!65576_ _ht65575_ __tmp65839))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!65577_
                                  _ht65575_
                                  _key65573_
                                  _alist65581_)))))
                       _precedence-list65502_)
                      _ht65575_))))
          (let* ((_transparent?65511_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties65504_)))
                 (_all-slots-printable?65516_
                  (let ((_$e65513_ _transparent?65511_))
                    (if _$e65513_
                        _$e65513_
                        (let ((__tmp65841
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties65504_))))
                          (declare (not safe))
                          (eq? '#t __tmp65841)))))
                 (_printable65518_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?65516_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65509_ 'print:))
                      '#f))
                 (_all-slots-equalable?65523_
                  (let ((_$e65520_ _transparent?65511_))
                    (if _$e65520_
                        _$e65520_
                        (let ((__tmp65842
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties65504_))))
                          (declare (not safe))
                          (eq? '#t __tmp65842)))))
                 (_equalable65525_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?65523_))
                      (let ()
                        (declare (not safe))
                        (_make-props!65509_ 'equal:))
                      '#f))
                 (_first-new-field65527_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super65501_
                         'gerbil#class::t))
                      (let ((__tmp65843
                             (##structure-ref
                              _type-super65501_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp65843))
                      '1))
                 (_field-info-length65529_
                  (let ((__tmp65844
                         (let ((__tmp65845
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector65503_))))
                           (declare (not safe))
                           (##fx- __tmp65845 _first-new-field65527_))))
                    (declare (not safe))
                    (##fx* '3 __tmp65844)))
                 (_field-info65531_ (make-vector _field-info-length65529_ '#f))
                 (_struct?65533_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties65504_)))
                 (_final?65535_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties65504_)))
                 (_metaclass65543_
                  (let ((_metaclass6553665538_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties65504_))))
                    (if _metaclass6553665538_
                        (let ((_metaclass65541_ _metaclass6553665538_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass65541_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id65499_
                                       'metaclass:
                                       _metaclass65541_)))
                          _metaclass65541_)
                        '#f)))
                 (_system?65545_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'system: _properties65504_)))
                 (_opaque?65550_
                  (let ((_$e65547_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?65523_))))
                    (if _$e65547_
                        _$e65547_
                        (if _type-super65501_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super65501_))
                            '#f))))
                 (_type-flags65552_
                  (let ((__tmp65850 (if _final?65535_ '0 type-flag-extensible))
                        (__tmp65849 (if _opaque?65550_ type-flag-opaque '0))
                        (__tmp65848
                         (if _struct?65533_ class-type-flag-struct '0))
                        (__tmp65847
                         (if _metaclass65543_ class-type-flag-metaclass '0))
                        (__tmp65846
                         (if _system?65545_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp65850
                             __tmp65849
                             __tmp65848
                             __tmp65847
                             __tmp65846)))
                 (_precedence-list65554_
                  (if (memq t::t _precedence-list65502_)
                      (begin
                        (if (let ((__tmp65851 (last _precedence-list65502_)))
                              (declare (not safe))
                              (eq? __tmp65851 t::t))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"BUG: t::t is not last in the precedence list")))
                        _precedence-list65502_)
                      (append _precedence-list65502_
                              (let () (declare (not safe)) (cons t::t '()))))))
            (let _loop65557_ ((_i65559_ _first-new-field65527_) (_j65560_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j65560_ _field-info-length65529_))
                  (let* ((_slot65562_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector65503_ _i65559_)))
                         (_flags65570_
                          (if _transparent?65511_
                              '0
                              (let ((__tmp65853
                                     (if (or _all-slots-printable?65516_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable65518_
                                                _slot65562_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp65852
                                     (if (or _all-slots-equalable?65523_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable65525_
                                                _slot65562_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp65853 __tmp65852)))))
                    (vector-set! _field-info65531_ _j65560_ _slot65562_)
                    (vector-set!
                     _field-info65531_
                     (let () (declare (not safe)) (##fx+ _j65560_ '1))
                     _flags65570_)
                    (let ((__tmp65855
                           (let () (declare (not safe)) (##fx+ _i65559_ '1)))
                          (__tmp65854
                           (let () (declare (not safe)) (##fx+ _j65560_ '3))))
                      (declare (not safe))
                      (_loop65557_ __tmp65855 __tmp65854)))
                  '#!void))
            (if _metaclass65543_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass65543_
                   _type-id65499_
                   _type-name65500_
                   _type-flags65552_
                   _type-super65501_
                   _field-info65531_
                   _precedence-list65554_
                   _slot-vector65503_
                   _slot-table65506_
                   _properties65504_
                   _constructor65505_
                   _methods65507_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id65499_
                   _type-name65500_
                   _type-flags65552_
                   _type-super65501_
                   _field-info65531_
                   _precedence-list65554_
                   _slot-vector65503_
                   _slot-table65506_
                   _properties65504_
                   _constructor65505_
                   _methods65507_)))))))
    (define class-type-id
      (lambda (_klass65497_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65497_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass65495_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65495_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass65492_ _val65493_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65492_ _val65493_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass65487_ _val65489_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65487_
           _val65489_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass65485_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65485_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass65483_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65483_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass65480_ _val65481_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65480_ _val65481_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass65475_ _val65477_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65475_
           _val65477_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_klass65473_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65473_ '3 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass65471_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65471_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass65468_ _val65469_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65468_ _val65469_ '3 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass65463_ _val65465_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65463_
           _val65465_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_klass65461_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65461_ '4 class::t 'super))))
    (define &class-type-super
      (lambda (_klass65459_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65459_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass65456_ _val65457_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65456_ _val65457_ '4 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass65451_ _val65453_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65451_
           _val65453_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_klass65449_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65449_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass65447_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65447_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass65444_ _val65445_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65444_ _val65445_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass65439_ _val65441_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65439_
           _val65441_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass65437_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65437_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass65435_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass65435_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass65432_ _val65433_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65432_
           _val65433_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass65427_ _val65429_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65427_
           _val65429_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass65425_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65425_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass65423_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65423_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass65420_ _val65421_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65420_
           _val65421_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass65415_ _val65417_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65415_
           _val65417_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass65413_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65413_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass65411_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65411_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass65408_ _val65409_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65408_ _val65409_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass65403_ _val65405_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65403_
           _val65405_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass65401_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65401_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass65399_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65399_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass65396_ _val65397_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65396_ _val65397_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass65391_ _val65393_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65391_
           _val65393_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass65389_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65389_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass65387_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65387_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass65384_ _val65385_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass65384_
           _val65385_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass65379_ _val65381_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65379_
           _val65381_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass65377_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass65377_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass65375_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass65375_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass65372_ _val65373_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass65372_ _val65373_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass65367_ _val65369_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65367_
           _val65369_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass65365_)
        (cdr (vector->list (##structure-ref _klass65365_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass65363_)
        (let ((__tmp65856
               (let ((__tmp65857
                      (##structure-ref _klass65363_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp65857))))
          (declare (not safe))
          (##fx- __tmp65856 '1))))
    (define class-type-seal!
      (lambda (_klass65361_)
        (let ((__tmp65858
               (let ((__tmp65859
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65361_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65859))))
          (declare (not safe))
          (##structure-set!
           _klass65361_
           __tmp65858
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass65359_)
        (let ((__tmp65860
               (let ((__tmp65861
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass65359_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp65861))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass65359_
           __tmp65860
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct65350_ _maybe-super-struct65351_)
        (let ((_maybe-super-struct-id65353_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct65351_))))
          (let _lp65355_ ((_super-struct65357_ _maybe-sub-struct65350_))
            (if (let () (declare (not safe)) (not _super-struct65357_))
                '#f
                (if (let ((__tmp65863
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct65357_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id65353_ __tmp65863))
                    '#t
                    (let ((__tmp65862
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct65357_))))
                      (declare (not safe))
                      (_lp65355_ __tmp65862))))))))
    (define base-struct/1
      (lambda (_klass65348_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass65348_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass65348_))
                _klass65348_
                (let () (declare (not safe)) (##type-super _klass65348_)))
            (if (let () (declare (not safe)) (not _klass65348_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass65348_))))))
    (define base-struct/2
      (lambda (_klass165336_ _klass265337_)
        (let ((_s165339_
               (let () (declare (not safe)) (base-struct/1 _klass165336_)))
              (_s265340_
               (let () (declare (not safe)) (base-struct/1 _klass265337_))))
          (if (or (let () (declare (not safe)) (not _s165339_))
                  (and _s265340_
                       (let ()
                         (declare (not safe))
                         (substruct? _s165339_ _s265340_))))
              _s265340_
              (if (or (let () (declare (not safe)) (not _s265340_))
                      (and _s165339_
                           (let ()
                             (declare (not safe))
                             (substruct? _s265340_ _s165339_))))
                  _s165339_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass165336_
                           _klass265337_
                           _s165339_
                           _s265340_)))))))
    (define base-struct/list
      (lambda (_all-supers65220_)
        (let* ((_all-supers6522165246_ _all-supers65220_)
               (_E6522665250_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6522165246_)))))
          (let ((_K6524465333_ (lambda () '#f))
                (_K6524165319_
                 (lambda (_x65317_)
                   (let () (declare (not safe)) (base-struct/1 _x65317_))))
                (_K6523665296_
                 (lambda (_y65293_ _x65294_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x65294_ _y65293_))))
                (_K6522765257_
                 (lambda (_y65254_ _x65255_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x65255_ _y65254_)))))
            (let* ((___match6580965810_
                    (lambda (_hd6522865260_ _tl6522965262_)
                      (let ((_x65265_ _hd6522865260_))
                        (letrec ((_splice-rest6523165267_
                                  (lambda (_rest6523565274_ _y65276_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6523565274_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6522765257_ _y65276_ _x65265_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6522665250_)))))
                                 (_splice-try6523365269_
                                  (lambda (_hd6523465278_
                                           _rest6523565280_
                                           _y6523065281_)
                                    (let ((_y65284_ _hd6523465278_))
                                      (let ((__tmp65865
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6523565280_)))
                                            (__tmp65864
                                             (let ()
                                               (declare (not safe))
                                               (cons _y65284_ _y6523065281_))))
                                        (declare (not safe))
                                        (_splice-loop6523265271_
                                         __tmp65865
                                         __tmp65864)))))
                                 (_splice-loop6523265271_
                                  (lambda (_rest6523565286_ _y6523065287_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6523565286_))
                                        (let ((__tmp65867
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6523565286_))))
                                          (declare (not safe))
                                          (_splice-try6523365269_
                                           __tmp65867
                                           _rest6523565286_
                                           _y6523065287_))
                                        (let ((__tmp65866
                                               (reverse _y6523065287_)))
                                          (declare (not safe))
                                          (_splice-rest6523165267_
                                           _rest6523565286_
                                           __tmp65866))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6523265271_ _tl6522965262_ '()))))))
                   (_try-match6522365329_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6522165246_))
                          (let ((_tl6524365324_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6522165246_)))
                                (_hd6524265322_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6522165246_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6524365324_))
                                (let ((_x65327_ _hd6524265322_))
                                  (declare (not safe))
                                  (base-struct/1 _x65327_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6524365324_))
                                    (let ((_tl6524065308_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6524365324_)))
                                          (_hd6523965306_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6524365324_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6524065308_))
                                          (let ((_x65304_ _hd6524265322_)
                                                (_y65311_ _hd6523965306_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6523665296_
                                               _y65311_
                                               _x65304_)))
                                          (___match6580965810_
                                           _hd6524265322_
                                           _tl6524365324_)))
                                    (___match6580965810_
                                     _hd6524265322_
                                     _tl6524365324_))))
                          (let () (declare (not safe)) (_E6522665250_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6522165246_))
                  (let () (declare (not safe)) (_K6524465333_))
                  (let () (declare (not safe)) (_try-match6522365329_))))))))
    (define base-struct
      (lambda _all-supers65218_
        (let () (declare (not safe)) (base-struct/list _all-supers65218_))))
    (define find-super-constructor
      (lambda (_super65170_)
        (let _lp65172_ ((_rest65174_ _super65170_) (_constructor65175_ '#f))
          (let* ((_rest6517665184_ _rest65174_)
                 (_else6517865192_ (lambda () _constructor65175_))
                 (_K6518065206_
                  (lambda (_rest65195_ _hd65196_)
                    (let ((_$e65198_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd65196_
                              '10
                              class::t
                              '#f))))
                      (if _$e65198_
                          ((lambda (_xconstructor65201_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor65175_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor65175_
                                            _xconstructor65201_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp65172_ _rest65195_ _xconstructor65201_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor65175_
                                          _xconstructor65201_))))
                           _$e65198_)
                          (let ()
                            (declare (not safe))
                            (_lp65172_ _rest65195_ _constructor65175_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6517665184_))
                (let ((_hd6518165209_
                       (let () (declare (not safe)) (##car _rest6517665184_)))
                      (_tl6518265211_
                       (let () (declare (not safe)) (##cdr _rest6517665184_))))
                  (let* ((_hd65214_ _hd6518165209_)
                         (_rest65216_ _tl6518265211_))
                    (declare (not safe))
                    (_K6518065206_ _rest65216_ _hd65214_)))
                (let () (declare (not safe)) (_else6517865192_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list65146_ _direct-slots65147_)
        (let* ((_next-slot65149_ '1)
               (_slot-table65151_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots65153_ '(__class))
               (_process-slot65157_
                (lambda (_slot65155_)
                  (if (let () (declare (not safe)) (symbol? _slot65155_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot65155_)))
                  (if (let ((__tmp65869
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table65151_
                                _slot65155_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp65869 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65151_
                           _slot65155_
                           _next-slot65149_))
                        (let ((__tmp65868 (symbol->keyword _slot65155_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table65151_
                           __tmp65868
                           _next-slot65149_))
                        (set! _r-slots65153_
                              (let ()
                                (declare (not safe))
                                (cons _slot65155_ _r-slots65153_)))
                        (set! _next-slot65149_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot65149_ '1))))
                      '#!void)))
               (_process-slots65163_
                (lambda (_g6515865160_)
                  (for-each _process-slot65157_ _g6515865160_))))
          (for-each
           (lambda (_mixin65166_)
             (let ((__tmp65870
                    (let ((__tmp65871
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin65166_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp65871 '()))))
               (declare (not safe))
               (_process-slots65163_ __tmp65870)))
           (reverse _class-precedence-list65146_))
          (let ()
            (declare (not safe))
            (_process-slots65163_ _direct-slots65147_))
          (let ((_slot-vector65168_ (list->vector (reverse _r-slots65153_))))
            (values _slot-vector65168_ _slot-table65151_)))))
    (define make-class-type
      (lambda (_id65103_
               _name65104_
               _direct-supers65105_
               _direct-slots65106_
               _properties65107_
               _constructor65108_)
        (let ((_$e65113_
               (let ((__tmp65872
                      (lambda (_$obj65110_)
                        (let ((__tmp65873
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj65110_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp65873)))))
                 (declare (not safe))
                 (find __tmp65872 _direct-supers65105_))))
          (if _$e65113_
              ((lambda (_g6511565117_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6511565117_)))
               _$e65113_)
              (let ((_$e65120_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers65105_))))
                (if _$e65120_
                    ((lambda (_g6512265124_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6512265124_)))
                     _$e65120_)
                    '#!void))))
        (let ((_g65874_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers65105_))))
          (begin
            (let ((_g65875_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g65874_) (##vector-length _g65874_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g65875_ 2)))
                  (error "Context expects 2 values" _g65875_)))
            (let ((_precedence-list65127_
                   (let () (declare (not safe)) (##vector-ref _g65874_ 0)))
                  (_struct-super65128_
                   (let () (declare (not safe)) (##vector-ref _g65874_ 1))))
              (let ((_g65876_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list65127_
                        _direct-slots65106_))))
                (begin
                  (let ((_g65877_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g65876_)
                               (##vector-length _g65876_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g65877_ 2)))
                        (error "Context expects 2 values" _g65877_)))
                  (let ((_slot-vector65130_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65876_ 0)))
                        (_slot-table65131_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g65876_ 1))))
                    (let* ((_prcedence-list65136_
                            (if (or (let ()
                                      (declare (not safe))
                                      (assgetq__0 _properties65107_ 'system:))
                                    (memq object::t _precedence-list65127_))
                                _precedence-list65127_
                                (append _precedence-list65127_
                                        (let ()
                                          (declare (not safe))
                                          (cons object::t '())))))
                           (_properties65138_
                            (let ((__tmp65880
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots65106_)))
                                  (__tmp65878
                                   (let ((__tmp65879
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers65105_))))
                                     (declare (not safe))
                                     (cons __tmp65879 _properties65107_))))
                              (declare (not safe))
                              (cons __tmp65880 __tmp65878)))
                           (_constructor*65143_
                            (let ((_$e65140_ _constructor65108_))
                              (if _$e65140_
                                  _$e65140_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers65105_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id65103_
                         _name65104_
                         _struct-super65128_
                         _precedence-list65127_
                         _slot-vector65130_
                         _properties65138_
                         _constructor*65143_
                         _slot-table65131_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass65101_)
        (let ((__tmp65881
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass65101_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass65101_ __tmp65881))))
    (define compute-precedence-list
      (lambda (_direct-supers65099_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers65099_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass65083_)
        (let ((_tid65085_
               (let () (declare (not safe)) (##type-id _klass65083_))))
          (if (let () (declare (not safe)) (class-type-final? _klass65083_))
              (lambda (_g6508665088_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6508665088_ _tid65085_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass65083_))
                  (lambda (_g6509065092_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6509065092_ _tid65085_)))
                  (lambda (_g6509465096_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass65083_ _g6509465096_))))))))
    (define if-class-slot-field
      (lambda (_klass65072_
               _slot65073_
               _if-final65074_
               _if-struct65075_
               _if-struct-field65076_
               _if-class-slot65077_)
        (let ((_field65079_
               (let ((__tmp65882
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass65072_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp65882 _slot65073_ '#f))))
          (if (let () (declare (not safe)) (not _field65079_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass65072_
                       'slot:
                       _slot65073_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass65072_))
                  (_if-final65074_ _klass65072_ _slot65073_ _field65079_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass65072_))
                      (_if-struct65075_ _klass65072_ _slot65073_ _field65079_)
                      (if (let ((_strukt65081_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass65072_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt65081_
                                    'gerbil#class::t))
                                 (let ((__tmp65883
                                        (let ((__tmp65884
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt65081_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp65884))))
                                   (declare (not safe))
                                   (##fx< _field65079_ __tmp65883))))
                          (_if-struct-field65076_
                           _klass65072_
                           _slot65073_
                           _field65079_)
                          (_if-class-slot65077_
                           _klass65072_
                           _slot65073_
                           _field65079_))))))))
    (define make-class-slot-accessor
      (lambda (_klass65069_ _slot65070_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65069_
           _slot65070_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass65066_ _slot65067_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65066_
           _slot65067_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass65063_ _slot65064_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65063_
           _slot65064_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass65060_ _slot65061_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass65060_
           _slot65061_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object65044_ _class65045_ _slot65046_)
        (apply error
               '"not an instance"
               'object:
               _object65044_
               'class:
               _class65045_
               (if _slot65046_
                   (let ((__tmp65885
                          (let ()
                            (declare (not safe))
                            (cons _slot65046_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp65885))
                   '()))))
    (define not-an-instance__0
      (lambda (_object65051_ _class65052_)
        (let ((_slot65054_ '#f))
          (declare (not safe))
          (not-an-instance__% _object65051_ _class65052_ _slot65054_))))
    (define not-an-instance
      (lambda _g65887_
        (let ((_g65886_ (let () (declare (not safe)) (##length _g65887_))))
          (cond ((let () (declare (not safe)) (##fx= _g65886_ 2))
                 (apply (lambda (_object65051_ _class65052_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object65051_ _class65052_)))
                        _g65887_))
                ((let () (declare (not safe)) (##fx= _g65886_ 3))
                 (apply (lambda (_object65056_ _class65057_ _slot65058_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object65056_
                             _class65057_
                             _slot65058_)))
                        _g65887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g65887_))))))
    (define make-final-slot-accessor
      (lambda (_klass65037_ _slot65038_ _field65039_)
        (lambda (_obj65041_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj65041_
             _field65039_
             _klass65037_
             _slot65038_)))))
    (define make-final-slot-mutator
      (lambda (_klass65030_ _slot65031_ _field65032_)
        (lambda (_obj65034_ _val65035_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj65034_
             _val65035_
             _field65032_
             _klass65030_
             _slot65031_)))))
    (define make-struct-slot-accessor
      (lambda (_klass65024_ _slot65025_ _field65026_)
        (lambda (_obj65028_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj65028_
             _field65026_
             _klass65024_
             _slot65025_)))))
    (define make-struct-slot-mutator
      (lambda (_klass65017_ _slot65018_ _field65019_)
        (lambda (_obj65021_ _val65022_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj65021_
             _val65022_
             _field65019_
             _klass65017_
             _slot65018_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass65011_ _slot65012_ _field65013_)
        (lambda (_obj65015_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj65015_
             _field65013_
             _klass65011_
             _slot65012_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass65004_ _slot65005_ _field65006_)
        (lambda (_obj65008_ _val65009_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj65008_
             _val65009_
             _field65006_
             _klass65004_
             _slot65005_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass64998_ _slot64999_ _field65000_)
        (lambda (_obj65002_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64998_ _obj65002_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj65002_ _field65000_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj65002_ _klass64998_ _slot64999_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass64991_ _slot64992_ _field64993_)
        (lambda (_obj64995_ _val64996_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass64991_ _obj64995_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64995_ _field64993_ _val64996_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj64995_ _klass64991_ _slot64992_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass64985_ _slot64986_ _field64987_)
        (lambda (_obj64989_)
          (if (let ((__tmp65888
                     (let () (declare (not safe)) (##type-id _klass64985_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64989_ __tmp65888))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64989_ _field64987_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64985_ _obj64989_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj64989_ _slot64986_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64989_
                     _klass64985_
                     _slot64986_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass64978_ _slot64979_ _field64980_)
        (lambda (_obj64982_ _val64983_)
          (if (let ((__tmp65889
                     (let () (declare (not safe)) (##type-id _klass64978_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64982_ __tmp65889))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64982_ _field64980_ _val64983_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass64978_ _obj64982_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj64982_ _slot64979_ _val64983_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj64982_
                     _klass64978_
                     _slot64979_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass64972_ _slot64973_ _field64974_)
        (lambda (_obj64976_)
          (if (let ((__tmp65890
                     (let () (declare (not safe)) (##type-id _klass64972_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64976_ __tmp65890))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj64976_ _field64974_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj64976_ _slot64973_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass64965_ _slot64966_ _field64967_)
        (lambda (_obj64969_ _val64970_)
          (if (let ((__tmp65891
                     (let () (declare (not safe)) (##type-id _klass64965_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj64969_ __tmp65891))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj64969_ _field64967_ _val64970_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj64969_ _slot64966_ _val64970_))))))
    (define class-slot-offset
      (lambda (_klass64962_ _slot64963_)
        (let ((__tmp65892
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass64962_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp65892 _slot64963_ '#f))))
    (define class-slot-ref
      (lambda (_klass64956_ _obj64957_ _slot64958_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64956_ _obj64957_))
            (let ((_off64960_
                   (let ((__tmp65893 (object-type _obj64957_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65893 _slot64958_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj64957_
               _off64960_
               _klass64956_
               _slot64958_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64957_ _klass64956_)))))
    (define class-slot-set!
      (lambda (_klass64949_ _obj64950_ _slot64951_ _val64952_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass64949_ _obj64950_))
            (let ((_off64954_
                   (let ((__tmp65894 (object-type _obj64950_)))
                     (declare (not safe))
                     (class-slot-offset __tmp65894 _slot64951_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj64950_
               _val64952_
               _off64954_
               _klass64949_
               _slot64951_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj64950_ _klass64949_)))))
    (define unchecked-field-ref
      (lambda (_obj64946_ _off64947_)
        (let ((__tmp65895
               (let () (declare (not safe)) (##structure-type _obj64946_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj64946_ _off64947_ __tmp65895 '#f))))
    (define unchecked-field-set!
      (lambda (_obj64942_ _off64943_ _val64944_)
        (let ((__tmp65896
               (let () (declare (not safe)) (##structure-type _obj64942_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj64942_
           _val64944_
           _off64943_
           __tmp65896
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj64939_ _slot64940_)
        (let ((__tmp65897
               (let ((__tmp65898
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64939_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65898 _slot64940_))))
          (declare (not safe))
          (unchecked-field-ref _obj64939_ __tmp65897))))
    (define unchecked-slot-set!
      (lambda (_obj64935_ _slot64936_ _val64937_)
        (let ((__tmp65899
               (let ((__tmp65900
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64935_))))
                 (declare (not safe))
                 (class-slot-offset __tmp65900 _slot64936_))))
          (declare (not safe))
          (unchecked-field-set! _obj64935_ __tmp65899 _val64937_))))
    (define slot-ref__%
      (lambda (_obj64911_ _slot64912_ _E64913_)
        (if (object? _obj64911_)
            (let* ((_klass64915_ (object-type _obj64911_))
                   (_$e64918_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64915_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64915_ _slot64912_))
                        '#f)))
              (if _$e64918_
                  ((lambda (_off64921_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj64911_ _off64921_)))
                   _$e64918_)
                  (_E64913_ _obj64911_ _slot64912_)))
            (_E64913_ _obj64911_ _slot64912_))))
    (define slot-ref__0
      (lambda (_obj64926_ _slot64927_)
        (let ((_E64929_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj64926_ _slot64927_ _E64929_))))
    (define slot-ref
      (lambda _g65902_
        (let ((_g65901_ (let () (declare (not safe)) (##length _g65902_))))
          (cond ((let () (declare (not safe)) (##fx= _g65901_ 2))
                 (apply (lambda (_obj64926_ _slot64927_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj64926_ _slot64927_)))
                        _g65902_))
                ((let () (declare (not safe)) (##fx= _g65901_ 3))
                 (apply (lambda (_obj64931_ _slot64932_ _E64933_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj64931_ _slot64932_ _E64933_)))
                        _g65902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g65902_))))))
    (define slot-set!__%
      (lambda (_obj64883_ _slot64884_ _val64885_ _E64886_)
        (if (object? _obj64883_)
            (let* ((_klass64888_ (object-type _obj64883_))
                   (_$e64891_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass64888_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass64888_ _slot64884_))
                        '#f)))
              (if _$e64891_
                  ((lambda (_off64894_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj64883_
                        _off64894_
                        _val64885_)))
                   _$e64891_)
                  (_E64886_ _obj64883_ _slot64884_)))
            (_E64886_ _obj64883_ _slot64884_))))
    (define slot-set!__0
      (lambda (_obj64899_ _slot64900_ _val64901_)
        (let ((_E64903_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj64899_ _slot64900_ _val64901_ _E64903_))))
    (define slot-set!
      (lambda _g65904_
        (let ((_g65903_ (let () (declare (not safe)) (##length _g65904_))))
          (cond ((let () (declare (not safe)) (##fx= _g65903_ 3))
                 (apply (lambda (_obj64899_ _slot64900_ _val64901_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj64899_ _slot64900_ _val64901_)))
                        _g65904_))
                ((let () (declare (not safe)) (##fx= _g65903_ 4))
                 (apply (lambda (_obj64905_ _slot64906_ _val64907_ _E64908_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj64905_
                             _slot64906_
                             _val64907_
                             _E64908_)))
                        _g65904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g65904_))))))
    (define __slot-error
      (lambda (_obj64879_ _slot64880_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj64879_ 'slot: _slot64880_))))
    (define subclass?
      (lambda (_maybe-sub-class64869_ _maybe-super-class64870_)
        (let* ((_maybe-super-class-id64872_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class64870_)))
               (_$e64874_
                (let ((__tmp65905
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class64869_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id64872_ __tmp65905))))
          (if _$e64874_
              _$e64874_
              (let ((__tmp65907
                     (lambda (_super-class64877_)
                       (let ((__tmp65908
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class64877_))))
                         (declare (not safe))
                         (eq? __tmp65908 _maybe-super-class-id64872_))))
                    (__tmp65906
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class64869_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp65907 __tmp65906))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass64866_ _obj64867_)
        (let ((__tmp65909
               (let () (declare (not safe)) (##type-id _klass64866_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj64867_ __tmp65909))))
    (define struct-instance?
      (lambda (_klass64863_ _obj64864_)
        (let ((__tmp65910
               (let () (declare (not safe)) (##type-id _klass64863_))))
          (declare (not safe))
          (##structure-instance-of? _obj64864_ __tmp65910))))
    (define class-instance?
      (lambda (_klass64858_ _obj64859_)
        (if (object? _obj64859_)
            (let ((_type64861_ (object-type _obj64859_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type64861_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type64861_ _klass64858_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass64853_ _k64854_)
        (if (let () (declare (not safe)) (class-type-system? _klass64853_))
            (let ()
              (declare (not safe))
              (error '"cannot instantiate system class" 'class: _klass64853_))
            (let ((_obj64856_
                   (let ()
                     (declare (not safe))
                     (##make-structure _klass64853_ _k64854_))))
              (let () (declare (not safe)) (object-fill! _obj64856_ '#f))
              _obj64856_))))
    (define object-fill!
      (lambda (_obj64846_ _fill64847_)
        (let _loop64849_ ((_i64851_
                           (let ((__tmp65912
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj64846_))))
                             (declare (not safe))
                             (##fx- __tmp65912 '1))))
          (if (let () (declare (not safe)) (##fx> _i64851_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj64846_
                   _fill64847_
                   _i64851_
                   '#f
                   '#f))
                (let ((__tmp65911
                       (let () (declare (not safe)) (##fx- _i64851_ '1))))
                  (declare (not safe))
                  (_loop64849_ __tmp65911)))
              _obj64846_))))
    (define new-instance
      (lambda (_klass64844_)
        (let ((__obj65811
               (let ((__tmp65913
                      (let ((__tmp65914
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64844_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp65914))))
                 (declare (not safe))
                 (##make-structure _klass64844_ __tmp65913))))
          (let () (declare (not safe)) (object-fill! __obj65811 '#f))
          __obj65811)))
    (define make-instance
      (lambda (_klass64834_ . _args64835_)
        (let* ((_obj64837_
                (let () (declare (not safe)) (new-instance _klass64834_)))
               (_$e64839_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass64834_ '10 class::t '#f))))
          (if _$e64839_
              ((lambda (_kons-id64842_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass64834_
                    _kons-id64842_
                    _obj64837_
                    _args64835_)))
               _$e64839_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass64834_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass64834_
                     _obj64837_
                     _args64835_))
                  (if (let ((__tmp65919
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass64834_))))
                        (declare (not safe))
                        (not __tmp65919))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass64834_
                         _obj64837_
                         _args64835_))
                      (if (let ((__tmp65917
                                 (let ((__tmp65918
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj64837_))))
                                   (declare (not safe))
                                   (##fx- __tmp65918 '1)))
                                (__tmp65916 (length _args64835_)))
                            (declare (not safe))
                            (##fx= __tmp65917 __tmp65916))
                          (apply ##structure _klass64834_ _args64835_)
                          (let ((__tmp65915
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass64834_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass64834_
                                   'slots:
                                   __tmp65915
                                   'args:
                                   _args64835_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj64831_ . _args64832_)
        (if (let ((__tmp65921 (length _args64832_))
                  (__tmp65920
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj64831_))))
              (declare (not safe))
              (##fx< __tmp65921 __tmp65920))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj64831_ _args64832_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj64831_
                     'args:
                     _args64832_)))))
    (define __struct-instance-init!
      (lambda (_obj64790_ _args64791_)
        (let _lp64793_ ((_k64795_ '1) (_rest64796_ _args64791_))
          (let* ((_rest6479764805_ _rest64796_)
                 (_else6479964813_ (lambda () _obj64790_))
                 (_K6480164819_
                  (lambda (_rest64816_ _hd64817_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj64790_ _k64795_ _hd64817_))
                    (let ((__tmp65922
                           (let () (declare (not safe)) (##fx+ _k64795_ '1))))
                      (declare (not safe))
                      (_lp64793_ __tmp65922 _rest64816_)))))
            (if (let () (declare (not safe)) (##pair? _rest6479764805_))
                (let ((_hd6480264822_
                       (let () (declare (not safe)) (##car _rest6479764805_)))
                      (_tl6480364824_
                       (let () (declare (not safe)) (##cdr _rest6479764805_))))
                  (let* ((_hd64827_ _hd6480264822_)
                         (_rest64829_ _tl6480364824_))
                    (declare (not safe))
                    (_K6480164819_ _rest64829_ _hd64827_)))
                (let () (declare (not safe)) (_else6479964813_)))))))
    (define class-instance-init!
      (lambda (_obj64787_ . _args64788_)
        (let ((__tmp65923 (object-type _obj64787_)))
          (declare (not safe))
          (__class-instance-init! __tmp65923 _obj64787_ _args64788_))))
    (define __class-instance-init!
      (lambda (_klass64731_ _obj64732_ _args64733_)
        (let _lp64735_ ((_rest64737_ _args64733_))
          (let* ((_rest6473864748_ _rest64737_)
                 (_else6474064756_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest64737_))
                        _obj64732_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass64731_
                                 'rest:
                                 _rest64737_)))))
                 (_K6474264768_
                  (lambda (_rest64759_ _val64760_ _key64761_)
                    (let ((_$e64763_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass64731_ _key64761_))))
                      (if _$e64763_
                          ((lambda (_off64766_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj64732_
                                _off64766_
                                _val64760_))
                             (let ()
                               (declare (not safe))
                               (_lp64735_ _rest64759_)))
                           _$e64763_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass64731_
                                   'slot:
                                   _key64761_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6473864748_))
                (let ((_hd6474364771_
                       (let () (declare (not safe)) (##car _rest6473864748_)))
                      (_tl6474464773_
                       (let () (declare (not safe)) (##cdr _rest6473864748_))))
                  (let ((_key64776_ _hd6474364771_))
                    (if (let () (declare (not safe)) (##pair? _tl6474464773_))
                        (let ((_hd6474564778_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6474464773_)))
                              (_tl6474664780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6474464773_))))
                          (let* ((_val64783_ _hd6474564778_)
                                 (_rest64785_ _tl6474664780_))
                            (declare (not safe))
                            (_K6474264768_ _rest64785_ _val64783_ _key64776_)))
                        (let () (declare (not safe)) (_else6474064756_)))))
                (let () (declare (not safe)) (_else6474064756_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass64727_ _obj64728_ _args64729_)
        (apply call-method
               _klass64727_
               'instance-init!
               _obj64728_
               _args64729_)))
    (define constructor-init!
      (lambda (_klass64722_ _kons-id64723_ _obj64724_ . _args64725_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass64722_
           _kons-id64723_
           _obj64724_
           _args64725_))))
    (define __constructor-init!
      (lambda (_klass64712_ _kons-id64713_ _obj64714_ _args64715_)
        (let ((_$e64717_
               (let ()
                 (declare (not safe))
                 (__find-method _klass64712_ _obj64714_ _kons-id64713_))))
          (if _$e64717_
              ((lambda (_kons64720_)
                 (apply _kons64720_ _obj64714_ _args64715_)
                 _obj64714_)
               _$e64717_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass64712_
                       'method:
                       _kons-id64713_))))))
    (define struct-copy
      (lambda (_struct64710_)
        (if (let () (declare (not safe)) (##structure? _struct64710_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct64710_)))
        (let () (declare (not safe)) (##structure-copy _struct64710_))))
    (define struct->list
      (lambda (_obj64708_)
        (if (object? _obj64708_)
            (let () (declare (not safe)) (##vector->list _obj64708_))
            (let ()
              (declare (not safe))
              (error '"not a structure" _obj64708_)))))
    (define class->list
      (lambda (_obj64695_)
        (if (object? _obj64695_)
            (let ((_klass64697_ (object-type _obj64695_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass64697_ 'gerbil#class::t))
                  (let ((_slot-vector64699_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass64697_
                            '7
                            class::t
                            '#f))))
                    (let _loop64701_ ((_index64703_
                                       (let ((__tmp65929
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector64699_))))
                                         (declare (not safe))
                                         (##fx- __tmp65929 '1)))
                                      (_plist64704_ '()))
                      (if (let () (declare (not safe)) (##fx< _index64703_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass64697_ _plist64704_))
                          (let ((_slot64706_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector64699_
                                    _index64703_))))
                            (let ((__tmp65928
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index64703_ '1)))
                                  (__tmp65924
                                   (let ((__tmp65927
                                          (symbol->keyword _slot64706_))
                                         (__tmp65925
                                          (let ((__tmp65926
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj64695_
                                                    _index64703_))))
                                            (declare (not safe))
                                            (cons __tmp65926 _plist64704_))))
                                     (declare (not safe))
                                     (cons __tmp65927 __tmp65925))))
                              (declare (not safe))
                              (_loop64701_ __tmp65928 __tmp65924))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj64695_
                           'class:
                           _klass64697_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj64695_)))))
    (define call-method
      (lambda (_obj64686_ _id64687_ . _args64688_)
        (let ((_$e64690_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64686_ _id64687_))))
          (if _$e64690_
              ((lambda (_method64693_)
                 (apply _method64693_ _obj64686_ _args64688_))
               _$e64690_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj64686_
                       'method:
                       _id64687_))))))
    (define method-ref
      (lambda (_obj64683_ _id64684_)
        (let ((__tmp65930 (let () (declare (not safe)) (class-of _obj64683_))))
          (declare (not safe))
          (find-method __tmp65930 _obj64683_ _id64684_))))
    (define checked-method-ref
      (lambda (_obj64677_ _id64678_)
        (let ((_$e64680_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64677_ _id64678_))))
          (if _$e64680_
              _$e64680_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj64677_
                       'method:
                       _id64678_))))))
    (define bound-method-ref
      (lambda (_obj64667_ _id64668_)
        (let ((_$e64670_
               (let ()
                 (declare (not safe))
                 (method-ref _obj64667_ _id64668_))))
          (if _$e64670_
              ((lambda (_method64673_)
                 (lambda _args64675_
                   (apply _method64673_ _obj64667_ _args64675_)))
               _$e64670_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj64660_ _id64661_)
        (let ((_method64663_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj64660_ _id64661_))))
          (lambda _args64665_ (apply _method64663_ _obj64660_ _args64665_)))))
    (define find-method
      (lambda (_klass64656_ _obj64657_ _id64658_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64656_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass64656_ _obj64657_ _id64658_))
            (if (let () (declare (not safe)) (##type? _klass64656_))
                (let ((__tmp65931
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64656_))))
                  (declare (not safe))
                  (__find-method __tmp65931 _obj64657_ _id64658_))
                (let ()
                  (declare (not safe))
                  (error '"bad class; must be a class-type or builtin type"
                         'class:
                         _klass64656_
                         'method:
                         _id64658_))))))
    (define __find-method
      (lambda (_klass64649_ _obj64650_ _id64651_)
        (let ((_$e64653_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass64649_ _obj64650_ _id64651_))))
          (if _$e64653_
              _$e64653_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass64649_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass64649_ _obj64650_ _id64651_)))))))
    (define mixin-find-method
      (lambda (_mixins64641_ _obj64642_ _id64643_)
        (let ((__tmp65932
               (lambda (_g6464464646_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6464464646_ _obj64642_ _id64643_)))))
          (declare (not safe))
          (ormap1 __tmp65932 _mixins64641_))))
    (define direct-method-ref
      (lambda (_klass64618_ _obj64619_ _id64620_)
        (letrec ((_metaclass-resolve-method64622_
                  (lambda ()
                    (let ((__method65812
                           (let ()
                             (declare (not safe))
                             (method-ref _klass64618_ 'direct-method-ref))))
                      (if __method65812
                          (__method65812 _klass64618_ _obj64619_ _id64620_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass64618_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!64623_
                  (lambda ()
                    (let ((_method64638_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method64622_))))
                      (let ((__tmp65934
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass64618_
                                '11
                                class::t
                                '#f)))
                            (__tmp65933 (if _method64638_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp65934 _id64620_ __tmp65933))
                      _method64638_))))
          (let ((_$e64625_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass64618_ '11 class::t '#f))))
            (if _$e64625_
                ((lambda (_ht64628_)
                   (let ((_method64630_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht64628_ _id64620_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method64630_))
                         _method64630_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass64618_))
                             (let ((_$e64632_ _method64630_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e64632_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method64622_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e64632_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!64623_)))))
                             '#f))))
                 _$e64625_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass64618_))
                    (let ((_tab64635_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64618_
                         _tab64635_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!64623_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass64614_ _obj64615_ _id64616_)
        (let ((__tmp65935 (##structure-ref _klass64614_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp65935 _obj64615_ _id64616_))))
    (define bind-method!__%
      (lambda (_klass64587_ _id64588_ _proc64589_ _rebind?64590_)
        (letrec ((_bind!64592_
                  (lambda (_ht64598_)
                    (if (and (let () (declare (not safe)) (not _rebind?64590_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht64598_ _id64588_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass64587_
                                 'method:
                                 _id64588_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht64598_
                           _id64588_
                           _proc64589_))))))
          (if (let () (declare (not safe)) (procedure? _proc64589_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc64589_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass64587_ 'gerbil#class::t))
              (let ((_ht64594_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass64587_
                        '11
                        class::t
                        '#f))))
                (if _ht64594_
                    (let () (declare (not safe)) (_bind!64592_ _ht64594_))
                    (let ((_ht64596_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass64587_
                         _ht64596_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!64592_ _ht64596_)))))
              (if (let () (declare (not safe)) (##type? _klass64587_))
                  (let ((__tmp65936
                         (let ()
                           (declare (not safe))
                           (__shadow-class _klass64587_))))
                    (declare (not safe))
                    (bind-method!__%
                     __tmp65936
                     _id64588_
                     _proc64589_
                     _rebind?64590_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass64587_)))))))
    (define bind-method!__0
      (lambda (_klass64603_ _id64604_ _proc64605_)
        (let ((_rebind?64607_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass64603_
           _id64604_
           _proc64605_
           _rebind?64607_))))
    (define bind-method!
      (lambda _g65938_
        (let ((_g65937_ (let () (declare (not safe)) (##length _g65938_))))
          (cond ((let () (declare (not safe)) (##fx= _g65937_ 3))
                 (apply (lambda (_klass64603_ _id64604_ _proc64605_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass64603_
                             _id64604_
                             _proc64605_)))
                        _g65938_))
                ((let () (declare (not safe)) (##fx= _g65937_ 4))
                 (apply (lambda (_klass64609_
                                 _id64610_
                                 _proc64611_
                                 _rebind?64612_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass64609_
                             _id64610_
                             _proc64611_
                             _rebind?64612_)))
                        _g65938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g65938_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint64567_ _seed64569_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64567_
           procedure-hash
           eq?
           _seed64569_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint64575_ '#f) (_seed64577_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64575_ _seed64577_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint64579_)
        (let ((_seed64581_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint64579_ _seed64581_))))
    (define make-method-specializer-table
      (lambda _g65940_
        (let ((_g65939_ (let () (declare (not safe)) (##length _g65940_))))
          (cond ((let () (declare (not safe)) (##fx= _g65939_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g65940_))
                ((let () (declare (not safe)) (##fx= _g65939_ 1))
                 (apply (lambda (_size-hint64579_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint64579_)))
                        _g65940_))
                ((let () (declare (not safe)) (##fx= _g65939_ 2))
                 (apply (lambda (_size-hint64583_ _seed64584_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint64583_
                             _seed64584_)))
                        _g65940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g65940_))))))
    (define method-specializer-table-ref
      (lambda (_tab64524_ _key64525_ _default64526_)
        (let ((_table64528_
               (let () (declare (not safe)) (&raw-table-table _tab64524_)))
              (_seed64529_
               (let () (declare (not safe)) (&raw-table-seed _tab64524_))))
          (let* ((_h64531_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64525_))
                         _seed64529_))
                 (_size64534_ (vector-length _table64528_))
                 (_entries64537_ (fxquotient _size64534_ '2))
                 (_start64540_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64531_ _entries64537_)
                   '1)))
            (let _loop64544_ ((_probe64547_ _start64540_)
                              (_i64549_ '1)
                              (_deleted64551_ '#f))
              (let ((_k64554_ (vector-ref _table64528_ _probe64547_)))
                (if (let ((__tmp65947 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64554_ __tmp65947))
                    _default64526_
                    (if (let ((__tmp65946 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64554_ __tmp65946))
                        (let ((__tmp65945
                               (let ((_next-probe64557_
                                      (fx+ _start64540_
                                           _i64549_
                                           (fx* _i64549_ _i64549_))))
                                 (fxmodulo _next-probe64557_ _size64534_)))
                              (__tmp65944 (fx+ _i64549_ '1))
                              (__tmp65943
                               (let ((_$e64560_ _deleted64551_))
                                 (if _$e64560_ _$e64560_ _probe64547_))))
                          (declare (not safe))
                          (_loop64544_ __tmp65945 __tmp65944 __tmp65943))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64525_ _k64554_))
                            (vector-ref _table64528_ (fx+ _probe64547_ '1))
                            (let ((__tmp65942
                                   (let ((_next-probe64563_
                                          (fx+ _start64540_
                                               _i64549_
                                               (fx* _i64549_ _i64549_))))
                                     (fxmodulo _next-probe64563_ _size64534_)))
                                  (__tmp65941 (fx+ _i64549_ '1)))
                              (declare (not safe))
                              (_loop64544_
                               __tmp65942
                               __tmp65941
                               _deleted64551_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab64520_ _key64521_ _value64522_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64520_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64520_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64520_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab64520_
           _key64521_
           _value64522_))))
    (define __method-specializer-table-set!
      (lambda (_tab64475_ _key64476_ _value64477_)
        (let ((_table64480_
               (let () (declare (not safe)) (&raw-table-table _tab64475_)))
              (_seed64481_
               (let () (declare (not safe)) (&raw-table-seed _tab64475_))))
          (let* ((_h64483_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64476_))
                         _seed64481_))
                 (_size64486_ (vector-length _table64480_))
                 (_entries64489_ (fxquotient _size64486_ '2))
                 (_start64492_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64483_ _entries64489_)
                   '1)))
            (let _loop64496_ ((_probe64499_ _start64492_)
                              (_i64501_ '1)
                              (_deleted64503_ '#f))
              (let ((_k64506_ (vector-ref _table64480_ _probe64499_)))
                (if (let ((__tmp65957 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64506_ __tmp65957))
                    (if _deleted64503_
                        (begin
                          (vector-set! _table64480_ _deleted64503_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _deleted64503_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp65956
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp65956)))))
                        (begin
                          (vector-set! _table64480_ _probe64499_ _key64476_)
                          (vector-set!
                           _table64480_
                           (fx+ _probe64499_ '1)
                           _value64477_)
                          ((lambda ()
                             (let ((__tmp65954
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64475_ __tmp65954))
                             (let ((__tmp65955
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64475_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64475_
                                __tmp65955))))))
                    (if (let ((__tmp65953 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64506_ __tmp65953))
                        (let ((__tmp65952
                               (let ((_next-probe64511_
                                      (fx+ _start64492_
                                           _i64501_
                                           (fx* _i64501_ _i64501_))))
                                 (fxmodulo _next-probe64511_ _size64486_)))
                              (__tmp65951 (fx+ _i64501_ '1))
                              (__tmp65950
                               (let ((_$e64514_ _deleted64503_))
                                 (if _$e64514_ _$e64514_ _probe64499_))))
                          (declare (not safe))
                          (_loop64496_ __tmp65952 __tmp65951 __tmp65950))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64476_ _k64506_))
                            (begin
                              (vector-set!
                               _table64480_
                               _probe64499_
                               _key64476_)
                              (vector-set!
                               _table64480_
                               (fx+ _probe64499_ '1)
                               _value64477_))
                            (let ((__tmp65949
                                   (let ((_next-probe64517_
                                          (fx+ _start64492_
                                               _i64501_
                                               (fx* _i64501_ _i64501_))))
                                     (fxmodulo _next-probe64517_ _size64486_)))
                                  (__tmp65948 (fx+ _i64501_ '1)))
                              (declare (not safe))
                              (_loop64496_
                               __tmp65949
                               __tmp65948
                               _deleted64503_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab64470_
               _key64471_
               _method-specializer-table-update!64472_
               _default64473_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64470_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64470_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64470_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab64470_
           _key64471_
           _method-specializer-table-update!64472_
           _default64473_))))
    (define __method-specializer-table-update!
      (lambda (_tab64424_
               _key64425_
               _method-specializer-table-update!64426_
               _default64427_)
        (let ((_table64430_
               (let () (declare (not safe)) (&raw-table-table _tab64424_)))
              (_seed64431_
               (let () (declare (not safe)) (&raw-table-seed _tab64424_))))
          (let* ((_h64433_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64425_))
                         _seed64431_))
                 (_size64436_ (vector-length _table64430_))
                 (_entries64439_ (fxquotient _size64436_ '2))
                 (_start64442_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64433_ _entries64439_)
                   '1)))
            (let _loop64446_ ((_probe64449_ _start64442_)
                              (_i64451_ '1)
                              (_deleted64453_ '#f))
              (let ((_k64456_ (vector-ref _table64430_ _probe64449_)))
                (if (let ((__tmp65967 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64456_ __tmp65967))
                    (if _deleted64453_
                        (begin
                          (vector-set! _table64430_ _deleted64453_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _deleted64453_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp65966
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp65966)))))
                        (begin
                          (vector-set! _table64430_ _probe64449_ _key64425_)
                          (vector-set!
                           _table64430_
                           (fx+ _probe64449_ '1)
                           (_method-specializer-table-update!64426_
                            _default64427_))
                          ((lambda ()
                             (let ((__tmp65964
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64424_ __tmp65964))
                             (let ((__tmp65965
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64424_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64424_
                                __tmp65965))))))
                    (if (let ((__tmp65963 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64456_ __tmp65963))
                        (let ((__tmp65962
                               (let ((_next-probe64461_
                                      (fx+ _start64442_
                                           _i64451_
                                           (fx* _i64451_ _i64451_))))
                                 (fxmodulo _next-probe64461_ _size64436_)))
                              (__tmp65961 (fx+ _i64451_ '1))
                              (__tmp65960
                               (let ((_$e64464_ _deleted64453_))
                                 (if _$e64464_ _$e64464_ _probe64449_))))
                          (declare (not safe))
                          (_loop64446_ __tmp65962 __tmp65961 __tmp65960))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64425_ _k64456_))
                            (begin
                              (vector-set!
                               _table64430_
                               _probe64449_
                               _key64425_)
                              (vector-set!
                               _table64430_
                               (fx+ _probe64449_ '1)
                               (_method-specializer-table-update!64426_
                                (vector-ref
                                 _table64430_
                                 (fx+ _probe64449_ '1)))))
                            (let ((__tmp65959
                                   (let ((_next-probe64467_
                                          (fx+ _start64442_
                                               _i64451_
                                               (fx* _i64451_ _i64451_))))
                                     (fxmodulo _next-probe64467_ _size64436_)))
                                  (__tmp65958 (fx+ _i64451_ '1)))
                              (declare (not safe))
                              (_loop64446_
                               __tmp65959
                               __tmp65958
                               _deleted64453_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab64383_ _key64385_)
        (let ((_table64388_
               (let () (declare (not safe)) (&raw-table-table _tab64383_)))
              (_seed64390_
               (let () (declare (not safe)) (&raw-table-seed _tab64383_))))
          (let* ((_h64393_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key64385_))
                         _seed64390_))
                 (_size64396_ (vector-length _table64388_))
                 (_entries64399_ (fxquotient _size64396_ '2))
                 (_start64402_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64393_ _entries64399_)
                   '1)))
            (let _loop64406_ ((_probe64409_ _start64402_) (_i64411_ '1))
              (let ((_k64414_ (vector-ref _table64388_ _probe64409_)))
                (if (let ((__tmp65974 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64414_ __tmp65974))
                    '#!void
                    (if (let ((__tmp65973 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64414_ __tmp65973))
                        (let ((__tmp65972
                               (let ((_next-probe64417_
                                      (fx+ _start64402_
                                           _i64411_
                                           (fx* _i64411_ _i64411_))))
                                 (fxmodulo _next-probe64417_ _size64396_)))
                              (__tmp65971 (fx+ _i64411_ '1)))
                          (declare (not safe))
                          (_loop64406_ __tmp65972 __tmp65971))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64385_ _k64414_))
                            (begin
                              (vector-set!
                               _table64388_
                               _probe64409_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64388_
                               (fx+ _probe64409_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65970
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64383_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64383_
                                    __tmp65970)))))
                            (let ((__tmp65969
                                   (let ((_next-probe64421_
                                          (fx+ _start64402_
                                               _i64411_
                                               (fx* _i64411_ _i64411_))))
                                     (fxmodulo _next-probe64421_ _size64396_)))
                                  (__tmp65968 (fx+ _i64411_ '1)))
                              (declare (not safe))
                              (_loop64406_ __tmp65969 __tmp65968)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc64374_ _specializer64375_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64379_ ()
            (if (let ((__tmp65975
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65975 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64379_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc64374_
           _specializer64375_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc64364_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64368_ ()
            (if (let ((__tmp65976
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp65976 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64368_))))))
        (let ((_specializer64372_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc64364_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer64372_)))
    (define __class-specializer-hash-key
      (lambda (_klass64362_)
        (let ((__tmp65977
               (let () (declare (not safe)) (##type-id _klass64362_))))
          (declare (not safe))
          (symbolic-hash __tmp65977))))
    (define make-class-specializer-table__%
      (lambda (_size-hint64343_ _seed64345_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64343_
           __class-specializer-hash-key
           eq?
           _seed64345_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint64351_ '#f) (_seed64353_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64351_ _seed64353_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint64355_)
        (let ((_seed64357_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint64355_ _seed64357_))))
    (define make-class-specializer-table
      (lambda _g65979_
        (let ((_g65978_ (let () (declare (not safe)) (##length _g65979_))))
          (cond ((let () (declare (not safe)) (##fx= _g65978_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g65979_))
                ((let () (declare (not safe)) (##fx= _g65978_ 1))
                 (apply (lambda (_size-hint64355_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint64355_)))
                        _g65979_))
                ((let () (declare (not safe)) (##fx= _g65978_ 2))
                 (apply (lambda (_size-hint64359_ _seed64360_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint64359_
                             _seed64360_)))
                        _g65979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g65979_))))))
    (define class-specializer-table-ref
      (lambda (_tab64300_ _key64301_ _default64302_)
        (let ((_table64304_
               (let () (declare (not safe)) (&raw-table-table _tab64300_)))
              (_seed64305_
               (let () (declare (not safe)) (&raw-table-seed _tab64300_))))
          (let* ((_h64307_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64301_))
                         _seed64305_))
                 (_size64310_ (vector-length _table64304_))
                 (_entries64313_ (fxquotient _size64310_ '2))
                 (_start64316_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64307_ _entries64313_)
                   '1)))
            (let _loop64320_ ((_probe64323_ _start64316_)
                              (_i64325_ '1)
                              (_deleted64327_ '#f))
              (let ((_k64330_ (vector-ref _table64304_ _probe64323_)))
                (if (let ((__tmp65986 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64330_ __tmp65986))
                    _default64302_
                    (if (let ((__tmp65985 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64330_ __tmp65985))
                        (let ((__tmp65984
                               (let ((_next-probe64333_
                                      (fx+ _start64316_
                                           _i64325_
                                           (fx* _i64325_ _i64325_))))
                                 (fxmodulo _next-probe64333_ _size64310_)))
                              (__tmp65983 (fx+ _i64325_ '1))
                              (__tmp65982
                               (let ((_$e64336_ _deleted64327_))
                                 (if _$e64336_ _$e64336_ _probe64323_))))
                          (declare (not safe))
                          (_loop64320_ __tmp65984 __tmp65983 __tmp65982))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64301_ _k64330_))
                            (vector-ref _table64304_ (fx+ _probe64323_ '1))
                            (let ((__tmp65981
                                   (let ((_next-probe64339_
                                          (fx+ _start64316_
                                               _i64325_
                                               (fx* _i64325_ _i64325_))))
                                     (fxmodulo _next-probe64339_ _size64310_)))
                                  (__tmp65980 (fx+ _i64325_ '1)))
                              (declare (not safe))
                              (_loop64320_
                               __tmp65981
                               __tmp65980
                               _deleted64327_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab64296_ _key64297_ _value64298_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64296_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64296_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64296_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab64296_
           _key64297_
           _value64298_))))
    (define __class-specializer-table-set!
      (lambda (_tab64251_ _key64252_ _value64253_)
        (let ((_table64256_
               (let () (declare (not safe)) (&raw-table-table _tab64251_)))
              (_seed64257_
               (let () (declare (not safe)) (&raw-table-seed _tab64251_))))
          (let* ((_h64259_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64252_))
                         _seed64257_))
                 (_size64262_ (vector-length _table64256_))
                 (_entries64265_ (fxquotient _size64262_ '2))
                 (_start64268_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64259_ _entries64265_)
                   '1)))
            (let _loop64272_ ((_probe64275_ _start64268_)
                              (_i64277_ '1)
                              (_deleted64279_ '#f))
              (let ((_k64282_ (vector-ref _table64256_ _probe64275_)))
                (if (let ((__tmp65996 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64282_ __tmp65996))
                    (if _deleted64279_
                        (begin
                          (vector-set! _table64256_ _deleted64279_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _deleted64279_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp65995
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp65995)))))
                        (begin
                          (vector-set! _table64256_ _probe64275_ _key64252_)
                          (vector-set!
                           _table64256_
                           (fx+ _probe64275_ '1)
                           _value64253_)
                          ((lambda ()
                             (let ((__tmp65993
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64251_ __tmp65993))
                             (let ((__tmp65994
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64251_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64251_
                                __tmp65994))))))
                    (if (let ((__tmp65992 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64282_ __tmp65992))
                        (let ((__tmp65991
                               (let ((_next-probe64287_
                                      (fx+ _start64268_
                                           _i64277_
                                           (fx* _i64277_ _i64277_))))
                                 (fxmodulo _next-probe64287_ _size64262_)))
                              (__tmp65990 (fx+ _i64277_ '1))
                              (__tmp65989
                               (let ((_$e64290_ _deleted64279_))
                                 (if _$e64290_ _$e64290_ _probe64275_))))
                          (declare (not safe))
                          (_loop64272_ __tmp65991 __tmp65990 __tmp65989))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64252_ _k64282_))
                            (begin
                              (vector-set!
                               _table64256_
                               _probe64275_
                               _key64252_)
                              (vector-set!
                               _table64256_
                               (fx+ _probe64275_ '1)
                               _value64253_))
                            (let ((__tmp65988
                                   (let ((_next-probe64293_
                                          (fx+ _start64268_
                                               _i64277_
                                               (fx* _i64277_ _i64277_))))
                                     (fxmodulo _next-probe64293_ _size64262_)))
                                  (__tmp65987 (fx+ _i64277_ '1)))
                              (declare (not safe))
                              (_loop64272_
                               __tmp65988
                               __tmp65987
                               _deleted64279_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab64246_
               _key64247_
               _class-specializer-table-update!64248_
               _default64249_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64246_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64246_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64246_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab64246_
           _key64247_
           _class-specializer-table-update!64248_
           _default64249_))))
    (define __class-specializer-table-update!
      (lambda (_tab64200_
               _key64201_
               _class-specializer-table-update!64202_
               _default64203_)
        (let ((_table64206_
               (let () (declare (not safe)) (&raw-table-table _tab64200_)))
              (_seed64207_
               (let () (declare (not safe)) (&raw-table-seed _tab64200_))))
          (let* ((_h64209_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64201_))
                         _seed64207_))
                 (_size64212_ (vector-length _table64206_))
                 (_entries64215_ (fxquotient _size64212_ '2))
                 (_start64218_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64209_ _entries64215_)
                   '1)))
            (let _loop64222_ ((_probe64225_ _start64218_)
                              (_i64227_ '1)
                              (_deleted64229_ '#f))
              (let ((_k64232_ (vector-ref _table64206_ _probe64225_)))
                (if (let ((__tmp66006 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64232_ __tmp66006))
                    (if _deleted64229_
                        (begin
                          (vector-set! _table64206_ _deleted64229_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _deleted64229_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66005
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66005)))))
                        (begin
                          (vector-set! _table64206_ _probe64225_ _key64201_)
                          (vector-set!
                           _table64206_
                           (fx+ _probe64225_ '1)
                           (_class-specializer-table-update!64202_
                            _default64203_))
                          ((lambda ()
                             (let ((__tmp66003
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64200_ __tmp66003))
                             (let ((__tmp66004
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64200_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64200_
                                __tmp66004))))))
                    (if (let ((__tmp66002 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64232_ __tmp66002))
                        (let ((__tmp66001
                               (let ((_next-probe64237_
                                      (fx+ _start64218_
                                           _i64227_
                                           (fx* _i64227_ _i64227_))))
                                 (fxmodulo _next-probe64237_ _size64212_)))
                              (__tmp66000 (fx+ _i64227_ '1))
                              (__tmp65999
                               (let ((_$e64240_ _deleted64229_))
                                 (if _$e64240_ _$e64240_ _probe64225_))))
                          (declare (not safe))
                          (_loop64222_ __tmp66001 __tmp66000 __tmp65999))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64201_ _k64232_))
                            (begin
                              (vector-set!
                               _table64206_
                               _probe64225_
                               _key64201_)
                              (vector-set!
                               _table64206_
                               (fx+ _probe64225_ '1)
                               (_class-specializer-table-update!64202_
                                (vector-ref
                                 _table64206_
                                 (fx+ _probe64225_ '1)))))
                            (let ((__tmp65998
                                   (let ((_next-probe64243_
                                          (fx+ _start64218_
                                               _i64227_
                                               (fx* _i64227_ _i64227_))))
                                     (fxmodulo _next-probe64243_ _size64212_)))
                                  (__tmp65997 (fx+ _i64227_ '1)))
                              (declare (not safe))
                              (_loop64222_
                               __tmp65998
                               __tmp65997
                               _deleted64229_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab64159_ _key64161_)
        (let ((_table64164_
               (let () (declare (not safe)) (&raw-table-table _tab64159_)))
              (_seed64166_
               (let () (declare (not safe)) (&raw-table-seed _tab64159_))))
          (let* ((_h64169_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key64161_))
                         _seed64166_))
                 (_size64172_ (vector-length _table64164_))
                 (_entries64175_ (fxquotient _size64172_ '2))
                 (_start64178_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64169_ _entries64175_)
                   '1)))
            (let _loop64182_ ((_probe64185_ _start64178_) (_i64187_ '1))
              (let ((_k64190_ (vector-ref _table64164_ _probe64185_)))
                (if (let ((__tmp66013 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64190_ __tmp66013))
                    '#!void
                    (if (let ((__tmp66012 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64190_ __tmp66012))
                        (let ((__tmp66011
                               (let ((_next-probe64193_
                                      (fx+ _start64178_
                                           _i64187_
                                           (fx* _i64187_ _i64187_))))
                                 (fxmodulo _next-probe64193_ _size64172_)))
                              (__tmp66010 (fx+ _i64187_ '1)))
                          (declare (not safe))
                          (_loop64182_ __tmp66011 __tmp66010))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key64161_ _k64190_))
                            (begin
                              (vector-set!
                               _table64164_
                               _probe64185_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64164_
                               (fx+ _probe64185_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66009
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64159_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64159_
                                    __tmp66009)))))
                            (let ((__tmp66008
                                   (let ((_next-probe64197_
                                          (fx+ _start64178_
                                               _i64187_
                                               (fx* _i64187_ _i64187_))))
                                     (fxmodulo _next-probe64197_ _size64172_)))
                                  (__tmp66007 (fx+ _i64187_ '1)))
                              (declare (not safe))
                              (_loop64182_ __tmp66008 __tmp66007)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass64152_)
        (let ((_$e64154_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass64152_))))
          (if _$e64154_
              _$e64154_
              (let ((_method-table64157_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass64152_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass64152_ _method-table64157_))
                _method-table64157_)))))
    (define __lookup-class-specializer
      (lambda (_klass64142_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64146_ ()
            (if (let ((__tmp66014
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66014 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64146_))))))
        (let ((_method-table64150_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass64142_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table64150_)))
    (define __bind-class-specializer!
      (lambda (_klass64133_ _method-table64134_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again64138_ ()
            (if (let ((__tmp66015
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp66015 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again64138_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass64133_
           _method-table64134_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass64118_ _method-table64119_ _method64120_ _proc64121_)
        (let ((_$e64123_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table64119_ _method64120_ '#f))))
          (if _$e64123_
              _$e64123_
              (let ((_$e64126_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc64121_))))
                (if _$e64126_
                    ((lambda (_specialize64129_)
                       (let ((_specialized-proc64131_
                              (_specialize64129_
                               _klass64118_
                               _method-table64119_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table64119_
                          _method64120_
                          _specialized-proc64131_)))
                     _$e64126_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table64119_
                       _method64120_
                       _proc64121_))))))))
    (define __specialize-class
      (lambda (_klass64064_)
        (if (let ((__tmp66019
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass64064_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp66019))
            (if (let () (declare (not safe)) (##type? _klass64064_))
                (let ((__tmp66018
                       (let ()
                         (declare (not safe))
                         (__shadow-class _klass64064_))))
                  (declare (not safe))
                  (__specialize-class __tmp66018))
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass64064_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass64064_))
                (let ((__method65813
                       (let ()
                         (declare (not safe))
                         (method-ref _klass64064_ 'specialize-class))))
                  (if __method65813
                      (__method65813 _klass64064_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass64064_
                               'specialize-class))))
                (if (let ((__tmp66017
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass64064_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp66017))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass64064_))
                    (let ((_method-table64066_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop64068_ ((_rest64070_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass64064_))))
                        (let* ((_rest6407164079_ _rest64070_)
                               (_else6407364087_
                                (lambda () _method-table64066_))
                               (_K6407564106_
                                (lambda (_rest64090_ _xklass64091_)
                                  (let ((_xmethod-table6409264094_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass64091_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6409264094_
                                        (let* ((_xmethod-table64097_
                                                _xmethod-table6409264094_)
                                               (__tmp66016
                                                (lambda (_g6409864101_
                                                         _g6409964103_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass64064_
                                                     _method-table64066_
                                                     _g6409864101_
                                                     _g6409964103_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table64097_
                                           __tmp66016))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop64068_ _rest64090_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6407164079_))
                              (let ((_hd6407664109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6407164079_)))
                                    (_tl6407764111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6407164079_))))
                                (let* ((_xklass64114_ _hd6407664109_)
                                       (_rest64116_ _tl6407764111_))
                                  (declare (not safe))
                                  (_K6407564106_ _rest64116_ _xklass64114_)))
                              (let ()
                                (declare (not safe))
                                (_else6407364087_)))))))))))
    (define seal-class!
      (lambda (_klass64060_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64060_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass64060_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass64060_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass64060_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass64060_))
                      (let ((__method65814
                             (let ()
                               (declare (not safe))
                               (method-ref _klass64060_ 'seal-class!))))
                        (if __method65814
                            (__method65814 _klass64060_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass64060_
                                     'seal-class!))))
                      (if (let ((__tmp66020
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass64060_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp66020))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass64060_))
                          (let ((_method-table64062_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass64060_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass64060_
                             _method-table64062_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass64060_))))
            '#!void)))
    (define next-method
      (lambda (_subklass64015_ _obj64016_ _id64017_)
        (letrec ((_find-next-method64019_
                  (lambda (_klass64021_)
                    (let _lp64023_ ((_rest64025_
                                     (let ()
                                       (declare (not safe))
                                       (class-precedence-list _klass64021_))))
                      (let* ((_rest6402664034_ _rest64025_)
                             (_else6402864042_ (lambda () '#f))
                             (_K6403064048_
                              (lambda (_rest64045_ _klass64046_)
                                (if (let ((__tmp66022
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _subklass64015_)))
                                          (__tmp66021
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _klass64046_))))
                                      (declare (not safe))
                                      (eq? __tmp66022 __tmp66021))
                                    (let ()
                                      (declare (not safe))
                                      (mixin-find-method
                                       _rest64045_
                                       _obj64016_
                                       _id64017_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64023_ _rest64045_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest6402664034_))
                            (let ((_hd6403164051_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest6402664034_)))
                                  (_tl6403264053_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest6402664034_))))
                              (let* ((_klass64056_ _hd6403164051_)
                                     (_rest64058_ _tl6403264053_))
                                (declare (not safe))
                                (_K6403064048_ _rest64058_ _klass64056_)))
                            (let ()
                              (declare (not safe))
                              (_else6402864042_))))))))
          (let ((__tmp66023
                 (let () (declare (not safe)) (class-of _obj64016_))))
            (declare (not safe))
            (_find-next-method64019_ __tmp66023)))))
    (define call-next-method
      (lambda (_subklass64005_ _obj64006_ _id64007_ . _args64008_)
        (let ((_$e64010_
               (let ()
                 (declare (not safe))
                 (next-method _subklass64005_ _obj64006_ _id64007_))))
          (if _$e64010_
              ((lambda (_methodf64013_)
                 (apply _methodf64013_ _obj64006_ _args64008_))
               _$e64010_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj64006_
                       'method:
                       _id64007_))))))
    (define write-style (lambda (_we64003_) (macro-writeenv-style _we64003_)))
    (define write-object
      (lambda (_we63995_ _obj63996_)
        (let ((_$e63998_
               (let () (declare (not safe)) (method-ref _obj63996_ ':wr))))
          (if _$e63998_
              ((lambda (_method64001_) (_method64001_ _obj63996_ _we63995_))
               _$e63998_)
              (let ()
                (declare (not safe))
                (##default-wr _we63995_ _obj63996_))))))
    (let () (declare (not safe)) (##wr-set! write-object))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_type63914_)
        (letrec ((_shadow-type-id63916_
                  (lambda (_type63993_)
                    (let ((__tmp66024
                           (let ()
                             (declare (not safe))
                             (##type-name _type63993_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp66024 '"::t"))))
                 (_shadow-type-name63917_
                  (lambda (_type63991_)
                    (let () (declare (not safe)) (##type-name _type63991_))))
                 (_make-shadow-class63918_
                  (lambda (_type63983_ _precedence-list63984_)
                    (let* ((_super63986_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _precedence-list63984_))
                                (let ((__tmp66025
                                       (car _precedence-list63984_)))
                                  (declare (not safe))
                                  (cons __tmp66025 '()))
                                '()))
                           (_klass63988_
                            (let ((__tmp66033
                                   (let ()
                                     (declare (not safe))
                                     (_shadow-type-id63916_ _type63983_)))
                                  (__tmp66032
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _type63983_)))
                                  (__tmp66026
                                   (let ((__tmp66031
                                          (let ()
                                            (declare (not safe))
                                            (cons 'struct: '#t)))
                                         (__tmp66027
                                          (let ((__tmp66030
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'system: '#t)))
                                                (__tmp66028
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (type-extensible?
                                                        _type63983_))
                                                     '()
                                                     (let ((__tmp66029
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp66029 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons __tmp66030 __tmp66028))))
                                     (declare (not safe))
                                     (cons __tmp66031 __tmp66027))))
                              (declare (not safe))
                              (make-class-type
                               __tmp66033
                               __tmp66032
                               _super63986_
                               '()
                               __tmp66026
                               '#f))))
                      (let ((__tmp66034
                             (let ()
                               (declare (not safe))
                               (##type-id _type63983_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp66034
                         _klass63988_))
                      _klass63988_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _again63922_ ()
              (if (let ((__tmp66035
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp66035 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_again63922_))))))
          (let ((_$e63926_
                 (let ((__tmp66036
                        (let () (declare (not safe)) (##type-id _type63914_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp66036 '#f))))
            (if _$e63926_
                ((lambda (_klass63929_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _klass63929_)
                 _$e63926_)
                (let _loop63931_ ((_super63933_
                                   (let ()
                                     (declare (not safe))
                                     (##type-super _type63914_)))
                                  (_hierarchy63934_ '()))
                  (if (let () (declare (not safe)) (not _super63933_))
                      (let _loop63936_ ((_rest63938_ _hierarchy63934_)
                                        (_precedence-list63939_ '()))
                        (let* ((_rest6394063948_ _rest63938_)
                               (_else6394263958_
                                (lambda ()
                                  (let ((_klass63956_
                                         (let ()
                                           (declare (not safe))
                                           (_make-shadow-class63918_
                                            _type63914_
                                            _precedence-list63939_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _klass63956_)))
                               (_K6394463971_
                                (lambda (_rest63961_ _type63962_)
                                  (let ((_$e63964_
                                         (let ((__tmp66039
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _type63962_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp66039
                                            '#f))))
                                    (if _$e63964_
                                        ((lambda (_klass63967_)
                                           (let ((__tmp66041
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _klass63967_
                                                          _precedence-list63939_))))
                                             (declare (not safe))
                                             (_loop63936_
                                              _rest63961_
                                              __tmp66041)))
                                         _$e63964_)
                                        (let* ((_klass63969_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-shadow-class63918_
                                                   _type63962_
                                                   _precedence-list63939_)))
                                               (__tmp66040
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _klass63969_
                                                        _precedence-list63939_))))
                                          (declare (not safe))
                                          (_loop63936_
                                           _rest63961_
                                           __tmp66040)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6394063948_))
                              (let ((_hd6394563974_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6394063948_)))
                                    (_tl6394663976_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6394063948_))))
                                (let* ((_type63979_ _hd6394563974_)
                                       (_rest63981_ _tl6394663976_))
                                  (declare (not safe))
                                  (_K6394463971_ _rest63981_ _type63979_)))
                              (let ()
                                (declare (not safe))
                                (_else6394263958_)))))
                      (let ((__tmp66038
                             (let ()
                               (declare (not safe))
                               (##type-super _super63933_)))
                            (__tmp66037
                             (let ()
                               (declare (not safe))
                               (cons _super63933_ _hierarchy63934_))))
                        (declare (not safe))
                        (_loop63931_ __tmp66038 __tmp66037)))))))))
    (define class-of
      (lambda (_obj63902_)
        (declare (not interrupts-enabled))
        (let ((_t63905_ (let () (declare (not safe)) (##type _obj63902_))))
          (if (fx= _t63905_ (macro-type-subtyped))
              (let ((_st63907_
                     (let () (declare (not safe)) (##subtype _obj63902_))))
                (if (fx= _st63907_ (macro-subtype-structure))
                    (let ((_klass63909_
                           (let ()
                             (declare (not safe))
                             (##structure-type _obj63902_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _klass63909_
                             'gerbil#class::t))
                          _klass63909_
                          (let ()
                            (declare (not safe))
                            (__shadow-class _klass63909_))))
                    (if (fx= _st63907_ (macro-subtype-boxvalues))
                        (if (fx= (let ()
                                   (declare (not safe))
                                   (##vector-length _obj63902_))
                                 '1)
                            (let () (declare (not safe)) (__system-class 'box))
                            (let ()
                              (declare (not safe))
                              (__system-class 'values)))
                        (let ((_$e63911_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref __subtype-id _st63907_))))
                          (if _$e63911_
                              (let ()
                                (declare (not safe))
                                (__system-class _$e63911_))
                              (let ()
                                (declare (not safe))
                                (error '"unknown class"
                                       'subtype:
                                       _st63907_
                                       'object:
                                       _obj63902_)))))))
              (if (fx= _t63905_ (macro-type-mem2))
                  (let () (declare (not safe)) (__system-class 'pair))
                  (if (fx= _t63905_ (macro-type-fixnum))
                      (let () (declare (not safe)) (__system-class 'fixnum))
                      (if (let () (declare (not safe)) (char? _obj63902_))
                          (let () (declare (not safe)) (__system-class 'char))
                          (if (let ()
                                (declare (not safe))
                                (eq? _obj63902_ '()))
                              (let ()
                                (declare (not safe))
                                (__system-class 'null))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _obj63902_ '#f))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'boolean))
                                  (if (let ()
                                        (declare (not safe))
                                        (eq? _obj63902_ '#t))
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _obj63902_ '#!void))
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'void))
                                          (if (let ()
                                                (declare (not safe))
                                                (eq? _obj63902_ '#!eof))
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'eof))
                                              (let ()
                                                (declare (not safe))
                                                (__system-class
                                                 'special))))))))))))))
    (define __subtype-id (make-vector '32 '#f))
    (vector-set! __subtype-id (macro-subtype-vector) 'vector)
    (vector-set! __subtype-id (macro-subtype-pair) 'pair)
    (vector-set! __subtype-id (macro-subtype-ratnum) 'ratnum)
    (vector-set! __subtype-id (macro-subtype-cpxnum) 'cpxnum)
    (vector-set! __subtype-id (macro-subtype-symbol) 'symbol)
    (vector-set! __subtype-id (macro-subtype-keyword) 'keyword)
    (vector-set! __subtype-id (macro-subtype-frame) 'frame)
    (vector-set! __subtype-id (macro-subtype-continuation) 'continuation)
    (vector-set! __subtype-id (macro-subtype-promise) 'promise)
    (vector-set! __subtype-id (macro-subtype-weak) 'weak)
    (vector-set! __subtype-id (macro-subtype-procedure) 'procedure)
    (vector-set! __subtype-id (macro-subtype-return) 'return)
    (vector-set! __subtype-id (macro-subtype-foreign) 'foreign)
    (vector-set! __subtype-id (macro-subtype-string) 'string)
    (vector-set! __subtype-id (macro-subtype-s8vector) 's8vector)
    (vector-set! __subtype-id (macro-subtype-u8vector) 'u8vector)
    (vector-set! __subtype-id (macro-subtype-s16vector) 's16vector)
    (vector-set! __subtype-id (macro-subtype-u16vector) 'u16vector)
    (vector-set! __subtype-id (macro-subtype-s32vector) 's32vector)
    (vector-set! __subtype-id (macro-subtype-u32vector) 'u32vector)
    (vector-set! __subtype-id (macro-subtype-f32vector) 'f32vector)
    (vector-set! __subtype-id (macro-subtype-s64vector) 's64vector)
    (vector-set! __subtype-id (macro-subtype-u64vector) 'u64vector)
    (vector-set! __subtype-id (macro-subtype-f64vector) 'f64vector)
    (vector-set! __subtype-id (macro-subtype-flonum) 'flonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_id63897_)
        (let ((_$e63899_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _id63897_ '#f))))
          (if _$e63899_
              _$e63899_
              (let ()
                (declare (not safe))
                (error '"unknown system class" _id63897_))))))
    (define __make-system-class
      (lambda (_id63892_ _super63893_)
        (let ((_klass63895_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _id63892_
                  _id63892_
                  _super63893_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _id63892_ _klass63895_))
          _klass63895_)))))
