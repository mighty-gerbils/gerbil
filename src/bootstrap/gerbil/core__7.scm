(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g42912_|
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
      (lambda _g42870_
        (let ((_g42869_ (let () (declare (not safe)) (##length _g42870_))))
          (cond ((let () (declare (not safe)) (##fx= _g42869_ 1))
                 (apply (lambda (_stx20774_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                             _stx20774_)))
                        _g42870_))
                ((let () (declare (not safe)) (##fx= _g42869_ 2))
                 (apply (lambda (_stx20780_ _is?20782_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                             _stx20780_
                             _is?20782_)))
                        _g42870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g42870_))))))
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
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2051520530_)))
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
                              (let ((_g42871_
                                     (gx#syntax-split-splice
                                      _tl2051720548_
                                      '0)))
                                (begin
                                  (let ((_g42872_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g42871_)
                                               (##vector-length _g42871_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g42872_ 2)))
                                        (error "Context expects 2 values"
                                               _g42872_)))
                                  (let ((_target2052020551_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42871_ 0)))
                                        (_tl2052220554_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42871_ 1))))
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
                    (let ((__tmp42874
                           (cons _lp-hd2052520571_ _arg2052720564_)))
                      (declare (not safe))
                      (_loop2052320557_ _lp-tl2052620574_ __tmp42874))))
                (let ((_arg2052820577_ (reverse _arg2052720564_)))
                  ((lambda (_L20581_)
                     (let* ((_g2059720628_
                             (lambda (_g2059820624_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
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
                            (__tmp42873
                             (let ()
                               (declare (not safe))
                               (unchecked-slot-ref
                                _self20510_
                                'expander-identifiers))))
                       (declare (not safe))
                       (_g2059620737_ __tmp42873)))
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
                       (lambda _g42875_ (gx#genident _id19331_))
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
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1934819351_)))
                 (_g1934620489_
                  (lambda (_g1934819359_)
                    ((lambda (_L19362_)
                       (let ()
                         (let* ((_g1937819386_
                                 (lambda (_g1937919382_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1937919382_)))
                                (_g1937720485_
                                 (lambda (_g1937919390_)
                                   ((lambda (_L19393_)
                                      (let ()
                                        (let* ((_g1940619414_
                                                (lambda (_g1940719410_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
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
                          '"Bad syntax; invalid match target"
                          _g1943519438_)))
                      (_g1943320477_
                       (lambda (_g1943519446_)
                         ((lambda (_L19449_)
                            (let ()
                              (let* ((_g1946219470_
                                      (lambda (_g1946319466_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1946319466_)))
                                     (_g1946120473_
                                      (lambda (_g1946319474_)
                                        ((lambda (_L19477_)
                                           (let ()
                                             (let* ((_g1949019498_
                                                     (lambda (_g1949119494_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
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
                               '"Bad syntax; invalid match target"
                               _g1951919531_)))
                           (_g1951720465_
                            (lambda (_g1951919539_)
                              (if (gx#stx-pair/null? _g1951919539_)
                                  (let ((_g42876_
                                         (gx#syntax-split-splice
                                          _g1951919539_
                                          '0)))
                                    (begin
                                      (let ((_g42877_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42876_)
                                                   (##vector-length _g42876_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42877_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42877_)))
                                      (let ((_target1952119542_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42876_ 0)))
                                            (_tl1952319545_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42876_ 1))))
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
                        (let ((__tmp42905
                               (cons _lp-hd1952619562_ _attr1952819555_)))
                          (declare (not safe))
                          (_loop1952419548_ _lp-tl1952719565_ __tmp42905))))
                    (let ((_attr1952919568_ (reverse _attr1952819555_)))
                      ((lambda (_L19572_)
                         (let ()
                           (let* ((_g1958919606_
                                   (lambda (_g1959019602_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1959019602_)))
                                  (_g1958820456_
                                   (lambda (_g1959019610_)
                                     (if (gx#stx-pair/null? _g1959019610_)
                                         (let ((_g42878_
                                                (gx#syntax-split-splice
                                                 _g1959019610_
                                                 '0)))
                                           (begin
                                             (let ((_g42879_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42878_)
                                                          (##vector-length
                                                           _g42878_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42879_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42879_)))
                                             (let ((_target1959219613_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42878_
                                                       0)))
                                                   (_tl1959419616_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42878_
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
                               (let ((__tmp42903
                                      (cons _lp-hd1959719633_
                                            _getf1959919626_)))
                                 (declare (not safe))
                                 (_loop1959519619_
                                  _lp-tl1959819636_
                                  __tmp42903))))
                           (let ((_getf1960019639_ (reverse _getf1959919626_)))
                             ((lambda (_L19643_)
                                (let ()
                                  (let* ((_g1966019677_
                                          (lambda (_g1966119673_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g1966119673_)))
                                         (_g1965920447_
                                          (lambda (_g1966119681_)
                                            (if (gx#stx-pair/null?
                                                 _g1966119681_)
                                                (let ((_g42880_
                                                       (gx#syntax-split-splice
                                                        _g1966119681_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42880_)
                         (##vector-length _g42880_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42881_ 2)))
                  (error "Context expects 2 values" _g42881_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1966319684_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42880_
                                                              0)))
                                                          (_tl1966519687_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42880_
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
                                      (let ((__tmp42901
                                             (cons _lp-hd1966819704_
                                                   _setf1967019697_)))
                                        (declare (not safe))
                                        (_loop1966619690_
                                         _lp-tl1966919707_
                                         __tmp42901))))
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
                                                                '"Bad syntax; invalid match target"
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
                                                       (cons 'unchecked:
                                                             (cons '#t '())))))
                                                (_g1989819915_
                                                 (lambda (_g1989919911_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1989919911_)))
                                                (_g1989720443_
                                                 (lambda (_g1989919919_)
                                                   (if (gx#stx-pair/null?
                                                        _g1989919919_)
                                                       (let ((_g42882_
                                                              (gx#syntax-split-splice
                                                               _g1989919919_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42882_)
                                (##vector-length _g42882_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42883_ 2)))
                         (error "Context expects 2 values" _g42883_)))
                   (let ((_target1990119922_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42882_ 0)))
                         (_tl1990319925_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42882_ 1))))
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
                                             (let ((__tmp42899
                                                    (cons _lp-hd1990619942_
                                                          _type-body1990819935_)))
                                               (declare (not safe))
                                               (_loop1990419928_
                                                _lp-tl1990719945_
                                                __tmp42899))))
                                         (let ((_type-body1990919948_
                                                (reverse _type-body1990819935_)))
                                           ((lambda (_L19952_)
                                              (let ()
                                                (let* ((_g1996919977_
                                                        (lambda (_g1997019973_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
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
                                  '"Bad syntax; invalid match target"
                                  _g1999820001_)))
                              (_g1999620427_
                               (lambda (_g1999820009_)
                                 ((lambda (_L20012_)
                                    (let ()
                                      (let* ((_g2002520033_
                                              (lambda (_g2002620029_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g2002620029_)))
                                             (_g2002420341_
                                              (lambda (_g2002620037_)
                                                ((lambda (_L20040_)
                                                   (let ()
                                                     (let* ((_g2005320061_
                                                             (lambda (_g2005420057_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
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
                                       '"Bad syntax; invalid match target"
                                       _g2008220085_)))
                                   (_g2008020333_
                                    (lambda (_g2008220093_)
                                      ((lambda (_L20096_)
                                         (let ()
                                           (let* ((_g2010920117_
                                                   (lambda (_g2011020113_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
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
                             '"Bad syntax; invalid match target"
                             _g2013820141_)))
                         (_g2013620287_
                          (lambda (_g2013820149_)
                            ((lambda (_L20152_)
                               (let ()
                                 (let* ((_g2016520173_
                                         (lambda (_g2016620169_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2016620169_)))
                                        (_g2016420283_
                                         (lambda (_g2016620177_)
                                           ((lambda (_L20180_)
                                              (let ()
                                                (let* ((_g2019320201_
                                                        (lambda (_g2019420197_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
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
                                  '"Bad syntax; invalid match target"
                                  _g2022220225_)))
                              (_g2022020251_
                               (lambda (_g2022220233_)
                                 ((lambda (_L20236_)
                                    (let ()
                                      (let ()
                                        (let ((__tmp42884
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons _L19984_
                                                           (cons _L20236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_wrap19337_ __tmp42884)))))
                                  _g2022220233_)))
                              (__tmp42885
                               (let ((__tmp42886
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
                                 (_wrap19337_ __tmp42886))))
                         (declare (not safe))
                         (_g2022020251_ __tmp42885))))
                   _g2019420205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g2019220279_
                                                   _plist19840_))))
                                            _g2016620177_)))
                                        (__tmp42887
                                         (if (not (null? _type-ctor19796_))
                                             (cadr _type-ctor19796_)
                                             '#f)))
                                   (declare (not safe))
                                   (_g2016420283_ __tmp42887))))
                             _g2013820149_)))
                         (__tmp42888 (cadr _type-name19766_)))
                    (declare (not safe))
                    (_g2013620287_ __tmp42888))))
              _g2011020121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp42889
                                                   (let ((_quote-e20330_
                                                          (lambda (_x-ref20295_)
                                                            (if _x-ref20295_
                                                                (let* ((_g2029820306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2029920302_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
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
                                             (_g2010820291_ __tmp42889))))
                                       _g2008220093_)))
                                   (__tmp42890
                                    (if (not (null? _type-id19781_))
                                        (cadr _type-id19781_)
                                        '#f)))
                              (declare (not safe))
                              (_g2008020333_ __tmp42890))))
                        _g2005420065_)))
                    (__tmp42891
                     (if _struct?19335_
                         (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                         (gx#datum->syntax
                          '#f
                          'make-runtime-class-exhibitor))))
               (declare (not safe))
               (_g2005220337_ __tmp42891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2002620037_)))
                                             (__tmp42892
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
                                                             '"Bad syntax; invalid match target"
                                                             _g2034620358_)))
                                                         (_g2034420423_
                                                          (lambda (_g2034620366_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2034620366_)
                        (let ((_g42893_
                               (gx#syntax-split-splice _g2034620366_ '0)))
                          (begin
                            (let ((_g42894_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42893_)
                                         (##vector-length _g42893_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42894_ 2)))
                                  (error "Context expects 2 values" _g42894_)))
                            (let ((_target2034820369_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42893_ 0)))
                                  (_tl2035020372_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42893_ 1))))
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
                                                      (let ((__tmp42895
                                                             (cons _lp-hd2035320389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _super-id2035520382_)))
                (declare (not safe))
                (_loop2035120375_ _lp-tl2035420392_ __tmp42895))))
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
                                        (_g2002420341_ __tmp42892))))
                                  _g1999820009_)))
                              (__tmp42896
                               (if _struct?19335_
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-struct-info)
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-class-info))))
                         (declare (not safe))
                         (_g1999620427_ __tmp42896))))
                   _g1997019981_)))
               (__tmp42897
                (let ((__tmp42898
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
                  (_wrap19337_ __tmp42898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g1996820431_ __tmp42897))))
                                            _type-body1990919948_))))))
                           (let ()
                             (declare (not safe))
                             (_loop1990419928_ _target1990119922_ '())))
                         (let ()
                           (declare (not safe))
                           (_g1989819915_ _g1989919919_))))))
               (let () (declare (not safe)) (_g1989819915_ _g1989919919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp42900
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
                                           (_g1989720443_ __tmp42900))))
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
                                         (__tmp42902
                                          (gx#stx-map
                                           (lambda (_g2045020452_)
                                             (_make-id19339_
                                              _name19341_
                                              '"-"
                                              _g2045020452_
                                              '"-set!"))
                                           _els19333_)))
                                    (declare (not safe))
                                    (_g1965920447_ __tmp42902))))
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
                                  (__tmp42904
                                   (gx#stx-map
                                    (lambda (_g2045920461_)
                                      (_make-id19339_
                                       _name19341_
                                       '"-"
                                       _g2045920461_))
                                    _els19333_)))
                             (declare (not safe))
                             (_g1958820456_ __tmp42904))))
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
                                                    (__tmp42906
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
                                               (_g1948920469_ __tmp42906))))
                                         _g1946319474_)))
                                     (__tmp42907
                                      (_make-id19339_ _name19341_ '"?")))
                                (declare (not safe))
                                (_g1946120473_ __tmp42907))))
                          _g1943519446_)))
                      (__tmp42908 (_make-id19339_ '"make-" _name19341_)))
                 (declare (not safe))
                 (_g1943320477_ __tmp42908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1940719418_)))
                                               (__tmp42909
                                                (_make-id19339_
                                                 _name19341_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1940520481_ __tmp42909))))
                                    _g1937919390_))))
                           (declare (not safe))
                           (_g1937720485_ _id19331_))))
                     _g1934819359_)))
                 (__tmp42910
                  (if _struct?19335_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1934620489_ __tmp42910)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20817_)
        (letrec ((_generate20820_
                  (lambda (_hd20904_ _fields20906_ _body20907_)
                    (let* ((___stx3971039711_ _hd20904_)
                           (_g2091020925_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3971039711_))))
                      (let ((___kont3971339714_
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
                            (___kont3971539716_
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
                                    '"Bad syntax; struct name not an identifier"
                                    _stx20817_
                                    _hd20904_)))))
                        (let ((___match3973139732_
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
                                       (___kont3971339714_ _L20963_ _L20965_)
                                       (___kont3971539716_))))))
                          (if (gx#stx-pair? ___stx3971039711_)
                              (let ((_e2091620943_
                                     (gx#syntax-e ___stx3971039711_)))
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
                                              (___match3973139732_
                                               _e2091620943_
                                               _hd2091520947_
                                               _tl2091420950_
                                               _e2091920953_
                                               _hd2091820957_
                                               _tl2091720960_)
                                              (___kont3971539716_))))
                                      (___kont3971539716_))))
                              (___kont3971539716_))))))))
          (let* ((_g2082320842_
                  (lambda (_g2082420838_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2082420838_)))
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
                    (let* ((___stx3973439735_ _hd21071_)
                           (_g2107721089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3973439735_))))
                      (let ((___kont3973739738_
                             (lambda (_L21117_ _L21119_)
                               (let ((__tmp42911 (gx#syntax->list _L21117_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20984_
                                  _L21119_
                                  __tmp42911
                                  _slots21073_
                                  _body21074_
                                  '#f))))
                            (___kont3973939740_
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
                                    '"Bad syntax; class name should be an identifier"
                                    _stx20984_
                                    _hd21071_)))))
                        (let ((___match3974739748_
                               (lambda (_e2108321107_
                                        _hd2108221111_
                                        _tl2108121114_)
                                 (let ((_L21117_ _tl2108121114_)
                                       (_L21119_ _hd2108221111_))
                                   (if (and (gx#stx-list? _L21117_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21117_))
                                       (___kont3973739738_ _L21117_ _L21119_)
                                       (___kont3973939740_))))))
                          (if (gx#stx-pair? ___stx3973439735_)
                              (let ((_e2108321107_
                                     (gx#syntax-e ___stx3973439735_)))
                                (let ((_tl2108121114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2108321107_)))
                                      (_hd2108221111_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2108321107_))))
                                  (___match3974739748_
                                   _e2108321107_
                                   _hd2108221111_
                                   _tl2108121114_)))
                              (___kont3973939740_))))))))
          (let* ((_g2099021009_
                  (lambda (_g2099121005_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2099121005_)))
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
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2114421168_)))
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
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g42912_|
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
                                                          '"Bad syntax; invalid match target"
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
                                 '"Bad syntax; invalid match target"
                                 _g2130421307_)))
                             (_g2130221461_
                              (lambda (_g2130421315_)
                                ((lambda (_L21318_)
                                   (let ()
                                     (let* ((_g2133121339_
                                             (lambda (_g2133221335_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2133221335_)))
                                            (_g2133021457_
                                             (lambda (_g2133221343_)
                                               ((lambda (_L21346_)
                                                  (let ()
                                                    (let* ((_g2135921367_
                                                            (lambda (_g2136021363_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
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
                                      '"Bad syntax; invalid match target"
                                      _g2138821391_)))
                                  (_g2138621449_
                                   (lambda (_g2138821399_)
                                     ((lambda (_L21402_)
                                        (let ()
                                          (let* ((_g2141521423_
                                                  (lambda (_g2141621419_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
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
      (lambda (_stx21479_)
        (letrec ((_dotted-identifier?21482_
                  (lambda (_id22115_)
                    (if (gx#identifier? _id22115_)
                        (let ((_id-str22118_
                               (symbol->string (gx#stx-e _id22115_))))
                          (if (string-index _id-str22118_ '#\.)
                              (let ((_split22121_
                                     (string-split _id-str22118_ '#\.)))
                                (fx= (length _split22121_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted21484_
                  (lambda (_id22104_)
                    (let* ((_id-str22107_
                            (symbol->string (gx#stx-e _id22104_)))
                           (_split22110_ (string-split _id-str22107_ '#\.)))
                      (cons (gx#stx-identifier _id22104_ (car _split22110_))
                            (cons (gx#stx-identifier
                                   _id22104_
                                   (cadr _split22110_))
                                  '()))))))
          (let* ((___stx3975039751_ _stx21479_)
                 (_g2148921576_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3975039751_))))
            (let ((___kont3975339754_
                   (lambda (_L21997_ _L21999_ _L22000_)
                     (let* ((_g2202822043_
                             (lambda (_g2202922039_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2202922039_)))
                            (_g2202722096_
                             (lambda (_g2202922047_)
                               (if (gx#stx-pair? _g2202922047_)
                                   (let ((_e2203422050_
                                          (gx#syntax-e _g2202922047_)))
                                     (let ((_hd2203322054_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2203422050_)))
                                           (_tl2203222057_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2203422050_))))
                                       (if (gx#stx-pair? _tl2203222057_)
                                           (let ((_e2203722060_
                                                  (gx#syntax-e
                                                   _tl2203222057_)))
                                             (let ((_hd2203622064_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2203722060_)))
                                                   (_tl2203522067_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2203722060_))))
                                               (if (gx#stx-null?
                                                    _tl2203522067_)
                                                   ((lambda (_L22070_ _L22072_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _L22072_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L22070_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (foldr (lambda (_g2208722090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2208822093_)
                     (cons _g2208722090_ _g2208822093_))
                   '()
                   _L21999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2203622064_
                                                    _hd2203322054_)
                                                   (_g2202822043_
                                                    _g2202922047_))))
                                           (_g2202822043_ _g2202922047_))))
                                   (_g2202822043_ _g2202922047_)))))
                       (_g2202722096_ (_split-dotted21484_ _L22000_)))))
                  (___kont3975739758_
                   (lambda (_L21839_ _L21841_)
                     (let* ((_g2185821873_
                             (lambda (_g2185921869_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2185921869_)))
                            (_g2185721926_
                             (lambda (_g2185921877_)
                               (if (gx#stx-pair? _g2185921877_)
                                   (let ((_e2186421880_
                                          (gx#syntax-e _g2185921877_)))
                                     (let ((_hd2186321884_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2186421880_)))
                                           (_tl2186221887_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2186421880_))))
                                       (if (gx#stx-pair? _tl2186221887_)
                                           (let ((_e2186721890_
                                                  (gx#syntax-e
                                                   _tl2186221887_)))
                                             (let ((_hd2186621894_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2186721890_)))
                                                   (_tl2186521897_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2186721890_))))
                                               (if (gx#stx-null?
                                                    _tl2186521897_)
                                                   ((lambda (_L21900_ _L21902_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _L21902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L21900_ '()))
                                  (foldr (lambda (_g2191721920_ _g2191821923_)
                                           (cons _g2191721920_ _g2191821923_))
                                         '()
                                         _L21839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2186621894_
                                                    _hd2186321884_)
                                                   (_g2185821873_
                                                    _g2185921877_))))
                                           (_g2185821873_ _g2185921877_))))
                                   (_g2185821873_ _g2185921877_)))))
                       (_g2185721926_ (_split-dotted21484_ _L21841_)))))
                  (___kont3976139762_
                   (lambda (_L21743_ _L21745_ _L21746_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _L21745_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L21746_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_g2177321776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2177421779_)
                          (cons _g2177321776_ _g2177421779_))
                        '()
                        _L21743_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (___kont3976539766_
                   (lambda (_L21643_ _L21645_ _L21646_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _L21645_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21646_ '()))
                                       (foldr (lambda (_g2166721670_
                                                       _g2166821673_)
                                                (cons _g2166721670_
                                                      _g2166821673_))
                                              '()
                                              _L21643_)))))))
              (let* ((___match3986939870_
                      (lambda (_e2155521583_
                               _hd2155421587_
                               _tl2155321590_
                               _e2155821593_
                               _hd2155721597_
                               _tl2155621600_
                               _e2156121603_
                               _hd2156021607_
                               _tl2155921610_
                               ___splice3976739768_
                               _target2156221613_
                               _tl2156421616_)
                        (letrec ((_loop2156521619_
                                  (lambda (_hd2156321623_ _arg2156921626_)
                                    (if (gx#stx-pair? _hd2156321623_)
                                        (let ((_e2156621629_
                                               (gx#syntax-e _hd2156321623_)))
                                          (let ((_lp-tl2156821636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2156621629_)))
                                                (_lp-hd2156721633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2156621629_))))
                                            (_loop2156521619_
                                             _lp-tl2156821636_
                                             (cons _lp-hd2156721633_
                                                   _arg2156921626_))))
                                        (let ((_arg2157021639_
                                               (reverse _arg2156921626_)))
                                          (let ((_L21643_ _arg2157021639_)
                                                (_L21645_ _hd2156021607_)
                                                (_L21646_ _hd2155721597_))
                                            (if (gx#identifier? _L21646_)
                                                (___kont3976539766_
                                                 _L21643_
                                                 _L21645_
                                                 _L21646_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2148921576_)))))))))
                          (_loop2156521619_ _target2156221613_ '()))))
                     (___match3984339844_
                      (lambda (_e2153421683_
                               _hd2153321687_
                               _tl2153221690_
                               _e2153721693_
                               _hd2153621697_
                               _tl2153521700_
                               _e2154021703_
                               _hd2153921707_
                               _tl2153821710_
                               ___splice3976339764_
                               _target2154121713_
                               _tl2154321716_)
                        (letrec ((_loop2154421719_
                                  (lambda (_hd2154221723_ _arg2154821726_)
                                    (if (gx#stx-pair? _hd2154221723_)
                                        (let ((_e2154521729_
                                               (gx#syntax-e _hd2154221723_)))
                                          (let ((_lp-tl2154721736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2154521729_)))
                                                (_lp-hd2154621733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2154521729_))))
                                            (_loop2154421719_
                                             _lp-tl2154721736_
                                             (cons _lp-hd2154621733_
                                                   _arg2154821726_))))
                                        (let ((_arg2154921739_
                                               (reverse _arg2154821726_)))
                                          (let ((_L21743_ _arg2154921739_)
                                                (_L21745_ _hd2153921707_)
                                                (_L21746_ _hd2153621697_))
                                            (if (and (gx#identifier? _L21746_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2176521768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2176621771_)
                       (cons _g2176521768_ _g2176621771_))
                     '()
                     _L21743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3976139762_
                                                 _L21743_
                                                 _L21745_
                                                 _L21746_)
                                                (___match3986939870_
                                                 _e2153421683_
                                                 _hd2153321687_
                                                 _tl2153221690_
                                                 _e2153721693_
                                                 _hd2153621697_
                                                 _tl2153521700_
                                                 _e2154021703_
                                                 _hd2153921707_
                                                 _tl2153821710_
                                                 ___splice3976339764_
                                                 _target2154121713_
                                                 _tl2154321716_))))))))
                          (_loop2154421719_ _target2154121713_ '()))))
                     (___match3982939830_
                      (lambda (_e2153421683_
                               _hd2153321687_
                               _tl2153221690_
                               _e2153721693_
                               _hd2153621697_
                               _tl2153521700_)
                        (if (gx#stx-pair? _tl2153521700_)
                            (let ((_e2154021703_ (gx#syntax-e _tl2153521700_)))
                              (let ((_tl2153821710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2154021703_)))
                                    (_hd2153921707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2154021703_))))
                                (if (gx#stx-pair/null? _tl2153821710_)
                                    (let ((___splice3976339764_
                                           (gx#syntax-split-splice
                                            _tl2153821710_
                                            '0)))
                                      (let ((_tl2154321716_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3976339764_
                                                '1)))
                                            (_target2154121713_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3976339764_
                                                '0))))
                                        (if (gx#stx-null? _tl2154321716_)
                                            (___match3984339844_
                                             _e2153421683_
                                             _hd2153321687_
                                             _tl2153221690_
                                             _e2153721693_
                                             _hd2153621697_
                                             _tl2153521700_
                                             _e2154021703_
                                             _hd2153921707_
                                             _tl2153821710_
                                             ___splice3976339764_
                                             _target2154121713_
                                             _tl2154321716_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2148921576_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2148921576_)))))
                            (let () (declare (not safe)) (_g2148921576_)))))
                     (___match3981739818_
                      (lambda (_e2151621789_
                               _hd2151521793_
                               _tl2151421796_
                               _e2151921799_
                               _hd2151821803_
                               _tl2151721806_
                               ___splice3975939760_
                               _target2152021809_
                               _tl2152221812_)
                        (letrec ((_loop2152321815_
                                  (lambda (_hd2152121819_ _arg2152721822_)
                                    (if (gx#stx-pair? _hd2152121819_)
                                        (let ((_e2152421825_
                                               (gx#syntax-e _hd2152121819_)))
                                          (let ((_lp-tl2152621832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2152421825_)))
                                                (_lp-hd2152521829_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2152421825_))))
                                            (_loop2152321815_
                                             _lp-tl2152621832_
                                             (cons _lp-hd2152521829_
                                                   _arg2152721822_))))
                                        (let ((_arg2152821835_
                                               (reverse _arg2152721822_)))
                                          (let ((_L21839_ _arg2152821835_)
                                                (_L21841_ _hd2151821803_))
                                            (if (_dotted-identifier?21482_
                                                 _L21841_)
                                                (___kont3975739758_
                                                 _L21839_
                                                 _L21841_)
                                                (___match3982939830_
                                                 _e2151621789_
                                                 _hd2151521793_
                                                 _tl2151421796_
                                                 _e2151921799_
                                                 _hd2151821803_
                                                 _tl2151721806_))))))))
                          (_loop2152321815_ _target2152021809_ '()))))
                     (___match3981539816_
                      (lambda (_e2151621789_
                               _hd2151521793_
                               _tl2151421796_
                               _e2151921799_
                               _hd2151821803_
                               _tl2151721806_
                               ___splice3975939760_
                               _target2152021809_
                               _tl2152221812_)
                        (if (gx#stx-null? _tl2152221812_)
                            (___match3981739818_
                             _e2151621789_
                             _hd2151521793_
                             _tl2151421796_
                             _e2151921799_
                             _hd2151821803_
                             _tl2151721806_
                             ___splice3975939760_
                             _target2152021809_
                             _tl2152221812_)
                            (if (gx#stx-pair? _tl2151721806_)
                                (let ((_e2154021703_
                                       (gx#syntax-e _tl2151721806_)))
                                  (let ((_tl2153821710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2154021703_)))
                                        (_hd2153921707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2154021703_))))
                                    (if (gx#stx-pair/null? _tl2153821710_)
                                        (let ((___splice3976339764_
                                               (gx#syntax-split-splice
                                                _tl2153821710_
                                                '0)))
                                          (let ((_tl2154321716_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3976339764_
                                                    '1)))
                                                (_target2154121713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3976339764_
                                                    '0))))
                                            (if (gx#stx-null? _tl2154321716_)
                                                (___match3984339844_
                                                 _e2151621789_
                                                 _hd2151521793_
                                                 _tl2151421796_
                                                 _e2151921799_
                                                 _hd2151821803_
                                                 _tl2151721806_
                                                 _e2154021703_
                                                 _hd2153921707_
                                                 _tl2153821710_
                                                 ___splice3976339764_
                                                 _target2154121713_
                                                 _tl2154321716_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2148921576_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2148921576_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2148921576_))))))
                     (___match3979739798_
                      (lambda (_e2149621937_
                               _hd2149521941_
                               _tl2149421944_
                               _e2149921947_
                               _hd2149821951_
                               _tl2149721954_
                               ___splice3975539756_
                               _target2150021957_
                               _tl2150221960_
                               _e2151121963_
                               _hd2151021967_
                               _tl2150921970_)
                        (letrec ((_loop2150321973_
                                  (lambda (_hd2150121977_ _arg2150721980_)
                                    (if (gx#stx-pair? _hd2150121977_)
                                        (let ((_e2150421983_
                                               (gx#syntax-e _hd2150121977_)))
                                          (let ((_lp-tl2150621990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2150421983_)))
                                                (_lp-hd2150521987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2150421983_))))
                                            (_loop2150321973_
                                             _lp-tl2150621990_
                                             (cons _lp-hd2150521987_
                                                   _arg2150721980_))))
                                        (let ((_arg2150821993_
                                               (reverse _arg2150721980_)))
                                          (let ((_L21997_ _hd2151021967_)
                                                (_L21999_ _arg2150821993_)
                                                (_L22000_ _hd2149821951_))
                                            (if (and (_dotted-identifier?21482_
                                                      _L22000_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2201922022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2202022025_)
                       (cons _g2201922022_ _g2202022025_))
                     '()
                     _L21999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3975339754_
                                                 _L21997_
                                                 _L21999_
                                                 _L22000_)
                                                (let ((___splice3975939760_
                                                       (gx#syntax-split-splice
                                                        _tl2149721954_
                                                        '0)))
                                                  (let ((_tl2152221812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3975939760_
                                                            '1)))
                                                        (_target2152021809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3975939760_
                                                            '0))))
                                                    (___match3981539816_
                                                     _e2149621937_
                                                     _hd2149521941_
                                                     _tl2149421944_
                                                     _e2149921947_
                                                     _hd2149821951_
                                                     _tl2149721954_
                                                     ___splice3975939760_
                                                     _target2152021809_
                                                     _tl2152221812_))))))))))
                          (_loop2150321973_ _target2150021957_ '())))))
                (if (gx#stx-pair? ___stx3975039751_)
                    (let ((_e2149621937_ (gx#syntax-e ___stx3975039751_)))
                      (let ((_tl2149421944_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2149621937_)))
                            (_hd2149521941_
                             (let ()
                               (declare (not safe))
                               (##car _e2149621937_))))
                        (if (gx#stx-pair? _tl2149421944_)
                            (let ((_e2149921947_ (gx#syntax-e _tl2149421944_)))
                              (let ((_tl2149721954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2149921947_)))
                                    (_hd2149821951_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2149921947_))))
                                (if (gx#stx-pair/null? _tl2149721954_)
                                    (if (fx>= (gx#stx-length _tl2149721954_)
                                              '1)
                                        (let ((___splice3975539756_
                                               (gx#syntax-split-splice
                                                _tl2149721954_
                                                '1)))
                                          (let ((_tl2150221960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3975539756_
                                                    '1)))
                                                (_target2150021957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3975539756_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2150221960_)
                                                (let ((_e2151121963_
                                                       (gx#syntax-e
                                                        _tl2150221960_)))
                                                  (let ((_tl2150921970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2151121963_)))
                                                        (_hd2151021967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2151121963_))))
                                                    (if (gx#stx-null?
                                                         _tl2150921970_)
                                                        (___match3979739798_
                                                         _e2149621937_
                                                         _hd2149521941_
                                                         _tl2149421944_
                                                         _e2149921947_
                                                         _hd2149821951_
                                                         _tl2149721954_
                                                         ___splice3975539756_
                                                         _target2150021957_
                                                         _tl2150221960_
                                                         _e2151121963_
                                                         _hd2151021967_
                                                         _tl2150921970_)
                                                        (let ((___splice3975939760_
                                                               (gx#syntax-split-splice
                                                                _tl2149721954_
                                                                '0)))
                                                          (let ((_tl2152221812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3975939760_ '1)))
                        (_target2152021809_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3975939760_ '0))))
                    (if (gx#stx-null? _tl2152221812_)
                        (___match3981739818_
                         _e2149621937_
                         _hd2149521941_
                         _tl2149421944_
                         _e2149921947_
                         _hd2149821951_
                         _tl2149721954_
                         ___splice3975939760_
                         _target2152021809_
                         _tl2152221812_)
                        (if (gx#stx-pair? _tl2149721954_)
                            (let ((_e2154021703_ (gx#syntax-e _tl2149721954_)))
                              (let ((_tl2153821710_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2154021703_)))
                                    (_hd2153921707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2154021703_))))
                                (if (gx#stx-pair/null? _tl2153821710_)
                                    (let ((___splice3976339764_
                                           (gx#syntax-split-splice
                                            _tl2153821710_
                                            '0)))
                                      (let ((_tl2154321716_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3976339764_
                                                '1)))
                                            (_target2154121713_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3976339764_
                                                '0))))
                                        (if (gx#stx-null? _tl2154321716_)
                                            (___match3984339844_
                                             _e2149621937_
                                             _hd2149521941_
                                             _tl2149421944_
                                             _e2149921947_
                                             _hd2149821951_
                                             _tl2149721954_
                                             _e2154021703_
                                             _hd2153921707_
                                             _tl2153821710_
                                             ___splice3976339764_
                                             _target2154121713_
                                             _tl2154321716_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2148921576_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2148921576_)))))
                            (let ()
                              (declare (not safe))
                              (_g2148921576_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3975939760_
                                                       (gx#syntax-split-splice
                                                        _tl2149721954_
                                                        '0)))
                                                  (let ((_tl2152221812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3975939760_
                                                            '1)))
                                                        (_target2152021809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3975939760_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2152221812_)
                                                        (___match3981739818_
                                                         _e2149621937_
                                                         _hd2149521941_
                                                         _tl2149421944_
                                                         _e2149921947_
                                                         _hd2149821951_
                                                         _tl2149721954_
                                                         ___splice3975939760_
                                                         _target2152021809_
                                                         _tl2152221812_)
                                                        (if (gx#stx-pair?
                                                             _tl2149721954_)
                                                            (let ((_e2154021703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2149721954_)))
                      (let ((_tl2153821710_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2154021703_)))
                            (_hd2153921707_
                             (let ()
                               (declare (not safe))
                               (##car _e2154021703_))))
                        (if (gx#stx-pair/null? _tl2153821710_)
                            (let ((___splice3976339764_
                                   (gx#syntax-split-splice _tl2153821710_ '0)))
                              (let ((_tl2154321716_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3976339764_ '1)))
                                    (_target2154121713_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3976339764_
                                        '0))))
                                (if (gx#stx-null? _tl2154321716_)
                                    (___match3984339844_
                                     _e2149621937_
                                     _hd2149521941_
                                     _tl2149421944_
                                     _e2149921947_
                                     _hd2149821951_
                                     _tl2149721954_
                                     _e2154021703_
                                     _hd2153921707_
                                     _tl2153821710_
                                     ___splice3976339764_
                                     _target2154121713_
                                     _tl2154321716_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2148921576_)))))
                            (let () (declare (not safe)) (_g2148921576_)))))
                    (let () (declare (not safe)) (_g2148921576_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3975939760_
                                               (gx#syntax-split-splice
                                                _tl2149721954_
                                                '0)))
                                          (let ((_tl2152221812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3975939760_
                                                    '1)))
                                                (_target2152021809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3975939760_
                                                    '0))))
                                            (if (gx#stx-null? _tl2152221812_)
                                                (___match3981739818_
                                                 _e2149621937_
                                                 _hd2149521941_
                                                 _tl2149421944_
                                                 _e2149921947_
                                                 _hd2149821951_
                                                 _tl2149721954_
                                                 ___splice3975939760_
                                                 _target2152021809_
                                                 _tl2152221812_)
                                                (if (gx#stx-pair?
                                                     _tl2149721954_)
                                                    (let ((_e2154021703_
                                                           (gx#syntax-e
                                                            _tl2149721954_)))
                                                      (let ((_tl2153821710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2154021703_)))
                    (_hd2153921707_
                     (let () (declare (not safe)) (##car _e2154021703_))))
                (if (gx#stx-pair/null? _tl2153821710_)
                    (let ((___splice3976339764_
                           (gx#syntax-split-splice _tl2153821710_ '0)))
                      (let ((_tl2154321716_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3976339764_ '1)))
                            (_target2154121713_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3976339764_ '0))))
                        (if (gx#stx-null? _tl2154321716_)
                            (___match3984339844_
                             _e2149621937_
                             _hd2149521941_
                             _tl2149421944_
                             _e2149921947_
                             _hd2149821951_
                             _tl2149721954_
                             _e2154021703_
                             _hd2153921707_
                             _tl2153821710_
                             ___splice3976339764_
                             _target2154121713_
                             _tl2154321716_)
                            (let () (declare (not safe)) (_g2148921576_)))))
                    (let () (declare (not safe)) (_g2148921576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2148921576_)))))))
                                    (if (gx#stx-pair? _tl2149721954_)
                                        (let ((_e2154021703_
                                               (gx#syntax-e _tl2149721954_)))
                                          (let ((_tl2153821710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2154021703_)))
                                                (_hd2153921707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2154021703_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2153821710_)
                                                (let ((___splice3976339764_
                                                       (gx#syntax-split-splice
                                                        _tl2153821710_
                                                        '0)))
                                                  (let ((_tl2154321716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3976339764_
                                                            '1)))
                                                        (_target2154121713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3976339764_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2154321716_)
                                                        (___match3984339844_
                                                         _e2149621937_
                                                         _hd2149521941_
                                                         _tl2149421944_
                                                         _e2149921947_
                                                         _hd2149821951_
                                                         _tl2149721954_
                                                         _e2154021703_
                                                         _hd2153921707_
                                                         _tl2153821710_
                                                         ___splice3976339764_
                                                         _target2154121713_
                                                         _tl2154321716_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2148921576_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2148921576_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2148921576_))))))
                            (let () (declare (not safe)) (_g2148921576_)))))
                    (let () (declare (not safe)) (_g2148921576_)))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx22128_)
        (let* ((___stx3987239873_ _$stx22128_)
               (_g2213322173_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3987239873_))))
          (let ((___kont3987539876_
                 (lambda (_L22311_ _L22313_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L22313_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22311_ '()))
                                     '())))))
                (___kont3987739878_
                 (lambda (_L22240_ _L22242_ _L22243_ _L22244_)
                   (cons _L22244_
                         (cons (cons _L22244_
                                     (cons _L22243_ (cons _L22242_ '())))
                               (foldr (lambda (_g2226522268_ _g2226622271_)
                                        (cons _g2226522268_ _g2226622271_))
                                      '()
                                      _L22240_))))))
            (let* ((___match3992739928_
                    (lambda (_e2215222180_
                             _hd2215122184_
                             _tl2215022187_
                             _e2215522190_
                             _hd2215422194_
                             _tl2215322197_
                             _e2215822200_
                             _hd2215722204_
                             _tl2215622207_
                             ___splice3987939880_
                             _target2215922210_
                             _tl2216122213_)
                      (letrec ((_loop2216222216_
                                (lambda (_hd2216022220_ _rest2216622223_)
                                  (if (gx#stx-pair? _hd2216022220_)
                                      (let ((_e2216322226_
                                             (gx#syntax-e _hd2216022220_)))
                                        (let ((_lp-tl2216522233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2216322226_)))
                                              (_lp-hd2216422230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2216322226_))))
                                          (_loop2216222216_
                                           _lp-tl2216522233_
                                           (cons _lp-hd2216422230_
                                                 _rest2216622223_))))
                                      (let ((_rest2216722236_
                                             (reverse _rest2216622223_)))
                                        (___kont3987739878_
                                         _rest2216722236_
                                         _hd2215722204_
                                         _hd2215422194_
                                         _hd2215122184_))))))
                        (_loop2216222216_ _target2215922210_ '()))))
                   (___match3990139902_
                    (lambda (_e2213922281_
                             _hd2213822285_
                             _tl2213722288_
                             _e2214222291_
                             _hd2214122295_
                             _tl2214022298_
                             _e2214522301_
                             _hd2214422305_
                             _tl2214322308_)
                      (let ((_L22311_ _hd2214422305_)
                            (_L22313_ _hd2214122295_))
                        (if (gx#identifier? _L22311_)
                            (___kont3987539876_ _L22311_ _L22313_)
                            (if (gx#stx-pair/null? _tl2214322308_)
                                (let ((___splice3987939880_
                                       (gx#syntax-split-splice
                                        _tl2214322308_
                                        '0)))
                                  (let ((_tl2216122213_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3987939880_
                                            '1)))
                                        (_target2215922210_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3987939880_
                                            '0))))
                                    (if (gx#stx-null? _tl2216122213_)
                                        (___match3992739928_
                                         _e2213922281_
                                         _hd2213822285_
                                         _tl2213722288_
                                         _e2214222291_
                                         _hd2214122295_
                                         _tl2214022298_
                                         _e2214522301_
                                         _hd2214422305_
                                         _tl2214322308_
                                         ___splice3987939880_
                                         _target2215922210_
                                         _tl2216122213_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2213322173_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2213322173_))))))))
              (if (gx#stx-pair? ___stx3987239873_)
                  (let ((_e2213922281_ (gx#syntax-e ___stx3987239873_)))
                    (let ((_tl2213722288_
                           (let () (declare (not safe)) (##cdr _e2213922281_)))
                          (_hd2213822285_
                           (let ()
                             (declare (not safe))
                             (##car _e2213922281_))))
                      (if (gx#stx-pair? _tl2213722288_)
                          (let ((_e2214222291_ (gx#syntax-e _tl2213722288_)))
                            (let ((_tl2214022298_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2214222291_)))
                                  (_hd2214122295_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2214222291_))))
                              (if (gx#stx-pair? _tl2214022298_)
                                  (let ((_e2214522301_
                                         (gx#syntax-e _tl2214022298_)))
                                    (let ((_tl2214322308_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2214522301_)))
                                          (_hd2214422305_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2214522301_))))
                                      (if (gx#stx-null? _tl2214322308_)
                                          (___match3990139902_
                                           _e2213922281_
                                           _hd2213822285_
                                           _tl2213722288_
                                           _e2214222291_
                                           _hd2214122295_
                                           _tl2214022298_
                                           _e2214522301_
                                           _hd2214422305_
                                           _tl2214322308_)
                                          (if (gx#stx-pair/null?
                                               _tl2214322308_)
                                              (let ((___splice3987939880_
                                                     (gx#syntax-split-splice
                                                      _tl2214322308_
                                                      '0)))
                                                (let ((_tl2216122213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3987939880_
                                                          '1)))
                                                      (_target2215922210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3987939880_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2216122213_)
                                                      (___match3992739928_
                                                       _e2213922281_
                                                       _hd2213822285_
                                                       _tl2213722288_
                                                       _e2214222291_
                                                       _hd2214122295_
                                                       _tl2214022298_
                                                       _e2214522301_
                                                       _hd2214422305_
                                                       _tl2214322308_
                                                       ___splice3987939880_
                                                       _target2215922210_
                                                       _tl2216122213_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2213322173_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2213322173_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2213322173_)))))
                          (let () (declare (not safe)) (_g2213322173_)))))
                  (let () (declare (not safe)) (_g2213322173_))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx22333_)
        (let* ((___stx3993039931_ _$stx22333_)
               (_g2233822390_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3993039931_))))
          (let ((___kont3993339934_
                 (lambda (_L22566_ _L22568_ _L22569_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22569_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22568_ '()))
                                     (cons _L22566_ '()))))))
                (___kont3993539936_
                 (lambda (_L22477_
                          _L22479_
                          _L22480_
                          _L22481_
                          _L22482_
                          _L22483_)
                   (cons _L22483_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22482_
                                           (cons _L22481_
                                                 (foldr (lambda (_g2251022513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2251122516_)
                  (cons _g2251022513_ _g2251122516_))
                '()
                _L22480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22479_ (cons _L22477_ '())))))))
            (let* ((___match4000540006_
                    (lambda (_e2236322397_
                             _hd2236222401_
                             _tl2236122404_
                             _e2236622407_
                             _hd2236522411_
                             _tl2236422414_
                             _e2236922417_
                             _hd2236822421_
                             _tl2236722424_
                             ___splice3993739938_
                             _target2237022427_
                             _tl2237222430_
                             _e2238122433_
                             _hd2238022437_
                             _tl2237922440_
                             _e2238422443_
                             _hd2238322447_
                             _tl2238222450_)
                      (letrec ((_loop2237322453_
                                (lambda (_hd2237122457_ _path2237722460_)
                                  (if (gx#stx-pair? _hd2237122457_)
                                      (let ((_e2237422463_
                                             (gx#syntax-e _hd2237122457_)))
                                        (let ((_lp-tl2237622470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2237422463_)))
                                              (_lp-hd2237522467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2237422463_))))
                                          (_loop2237322453_
                                           _lp-tl2237622470_
                                           (cons _lp-hd2237522467_
                                                 _path2237722460_))))
                                      (let ((_path2237822473_
                                             (reverse _path2237722460_)))
                                        (___kont3993539936_
                                         _hd2238322447_
                                         _hd2238022437_
                                         _path2237822473_
                                         _hd2236822421_
                                         _hd2236522411_
                                         _hd2236222401_))))))
                        (_loop2237322453_ _target2237022427_ '()))))
                   (___match3996539966_
                    (lambda (_e2234522526_
                             _hd2234422530_
                             _tl2234322533_
                             _e2234822536_
                             _hd2234722540_
                             _tl2234622543_
                             _e2235122546_
                             _hd2235022550_
                             _tl2234922553_
                             _e2235422556_
                             _hd2235322560_
                             _tl2235222563_)
                      (let ((_L22566_ _hd2235322560_)
                            (_L22568_ _hd2235022550_)
                            (_L22569_ _hd2234722540_))
                        (if (gx#identifier? _L22568_)
                            (___kont3993339934_ _L22566_ _L22568_ _L22569_)
                            (if (gx#stx-pair/null? _tl2234922553_)
                                (if (fx>= (gx#stx-length _tl2234922553_) '2)
                                    (let ((___splice3993739938_
                                           (gx#syntax-split-splice
                                            _tl2234922553_
                                            '2)))
                                      (let ((_tl2237222430_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3993739938_
                                                '1)))
                                            (_target2237022427_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3993739938_
                                                '0))))
                                        (if (gx#stx-pair? _tl2237222430_)
                                            (let ((_e2238122433_
                                                   (gx#syntax-e
                                                    _tl2237222430_)))
                                              (let ((_tl2237922440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2238122433_)))
                                                    (_hd2238022437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2238122433_))))
                                                (if (gx#stx-pair?
                                                     _tl2237922440_)
                                                    (let ((_e2238422443_
                                                           (gx#syntax-e
                                                            _tl2237922440_)))
                                                      (let ((_tl2238222450_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2238422443_)))
                    (_hd2238322447_
                     (let () (declare (not safe)) (##car _e2238422443_))))
                (if (gx#stx-null? _tl2238222450_)
                    (___match4000540006_
                     _e2234522526_
                     _hd2234422530_
                     _tl2234322533_
                     _e2234822536_
                     _hd2234722540_
                     _tl2234622543_
                     _e2235122546_
                     _hd2235022550_
                     _tl2234922553_
                     ___splice3993739938_
                     _target2237022427_
                     _tl2237222430_
                     _e2238122433_
                     _hd2238022437_
                     _tl2237922440_
                     _e2238422443_
                     _hd2238322447_
                     _tl2238222450_)
                    (let () (declare (not safe)) (_g2233822390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2233822390_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2233822390_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2233822390_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2233822390_))))))))
              (if (gx#stx-pair? ___stx3993039931_)
                  (let ((_e2234522526_ (gx#syntax-e ___stx3993039931_)))
                    (let ((_tl2234322533_
                           (let () (declare (not safe)) (##cdr _e2234522526_)))
                          (_hd2234422530_
                           (let ()
                             (declare (not safe))
                             (##car _e2234522526_))))
                      (if (gx#stx-pair? _tl2234322533_)
                          (let ((_e2234822536_ (gx#syntax-e _tl2234322533_)))
                            (let ((_tl2234622543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2234822536_)))
                                  (_hd2234722540_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2234822536_))))
                              (if (gx#stx-pair? _tl2234622543_)
                                  (let ((_e2235122546_
                                         (gx#syntax-e _tl2234622543_)))
                                    (let ((_tl2234922553_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2235122546_)))
                                          (_hd2235022550_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2235122546_))))
                                      (if (gx#stx-pair? _tl2234922553_)
                                          (let ((_e2235422556_
                                                 (gx#syntax-e _tl2234922553_)))
                                            (let ((_tl2235222563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2235422556_)))
                                                  (_hd2235322560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2235422556_))))
                                              (if (gx#stx-null? _tl2235222563_)
                                                  (___match3996539966_
                                                   _e2234522526_
                                                   _hd2234422530_
                                                   _tl2234322533_
                                                   _e2234822536_
                                                   _hd2234722540_
                                                   _tl2234622543_
                                                   _e2235122546_
                                                   _hd2235022550_
                                                   _tl2234922553_
                                                   _e2235422556_
                                                   _hd2235322560_
                                                   _tl2235222563_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2234922553_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2234922553_)
                        '2)
                  (let ((___splice3993739938_
                         (gx#syntax-split-splice _tl2234922553_ '2)))
                    (let ((_tl2237222430_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3993739938_ '1)))
                          (_target2237022427_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3993739938_ '0))))
                      (if (gx#stx-pair? _tl2237222430_)
                          (let ((_e2238122433_ (gx#syntax-e _tl2237222430_)))
                            (let ((_tl2237922440_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2238122433_)))
                                  (_hd2238022437_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2238122433_))))
                              (if (gx#stx-pair? _tl2237922440_)
                                  (let ((_e2238422443_
                                         (gx#syntax-e _tl2237922440_)))
                                    (let ((_tl2238222450_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2238422443_)))
                                          (_hd2238322447_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2238422443_))))
                                      (if (gx#stx-null? _tl2238222450_)
                                          (___match4000540006_
                                           _e2234522526_
                                           _hd2234422530_
                                           _tl2234322533_
                                           _e2234822536_
                                           _hd2234722540_
                                           _tl2234622543_
                                           _e2235122546_
                                           _hd2235022550_
                                           _tl2234922553_
                                           ___splice3993739938_
                                           _target2237022427_
                                           _tl2237222430_
                                           _e2238122433_
                                           _hd2238022437_
                                           _tl2237922440_
                                           _e2238422443_
                                           _hd2238322447_
                                           _tl2238222450_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2233822390_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2233822390_)))))
                          (let () (declare (not safe)) (_g2233822390_)))))
                  (let () (declare (not safe)) (_g2233822390_)))
              (let () (declare (not safe)) (_g2233822390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2234922553_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2234922553_)
                                                        '2)
                                                  (let ((___splice3993739938_
                                                         (gx#syntax-split-splice
                                                          _tl2234922553_
                                                          '2)))
                                                    (let ((_tl2237222430_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3993739938_
                                                              '1)))
                                                          (_target2237022427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3993739938_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2237222430_)
                                                          (let ((_e2238122433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2237222430_)))
                    (let ((_tl2237922440_
                           (let () (declare (not safe)) (##cdr _e2238122433_)))
                          (_hd2238022437_
                           (let ()
                             (declare (not safe))
                             (##car _e2238122433_))))
                      (if (gx#stx-pair? _tl2237922440_)
                          (let ((_e2238422443_ (gx#syntax-e _tl2237922440_)))
                            (let ((_tl2238222450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2238422443_)))
                                  (_hd2238322447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2238422443_))))
                              (if (gx#stx-null? _tl2238222450_)
                                  (___match4000540006_
                                   _e2234522526_
                                   _hd2234422530_
                                   _tl2234322533_
                                   _e2234822536_
                                   _hd2234722540_
                                   _tl2234622543_
                                   _e2235122546_
                                   _hd2235022550_
                                   _tl2234922553_
                                   ___splice3993739938_
                                   _target2237022427_
                                   _tl2237222430_
                                   _e2238122433_
                                   _hd2238022437_
                                   _tl2237922440_
                                   _e2238422443_
                                   _hd2238322447_
                                   _tl2238222450_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2233822390_)))))
                          (let () (declare (not safe)) (_g2233822390_)))))
                  (let () (declare (not safe)) (_g2233822390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2233822390_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2233822390_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2233822390_)))))
                          (let () (declare (not safe)) (_g2233822390_)))))
                  (let () (declare (not safe)) (_g2233822390_))))))))))
