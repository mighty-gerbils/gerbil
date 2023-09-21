(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g42323_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args20804_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20804_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args20800_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20800_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args20796_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20796_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args20792_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20792_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name ctor plist)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f
       '(fields)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args20788_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20788_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f
       '(slots)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args20784_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20784_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20758_ _is?20760_)
        (if (gx#identifier? _stx20758_)
            (let ((_e2076120763_ (gx#syntax-local-value _stx20758_ false)))
              (if _e2076120763_
                  (let ((_e20767_ _e2076120763_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
                           _e20767_))
                        (_is?20760_ _e20767_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20774_)
        (let ((_is?20777_ true))
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20774_
           _is?20777_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g42281_
        (let ((_g42280_ (let () (declare (not safe)) (##length _g42281_))))
          (cond ((let () (declare (not safe)) (##fx= _g42280_ 1))
                 (apply (lambda (_stx20774_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                             _stx20774_)))
                        _g42281_))
                ((let () (declare (not safe)) (##fx= _g42280_ 2))
                 (apply (lambda (_stx20780_ _is?20782_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                             _stx20780_
                             _is?20782_)))
                        _g42281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g42281_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20754_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20754_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20751_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20751_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20745_)
        (if _id20745_
            (let ((_info20748_ (gx#syntax-local-value _id20745_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                     _info20748_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _info20748_ 'type-exhibitor))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20510_ _stx20512_)
        (let* ((_g2051420534_
                (lambda (_g2051520530_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2051520530_)))
               (_g2051320741_
                (lambda (_g2051520538_)
                  (if (gx#stx-pair? _g2051520538_)
                      (let ((_e2051920541_ (gx#syntax-e _g2051520538_)))
                        (let ((_hd2051820545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2051920541_)))
                              (_tl2051720548_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2051920541_))))
                          (if (gx#stx-pair/null? _tl2051720548_)
                              (let ((_g42282_
                                     (gx#syntax-split-splice
                                      _tl2051720548_
                                      '0)))
                                (begin
                                  (let ((_g42283_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g42282_)
                                               (##vector-length _g42282_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g42283_ 2)))
                                        (error "Context expects 2 values"
                                               _g42283_)))
                                  (let ((_target2052020551_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42282_ 0)))
                                        (_tl2052220554_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42282_ 1))))
                                    (if (gx#stx-null? _tl2052220554_)
                                        (letrec ((_loop2052320557_
                                                  (lambda (_hd2052120561_
                                                           _arg2052720564_)
                                                    (if (gx#stx-pair?
                                                         _hd2052120561_)
                                                        (let ((_e2052420567_
                                                               (gx#syntax-e
                                                                _hd2052120561_)))
                                                          (let ((_lp-hd2052520571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2052420567_)))
                        (_lp-tl2052620574_
                         (let () (declare (not safe)) (##cdr _e2052420567_))))
                    (let ((__tmp42285
                           (cons _lp-hd2052520571_ _arg2052720564_)))
                      (declare (not safe))
                      (_loop2052320557_ _lp-tl2052620574_ __tmp42285))))
                (let ((_arg2052820577_ (reverse _arg2052720564_)))
                  ((lambda (_L20581_)
                     (let* ((_g2059720628_
                             (lambda (_g2059820624_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2059820624_)))
                            (_g2059620737_
                             (lambda (_g2059820632_)
                               (if (gx#stx-pair? _g2059820632_)
                                   (let ((_e2060720635_
                                          (gx#syntax-e _g2059820632_)))
                                     (let ((_hd2060620639_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2060720635_)))
                                           (_tl2060520642_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2060720635_))))
                                       (if (gx#stx-pair? _tl2060520642_)
                                           (let ((_e2061020645_
                                                  (gx#syntax-e
                                                   _tl2060520642_)))
                                             (let ((_hd2060920649_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2061020645_)))
                                                   (_tl2060820652_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2061020645_))))
                                               (if (gx#stx-pair?
                                                    _tl2060820652_)
                                                   (let ((_e2061320655_
                                                          (gx#syntax-e
                                                           _tl2060820652_)))
                                                     (let ((_hd2061220659_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2061320655_)))
                                                           (_tl2061120662_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2061320655_))))
                                                       (if (gx#stx-pair?
                                                            _tl2061120662_)
                                                           (let ((_e2061620665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2061120662_)))
                     (let ((_hd2061520669_
                            (let ()
                              (declare (not safe))
                              (##car _e2061620665_)))
                           (_tl2061420672_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2061620665_))))
                       (if (gx#stx-pair? _tl2061420672_)
                           (let ((_e2061920675_ (gx#syntax-e _tl2061420672_)))
                             (let ((_hd2061820679_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2061920675_)))
                                   (_tl2061720682_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2061920675_))))
                               (if (gx#stx-pair? _tl2061720682_)
                                   (let ((_e2062220685_
                                          (gx#syntax-e _tl2061720682_)))
                                     (let ((_hd2062120689_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2062220685_)))
                                           (_tl2062020692_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2062220685_))))
                                       (if (gx#stx-null? _tl2062020692_)
                                           ((lambda (_L20695_
                                                     _L20697_
                                                     _L20698_
                                                     _L20699_
                                                     _L20700_
                                                     _L20701_)
                                              (let ()
                                                (cons _L20699_
                                                      (foldr (lambda (_g2072820731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2072920734_)
                       (cons _g2072820731_ _g2072920734_))
                     '()
                     _L20581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2062120689_
                                            _hd2061820679_
                                            _hd2061520669_
                                            _hd2061220659_
                                            _hd2060920649_
                                            _hd2060620639_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2059720628_ _g2059820632_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2059720628_ _g2059820632_)))))
                           (let ()
                             (declare (not safe))
                             (_g2059720628_ _g2059820632_)))))
                   (let ()
                     (declare (not safe))
                     (_g2059720628_ _g2059820632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2059720628_
                                                      _g2059820632_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2059720628_ _g2059820632_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2059720628_ _g2059820632_)))))
                            (__tmp42284
                             (let ()
                               (declare (not safe))
                               (unchecked-slot-ref
                                _self20510_
                                'expander-identifiers))))
                       (declare (not safe))
                       (_g2059620737_ __tmp42284)))
                   _arg2052820577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2052320557_
                                             _target2052020551_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2051420534_ _g2051520538_))))))
                              (let ()
                                (declare (not safe))
                                (_g2051420534_ _g2051520538_)))))
                      (let ()
                        (declare (not safe))
                        (_g2051420534_ _g2051520538_))))))
          (declare (not safe))
          (_g2051320741_ _stx20512_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20501_)
        (letrec ((_body-opt?20504_
                  (lambda (_key20507_)
                    (memq (gx#stx-e _key20507_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20501_ _body-opt?20504_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19329_
               _id19331_
               _super-ref19332_
               _els19333_
               _body19334_
               _struct?19335_)
        (letrec* ((_wrap19337_
                   (lambda (_e-stx20498_)
                     (gx#stx-wrap-source
                      _e-stx20498_
                      (gx#stx-source _stx19329_))))
                  (_make-id19339_
                   (if (uninterned-symbol? (gx#stx-e _id19331_))
                       (lambda _g42286_ (gx#genident _id19331_))
                       (lambda _args20495_
                         (apply gx#stx-identifier _id19331_ _args20495_)))))
          (gx#check-duplicate-identifiers _els19333_ _stx19329_)
          (let* ((_name19341_ (symbol->string (gx#stx-e _id19331_)))
                 (_super19344_
                  (if _struct?19335_
                      (if _super-ref19332_
                          (gx#syntax-local-value _super-ref19332_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19332_)))
                 (_g1934719355_
                  (lambda (_g1934819351_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1934819351_)))
                 (_g1934620489_
                  (lambda (_g1934819359_)
                    ((lambda (_L19362_)
                       (let ()
                         (let* ((_g1937819386_
                                 (lambda (_g1937919382_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1937919382_)))
                                (_g1937720485_
                                 (lambda (_g1937919390_)
                                   ((lambda (_L19393_)
                                      (let ()
                                        (let* ((_g1940619414_
                                                (lambda (_g1940719410_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1940719410_)))
                                               (_g1940520481_
                                                (lambda (_g1940719418_)
                                                  ((lambda (_L19421_)
                                                     (let ()
                                                       (let* ((_g1943419442_
                                                               (lambda (_g1943519438_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1943519438_)))
                      (_g1943320477_
                       (lambda (_g1943519446_)
                         ((lambda (_L19449_)
                            (let ()
                              (let* ((_g1946219470_
                                      (lambda (_g1946319466_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1946319466_)))
                                     (_g1946120473_
                                      (lambda (_g1946319474_)
                                        ((lambda (_L19477_)
                                           (let ()
                                             (let* ((_g1949019498_
                                                     (lambda (_g1949119494_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1949119494_)))
                                                    (_g1948920469_
                                                     (lambda (_g1949119502_)
                                                       ((lambda (_L19505_)
                                                          (let ()
                                                            (let* ((_g1951819535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1951919531_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1951919531_)))
                           (_g1951720465_
                            (lambda (_g1951919539_)
                              (if (gx#stx-pair/null? _g1951919539_)
                                  (let ((_g42287_
                                         (gx#syntax-split-splice
                                          _g1951919539_
                                          '0)))
                                    (begin
                                      (let ((_g42288_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42287_)
                                                   (##vector-length _g42287_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42288_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42288_)))
                                      (let ((_target1952119542_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42287_ 0)))
                                            (_tl1952319545_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42287_ 1))))
                                        (if (gx#stx-null? _tl1952319545_)
                                            (letrec ((_loop1952419548_
                                                      (lambda (_hd1952219552_
                                                               _attr1952819555_)
                                                        (if (gx#stx-pair?
                                                             _hd1952219552_)
                                                            (let ((_e1952519558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1952219552_)))
                      (let ((_lp-hd1952619562_
                             (let ()
                               (declare (not safe))
                               (##car _e1952519558_)))
                            (_lp-tl1952719565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1952519558_))))
                        (let ((__tmp42316
                               (cons _lp-hd1952619562_ _attr1952819555_)))
                          (declare (not safe))
                          (_loop1952419548_ _lp-tl1952719565_ __tmp42316))))
                    (let ((_attr1952919568_ (reverse _attr1952819555_)))
                      ((lambda (_L19572_)
                         (let ()
                           (let* ((_g1958919606_
                                   (lambda (_g1959019602_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1959019602_)))
                                  (_g1958820456_
                                   (lambda (_g1959019610_)
                                     (if (gx#stx-pair/null? _g1959019610_)
                                         (let ((_g42289_
                                                (gx#syntax-split-splice
                                                 _g1959019610_
                                                 '0)))
                                           (begin
                                             (let ((_g42290_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42289_)
                                                          (##vector-length
                                                           _g42289_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42290_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42290_)))
                                             (let ((_target1959219613_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42289_
                                                       0)))
                                                   (_tl1959419616_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42289_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl1959419616_)
                                                   (letrec ((_loop1959519619_
                                                             (lambda (_hd1959319623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1959919626_)
                       (if (gx#stx-pair? _hd1959319623_)
                           (let ((_e1959619629_ (gx#syntax-e _hd1959319623_)))
                             (let ((_lp-hd1959719633_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1959619629_)))
                                   (_lp-tl1959819636_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1959619629_))))
                               (let ((__tmp42314
                                      (cons _lp-hd1959719633_
                                            _getf1959919626_)))
                                 (declare (not safe))
                                 (_loop1959519619_
                                  _lp-tl1959819636_
                                  __tmp42314))))
                           (let ((_getf1960019639_ (reverse _getf1959919626_)))
                             ((lambda (_L19643_)
                                (let ()
                                  (let* ((_g1966019677_
                                          (lambda (_g1966119673_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1966119673_)))
                                         (_g1965920447_
                                          (lambda (_g1966119681_)
                                            (if (gx#stx-pair/null?
                                                 _g1966119681_)
                                                (let ((_g42291_
                                                       (gx#syntax-split-splice
                                                        _g1966119681_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42291_)
                         (##vector-length _g42291_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42292_ 2)))
                  (error "Context expects 2 values" _g42292_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1966319684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42291_
                                                              0)))
                                                          (_tl1966519687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42291_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1966519687_)
                                                          (letrec ((_loop1966619690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1966419694_ _setf1967019697_)
                              (if (gx#stx-pair? _hd1966419694_)
                                  (let ((_e1966719700_
                                         (gx#syntax-e _hd1966419694_)))
                                    (let ((_lp-hd1966819704_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1966719700_)))
                                          (_lp-tl1966919707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1966719700_))))
                                      (let ((__tmp42312
                                             (cons _lp-hd1966819704_
                                                   _setf1967019697_)))
                                        (declare (not safe))
                                        (_loop1966619690_
                                         _lp-tl1966919707_
                                         __tmp42312))))
                                  (let ((_setf1967119710_
                                         (reverse _setf1967019697_)))
                                    ((lambda (_L19714_)
                                       (let ()
                                         (let* ((_type-attr19759_
                                                 (if (gx#stx-null? _els19333_)
                                                     '()
                                                     (if _struct?19335_
                                                         (cons 'fields:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L19714_
                                _L19643_
                                _L19572_)
                               (foldr (lambda (_g1973019735_
                                               _g1973119738_
                                               _g1973219740_
                                               _g1973319742_)
                                        (cons (cons _g1973219740_
                                                    (cons _g1973119738_
                                                          (cons _g1973019735_
                                                                '())))
                                              _g1973319742_))
                                      '()
                                      _L19714_
                                      _L19643_
                                      _L19572_))
                             '()))
                 (cons 'slots:
                       (cons (begin
                               (gx#syntax-check-splice-targets
                                _L19714_
                                _L19643_
                                _L19572_)
                               (foldr (lambda (_g1974419749_
                                               _g1974519752_
                                               _g1974619754_
                                               _g1974719756_)
                                        (cons (cons _g1974619754_
                                                    (cons _g1974519752_
                                                          (cons _g1974419749_
                                                                '())))
                                              _g1974719756_))
                                      '()
                                      _L19714_
                                      _L19643_
                                      _L19572_))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19766_
                                                 (cons 'name:
                                                       (cons (let ((_$e19762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19334_)))
                       (if _$e19762_ _$e19762_ _id19331_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19781_
                                                 (let ((_$e19777_
                                                        (let ((_e1976819770_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19334_)))
                                                          (if _e1976819770_
                                                              (let ((_e19774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1976819770_))
                        (cons 'id: (cons _e19774_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19777_
                                                       _$e19777_
                                                       '())))
                                                (_type-ctor19796_
                                                 (let ((_$e19792_
                                                        (let ((_e1978319785_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19334_)))
                                                          (if _e1978319785_
                                                              (let ((_e19789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1978319785_))
                        (cons 'constructor: (cons _e19789_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19792_
                                                       _$e19792_
                                                       '())))
                                                (_plist19840_
                                                 (let* ((_plist19803_
                                                         (let ((_$e19799_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'plist:
                         _body19334_)))
                   (if _$e19799_ _$e19799_ '())))
                (_plist19806_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19334_))
                     (cons (cons 'transparent: '#t) _plist19803_)
                     _plist19803_))
                (_plist19809_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19334_))
                     (cons (cons 'final: '#t) _plist19806_)
                     _plist19806_))
                (_plist19822_
                 (let ((_$e19812_
                        (gx#stx-e (gx#stx-getq 'print: _body19334_))))
                   (if _$e19812_
                       ((lambda (_print19816_)
                          (let ((_print19819_
                                 (if (eq? _print19816_ '#t)
                                     _els19333_
                                     _print19816_)))
                            (cons (cons 'print: _print19819_) _plist19809_)))
                        _$e19812_)
                       _plist19809_)))
                (_plist19835_
                 (let ((_$e19825_
                        (gx#stx-e (gx#stx-getq 'equal: _body19334_))))
                   (if _$e19825_
                       ((lambda (_equal19829_)
                          (let ((_equal19832_
                                 (if (eq? _equal19829_ '#t)
                                     _els19333_
                                     _equal19829_)))
                            (cons (cons 'equal: _equal19832_) _plist19822_)))
                        _$e19825_)
                       _plist19822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _plist19835_))
                                                (_type-plist19880_
                                                 (if (null? _plist19840_)
                                                     _plist19840_
                                                     (let* ((_g1984319851_
                                                             (lambda (_g1984419847_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1984419847_)))
                                                            (_g1984219876_
                                                             (lambda (_g1984419855_)
                                                               ((lambda (_L19858_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'plist:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19858_ '()))
                                        '()))))
                        _g1984419855_))))
               (declare (not safe))
               (_g1984219876_ _plist19840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19895_
                                                 (let ((_$e19891_
                                                        (let ((_e1988219884_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19334_)))
                                                          (if _e1988219884_
                                                              (let ((_e19888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1988219884_))
                        (cons 'unchecked: (cons _e19888_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19891_
                                                       _$e19891_
                                                       '())))
                                                (_g1989819915_
                                                 (lambda (_g1989919911_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1989919911_)))
                                                (_g1989720443_
                                                 (lambda (_g1989919919_)
                                                   (if (gx#stx-pair/null?
                                                        _g1989919919_)
                                                       (let ((_g42293_
                                                              (gx#syntax-split-splice
                                                               _g1989919919_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42293_)
                                (##vector-length _g42293_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42294_ 2)))
                         (error "Context expects 2 values" _g42294_)))
                   (let ((_target1990119922_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42293_ 0)))
                         (_tl1990319925_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42293_ 1))))
                     (if (gx#stx-null? _tl1990319925_)
                         (letrec ((_loop1990419928_
                                   (lambda (_hd1990219932_
                                            _type-body1990819935_)
                                     (if (gx#stx-pair? _hd1990219932_)
                                         (let ((_e1990519938_
                                                (gx#syntax-e _hd1990219932_)))
                                           (let ((_lp-hd1990619942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1990519938_)))
                                                 (_lp-tl1990719945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1990519938_))))
                                             (let ((__tmp42310
                                                    (cons _lp-hd1990619942_
                                                          _type-body1990819935_)))
                                               (declare (not safe))
                                               (_loop1990419928_
                                                _lp-tl1990719945_
                                                __tmp42310))))
                                         (let ((_type-body1990919948_
                                                (reverse _type-body1990819935_)))
                                           ((lambda (_L19952_)
                                              (let ()
                                                (let* ((_g1996919977_
                                                        (lambda (_g1997019973_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1997019973_)))
                                                       (_g1996820431_
                                                        (lambda (_g1997019981_)
                                                          ((lambda (_L19984_)
                                                             (let ()
                                                               (let* ((_g1999720005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1999820001_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1999820001_)))
                              (_g1999620427_
                               (lambda (_g1999820009_)
                                 ((lambda (_L20012_)
                                    (let ()
                                      (let* ((_g2002520033_
                                              (lambda (_g2002620029_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2002620029_)))
                                             (_g2002420341_
                                              (lambda (_g2002620037_)
                                                ((lambda (_L20040_)
                                                   (let ()
                                                     (let* ((_g2005320061_
                                                             (lambda (_g2005420057_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005420057_)))
                                                            (_g2005220337_
                                                             (lambda (_g2005420065_)
                                                               ((lambda (_L20068_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2008120089_
                                    (lambda (_g2008220085_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2008220085_)))
                                   (_g2008020333_
                                    (lambda (_g2008220093_)
                                      ((lambda (_L20096_)
                                         (let ()
                                           (let* ((_g2010920117_
                                                   (lambda (_g2011020113_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2011020113_)))
                                                  (_g2010820291_
                                                   (lambda (_g2011020121_)
                                                     ((lambda (_L20124_)
                                                        (let ()
                                                          (let* ((_g2013720145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2013820141_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2013820141_)))
                         (_g2013620287_
                          (lambda (_g2013820149_)
                            ((lambda (_L20152_)
                               (let ()
                                 (let* ((_g2016520173_
                                         (lambda (_g2016620169_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2016620169_)))
                                        (_g2016420283_
                                         (lambda (_g2016620177_)
                                           ((lambda (_L20180_)
                                              (let ()
                                                (let* ((_g2019320201_
                                                        (lambda (_g2019420197_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2019420197_)))
                                                       (_g2019220279_
                                                        (lambda (_g2019420205_)
                                                          ((lambda (_L20208_)
                                                             (let ()
                                                               (let* ((_g2022120229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2022220225_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2022220225_)))
                              (_g2022020251_
                               (lambda (_g2022220233_)
                                 ((lambda (_L20236_)
                                    (let ()
                                      (let ()
                                        (let ((__tmp42295
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons _L19984_
                                                           (cons _L20236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_wrap19337_ __tmp42295)))))
                                  _g2022220233_)))
                              (__tmp42296
                               (let ((__tmp42297
                                      (cons (gx#datum->syntax '#f 'defsyntax)
                                            (cons _L19393_
                                                  (cons (cons _L20012_
                                                              (cons 'runtime-identifier:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L19421_ '()))
                                  (cons 'expander-identifiers:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons _L20040_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _L19421_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _L19449_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L19477_ '()))
                                    (cons (cons (gx#datum->syntax '#f '@list)
                                                (foldr (lambda (_g2025820261_
                                                                _g2025920264_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _g2025820261_ '()))
                       _g2025920264_))
               '()
               _L19643_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (foldr (lambda (_g2025620267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2025720270_)
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _g2025620267_ '()))
                             _g2025720270_))
                     '()
                     _L19714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons 'type-exhibitor:
                                                    (cons (cons _L20068_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L20096_ '()))
                              (cons _L20124_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L20152_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L20180_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L20208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons (foldr (lambda (_g2025420273_ _g2025520276_)
                                         (cons _g2025420273_ _g2025520276_))
                                       '()
                                       _L19572_)
                                '()))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_wrap19337_ __tmp42297))))
                         (declare (not safe))
                         (_g2022020251_ __tmp42296))))
                   _g2019420205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g2019220279_
                                                   _plist19840_))))
                                            _g2016620177_)))
                                        (__tmp42298
                                         (if (not (null? _type-ctor19796_))
                                             (cadr _type-ctor19796_)
                                             '#f)))
                                   (declare (not safe))
                                   (_g2016420283_ __tmp42298))))
                             _g2013820149_)))
                         (__tmp42299 (cadr _type-name19766_)))
                    (declare (not safe))
                    (_g2013620287_ __tmp42299))))
              _g2011020121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp42300
                                                   (let ((_quote-e20330_
                                                          (lambda (_x-ref20295_)
                                                            (if _x-ref20295_
                                                                (let* ((_g2029820306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2029920302_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2029920302_)))
                               (_g2029720326_
                                (lambda (_g2029920310_)
                                  ((lambda (_L20313_)
                                     (let ()
                                       (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _L20313_ '()))))
                                   _g2029920310_))))
                          (declare (not safe))
                          (_g2029720326_ _x-ref20295_))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _struct?19335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (_quote-e20330_
                                                            _super-ref19332_))
                                                         (cons 'list
                                                               (map _quote-e20330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super-ref19332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_g2010820291_ __tmp42300))))
                                       _g2008220093_)))
                                   (__tmp42301
                                    (if (not (null? _type-id19781_))
                                        (cadr _type-id19781_)
                                        '#f)))
                              (declare (not safe))
                              (_g2008020333_ __tmp42301))))
                        _g2005420065_)))
                    (__tmp42302
                     (if _struct?19335_
                         (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                         (gx#datum->syntax
                          '#f
                          'make-runtime-class-exhibitor))))
               (declare (not safe))
               (_g2005220337_ __tmp42302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2002620037_)))
                                             (__tmp42303
                                              (if _struct?19335_
                                                  (if _super19344_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _L19505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_g2034520362_
                                                          (lambda (_g2034620358_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2034620358_)))
                                                         (_g2034420423_
                                                          (lambda (_g2034620366_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2034620366_)
                        (let ((_g42304_
                               (gx#syntax-split-splice _g2034620366_ '0)))
                          (begin
                            (let ((_g42305_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42304_)
                                         (##vector-length _g42304_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42305_ 2)))
                                  (error "Context expects 2 values" _g42305_)))
                            (let ((_target2034820369_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42304_ 0)))
                                  (_tl2035020372_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42304_ 1))))
                              (if (gx#stx-null? _tl2035020372_)
                                  (letrec ((_loop2035120375_
                                            (lambda (_hd2034920379_
                                                     _super-id2035520382_)
                                              (if (gx#stx-pair? _hd2034920379_)
                                                  (let ((_e2035220385_
                                                         (gx#syntax-e
                                                          _hd2034920379_)))
                                                    (let ((_lp-hd2035320389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2035220385_)))
                                                          (_lp-tl2035420392_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2035220385_))))
                                                      (let ((__tmp42306
                                                             (cons _lp-hd2035320389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _super-id2035520382_)))
                (declare (not safe))
                (_loop2035120375_ _lp-tl2035420392_ __tmp42306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_super-id2035620395_
                                                         (reverse _super-id2035520382_)))
                                                    ((lambda (_L20399_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_g2041420417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2041520420_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g2041420417_ '()))
                                      _g2041520420_))
                              '()
                              _L20399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _super-id2035620395_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2035120375_
                                       _target2034820369_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g2034520362_ _g2034620366_))))))
                        (let ()
                          (declare (not safe))
                          (_g2034520362_ _g2034620366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2034420423_
                                                     _L19505_)))))
                                        (declare (not safe))
                                        (_g2002420341_ __tmp42303))))
                                  _g1999820009_)))
                              (__tmp42307
                               (if _struct?19335_
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-struct-info)
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-class-info))))
                         (declare (not safe))
                         (_g1999620427_ __tmp42307))))
                   _g1997019981_)))
               (__tmp42308
                (let ((__tmp42309
                       (cons _L19362_
                             (cons _L19421_
                                   (cons _L19505_
                                         (cons _L19449_
                                               (cons _L19477_
                                                     (foldr (lambda (_g2043420437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2043520440_)
                      (cons _g2043420437_ _g2043520440_))
                    '()
                    _L19952_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (declare (not safe))
                  (_wrap19337_ __tmp42309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g1996820431_ __tmp42308))))
                                            _type-body1990919948_))))))
                           (let ()
                             (declare (not safe))
                             (_loop1990419928_ _target1990119922_ '())))
                         (let ()
                           (declare (not safe))
                           (_g1989819915_ _g1989919919_))))))
               (let () (declare (not safe)) (_g1989819915_ _g1989919919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp42311
                                                 (foldr cons
                                                        (foldr cons
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr cons
                                     (foldr cons
                                            _type-unchecked19895_
                                            _type-plist19880_)
                                     _type-ctor19796_)
                              _type-name19766_)
                       _type-id19781_)
                _type-attr19759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g1989720443_ __tmp42311))))
                                     _setf1967119710_))))))
                    (let ()
                      (declare (not safe))
                      (_loop1966619690_ _target1966319684_ '())))
                  (let ()
                    (declare (not safe))
                    (_g1966019677_ _g1966119681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1966019677_
                                                   _g1966119681_)))))
                                         (__tmp42313
                                          (gx#stx-map
                                           (lambda (_g2045020452_)
                                             (_make-id19339_
                                              _name19341_
                                              '"-"
                                              _g2045020452_
                                              '"-set!"))
                                           _els19333_)))
                                    (declare (not safe))
                                    (_g1965920447_ __tmp42313))))
                              _getf1960019639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop1959519619_
                                                        _target1959219613_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1958919606_
                                                      _g1959019610_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1958919606_ _g1959019610_)))))
                                  (__tmp42315
                                   (gx#stx-map
                                    (lambda (_g2045920461_)
                                      (_make-id19339_
                                       _name19341_
                                       '"-"
                                       _g2045920461_))
                                    _els19333_)))
                             (declare (not safe))
                             (_g1958820456_ __tmp42315))))
                       _attr1952919568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1952419548_
                                                 _target1952119542_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1951819535_
                                               _g1951919539_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1951819535_ _g1951919539_))))))
                      (declare (not safe))
                      (_g1951720465_ _els19333_))))
                _g1949119502_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp42317
                                                     (if _struct?19335_
                                                         (if _super19344_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-slot-ref _super19344_ 'runtime-identifier))
                     '#f)
                 (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                      _super19344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1948920469_ __tmp42317))))
                                         _g1946319474_)))
                                     (__tmp42318
                                      (_make-id19339_ _name19341_ '"?")))
                                (declare (not safe))
                                (_g1946120473_ __tmp42318))))
                          _g1943519446_)))
                      (__tmp42319 (_make-id19339_ '"make-" _name19341_)))
                 (declare (not safe))
                 (_g1943320477_ __tmp42319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1940719418_)))
                                               (__tmp42320
                                                (_make-id19339_
                                                 _name19341_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1940520481_ __tmp42320))))
                                    _g1937919390_))))
                           (declare (not safe))
                           (_g1937720485_ _id19331_))))
                     _g1934819359_)))
                 (__tmp42321
                  (if _struct?19335_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1934620489_ __tmp42321)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20817_)
        (letrec ((_generate20820_
                  (lambda (_hd20904_ _fields20906_ _body20907_)
                    (let* ((___stx3917739178_ _hd20904_)
                           (_g2091020925_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3917739178_))))
                      (let ((___kont3918039181_
                             (lambda (_L20963_ _L20965_)
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20817_
                                  _L20965_
                                  _L20963_
                                  _fields20906_
                                  _body20907_
                                  '#t))))
                            (___kont3918239183_
                             (lambda ()
                               (if (gx#identifier? _hd20904_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20817_
                                      _hd20904_
                                      '#f
                                      _fields20906_
                                      _body20907_
                                      '#t))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20817_
                                    _hd20904_)))))
                        (let ((___match3919839199_
                               (lambda (_e2091620943_
                                        _hd2091520947_
                                        _tl2091420950_
                                        _e2091920953_
                                        _hd2091820957_
                                        _tl2091720960_)
                                 (let ((_L20963_ _hd2091820957_)
                                       (_L20965_ _hd2091520947_))
                                   (if (and (gx#identifier? _L20965_)
                                            (let ()
                                              (declare (not safe))
                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                               _L20963_)))
                                       (___kont3918039181_ _L20963_ _L20965_)
                                       (___kont3918239183_))))))
                          (if (gx#stx-pair? ___stx3917739178_)
                              (let ((_e2091620943_
                                     (gx#syntax-e ___stx3917739178_)))
                                (let ((_tl2091420950_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2091620943_)))
                                      (_hd2091520947_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2091620943_))))
                                  (if (gx#stx-pair? _tl2091420950_)
                                      (let ((_e2091920953_
                                             (gx#syntax-e _tl2091420950_)))
                                        (let ((_tl2091720960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2091920953_)))
                                              (_hd2091820957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2091920953_))))
                                          (if (gx#stx-null? _tl2091720960_)
                                              (___match3919839199_
                                               _e2091620943_
                                               _hd2091520947_
                                               _tl2091420950_
                                               _e2091920953_
                                               _hd2091820957_
                                               _tl2091720960_)
                                              (___kont3918239183_))))
                                      (___kont3918239183_))))
                              (___kont3918239183_))))))))
          (let* ((_g2082320842_
                  (lambda (_g2082420838_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2082420838_)))
                 (_g2082220900_
                  (lambda (_g2082420846_)
                    (if (gx#stx-pair? _g2082420846_)
                        (let ((_e2083020849_ (gx#syntax-e _g2082420846_)))
                          (let ((_hd2082920853_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2083020849_)))
                                (_tl2082820856_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2083020849_))))
                            (if (gx#stx-pair? _tl2082820856_)
                                (let ((_e2083320859_
                                       (gx#syntax-e _tl2082820856_)))
                                  (let ((_hd2083220863_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2083320859_)))
                                        (_tl2083120866_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2083320859_))))
                                    (if (gx#stx-pair? _tl2083120866_)
                                        (let ((_e2083620869_
                                               (gx#syntax-e _tl2083120866_)))
                                          (let ((_hd2083520873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2083620869_)))
                                                (_tl2083420876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2083620869_))))
                                            ((lambda (_L20879_
                                                      _L20881_
                                                      _L20882_)
                                               (if (and (gx#identifier-list?
                                                         _L20881_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L20879_)))
                                                   (_generate20820_
                                                    _L20882_
                                                    _L20881_
                                                    _L20879_)
                                                   (_g2082320842_
                                                    _g2082420846_)))
                                             _tl2083420876_
                                             _hd2083520873_
                                             _hd2083220863_)))
                                        (_g2082320842_ _g2082420846_))))
                                (_g2082320842_ _g2082420846_))))
                        (_g2082320842_ _g2082420846_)))))
            (_g2082220900_ _stx20817_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20984_)
        (letrec ((_generate20987_
                  (lambda (_hd21071_ _slots21073_ _body21074_)
                    (let* ((___stx3920139202_ _hd21071_)
                           (_g2107721089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3920139202_))))
                      (let ((___kont3920439205_
                             (lambda (_L21117_ _L21119_)
                               (let ((__tmp42322 (gx#syntax->list _L21117_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20984_
                                  _L21119_
                                  __tmp42322
                                  _slots21073_
                                  _body21074_
                                  '#f))))
                            (___kont3920639207_
                             (lambda ()
                               (if (gx#identifier? _hd21071_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20984_
                                      _hd21071_
                                      '()
                                      _slots21073_
                                      _body21074_
                                      '#f))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20984_
                                    _hd21071_)))))
                        (let ((___match3921439215_
                               (lambda (_e2108321107_
                                        _hd2108221111_
                                        _tl2108121114_)
                                 (let ((_L21117_ _tl2108121114_)
                                       (_L21119_ _hd2108221111_))
                                   (if (and (gx#stx-list? _L21117_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21117_))
                                       (___kont3920439205_ _L21117_ _L21119_)
                                       (___kont3920639207_))))))
                          (if (gx#stx-pair? ___stx3920139202_)
                              (let ((_e2108321107_
                                     (gx#syntax-e ___stx3920139202_)))
                                (let ((_tl2108121114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2108321107_)))
                                      (_hd2108221111_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2108321107_))))
                                  (___match3921439215_
                                   _e2108321107_
                                   _hd2108221111_
                                   _tl2108121114_)))
                              (___kont3920639207_))))))))
          (let* ((_g2099021009_
                  (lambda (_g2099121005_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2099121005_)))
                 (_g2098921067_
                  (lambda (_g2099121013_)
                    (if (gx#stx-pair? _g2099121013_)
                        (let ((_e2099721016_ (gx#syntax-e _g2099121013_)))
                          (let ((_hd2099621020_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2099721016_)))
                                (_tl2099521023_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2099721016_))))
                            (if (gx#stx-pair? _tl2099521023_)
                                (let ((_e2100021026_
                                       (gx#syntax-e _tl2099521023_)))
                                  (let ((_hd2099921030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2100021026_)))
                                        (_tl2099821033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2100021026_))))
                                    (if (gx#stx-pair? _tl2099821033_)
                                        (let ((_e2100321036_
                                               (gx#syntax-e _tl2099821033_)))
                                          (let ((_hd2100221040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2100321036_)))
                                                (_tl2100121043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2100321036_))))
                                            ((lambda (_L21046_
                                                      _L21048_
                                                      _L21049_)
                                               (if (and (gx#identifier-list?
                                                         _L21048_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L21046_)))
                                                   (_generate20987_
                                                    _L21049_
                                                    _L21048_
                                                    _L21046_)
                                                   (_g2099021009_
                                                    _g2099121013_)))
                                             _tl2100121043_
                                             _hd2100221040_
                                             _hd2099921030_)))
                                        (_g2099021009_ _g2099121013_))))
                                (_g2099021009_ _g2099121013_))))
                        (_g2099021009_ _g2099121013_)))))
            (_g2098921067_ _stx20984_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21136_)
        (letrec ((_wrap21139_
                  (lambda (_e-stx21476_)
                    (gx#stx-wrap-source
                     _e-stx21476_
                     (gx#stx-source _stx21136_))))
                 (_method-opt?21141_
                  (lambda (_x21473_) (memq (gx#stx-e _x21473_) '(rebind:)))))
          (let* ((_g2114321172_
                  (lambda (_g2114421168_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2114421168_)))
                 (_g2114221469_
                  (lambda (_g2114421176_)
                    (if (gx#stx-pair? _g2114421176_)
                        (let ((_e2115121179_ (gx#syntax-e _g2114421176_)))
                          (let ((_hd2115021183_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2115121179_)))
                                (_tl2114921186_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2115121179_))))
                            (if (gx#stx-pair? _tl2114921186_)
                                (let ((_e2115421189_
                                       (gx#syntax-e _tl2114921186_)))
                                  (let ((_hd2115321193_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2115421189_)))
                                        (_tl2115221196_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2115421189_))))
                                    (if (gx#stx-pair? _hd2115321193_)
                                        (let ((_e2115721199_
                                               (gx#syntax-e _hd2115321193_)))
                                          (let ((_hd2115621203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2115721199_)))
                                                (_tl2115521206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2115721199_))))
                                            (if (gx#identifier? _hd2115621203_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g42323_|
                                                     _hd2115621203_)
                                                    (if (gx#stx-pair?
                                                         _tl2115521206_)
                                                        (let ((_e2116021209_
                                                               (gx#syntax-e
                                                                _tl2115521206_)))
                                                          (let ((_hd2115921213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2116021209_)))
                        (_tl2115821216_
                         (let () (declare (not safe)) (##cdr _e2116021209_))))
                    (if (gx#stx-pair? _tl2115821216_)
                        (let ((_e2116321219_ (gx#syntax-e _tl2115821216_)))
                          (let ((_hd2116221223_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2116321219_)))
                                (_tl2116121226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2116321219_))))
                            (if (gx#stx-null? _tl2116121226_)
                                (if (gx#stx-pair? _tl2115221196_)
                                    (let ((_e2116621229_
                                           (gx#syntax-e _tl2115221196_)))
                                      (let ((_hd2116521233_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2116621229_)))
                                            (_tl2116421236_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2116621229_))))
                                        ((lambda (_L21239_
                                                  _L21241_
                                                  _L21242_
                                                  _L21243_)
                                           (if (and (gx#identifier? _L21243_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                       _L21242_))
                                                    (gx#stx-plist?
                                                     _L21239_
                                                     _method-opt?21141_))
                                               (let* ((_klass21268_
                                                       (gx#syntax-local-value
                                                        _L21242_))
                                                      (_rebind?21271_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21239_))
                                                           '#t
                                                           '#f))
                                                      (_g2127421282_
                                                       (lambda (_g2127521278_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2127521278_)))
                                                      (_g2127321465_
                                                       (lambda (_g2127521286_)
                                                         ((lambda (_L21289_)
                                                            (let ()
                                                              (let* ((_g2130321311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2130421307_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2130421307_)))
                             (_g2130221461_
                              (lambda (_g2130421315_)
                                ((lambda (_L21318_)
                                   (let ()
                                     (let* ((_g2133121339_
                                             (lambda (_g2133221335_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2133221335_)))
                                            (_g2133021457_
                                             (lambda (_g2133221343_)
                                               ((lambda (_L21346_)
                                                  (let ()
                                                    (let* ((_g2135921367_
                                                            (lambda (_g2136021363_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2136021363_)))
                                                           (_g2135821453_
                                                            (lambda (_g2136021371_)
                                                              ((lambda (_L21374_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2138721395_
                                   (lambda (_g2138821391_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2138821391_)))
                                  (_g2138621449_
                                   (lambda (_g2138821399_)
                                     ((lambda (_L21402_)
                                        (let ()
                                          (let* ((_g2141521423_
                                                  (lambda (_g2141621419_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2141621419_)))
                                                 (_g2141421445_
                                                  (lambda (_g2141621427_)
                                                    ((lambda (_L21430_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21139_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21374_ (cons _L21430_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2141621427_))))
                                            (_g2141421445_
                                             (_wrap21139_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21289_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21243_ '()))
                        (cons _L21318_ (cons _L21402_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2138821399_))))
                             (_g2138621449_ _rebind?21271_))))
                       _g2136021371_))))
              (_g2135821453_
               (_wrap21139_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21318_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21346_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons '()
                                    (cons (cons (cons (gx#datum->syntax '#f '_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'obj)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'arg)
                          (cons (gx#datum->syntax '#f '...) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'call-next-method)
                                                            (cons _L21289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21243_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21241_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2133221343_))))
                                       (_g2133021457_
                                        (gx#stx-identifier
                                         _L21243_
                                         '@next-method)))))
                                 _g2130421315_))))
                        (_g2130221461_
                         (gx#stx-identifier
                          _L21243_
                          _L21242_
                          '"::"
                          _L21243_)))))
                  _g2127521286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2127321465_
                                                  (let ()
                                                    (declare (not safe))
                                                    (unchecked-slot-ref
                                                     _klass21268_
                                                     'runtime-identifier))))
                                               (if (not (gx#identifier?
                                                         _L21243_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21136_
                                                    _L21243_)
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                               _L21242_)))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21136_
                                                        _L21242_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21136_)))))
                                         _tl2116421236_
                                         _hd2116521233_
                                         _hd2116221223_
                                         _hd2115921213_)))
                                    (_g2114321172_ _g2114421176_))
                                (_g2114321172_ _g2114421176_))))
                        (_g2114321172_ _g2114421176_))))
                (_g2114321172_ _g2114421176_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2114321172_
                                                     _g2114421176_))
                                                (_g2114321172_
                                                 _g2114421176_))))
                                        (_g2114321172_ _g2114421176_))))
                                (_g2114321172_ _g2114421176_))))
                        (_g2114321172_ _g2114421176_)))))
            (_g2114221469_ _stx21136_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21479_)
        (let* ((___stx3921739218_ _$stx21479_)
               (_g2148421533_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3921739218_))))
          (let ((___kont3922039221_
                 (lambda (_L21699_ _L21701_ _L21702_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21701_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21702_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (foldr (lambda (_g2172921732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2173021735_)
                        (cons _g2172921732_ _g2173021735_))
                      '()
                      _L21699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3922439225_
                 (lambda (_L21600_ _L21602_ _L21603_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21602_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21603_ '()))
                                     (foldr (lambda (_g2162321626_
                                                     _g2162421629_)
                                              (cons _g2162321626_
                                                    _g2162421629_))
                                            '()
                                            _L21600_)))))))
            (let* ((___match3928039281_
                    (lambda (_e2151221540_
                             _hd2151121544_
                             _tl2151021547_
                             _e2151521550_
                             _hd2151421554_
                             _tl2151321557_
                             _e2151821560_
                             _hd2151721564_
                             _tl2151621567_
                             ___splice3922639227_
                             _target2151921570_
                             _tl2152121573_)
                      (letrec ((_loop2152221576_
                                (lambda (_hd2152021580_ _arg2152621583_)
                                  (if (gx#stx-pair? _hd2152021580_)
                                      (let ((_e2152321586_
                                             (gx#syntax-e _hd2152021580_)))
                                        (let ((_lp-tl2152521593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2152321586_)))
                                              (_lp-hd2152421590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2152321586_))))
                                          (_loop2152221576_
                                           _lp-tl2152521593_
                                           (cons _lp-hd2152421590_
                                                 _arg2152621583_))))
                                      (let ((_arg2152721596_
                                             (reverse _arg2152621583_)))
                                        (let ((_L21600_ _arg2152721596_)
                                              (_L21602_ _hd2151721564_)
                                              (_L21603_ _hd2151421554_))
                                          (if (gx#identifier? _L21603_)
                                              (___kont3922439225_
                                               _L21600_
                                               _L21602_
                                               _L21603_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2148421533_)))))))))
                        (_loop2152221576_ _target2151921570_ '()))))
                   (___match3925439255_
                    (lambda (_e2149121639_
                             _hd2149021643_
                             _tl2148921646_
                             _e2149421649_
                             _hd2149321653_
                             _tl2149221656_
                             _e2149721659_
                             _hd2149621663_
                             _tl2149521666_
                             ___splice3922239223_
                             _target2149821669_
                             _tl2150021672_)
                      (letrec ((_loop2150121675_
                                (lambda (_hd2149921679_ _arg2150521682_)
                                  (if (gx#stx-pair? _hd2149921679_)
                                      (let ((_e2150221685_
                                             (gx#syntax-e _hd2149921679_)))
                                        (let ((_lp-tl2150421692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2150221685_)))
                                              (_lp-hd2150321689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2150221685_))))
                                          (_loop2150121675_
                                           _lp-tl2150421692_
                                           (cons _lp-hd2150321689_
                                                 _arg2150521682_))))
                                      (let ((_arg2150621695_
                                             (reverse _arg2150521682_)))
                                        (let ((_L21699_ _arg2150621695_)
                                              (_L21701_ _hd2149621663_)
                                              (_L21702_ _hd2149321653_))
                                          (if (and (gx#identifier? _L21702_)
                                                   (gx#stx-ormap
                                                    gx#ellipsis?
                                                    (foldr (lambda (_g2172121724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2172221727_)
                     (cons _g2172121724_ _g2172221727_))
                   '()
                   _L21699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont3922039221_
                                               _L21699_
                                               _L21701_
                                               _L21702_)
                                              (___match3928039281_
                                               _e2149121639_
                                               _hd2149021643_
                                               _tl2148921646_
                                               _e2149421649_
                                               _hd2149321653_
                                               _tl2149221656_
                                               _e2149721659_
                                               _hd2149621663_
                                               _tl2149521666_
                                               ___splice3922239223_
                                               _target2149821669_
                                               _tl2150021672_))))))))
                        (_loop2150121675_ _target2149821669_ '())))))
              (if (gx#stx-pair? ___stx3921739218_)
                  (let ((_e2149121639_ (gx#syntax-e ___stx3921739218_)))
                    (let ((_tl2148921646_
                           (let () (declare (not safe)) (##cdr _e2149121639_)))
                          (_hd2149021643_
                           (let ()
                             (declare (not safe))
                             (##car _e2149121639_))))
                      (if (gx#stx-pair? _tl2148921646_)
                          (let ((_e2149421649_ (gx#syntax-e _tl2148921646_)))
                            (let ((_tl2149221656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2149421649_)))
                                  (_hd2149321653_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2149421649_))))
                              (if (gx#stx-pair? _tl2149221656_)
                                  (let ((_e2149721659_
                                         (gx#syntax-e _tl2149221656_)))
                                    (let ((_tl2149521666_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2149721659_)))
                                          (_hd2149621663_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2149721659_))))
                                      (if (gx#stx-pair/null? _tl2149521666_)
                                          (let ((___splice3922239223_
                                                 (gx#syntax-split-splice
                                                  _tl2149521666_
                                                  '0)))
                                            (let ((_tl2150021672_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3922239223_
                                                      '1)))
                                                  (_target2149821669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice3922239223_
                                                      '0))))
                                              (if (gx#stx-null? _tl2150021672_)
                                                  (___match3925439255_
                                                   _e2149121639_
                                                   _hd2149021643_
                                                   _tl2148921646_
                                                   _e2149421649_
                                                   _hd2149321653_
                                                   _tl2149221656_
                                                   _e2149721659_
                                                   _hd2149621663_
                                                   _tl2149521666_
                                                   ___splice3922239223_
                                                   _target2149821669_
                                                   _tl2150021672_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2148421533_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2148421533_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2148421533_)))))
                          (let () (declare (not safe)) (_g2148421533_)))))
                  (let () (declare (not safe)) (_g2148421533_))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21744_)
        (let* ((___stx3928339284_ _$stx21744_)
               (_g2174921789_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3928339284_))))
          (let ((___kont3928639287_
                 (lambda (_L21927_ _L21929_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21929_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21927_ '()))
                                     '())))))
                (___kont3928839289_
                 (lambda (_L21856_ _L21858_ _L21859_ _L21860_)
                   (cons _L21860_
                         (cons (cons _L21860_
                                     (cons _L21859_ (cons _L21858_ '())))
                               (foldr (lambda (_g2188121884_ _g2188221887_)
                                        (cons _g2188121884_ _g2188221887_))
                                      '()
                                      _L21856_))))))
            (let* ((___match3933839339_
                    (lambda (_e2176821796_
                             _hd2176721800_
                             _tl2176621803_
                             _e2177121806_
                             _hd2177021810_
                             _tl2176921813_
                             _e2177421816_
                             _hd2177321820_
                             _tl2177221823_
                             ___splice3929039291_
                             _target2177521826_
                             _tl2177721829_)
                      (letrec ((_loop2177821832_
                                (lambda (_hd2177621836_ _rest2178221839_)
                                  (if (gx#stx-pair? _hd2177621836_)
                                      (let ((_e2177921842_
                                             (gx#syntax-e _hd2177621836_)))
                                        (let ((_lp-tl2178121849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2177921842_)))
                                              (_lp-hd2178021846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2177921842_))))
                                          (_loop2177821832_
                                           _lp-tl2178121849_
                                           (cons _lp-hd2178021846_
                                                 _rest2178221839_))))
                                      (let ((_rest2178321852_
                                             (reverse _rest2178221839_)))
                                        (___kont3928839289_
                                         _rest2178321852_
                                         _hd2177321820_
                                         _hd2177021810_
                                         _hd2176721800_))))))
                        (_loop2177821832_ _target2177521826_ '()))))
                   (___match3931239313_
                    (lambda (_e2175521897_
                             _hd2175421901_
                             _tl2175321904_
                             _e2175821907_
                             _hd2175721911_
                             _tl2175621914_
                             _e2176121917_
                             _hd2176021921_
                             _tl2175921924_)
                      (let ((_L21927_ _hd2176021921_)
                            (_L21929_ _hd2175721911_))
                        (if (gx#identifier? _L21927_)
                            (___kont3928639287_ _L21927_ _L21929_)
                            (if (gx#stx-pair/null? _tl2175921924_)
                                (let ((___splice3929039291_
                                       (gx#syntax-split-splice
                                        _tl2175921924_
                                        '0)))
                                  (let ((_tl2177721829_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3929039291_
                                            '1)))
                                        (_target2177521826_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3929039291_
                                            '0))))
                                    (if (gx#stx-null? _tl2177721829_)
                                        (___match3933839339_
                                         _e2175521897_
                                         _hd2175421901_
                                         _tl2175321904_
                                         _e2175821907_
                                         _hd2175721911_
                                         _tl2175621914_
                                         _e2176121917_
                                         _hd2176021921_
                                         _tl2175921924_
                                         ___splice3929039291_
                                         _target2177521826_
                                         _tl2177721829_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2174921789_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2174921789_))))))))
              (if (gx#stx-pair? ___stx3928339284_)
                  (let ((_e2175521897_ (gx#syntax-e ___stx3928339284_)))
                    (let ((_tl2175321904_
                           (let () (declare (not safe)) (##cdr _e2175521897_)))
                          (_hd2175421901_
                           (let ()
                             (declare (not safe))
                             (##car _e2175521897_))))
                      (if (gx#stx-pair? _tl2175321904_)
                          (let ((_e2175821907_ (gx#syntax-e _tl2175321904_)))
                            (let ((_tl2175621914_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2175821907_)))
                                  (_hd2175721911_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2175821907_))))
                              (if (gx#stx-pair? _tl2175621914_)
                                  (let ((_e2176121917_
                                         (gx#syntax-e _tl2175621914_)))
                                    (let ((_tl2175921924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2176121917_)))
                                          (_hd2176021921_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2176121917_))))
                                      (if (gx#stx-null? _tl2175921924_)
                                          (___match3931239313_
                                           _e2175521897_
                                           _hd2175421901_
                                           _tl2175321904_
                                           _e2175821907_
                                           _hd2175721911_
                                           _tl2175621914_
                                           _e2176121917_
                                           _hd2176021921_
                                           _tl2175921924_)
                                          (if (gx#stx-pair/null?
                                               _tl2175921924_)
                                              (let ((___splice3929039291_
                                                     (gx#syntax-split-splice
                                                      _tl2175921924_
                                                      '0)))
                                                (let ((_tl2177721829_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3929039291_
                                                          '1)))
                                                      (_target2177521826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3929039291_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2177721829_)
                                                      (___match3933839339_
                                                       _e2175521897_
                                                       _hd2175421901_
                                                       _tl2175321904_
                                                       _e2175821907_
                                                       _hd2175721911_
                                                       _tl2175621914_
                                                       _e2176121917_
                                                       _hd2176021921_
                                                       _tl2175921924_
                                                       ___splice3929039291_
                                                       _target2177521826_
                                                       _tl2177721829_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2174921789_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2174921789_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2174921789_)))))
                          (let () (declare (not safe)) (_g2174921789_)))))
                  (let () (declare (not safe)) (_g2174921789_))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21949_)
        (let* ((___stx3934139342_ _$stx21949_)
               (_g2195422006_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3934139342_))))
          (let ((___kont3934439345_
                 (lambda (_L22182_ _L22184_ _L22185_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22185_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22184_ '()))
                                     (cons _L22182_ '()))))))
                (___kont3934639347_
                 (lambda (_L22093_
                          _L22095_
                          _L22096_
                          _L22097_
                          _L22098_
                          _L22099_)
                   (cons _L22099_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22098_
                                           (cons _L22097_
                                                 (foldr (lambda (_g2212622129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2212722132_)
                  (cons _g2212622129_ _g2212722132_))
                '()
                _L22096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22095_ (cons _L22093_ '())))))))
            (let* ((___match3941639417_
                    (lambda (_e2197922013_
                             _hd2197822017_
                             _tl2197722020_
                             _e2198222023_
                             _hd2198122027_
                             _tl2198022030_
                             _e2198522033_
                             _hd2198422037_
                             _tl2198322040_
                             ___splice3934839349_
                             _target2198622043_
                             _tl2198822046_
                             _e2199722049_
                             _hd2199622053_
                             _tl2199522056_
                             _e2200022059_
                             _hd2199922063_
                             _tl2199822066_)
                      (letrec ((_loop2198922069_
                                (lambda (_hd2198722073_ _path2199322076_)
                                  (if (gx#stx-pair? _hd2198722073_)
                                      (let ((_e2199022079_
                                             (gx#syntax-e _hd2198722073_)))
                                        (let ((_lp-tl2199222086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2199022079_)))
                                              (_lp-hd2199122083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2199022079_))))
                                          (_loop2198922069_
                                           _lp-tl2199222086_
                                           (cons _lp-hd2199122083_
                                                 _path2199322076_))))
                                      (let ((_path2199422089_
                                             (reverse _path2199322076_)))
                                        (___kont3934639347_
                                         _hd2199922063_
                                         _hd2199622053_
                                         _path2199422089_
                                         _hd2198422037_
                                         _hd2198122027_
                                         _hd2197822017_))))))
                        (_loop2198922069_ _target2198622043_ '()))))
                   (___match3937639377_
                    (lambda (_e2196122142_
                             _hd2196022146_
                             _tl2195922149_
                             _e2196422152_
                             _hd2196322156_
                             _tl2196222159_
                             _e2196722162_
                             _hd2196622166_
                             _tl2196522169_
                             _e2197022172_
                             _hd2196922176_
                             _tl2196822179_)
                      (let ((_L22182_ _hd2196922176_)
                            (_L22184_ _hd2196622166_)
                            (_L22185_ _hd2196322156_))
                        (if (gx#identifier? _L22184_)
                            (___kont3934439345_ _L22182_ _L22184_ _L22185_)
                            (if (gx#stx-pair/null? _tl2196522169_)
                                (if (fx>= (gx#stx-length _tl2196522169_) '2)
                                    (let ((___splice3934839349_
                                           (gx#syntax-split-splice
                                            _tl2196522169_
                                            '2)))
                                      (let ((_tl2198822046_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3934839349_
                                                '1)))
                                            (_target2198622043_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3934839349_
                                                '0))))
                                        (if (gx#stx-pair? _tl2198822046_)
                                            (let ((_e2199722049_
                                                   (gx#syntax-e
                                                    _tl2198822046_)))
                                              (let ((_tl2199522056_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2199722049_)))
                                                    (_hd2199622053_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2199722049_))))
                                                (if (gx#stx-pair?
                                                     _tl2199522056_)
                                                    (let ((_e2200022059_
                                                           (gx#syntax-e
                                                            _tl2199522056_)))
                                                      (let ((_tl2199822066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2200022059_)))
                    (_hd2199922063_
                     (let () (declare (not safe)) (##car _e2200022059_))))
                (if (gx#stx-null? _tl2199822066_)
                    (___match3941639417_
                     _e2196122142_
                     _hd2196022146_
                     _tl2195922149_
                     _e2196422152_
                     _hd2196322156_
                     _tl2196222159_
                     _e2196722162_
                     _hd2196622166_
                     _tl2196522169_
                     ___splice3934839349_
                     _target2198622043_
                     _tl2198822046_
                     _e2199722049_
                     _hd2199622053_
                     _tl2199522056_
                     _e2200022059_
                     _hd2199922063_
                     _tl2199822066_)
                    (let () (declare (not safe)) (_g2195422006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2195422006_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2195422006_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2195422006_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2195422006_))))))))
              (if (gx#stx-pair? ___stx3934139342_)
                  (let ((_e2196122142_ (gx#syntax-e ___stx3934139342_)))
                    (let ((_tl2195922149_
                           (let () (declare (not safe)) (##cdr _e2196122142_)))
                          (_hd2196022146_
                           (let ()
                             (declare (not safe))
                             (##car _e2196122142_))))
                      (if (gx#stx-pair? _tl2195922149_)
                          (let ((_e2196422152_ (gx#syntax-e _tl2195922149_)))
                            (let ((_tl2196222159_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2196422152_)))
                                  (_hd2196322156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2196422152_))))
                              (if (gx#stx-pair? _tl2196222159_)
                                  (let ((_e2196722162_
                                         (gx#syntax-e _tl2196222159_)))
                                    (let ((_tl2196522169_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2196722162_)))
                                          (_hd2196622166_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2196722162_))))
                                      (if (gx#stx-pair? _tl2196522169_)
                                          (let ((_e2197022172_
                                                 (gx#syntax-e _tl2196522169_)))
                                            (let ((_tl2196822179_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2197022172_)))
                                                  (_hd2196922176_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2197022172_))))
                                              (if (gx#stx-null? _tl2196822179_)
                                                  (___match3937639377_
                                                   _e2196122142_
                                                   _hd2196022146_
                                                   _tl2195922149_
                                                   _e2196422152_
                                                   _hd2196322156_
                                                   _tl2196222159_
                                                   _e2196722162_
                                                   _hd2196622166_
                                                   _tl2196522169_
                                                   _e2197022172_
                                                   _hd2196922176_
                                                   _tl2196822179_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2196522169_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2196522169_)
                        '2)
                  (let ((___splice3934839349_
                         (gx#syntax-split-splice _tl2196522169_ '2)))
                    (let ((_tl2198822046_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3934839349_ '1)))
                          (_target2198622043_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3934839349_ '0))))
                      (if (gx#stx-pair? _tl2198822046_)
                          (let ((_e2199722049_ (gx#syntax-e _tl2198822046_)))
                            (let ((_tl2199522056_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2199722049_)))
                                  (_hd2199622053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2199722049_))))
                              (if (gx#stx-pair? _tl2199522056_)
                                  (let ((_e2200022059_
                                         (gx#syntax-e _tl2199522056_)))
                                    (let ((_tl2199822066_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2200022059_)))
                                          (_hd2199922063_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2200022059_))))
                                      (if (gx#stx-null? _tl2199822066_)
                                          (___match3941639417_
                                           _e2196122142_
                                           _hd2196022146_
                                           _tl2195922149_
                                           _e2196422152_
                                           _hd2196322156_
                                           _tl2196222159_
                                           _e2196722162_
                                           _hd2196622166_
                                           _tl2196522169_
                                           ___splice3934839349_
                                           _target2198622043_
                                           _tl2198822046_
                                           _e2199722049_
                                           _hd2199622053_
                                           _tl2199522056_
                                           _e2200022059_
                                           _hd2199922063_
                                           _tl2199822066_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2195422006_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2195422006_)))))
                          (let () (declare (not safe)) (_g2195422006_)))))
                  (let () (declare (not safe)) (_g2195422006_)))
              (let () (declare (not safe)) (_g2195422006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2196522169_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2196522169_)
                                                        '2)
                                                  (let ((___splice3934839349_
                                                         (gx#syntax-split-splice
                                                          _tl2196522169_
                                                          '2)))
                                                    (let ((_tl2198822046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3934839349_
                                                              '1)))
                                                          (_target2198622043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3934839349_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2198822046_)
                                                          (let ((_e2199722049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2198822046_)))
                    (let ((_tl2199522056_
                           (let () (declare (not safe)) (##cdr _e2199722049_)))
                          (_hd2199622053_
                           (let ()
                             (declare (not safe))
                             (##car _e2199722049_))))
                      (if (gx#stx-pair? _tl2199522056_)
                          (let ((_e2200022059_ (gx#syntax-e _tl2199522056_)))
                            (let ((_tl2199822066_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2200022059_)))
                                  (_hd2199922063_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2200022059_))))
                              (if (gx#stx-null? _tl2199822066_)
                                  (___match3941639417_
                                   _e2196122142_
                                   _hd2196022146_
                                   _tl2195922149_
                                   _e2196422152_
                                   _hd2196322156_
                                   _tl2196222159_
                                   _e2196722162_
                                   _hd2196622166_
                                   _tl2196522169_
                                   ___splice3934839349_
                                   _target2198622043_
                                   _tl2198822046_
                                   _e2199722049_
                                   _hd2199622053_
                                   _tl2199522056_
                                   _e2200022059_
                                   _hd2199922063_
                                   _tl2199822066_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2195422006_)))))
                          (let () (declare (not safe)) (_g2195422006_)))))
                  (let () (declare (not safe)) (_g2195422006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2195422006_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2195422006_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2195422006_)))))
                          (let () (declare (not safe)) (_g2195422006_)))))
                  (let () (declare (not safe)) (_g2195422006_))))))))))
