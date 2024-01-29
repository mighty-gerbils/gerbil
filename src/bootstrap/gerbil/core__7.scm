(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g42799_|
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
      (lambda _$args20738_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20738_)))
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
      (lambda _$args20734_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20734_)))
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
      (lambda _$args20730_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20730_)))
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
      (lambda _$args20726_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20726_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f
       '(id super name constructor properties)))
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
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-constructor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-properties|
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
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-constructor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-properties-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-constructor|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-constructor-set!|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-properties|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-properties-set!|)
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
      (lambda _$args20722_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20722_)))
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
      (lambda _$args20718_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20718_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20692_ _is?20694_)
        (if (gx#identifier? _stx20692_)
            (let ((_e2069520697_ (gx#syntax-local-value _stx20692_ false)))
              (if _e2069520697_
                  (let ((_e20701_ _e2069520697_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
                           _e20701_))
                        (_is?20694_ _e20701_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20708_)
        (let ((_is?20711_ true))
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20708_
           _is?20711_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g42757_
        (let ((_g42756_ (let () (declare (not safe)) (##length _g42757_))))
          (cond ((let () (declare (not safe)) (##fx= _g42756_ 1))
                 (apply (lambda (_stx20708_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                             _stx20708_)))
                        _g42757_))
                ((let () (declare (not safe)) (##fx= _g42756_ 2))
                 (apply (lambda (_stx20714_ _is?20716_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                             _stx20714_
                             _is?20716_)))
                        _g42757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g42757_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20688_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20688_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20685_)
        (let ()
          (declare (not safe))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20685_
           |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20679_)
        (if _id20679_
            (let ((_info20682_ (gx#syntax-local-value _id20679_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                     _info20682_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _info20682_ 'type-exhibitor))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20444_ _stx20446_)
        (let* ((_g2044820468_
                (lambda (_g2044920464_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2044920464_)))
               (_g2044720675_
                (lambda (_g2044920472_)
                  (if (gx#stx-pair? _g2044920472_)
                      (let ((_e2045320475_ (gx#syntax-e _g2044920472_)))
                        (let ((_hd2045220479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2045320475_)))
                              (_tl2045120482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2045320475_))))
                          (if (gx#stx-pair/null? _tl2045120482_)
                              (let ((_g42758_
                                     (gx#syntax-split-splice
                                      _tl2045120482_
                                      '0)))
                                (begin
                                  (let ((_g42759_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g42758_)
                                               (##vector-length _g42758_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g42759_ 2)))
                                        (error "Context expects 2 values"
                                               _g42759_)))
                                  (let ((_target2045420485_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42758_ 0)))
                                        (_tl2045620488_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g42758_ 1))))
                                    (if (gx#stx-null? _tl2045620488_)
                                        (letrec ((_loop2045720491_
                                                  (lambda (_hd2045520495_
                                                           _arg2046120498_)
                                                    (if (gx#stx-pair?
                                                         _hd2045520495_)
                                                        (let ((_e2045820501_
                                                               (gx#syntax-e
                                                                _hd2045520495_)))
                                                          (let ((_lp-hd2045920505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2045820501_)))
                        (_lp-tl2046020508_
                         (let () (declare (not safe)) (##cdr _e2045820501_))))
                    (let ((__tmp42761
                           (cons _lp-hd2045920505_ _arg2046120498_)))
                      (declare (not safe))
                      (_loop2045720491_ _lp-tl2046020508_ __tmp42761))))
                (let ((_arg2046220511_ (reverse _arg2046120498_)))
                  ((lambda (_L20515_)
                     (let* ((_g2053120562_
                             (lambda (_g2053220558_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2053220558_)))
                            (_g2053020671_
                             (lambda (_g2053220566_)
                               (if (gx#stx-pair? _g2053220566_)
                                   (let ((_e2054120569_
                                          (gx#syntax-e _g2053220566_)))
                                     (let ((_hd2054020573_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2054120569_)))
                                           (_tl2053920576_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2054120569_))))
                                       (if (gx#stx-pair? _tl2053920576_)
                                           (let ((_e2054420579_
                                                  (gx#syntax-e
                                                   _tl2053920576_)))
                                             (let ((_hd2054320583_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2054420579_)))
                                                   (_tl2054220586_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2054420579_))))
                                               (if (gx#stx-pair?
                                                    _tl2054220586_)
                                                   (let ((_e2054720589_
                                                          (gx#syntax-e
                                                           _tl2054220586_)))
                                                     (let ((_hd2054620593_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2054720589_)))
                                                           (_tl2054520596_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2054720589_))))
                                                       (if (gx#stx-pair?
                                                            _tl2054520596_)
                                                           (let ((_e2055020599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2054520596_)))
                     (let ((_hd2054920603_
                            (let ()
                              (declare (not safe))
                              (##car _e2055020599_)))
                           (_tl2054820606_
                            (let ()
                              (declare (not safe))
                              (##cdr _e2055020599_))))
                       (if (gx#stx-pair? _tl2054820606_)
                           (let ((_e2055320609_ (gx#syntax-e _tl2054820606_)))
                             (let ((_hd2055220613_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2055320609_)))
                                   (_tl2055120616_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2055320609_))))
                               (if (gx#stx-pair? _tl2055120616_)
                                   (let ((_e2055620619_
                                          (gx#syntax-e _tl2055120616_)))
                                     (let ((_hd2055520623_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2055620619_)))
                                           (_tl2055420626_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2055620619_))))
                                       (if (gx#stx-null? _tl2055420626_)
                                           ((lambda (_L20629_
                                                     _L20631_
                                                     _L20632_
                                                     _L20633_
                                                     _L20634_
                                                     _L20635_)
                                              (let ()
                                                (cons _L20633_
                                                      (foldr (lambda (_g2066220665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2066320668_)
                       (cons _g2066220665_ _g2066320668_))
                     '()
                     _L20515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2055520623_
                                            _hd2055220613_
                                            _hd2054920603_
                                            _hd2054620593_
                                            _hd2054320583_
                                            _hd2054020573_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2053120562_ _g2053220566_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2053120562_ _g2053220566_)))))
                           (let ()
                             (declare (not safe))
                             (_g2053120562_ _g2053220566_)))))
                   (let ()
                     (declare (not safe))
                     (_g2053120562_ _g2053220566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2053120562_
                                                      _g2053220566_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2053120562_ _g2053220566_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2053120562_ _g2053220566_)))))
                            (__tmp42760
                             (let ()
                               (declare (not safe))
                               (unchecked-slot-ref
                                _self20444_
                                'expander-identifiers))))
                       (declare (not safe))
                       (_g2053020671_ __tmp42760)))
                   _arg2046220511_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2045720491_
                                             _target2045420485_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2044820468_ _g2044920472_))))))
                              (let ()
                                (declare (not safe))
                                (_g2044820468_ _g2044920472_)))))
                      (let ()
                        (declare (not safe))
                        (_g2044820468_ _g2044920472_))))))
          (declare (not safe))
          (_g2044720675_ _stx20446_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20435_)
        (letrec ((_body-opt?20438_
                  (lambda (_key20441_)
                    (memq (gx#stx-e _key20441_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            properties:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20435_ _body-opt?20438_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx19277_
               _id19279_
               _super-ref19280_
               _slots19281_
               _body19282_
               _struct?19283_)
        (letrec* ((_wrap19285_
                   (lambda (_e-stx20432_)
                     (gx#stx-wrap-source
                      _e-stx20432_
                      (gx#stx-source _stx19277_))))
                  (_make-id19287_
                   (if (uninterned-symbol? (gx#stx-e _id19279_))
                       (lambda _g42762_ (gx#genident _id19279_))
                       (lambda _args20429_
                         (apply gx#stx-identifier _id19279_ _args20429_)))))
          (gx#check-duplicate-identifiers _slots19281_ _stx19277_)
          (let* ((_name19289_ (symbol->string (gx#stx-e _id19279_)))
                 (_super19292_
                  (if _struct?19283_
                      (if _super-ref19280_
                          (gx#syntax-local-value _super-ref19280_)
                          '#f)
                      (map gx#syntax-local-value _super-ref19280_)))
                 (_g1929519303_
                  (lambda (_g1929619299_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1929619299_)))
                 (_g1929420423_
                  (lambda (_g1929619307_)
                    ((lambda (_L19310_)
                       (let ()
                         (let* ((_g1932619334_
                                 (lambda (_g1932719330_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1932719330_)))
                                (_g1932520419_
                                 (lambda (_g1932719338_)
                                   ((lambda (_L19341_)
                                      (let ()
                                        (let* ((_g1935419362_
                                                (lambda (_g1935519358_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1935519358_)))
                                               (_g1935320415_
                                                (lambda (_g1935519366_)
                                                  ((lambda (_L19369_)
                                                     (let ()
                                                       (let* ((_g1938219390_
                                                               (lambda (_g1938319386_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1938319386_)))
                      (_g1938120411_
                       (lambda (_g1938319394_)
                         ((lambda (_L19397_)
                            (let ()
                              (let* ((_g1941019418_
                                      (lambda (_g1941119414_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1941119414_)))
                                     (_g1940920407_
                                      (lambda (_g1941119422_)
                                        ((lambda (_L19425_)
                                           (let ()
                                             (let* ((_g1943819446_
                                                     (lambda (_g1943919442_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1943919442_)))
                                                    (_g1943720403_
                                                     (lambda (_g1943919450_)
                                                       ((lambda (_L19453_)
                                                          (let ()
                                                            (let* ((_g1946619483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1946719479_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1946719479_)))
                           (_g1946520399_
                            (lambda (_g1946719487_)
                              (if (gx#stx-pair/null? _g1946719487_)
                                  (let ((_g42763_
                                         (gx#syntax-split-splice
                                          _g1946719487_
                                          '0)))
                                    (begin
                                      (let ((_g42764_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42763_)
                                                   (##vector-length _g42763_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42764_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42764_)))
                                      (let ((_target1946919490_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42763_ 0)))
                                            (_tl1947119493_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42763_ 1))))
                                        (if (gx#stx-null? _tl1947119493_)
                                            (letrec ((_loop1947219496_
                                                      (lambda (_hd1947019500_
                                                               _slot1947619503_)
                                                        (if (gx#stx-pair?
                                                             _hd1947019500_)
                                                            (let ((_e1947319506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1947019500_)))
                      (let ((_lp-hd1947419510_
                             (let ()
                               (declare (not safe))
                               (##car _e1947319506_)))
                            (_lp-tl1947519513_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1947319506_))))
                        (let ((__tmp42792
                               (cons _lp-hd1947419510_ _slot1947619503_)))
                          (declare (not safe))
                          (_loop1947219496_ _lp-tl1947519513_ __tmp42792))))
                    (let ((_slot1947719516_ (reverse _slot1947619503_)))
                      ((lambda (_L19520_)
                         (let ()
                           (let* ((_g1953719554_
                                   (lambda (_g1953819550_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1953819550_)))
                                  (_g1953620390_
                                   (lambda (_g1953819558_)
                                     (if (gx#stx-pair/null? _g1953819558_)
                                         (let ((_g42765_
                                                (gx#syntax-split-splice
                                                 _g1953819558_
                                                 '0)))
                                           (begin
                                             (let ((_g42766_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42765_)
                                                          (##vector-length
                                                           _g42765_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42766_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42766_)))
                                             (let ((_target1954019561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42765_
                                                       0)))
                                                   (_tl1954219564_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42765_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl1954219564_)
                                                   (letrec ((_loop1954319567_
                                                             (lambda (_hd1954119571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _getf1954719574_)
                       (if (gx#stx-pair? _hd1954119571_)
                           (let ((_e1954419577_ (gx#syntax-e _hd1954119571_)))
                             (let ((_lp-hd1954519581_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1954419577_)))
                                   (_lp-tl1954619584_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1954419577_))))
                               (let ((__tmp42790
                                      (cons _lp-hd1954519581_
                                            _getf1954719574_)))
                                 (declare (not safe))
                                 (_loop1954319567_
                                  _lp-tl1954619584_
                                  __tmp42790))))
                           (let ((_getf1954819587_ (reverse _getf1954719574_)))
                             ((lambda (_L19591_)
                                (let ()
                                  (let* ((_g1960819625_
                                          (lambda (_g1960919621_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g1960919621_)))
                                         (_g1960720381_
                                          (lambda (_g1960919629_)
                                            (if (gx#stx-pair/null?
                                                 _g1960919629_)
                                                (let ((_g42767_
                                                       (gx#syntax-split-splice
                                                        _g1960919629_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42767_)
                         (##vector-length _g42767_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42768_ 2)))
                  (error "Context expects 2 values" _g42768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1961119632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42767_
                                                              0)))
                                                          (_tl1961319635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42767_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1961319635_)
                                                          (letrec ((_loop1961419638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1961219642_ _setf1961819645_)
                              (if (gx#stx-pair? _hd1961219642_)
                                  (let ((_e1961519648_
                                         (gx#syntax-e _hd1961219642_)))
                                    (let ((_lp-hd1961619652_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1961519648_)))
                                          (_lp-tl1961719655_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1961519648_))))
                                      (let ((__tmp42788
                                             (cons _lp-hd1961619652_
                                                   _setf1961819645_)))
                                        (declare (not safe))
                                        (_loop1961419638_
                                         _lp-tl1961719655_
                                         __tmp42788))))
                                  (let ((_setf1961919658_
                                         (reverse _setf1961819645_)))
                                    ((lambda (_L19662_)
                                       (let ()
                                         (let* ((_type-attr19693_
                                                 (if (gx#stx-null?
                                                      _slots19281_)
                                                     '()
                                                     (cons 'slots:
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-check-splice-targets
                            _L19662_
                            _L19591_
                            _L19520_)
                           (foldr (lambda (_g1967819683_
                                           _g1967919686_
                                           _g1968019688_
                                           _g1968119690_)
                                    (cons (cons _g1968019688_
                                                (cons _g1967919686_
                                                      (cons _g1967819683_
                                                            '())))
                                          _g1968119690_))
                                  '()
                                  _L19662_
                                  _L19591_
                                  _L19520_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-name19700_
                                                 (cons 'name:
                                                       (cons (let ((_$e19696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-getq 'name: _body19282_)))
                       (if _$e19696_ _$e19696_ _id19279_))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-id19715_
                                                 (let ((_$e19711_
                                                        (let ((_e1970219704_
                                                               (gx#stx-getq
                                                                'id:
                                                                _body19282_)))
                                                          (if _e1970219704_
                                                              (let ((_e19708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1970219704_))
                        (cons 'id: (cons _e19708_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19711_
                                                       _$e19711_
                                                       '())))
                                                (_type-constructor19730_
                                                 (let ((_$e19726_
                                                        (let ((_e1971719719_
                                                               (gx#stx-getq
                                                                'constructor:
                                                                _body19282_)))
                                                          (if _e1971719719_
                                                              (let ((_e19723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1971719719_))
                        (cons 'constructor: (cons _e19723_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19726_
                                                       _$e19726_
                                                       '())))
                                                (_properties19774_
                                                 (let* ((_properties19737_
                                                         (let ((_$e19733_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'properties:
                         _body19282_)))
                   (if _$e19733_ _$e19733_ '())))
                (_properties19740_
                 (if (gx#stx-e (gx#stx-getq 'transparent: _body19282_))
                     (cons (cons 'transparent: '#t) _properties19737_)
                     _properties19737_))
                (_properties19743_
                 (if (gx#stx-e (gx#stx-getq 'final: _body19282_))
                     (cons (cons 'final: '#t) _properties19740_)
                     _properties19740_))
                (_properties19756_
                 (let ((_$e19746_
                        (gx#stx-e (gx#stx-getq 'print: _body19282_))))
                   (if _$e19746_
                       ((lambda (_print19750_)
                          (let ((_print19753_
                                 (if (eq? _print19750_ '#t)
                                     _slots19281_
                                     _print19750_)))
                            (cons (cons 'print: _print19753_)
                                  _properties19743_)))
                        _$e19746_)
                       _properties19743_)))
                (_properties19769_
                 (let ((_$e19759_
                        (gx#stx-e (gx#stx-getq 'equal: _body19282_))))
                   (if _$e19759_
                       ((lambda (_equal19763_)
                          (let ((_equal19766_
                                 (if (eq? _equal19763_ '#t)
                                     _slots19281_
                                     _equal19763_)))
                            (cons (cons 'equal: _equal19766_)
                                  _properties19756_)))
                        _$e19759_)
                       _properties19756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _properties19769_))
                                                (_type-properties19814_
                                                 (if (null? _properties19774_)
                                                     _properties19774_
                                                     (let* ((_g1977719785_
                                                             (lambda (_g1977819781_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1977819781_)))
                                                            (_g1977619810_
                                                             (lambda (_g1977819789_)
                                                               ((lambda (_L19792_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons 'properties:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L19792_ '()))
                                        '()))))
                        _g1977819789_))))
               (declare (not safe))
               (_g1977619810_ _properties19774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_type-unchecked19829_
                                                 (let ((_$e19825_
                                                        (let ((_e1981619818_
                                                               (gx#stx-getq
                                                                'unchecked:
                                                                _body19282_)))
                                                          (if _e1981619818_
                                                              (let ((_e19822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e1981619818_))
                        (cons 'unchecked: (cons _e19822_ '())))
                      '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19825_
                                                       _$e19825_
                                                       (cons 'unchecked:
                                                             (cons '#t '())))))
                                                (_g1983219849_
                                                 (lambda (_g1983319845_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1983319845_)))
                                                (_g1983120377_
                                                 (lambda (_g1983319853_)
                                                   (if (gx#stx-pair/null?
                                                        _g1983319853_)
                                                       (let ((_g42769_
                                                              (gx#syntax-split-splice
                                                               _g1983319853_
                                                               '0)))
                                                         (begin
                                                           (let ((_g42770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (if (##values? _g42769_)
                                (##vector-length _g42769_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g42770_ 2)))
                         (error "Context expects 2 values" _g42770_)))
                   (let ((_target1983519856_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42769_ 0)))
                         (_tl1983719859_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g42769_ 1))))
                     (if (gx#stx-null? _tl1983719859_)
                         (letrec ((_loop1983819862_
                                   (lambda (_hd1983619866_
                                            _type-body1984219869_)
                                     (if (gx#stx-pair? _hd1983619866_)
                                         (let ((_e1983919872_
                                                (gx#syntax-e _hd1983619866_)))
                                           (let ((_lp-hd1984019876_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1983919872_)))
                                                 (_lp-tl1984119879_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1983919872_))))
                                             (let ((__tmp42786
                                                    (cons _lp-hd1984019876_
                                                          _type-body1984219869_)))
                                               (declare (not safe))
                                               (_loop1983819862_
                                                _lp-tl1984119879_
                                                __tmp42786))))
                                         (let ((_type-body1984319882_
                                                (reverse _type-body1984219869_)))
                                           ((lambda (_L19886_)
                                              (let ()
                                                (let* ((_g1990319911_
                                                        (lambda (_g1990419907_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1990419907_)))
                                                       (_g1990220365_
                                                        (lambda (_g1990419915_)
                                                          ((lambda (_L19918_)
                                                             (let ()
                                                               (let* ((_g1993119939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1993219935_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g1993219935_)))
                              (_g1993020361_
                               (lambda (_g1993219943_)
                                 ((lambda (_L19946_)
                                    (let ()
                                      (let* ((_g1995919967_
                                              (lambda (_g1996019963_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1996019963_)))
                                             (_g1995820275_
                                              (lambda (_g1996019971_)
                                                ((lambda (_L19974_)
                                                   (let ()
                                                     (let* ((_g1998719995_
                                                             (lambda (_g1998819991_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1998819991_)))
                                                            (_g1998620271_
                                                             (lambda (_g1998819999_)
                                                               ((lambda (_L20002_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2001520023_
                                    (lambda (_g2001620019_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2001620019_)))
                                   (_g2001420267_
                                    (lambda (_g2001620027_)
                                      ((lambda (_L20030_)
                                         (let ()
                                           (let* ((_g2004320051_
                                                   (lambda (_g2004420047_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g2004420047_)))
                                                  (_g2004220225_
                                                   (lambda (_g2004420055_)
                                                     ((lambda (_L20058_)
                                                        (let ()
                                                          (let* ((_g2007120079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2007220075_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g2007220075_)))
                         (_g2007020221_
                          (lambda (_g2007220083_)
                            ((lambda (_L20086_)
                               (let ()
                                 (let* ((_g2009920107_
                                         (lambda (_g2010020103_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2010020103_)))
                                        (_g2009820217_
                                         (lambda (_g2010020111_)
                                           ((lambda (_L20114_)
                                              (let ()
                                                (let* ((_g2012720135_
                                                        (lambda (_g2012820131_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g2012820131_)))
                                                       (_g2012620213_
                                                        (lambda (_g2012820139_)
                                                          ((lambda (_L20142_)
                                                             (let ()
                                                               (let* ((_g2015520163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2015620159_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g2015620159_)))
                              (_g2015420185_
                               (lambda (_g2015620167_)
                                 ((lambda (_L20170_)
                                    (let ()
                                      (let ()
                                        (let ((__tmp42771
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons _L19918_
                                                           (cons _L20170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_wrap19285_ __tmp42771)))))
                                  _g2015620167_)))
                              (__tmp42772
                               (let ((__tmp42773
                                      (cons (gx#datum->syntax '#f 'defsyntax)
                                            (cons _L19341_
                                                  (cons (cons _L19946_
                                                              (cons 'runtime-identifier:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                        (cons _L19369_ '()))
                                  (cons 'expander-identifiers:
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons _L19974_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _L19369_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _L19397_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L19425_ '()))
                                    (cons (cons (gx#datum->syntax '#f '@list)
                                                (foldr (lambda (_g2019220195_
                                                                _g2019320198_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote-syntax)
                             (cons _g2019220195_ '()))
                       _g2019320198_))
               '()
               _L19591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (foldr (lambda (_g2019020201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2019120204_)
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _g2019020201_ '()))
                             _g2019120204_))
                     '()
                     _L19662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons 'type-exhibitor:
                                                    (cons (cons _L20002_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L20030_ '()))
                              (cons _L20058_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L20086_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L20114_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L20142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons (foldr (lambda (_g2018820207_ _g2018920210_)
                                         (cons _g2018820207_ _g2018920210_))
                                       '()
                                       _L19520_)
                                '()))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (_wrap19285_ __tmp42773))))
                         (declare (not safe))
                         (_g2015420185_ __tmp42772))))
                   _g2012820139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g2012620213_
                                                   _properties19774_))))
                                            _g2010020111_)))
                                        (__tmp42774
                                         (if (not (null? _type-constructor19730_))
                                             (cadr _type-constructor19730_)
                                             '#f)))
                                   (declare (not safe))
                                   (_g2009820217_ __tmp42774))))
                             _g2007220083_)))
                         (__tmp42775 (cadr _type-name19700_)))
                    (declare (not safe))
                    (_g2007020221_ __tmp42775))))
              _g2004420055_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp42776
                                                   (let ((_quote-e20264_
                                                          (lambda (_x-ref20229_)
                                                            (if _x-ref20229_
                                                                (let* ((_g2023220240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2023320236_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g2023320236_)))
                               (_g2023120260_
                                (lambda (_g2023320244_)
                                  ((lambda (_L20247_)
                                     (let ()
                                       (cons (gx#datum->syntax
                                              '#f
                                              'quote-syntax)
                                             (cons _L20247_ '()))))
                                   _g2023320244_))))
                          (declare (not safe))
                          (_g2023120260_ _x-ref20229_))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _struct?19283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (_quote-e20264_
                                                            _super-ref19280_))
                                                         (cons 'list
                                                               (map _quote-e20264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super-ref19280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_g2004220225_ __tmp42776))))
                                       _g2001620027_)))
                                   (__tmp42777
                                    (if (not (null? _type-id19715_))
                                        (cadr _type-id19715_)
                                        '#f)))
                              (declare (not safe))
                              (_g2001420267_ __tmp42777))))
                        _g1998819999_)))
                    (__tmp42778
                     (if _struct?19283_
                         (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                         (gx#datum->syntax
                          '#f
                          'make-runtime-class-exhibitor))))
               (declare (not safe))
               (_g1998620271_ __tmp42778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g1996019971_)))
                                             (__tmp42779
                                              (if _struct?19283_
                                                  (if _super19292_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quote-syntax)
                                                            (cons _L19453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_g2027920296_
                                                          (lambda (_g2028020292_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2028020292_)))
                                                         (_g2027820357_
                                                          (lambda (_g2028020300_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2028020300_)
                        (let ((_g42780_
                               (gx#syntax-split-splice _g2028020300_ '0)))
                          (begin
                            (let ((_g42781_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g42780_)
                                         (##vector-length _g42780_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g42781_ 2)))
                                  (error "Context expects 2 values" _g42781_)))
                            (let ((_target2028220303_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42780_ 0)))
                                  (_tl2028420306_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g42780_ 1))))
                              (if (gx#stx-null? _tl2028420306_)
                                  (letrec ((_loop2028520309_
                                            (lambda (_hd2028320313_
                                                     _super-id2028920316_)
                                              (if (gx#stx-pair? _hd2028320313_)
                                                  (let ((_e2028620319_
                                                         (gx#syntax-e
                                                          _hd2028320313_)))
                                                    (let ((_lp-hd2028720323_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2028620319_)))
                                                          (_lp-tl2028820326_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2028620319_))))
                                                      (let ((__tmp42782
                                                             (cons _lp-hd2028720323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _super-id2028920316_)))
                (declare (not safe))
                (_loop2028520309_ _lp-tl2028820326_ __tmp42782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_super-id2029020329_
                                                         (reverse _super-id2028920316_)))
                                                    ((lambda (_L20333_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_g2034820351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2034920354_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g2034820351_ '()))
                                      _g2034920354_))
                              '()
                              _L20333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _super-id2029020329_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2028520309_
                                       _target2028220303_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g2027920296_ _g2028020300_))))))
                        (let ()
                          (declare (not safe))
                          (_g2027920296_ _g2028020300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2027820357_
                                                     _L19453_)))))
                                        (declare (not safe))
                                        (_g1995820275_ __tmp42779))))
                                  _g1993219943_)))
                              (__tmp42783
                               (if _struct?19283_
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-struct-info)
                                   (gx#datum->syntax
                                    '#f
                                    'make-extended-class-info))))
                         (declare (not safe))
                         (_g1993020361_ __tmp42783))))
                   _g1990419915_)))
               (__tmp42784
                (let ((__tmp42785
                       (cons _L19310_
                             (cons _L19369_
                                   (cons _L19453_
                                         (cons _L19397_
                                               (cons _L19425_
                                                     (foldr (lambda (_g2036820371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2036920374_)
                      (cons _g2036820371_ _g2036920374_))
                    '()
                    _L19886_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (declare (not safe))
                  (_wrap19285_ __tmp42785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g1990220365_ __tmp42784))))
                                            _type-body1984319882_))))))
                           (let ()
                             (declare (not safe))
                             (_loop1983819862_ _target1983519856_ '())))
                         (let ()
                           (declare (not safe))
                           (_g1983219849_ _g1983319853_))))))
               (let () (declare (not safe)) (_g1983219849_ _g1983319853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp42787
                                                 (foldr cons
                                                        (foldr cons
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr cons
                                     (foldr cons
                                            _type-unchecked19829_
                                            _type-properties19814_)
                                     _type-constructor19730_)
                              _type-name19700_)
                       _type-id19715_)
                _type-attr19693_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g1983120377_ __tmp42787))))
                                     _setf1961919658_))))))
                    (let ()
                      (declare (not safe))
                      (_loop1961419638_ _target1961119632_ '())))
                  (let ()
                    (declare (not safe))
                    (_g1960819625_ _g1960919629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1960819625_
                                                   _g1960919629_)))))
                                         (__tmp42789
                                          (gx#stx-map
                                           (lambda (_g2038420386_)
                                             (_make-id19287_
                                              _name19289_
                                              '"-"
                                              _g2038420386_
                                              '"-set!"))
                                           _slots19281_)))
                                    (declare (not safe))
                                    (_g1960720381_ __tmp42789))))
                              _getf1954819587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop1954319567_
                                                        _target1954019561_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1953719554_
                                                      _g1953819558_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g1953719554_ _g1953819558_)))))
                                  (__tmp42791
                                   (gx#stx-map
                                    (lambda (_g2039320395_)
                                      (_make-id19287_
                                       _name19289_
                                       '"-"
                                       _g2039320395_))
                                    _slots19281_)))
                             (declare (not safe))
                             (_g1953620390_ __tmp42791))))
                       _slot1947719516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1947219496_
                                                 _target1946919490_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1946619483_
                                               _g1946719487_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1946619483_ _g1946719487_))))))
                      (declare (not safe))
                      (_g1946520399_ _slots19281_))))
                _g1943919450_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp42793
                                                     (if _struct?19283_
                                                         (if _super19292_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (unchecked-slot-ref _super19292_ 'runtime-identifier))
                     '#f)
                 (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                      _super19292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1943720403_ __tmp42793))))
                                         _g1941119422_)))
                                     (__tmp42794
                                      (_make-id19287_ _name19289_ '"?")))
                                (declare (not safe))
                                (_g1940920407_ __tmp42794))))
                          _g1938319394_)))
                      (__tmp42795 (_make-id19287_ '"make-" _name19289_)))
                 (declare (not safe))
                 (_g1938120411_ __tmp42795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1935519366_)))
                                               (__tmp42796
                                                (_make-id19287_
                                                 _name19289_
                                                 '"::t")))
                                          (declare (not safe))
                                          (_g1935320415_ __tmp42796))))
                                    _g1932719338_))))
                           (declare (not safe))
                           (_g1932520419_ _id19279_))))
                     _g1929619307_)))
                 (__tmp42797
                  (if _struct?19283_
                      (gx#datum->syntax '#f 'defstruct-type)
                      (gx#datum->syntax '#f 'defclass-type))))
            (declare (not safe))
            (_g1929420423_ __tmp42797)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20751_)
        (letrec ((_generate20754_
                  (lambda (_hd20838_ _fields20840_ _body20841_)
                    (let* ((___stx3960039601_ _hd20838_)
                           (_g2084420859_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3960039601_))))
                      (let ((___kont3960339604_
                             (lambda (_L20897_ _L20899_)
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20751_
                                  _L20899_
                                  _L20897_
                                  _fields20840_
                                  _body20841_
                                  '#t))))
                            (___kont3960539606_
                             (lambda ()
                               (if (gx#identifier? _hd20838_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20751_
                                      _hd20838_
                                      '#f
                                      _fields20840_
                                      _body20841_
                                      '#t))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; struct name not an identifier"
                                    _stx20751_
                                    _hd20838_)))))
                        (let ((___match3962139622_
                               (lambda (_e2085020877_
                                        _hd2084920881_
                                        _tl2084820884_
                                        _e2085320887_
                                        _hd2085220891_
                                        _tl2085120894_)
                                 (let ((_L20897_ _hd2085220891_)
                                       (_L20899_ _hd2084920881_))
                                   (if (and (gx#identifier? _L20899_)
                                            (let ()
                                              (declare (not safe))
                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                               _L20897_)))
                                       (___kont3960339604_ _L20897_ _L20899_)
                                       (___kont3960539606_))))))
                          (if (gx#stx-pair? ___stx3960039601_)
                              (let ((_e2085020877_
                                     (gx#syntax-e ___stx3960039601_)))
                                (let ((_tl2084820884_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2085020877_)))
                                      (_hd2084920881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2085020877_))))
                                  (if (gx#stx-pair? _tl2084820884_)
                                      (let ((_e2085320887_
                                             (gx#syntax-e _tl2084820884_)))
                                        (let ((_tl2085120894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2085320887_)))
                                              (_hd2085220891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2085320887_))))
                                          (if (gx#stx-null? _tl2085120894_)
                                              (___match3962139622_
                                               _e2085020877_
                                               _hd2084920881_
                                               _tl2084820884_
                                               _e2085320887_
                                               _hd2085220891_
                                               _tl2085120894_)
                                              (___kont3960539606_))))
                                      (___kont3960539606_))))
                              (___kont3960539606_))))))))
          (let* ((_g2075720776_
                  (lambda (_g2075820772_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2075820772_)))
                 (_g2075620834_
                  (lambda (_g2075820780_)
                    (if (gx#stx-pair? _g2075820780_)
                        (let ((_e2076420783_ (gx#syntax-e _g2075820780_)))
                          (let ((_hd2076320787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2076420783_)))
                                (_tl2076220790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2076420783_))))
                            (if (gx#stx-pair? _tl2076220790_)
                                (let ((_e2076720793_
                                       (gx#syntax-e _tl2076220790_)))
                                  (let ((_hd2076620797_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2076720793_)))
                                        (_tl2076520800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2076720793_))))
                                    (if (gx#stx-pair? _tl2076520800_)
                                        (let ((_e2077020803_
                                               (gx#syntax-e _tl2076520800_)))
                                          (let ((_hd2076920807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2077020803_)))
                                                (_tl2076820810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2077020803_))))
                                            ((lambda (_L20813_
                                                      _L20815_
                                                      _L20816_)
                                               (if (and (gx#identifier-list?
                                                         _L20815_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L20813_)))
                                                   (_generate20754_
                                                    _L20816_
                                                    _L20815_
                                                    _L20813_)
                                                   (_g2075720776_
                                                    _g2075820780_)))
                                             _tl2076820810_
                                             _hd2076920807_
                                             _hd2076620797_)))
                                        (_g2075720776_ _g2075820780_))))
                                (_g2075720776_ _g2075820780_))))
                        (_g2075720776_ _g2075820780_)))))
            (_g2075620834_ _stx20751_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20918_)
        (letrec ((_generate20921_
                  (lambda (_hd21005_ _slots21007_ _body21008_)
                    (let* ((___stx3962439625_ _hd21005_)
                           (_g2101121023_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx3962439625_))))
                      (let ((___kont3962739628_
                             (lambda (_L21051_ _L21053_)
                               (let ((__tmp42798 (gx#syntax->list _L21051_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                  _stx20918_
                                  _L21053_
                                  __tmp42798
                                  _slots21007_
                                  _body21008_
                                  '#f))))
                            (___kont3962939630_
                             (lambda ()
                               (if (gx#identifier? _hd21005_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20918_
                                      _hd21005_
                                      '()
                                      _slots21007_
                                      _body21008_
                                      '#f))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; class name should be an identifier"
                                    _stx20918_
                                    _hd21005_)))))
                        (let ((___match3963739638_
                               (lambda (_e2101721041_
                                        _hd2101621045_
                                        _tl2101521048_)
                                 (let ((_L21051_ _tl2101521048_)
                                       (_L21053_ _hd2101621045_))
                                   (if (and (gx#stx-list? _L21051_)
                                            (gx#stx-andmap
                                             |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                             _L21051_))
                                       (___kont3962739628_ _L21051_ _L21053_)
                                       (___kont3962939630_))))))
                          (if (gx#stx-pair? ___stx3962439625_)
                              (let ((_e2101721041_
                                     (gx#syntax-e ___stx3962439625_)))
                                (let ((_tl2101521048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2101721041_)))
                                      (_hd2101621045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2101721041_))))
                                  (___match3963739638_
                                   _e2101721041_
                                   _hd2101621045_
                                   _tl2101521048_)))
                              (___kont3962939630_))))))))
          (let* ((_g2092420943_
                  (lambda (_g2092520939_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2092520939_)))
                 (_g2092321001_
                  (lambda (_g2092520947_)
                    (if (gx#stx-pair? _g2092520947_)
                        (let ((_e2093120950_ (gx#syntax-e _g2092520947_)))
                          (let ((_hd2093020954_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2093120950_)))
                                (_tl2092920957_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2093120950_))))
                            (if (gx#stx-pair? _tl2092920957_)
                                (let ((_e2093420960_
                                       (gx#syntax-e _tl2092920957_)))
                                  (let ((_hd2093320964_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2093420960_)))
                                        (_tl2093220967_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2093420960_))))
                                    (if (gx#stx-pair? _tl2093220967_)
                                        (let ((_e2093720970_
                                               (gx#syntax-e _tl2093220967_)))
                                          (let ((_hd2093620974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2093720970_)))
                                                (_tl2093520977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2093720970_))))
                                            ((lambda (_L20980_
                                                      _L20982_
                                                      _L20983_)
                                               (if (and (gx#identifier-list?
                                                         _L20982_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                           _L20980_)))
                                                   (_generate20921_
                                                    _L20983_
                                                    _L20982_
                                                    _L20980_)
                                                   (_g2092420943_
                                                    _g2092520947_)))
                                             _tl2093520977_
                                             _hd2093620974_
                                             _hd2093320964_)))
                                        (_g2092420943_ _g2092520947_))))
                                (_g2092420943_ _g2092520947_))))
                        (_g2092420943_ _g2092520947_)))))
            (_g2092321001_ _stx20918_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx21070_)
        (letrec ((_wrap21073_
                  (lambda (_e-stx21410_)
                    (gx#stx-wrap-source
                     _e-stx21410_
                     (gx#stx-source _stx21070_))))
                 (_method-opt?21075_
                  (lambda (_x21407_) (memq (gx#stx-e _x21407_) '(rebind:)))))
          (let* ((_g2107721106_
                  (lambda (_g2107821102_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2107821102_)))
                 (_g2107621403_
                  (lambda (_g2107821110_)
                    (if (gx#stx-pair? _g2107821110_)
                        (let ((_e2108521113_ (gx#syntax-e _g2107821110_)))
                          (let ((_hd2108421117_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2108521113_)))
                                (_tl2108321120_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2108521113_))))
                            (if (gx#stx-pair? _tl2108321120_)
                                (let ((_e2108821123_
                                       (gx#syntax-e _tl2108321120_)))
                                  (let ((_hd2108721127_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2108821123_)))
                                        (_tl2108621130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2108821123_))))
                                    (if (gx#stx-pair? _hd2108721127_)
                                        (let ((_e2109121133_
                                               (gx#syntax-e _hd2108721127_)))
                                          (let ((_hd2109021137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2109121133_)))
                                                (_tl2108921140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2109121133_))))
                                            (if (gx#identifier? _hd2109021137_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g42799_|
                                                     _hd2109021137_)
                                                    (if (gx#stx-pair?
                                                         _tl2108921140_)
                                                        (let ((_e2109421143_
                                                               (gx#syntax-e
                                                                _tl2108921140_)))
                                                          (let ((_hd2109321147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2109421143_)))
                        (_tl2109221150_
                         (let () (declare (not safe)) (##cdr _e2109421143_))))
                    (if (gx#stx-pair? _tl2109221150_)
                        (let ((_e2109721153_ (gx#syntax-e _tl2109221150_)))
                          (let ((_hd2109621157_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2109721153_)))
                                (_tl2109521160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2109721153_))))
                            (if (gx#stx-null? _tl2109521160_)
                                (if (gx#stx-pair? _tl2108621130_)
                                    (let ((_e2110021163_
                                           (gx#syntax-e _tl2108621130_)))
                                      (let ((_hd2109921167_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2110021163_)))
                                            (_tl2109821170_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2110021163_))))
                                        ((lambda (_L21173_
                                                  _L21175_
                                                  _L21176_
                                                  _L21177_)
                                           (if (and (gx#identifier? _L21177_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                       _L21176_))
                                                    (gx#stx-plist?
                                                     _L21173_
                                                     _method-opt?21075_))
                                               (let* ((_klass21202_
                                                       (gx#syntax-local-value
                                                        _L21176_))
                                                      (_rebind?21205_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L21173_))
                                                           '#t
                                                           '#f))
                                                      (_g2120821216_
                                                       (lambda (_g2120921212_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2120921212_)))
                                                      (_g2120721399_
                                                       (lambda (_g2120921220_)
                                                         ((lambda (_L21223_)
                                                            (let ()
                                                              (let* ((_g2123721245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2123821241_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2123821241_)))
                             (_g2123621395_
                              (lambda (_g2123821249_)
                                ((lambda (_L21252_)
                                   (let ()
                                     (let* ((_g2126521273_
                                             (lambda (_g2126621269_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2126621269_)))
                                            (_g2126421391_
                                             (lambda (_g2126621277_)
                                               ((lambda (_L21280_)
                                                  (let ()
                                                    (let* ((_g2129321301_
                                                            (lambda (_g2129421297_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2129421297_)))
                                                           (_g2129221387_
                                                            (lambda (_g2129421305_)
                                                              ((lambda (_L21308_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2132121329_
                                   (lambda (_g2132221325_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2132221325_)))
                                  (_g2132021383_
                                   (lambda (_g2132221333_)
                                     ((lambda (_L21336_)
                                        (let ()
                                          (let* ((_g2134921357_
                                                  (lambda (_g2135021353_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2135021353_)))
                                                 (_g2134821379_
                                                  (lambda (_g2135021361_)
                                                    ((lambda (_L21364_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21073_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L21308_ (cons _L21364_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2135021361_))))
                                            (_g2134821379_
                                             (_wrap21073_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L21223_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L21177_ '()))
                        (cons _L21252_ (cons _L21336_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2132221333_))))
                             (_g2132021383_ _rebind?21205_))))
                       _g2129421305_))))
              (_g2129221387_
               (_wrap21073_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L21252_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L21280_
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
                                                            (cons _L21223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L21177_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L21175_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2126621277_))))
                                       (_g2126421391_
                                        (gx#stx-identifier
                                         _L21177_
                                         '@next-method)))))
                                 _g2123821249_))))
                        (_g2123621395_
                         (gx#stx-identifier
                          _L21177_
                          _L21176_
                          '"::"
                          _L21177_)))))
                  _g2120921220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2120721399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (unchecked-slot-ref
                                                     _klass21202_
                                                     'runtime-identifier))))
                                               (if (not (gx#identifier?
                                                         _L21177_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx21070_
                                                    _L21177_)
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                               _L21176_)))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx21070_
                                                        _L21176_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx21070_)))))
                                         _tl2109821170_
                                         _hd2109921167_
                                         _hd2109621157_
                                         _hd2109321147_)))
                                    (_g2107721106_ _g2107821110_))
                                (_g2107721106_ _g2107821110_))))
                        (_g2107721106_ _g2107821110_))))
                (_g2107721106_ _g2107821110_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2107721106_
                                                     _g2107821110_))
                                                (_g2107721106_
                                                 _g2107821110_))))
                                        (_g2107721106_ _g2107821110_))))
                                (_g2107721106_ _g2107821110_))))
                        (_g2107721106_ _g2107821110_)))))
            (_g2107621403_ _stx21070_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_stx21413_)
        (letrec ((_dotted-identifier?21416_
                  (lambda (_id22049_)
                    (if (gx#identifier? _id22049_)
                        (let ((_id-str22052_
                               (symbol->string (gx#stx-e _id22049_))))
                          (if (string-index _id-str22052_ '#\.)
                              (let ((_split22055_
                                     (string-split _id-str22052_ '#\.)))
                                (fx= (length _split22055_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted21418_
                  (lambda (_id22038_)
                    (let* ((_id-str22041_
                            (symbol->string (gx#stx-e _id22038_)))
                           (_split22044_ (string-split _id-str22041_ '#\.)))
                      (cons (gx#stx-identifier _id22038_ (car _split22044_))
                            (cons (gx#stx-identifier
                                   _id22038_
                                   (cadr _split22044_))
                                  '()))))))
          (let* ((___stx3964039641_ _stx21413_)
                 (_g2142321510_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx3964039641_))))
            (let ((___kont3964339644_
                   (lambda (_L21931_ _L21933_ _L21934_)
                     (let* ((_g2196221977_
                             (lambda (_g2196321973_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2196321973_)))
                            (_g2196122030_
                             (lambda (_g2196321981_)
                               (if (gx#stx-pair? _g2196321981_)
                                   (let ((_e2196821984_
                                          (gx#syntax-e _g2196321981_)))
                                     (let ((_hd2196721988_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2196821984_)))
                                           (_tl2196621991_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2196821984_))))
                                       (if (gx#stx-pair? _tl2196621991_)
                                           (let ((_e2197121994_
                                                  (gx#syntax-e
                                                   _tl2196621991_)))
                                             (let ((_hd2197021998_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2197121994_)))
                                                   (_tl2196922001_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2197121994_))))
                                               (if (gx#stx-null?
                                                    _tl2196922001_)
                                                   ((lambda (_L22004_ _L22006_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'apply)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'call-method)
                            (cons _L22006_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L22004_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (foldr (lambda (_g2202122024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2202222027_)
                     (cons _g2202122024_ _g2202222027_))
                   '()
                   _L21933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2197021998_
                                                    _hd2196721988_)
                                                   (_g2196221977_
                                                    _g2196321981_))))
                                           (_g2196221977_ _g2196321981_))))
                                   (_g2196221977_ _g2196321981_)))))
                       (_g2196122030_ (_split-dotted21418_ _L21934_)))))
                  (___kont3964739648_
                   (lambda (_L21773_ _L21775_)
                     (let* ((_g2179221807_
                             (lambda (_g2179321803_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2179321803_)))
                            (_g2179121860_
                             (lambda (_g2179321811_)
                               (if (gx#stx-pair? _g2179321811_)
                                   (let ((_e2179821814_
                                          (gx#syntax-e _g2179321811_)))
                                     (let ((_hd2179721818_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2179821814_)))
                                           (_tl2179621821_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2179821814_))))
                                       (if (gx#stx-pair? _tl2179621821_)
                                           (let ((_e2180121824_
                                                  (gx#syntax-e
                                                   _tl2179621821_)))
                                             (let ((_hd2180021828_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2180121824_)))
                                                   (_tl2179921831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2180121824_))))
                                               (if (gx#stx-null?
                                                    _tl2179921831_)
                                                   ((lambda (_L21834_ _L21836_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'call-method)
                                                              (cons _L21836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L21834_ '()))
                                  (foldr (lambda (_g2185121854_ _g2185221857_)
                                           (cons _g2185121854_ _g2185221857_))
                                         '()
                                         _L21773_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2180021828_
                                                    _hd2179721818_)
                                                   (_g2179221807_
                                                    _g2179321811_))))
                                           (_g2179221807_ _g2179321811_))))
                                   (_g2179221807_ _g2179321811_)))))
                       (_g2179121860_ (_split-dotted21418_ _L21775_)))))
                  (___kont3965139652_
                   (lambda (_L21677_ _L21679_ _L21680_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _L21679_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L21680_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_g2170721710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2170821713_)
                          (cons _g2170721710_ _g2170821713_))
                        '()
                        _L21677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (___kont3965539656_
                   (lambda (_L21577_ _L21579_ _L21580_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _L21579_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21580_ '()))
                                       (foldr (lambda (_g2160121604_
                                                       _g2160221607_)
                                                (cons _g2160121604_
                                                      _g2160221607_))
                                              '()
                                              _L21577_)))))))
              (let* ((___match3975939760_
                      (lambda (_e2148921517_
                               _hd2148821521_
                               _tl2148721524_
                               _e2149221527_
                               _hd2149121531_
                               _tl2149021534_
                               _e2149521537_
                               _hd2149421541_
                               _tl2149321544_
                               ___splice3965739658_
                               _target2149621547_
                               _tl2149821550_)
                        (letrec ((_loop2149921553_
                                  (lambda (_hd2149721557_ _arg2150321560_)
                                    (if (gx#stx-pair? _hd2149721557_)
                                        (let ((_e2150021563_
                                               (gx#syntax-e _hd2149721557_)))
                                          (let ((_lp-tl2150221570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2150021563_)))
                                                (_lp-hd2150121567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2150021563_))))
                                            (_loop2149921553_
                                             _lp-tl2150221570_
                                             (cons _lp-hd2150121567_
                                                   _arg2150321560_))))
                                        (let ((_arg2150421573_
                                               (reverse _arg2150321560_)))
                                          (let ((_L21577_ _arg2150421573_)
                                                (_L21579_ _hd2149421541_)
                                                (_L21580_ _hd2149121531_))
                                            (if (gx#identifier? _L21580_)
                                                (___kont3965539656_
                                                 _L21577_
                                                 _L21579_
                                                 _L21580_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2142321510_)))))))))
                          (_loop2149921553_ _target2149621547_ '()))))
                     (___match3973339734_
                      (lambda (_e2146821617_
                               _hd2146721621_
                               _tl2146621624_
                               _e2147121627_
                               _hd2147021631_
                               _tl2146921634_
                               _e2147421637_
                               _hd2147321641_
                               _tl2147221644_
                               ___splice3965339654_
                               _target2147521647_
                               _tl2147721650_)
                        (letrec ((_loop2147821653_
                                  (lambda (_hd2147621657_ _arg2148221660_)
                                    (if (gx#stx-pair? _hd2147621657_)
                                        (let ((_e2147921663_
                                               (gx#syntax-e _hd2147621657_)))
                                          (let ((_lp-tl2148121670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2147921663_)))
                                                (_lp-hd2148021667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2147921663_))))
                                            (_loop2147821653_
                                             _lp-tl2148121670_
                                             (cons _lp-hd2148021667_
                                                   _arg2148221660_))))
                                        (let ((_arg2148321673_
                                               (reverse _arg2148221660_)))
                                          (let ((_L21677_ _arg2148321673_)
                                                (_L21679_ _hd2147321641_)
                                                (_L21680_ _hd2147021631_))
                                            (if (and (gx#identifier? _L21680_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2169921702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2170021705_)
                       (cons _g2169921702_ _g2170021705_))
                     '()
                     _L21677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3965139652_
                                                 _L21677_
                                                 _L21679_
                                                 _L21680_)
                                                (___match3975939760_
                                                 _e2146821617_
                                                 _hd2146721621_
                                                 _tl2146621624_
                                                 _e2147121627_
                                                 _hd2147021631_
                                                 _tl2146921634_
                                                 _e2147421637_
                                                 _hd2147321641_
                                                 _tl2147221644_
                                                 ___splice3965339654_
                                                 _target2147521647_
                                                 _tl2147721650_))))))))
                          (_loop2147821653_ _target2147521647_ '()))))
                     (___match3971939720_
                      (lambda (_e2146821617_
                               _hd2146721621_
                               _tl2146621624_
                               _e2147121627_
                               _hd2147021631_
                               _tl2146921634_)
                        (if (gx#stx-pair? _tl2146921634_)
                            (let ((_e2147421637_ (gx#syntax-e _tl2146921634_)))
                              (let ((_tl2147221644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2147421637_)))
                                    (_hd2147321641_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2147421637_))))
                                (if (gx#stx-pair/null? _tl2147221644_)
                                    (let ((___splice3965339654_
                                           (gx#syntax-split-splice
                                            _tl2147221644_
                                            '0)))
                                      (let ((_tl2147721650_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3965339654_
                                                '1)))
                                            (_target2147521647_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3965339654_
                                                '0))))
                                        (if (gx#stx-null? _tl2147721650_)
                                            (___match3973339734_
                                             _e2146821617_
                                             _hd2146721621_
                                             _tl2146621624_
                                             _e2147121627_
                                             _hd2147021631_
                                             _tl2146921634_
                                             _e2147421637_
                                             _hd2147321641_
                                             _tl2147221644_
                                             ___splice3965339654_
                                             _target2147521647_
                                             _tl2147721650_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2142321510_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2142321510_)))))
                            (let () (declare (not safe)) (_g2142321510_)))))
                     (___match3970739708_
                      (lambda (_e2145021723_
                               _hd2144921727_
                               _tl2144821730_
                               _e2145321733_
                               _hd2145221737_
                               _tl2145121740_
                               ___splice3964939650_
                               _target2145421743_
                               _tl2145621746_)
                        (letrec ((_loop2145721749_
                                  (lambda (_hd2145521753_ _arg2146121756_)
                                    (if (gx#stx-pair? _hd2145521753_)
                                        (let ((_e2145821759_
                                               (gx#syntax-e _hd2145521753_)))
                                          (let ((_lp-tl2146021766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2145821759_)))
                                                (_lp-hd2145921763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2145821759_))))
                                            (_loop2145721749_
                                             _lp-tl2146021766_
                                             (cons _lp-hd2145921763_
                                                   _arg2146121756_))))
                                        (let ((_arg2146221769_
                                               (reverse _arg2146121756_)))
                                          (let ((_L21773_ _arg2146221769_)
                                                (_L21775_ _hd2145221737_))
                                            (if (_dotted-identifier?21416_
                                                 _L21775_)
                                                (___kont3964739648_
                                                 _L21773_
                                                 _L21775_)
                                                (___match3971939720_
                                                 _e2145021723_
                                                 _hd2144921727_
                                                 _tl2144821730_
                                                 _e2145321733_
                                                 _hd2145221737_
                                                 _tl2145121740_))))))))
                          (_loop2145721749_ _target2145421743_ '()))))
                     (___match3970539706_
                      (lambda (_e2145021723_
                               _hd2144921727_
                               _tl2144821730_
                               _e2145321733_
                               _hd2145221737_
                               _tl2145121740_
                               ___splice3964939650_
                               _target2145421743_
                               _tl2145621746_)
                        (if (gx#stx-null? _tl2145621746_)
                            (___match3970739708_
                             _e2145021723_
                             _hd2144921727_
                             _tl2144821730_
                             _e2145321733_
                             _hd2145221737_
                             _tl2145121740_
                             ___splice3964939650_
                             _target2145421743_
                             _tl2145621746_)
                            (if (gx#stx-pair? _tl2145121740_)
                                (let ((_e2147421637_
                                       (gx#syntax-e _tl2145121740_)))
                                  (let ((_tl2147221644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2147421637_)))
                                        (_hd2147321641_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2147421637_))))
                                    (if (gx#stx-pair/null? _tl2147221644_)
                                        (let ((___splice3965339654_
                                               (gx#syntax-split-splice
                                                _tl2147221644_
                                                '0)))
                                          (let ((_tl2147721650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3965339654_
                                                    '1)))
                                                (_target2147521647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3965339654_
                                                    '0))))
                                            (if (gx#stx-null? _tl2147721650_)
                                                (___match3973339734_
                                                 _e2145021723_
                                                 _hd2144921727_
                                                 _tl2144821730_
                                                 _e2145321733_
                                                 _hd2145221737_
                                                 _tl2145121740_
                                                 _e2147421637_
                                                 _hd2147321641_
                                                 _tl2147221644_
                                                 ___splice3965339654_
                                                 _target2147521647_
                                                 _tl2147721650_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2142321510_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2142321510_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2142321510_))))))
                     (___match3968739688_
                      (lambda (_e2143021871_
                               _hd2142921875_
                               _tl2142821878_
                               _e2143321881_
                               _hd2143221885_
                               _tl2143121888_
                               ___splice3964539646_
                               _target2143421891_
                               _tl2143621894_
                               _e2144521897_
                               _hd2144421901_
                               _tl2144321904_)
                        (letrec ((_loop2143721907_
                                  (lambda (_hd2143521911_ _arg2144121914_)
                                    (if (gx#stx-pair? _hd2143521911_)
                                        (let ((_e2143821917_
                                               (gx#syntax-e _hd2143521911_)))
                                          (let ((_lp-tl2144021924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2143821917_)))
                                                (_lp-hd2143921921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2143821917_))))
                                            (_loop2143721907_
                                             _lp-tl2144021924_
                                             (cons _lp-hd2143921921_
                                                   _arg2144121914_))))
                                        (let ((_arg2144221927_
                                               (reverse _arg2144121914_)))
                                          (let ((_L21931_ _hd2144421901_)
                                                (_L21933_ _arg2144221927_)
                                                (_L21934_ _hd2143221885_))
                                            (if (and (_dotted-identifier?21416_
                                                      _L21934_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_g2195321956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2195421959_)
                       (cons _g2195321956_ _g2195421959_))
                     '()
                     _L21933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3964339644_
                                                 _L21931_
                                                 _L21933_
                                                 _L21934_)
                                                (let ((___splice3964939650_
                                                       (gx#syntax-split-splice
                                                        _tl2143121888_
                                                        '0)))
                                                  (let ((_tl2145621746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3964939650_
                                                            '1)))
                                                        (_target2145421743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3964939650_
                                                            '0))))
                                                    (___match3970539706_
                                                     _e2143021871_
                                                     _hd2142921875_
                                                     _tl2142821878_
                                                     _e2143321881_
                                                     _hd2143221885_
                                                     _tl2143121888_
                                                     ___splice3964939650_
                                                     _target2145421743_
                                                     _tl2145621746_))))))))))
                          (_loop2143721907_ _target2143421891_ '())))))
                (if (gx#stx-pair? ___stx3964039641_)
                    (let ((_e2143021871_ (gx#syntax-e ___stx3964039641_)))
                      (let ((_tl2142821878_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2143021871_)))
                            (_hd2142921875_
                             (let ()
                               (declare (not safe))
                               (##car _e2143021871_))))
                        (if (gx#stx-pair? _tl2142821878_)
                            (let ((_e2143321881_ (gx#syntax-e _tl2142821878_)))
                              (let ((_tl2143121888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2143321881_)))
                                    (_hd2143221885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2143321881_))))
                                (if (gx#stx-pair/null? _tl2143121888_)
                                    (if (fx>= (gx#stx-length _tl2143121888_)
                                              '1)
                                        (let ((___splice3964539646_
                                               (gx#syntax-split-splice
                                                _tl2143121888_
                                                '1)))
                                          (let ((_tl2143621894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3964539646_
                                                    '1)))
                                                (_target2143421891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3964539646_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2143621894_)
                                                (let ((_e2144521897_
                                                       (gx#syntax-e
                                                        _tl2143621894_)))
                                                  (let ((_tl2144321904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2144521897_)))
                                                        (_hd2144421901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2144521897_))))
                                                    (if (gx#stx-null?
                                                         _tl2144321904_)
                                                        (___match3968739688_
                                                         _e2143021871_
                                                         _hd2142921875_
                                                         _tl2142821878_
                                                         _e2143321881_
                                                         _hd2143221885_
                                                         _tl2143121888_
                                                         ___splice3964539646_
                                                         _target2143421891_
                                                         _tl2143621894_
                                                         _e2144521897_
                                                         _hd2144421901_
                                                         _tl2144321904_)
                                                        (let ((___splice3964939650_
                                                               (gx#syntax-split-splice
                                                                _tl2143121888_
                                                                '0)))
                                                          (let ((_tl2145621746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3964939650_ '1)))
                        (_target2145421743_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice3964939650_ '0))))
                    (if (gx#stx-null? _tl2145621746_)
                        (___match3970739708_
                         _e2143021871_
                         _hd2142921875_
                         _tl2142821878_
                         _e2143321881_
                         _hd2143221885_
                         _tl2143121888_
                         ___splice3964939650_
                         _target2145421743_
                         _tl2145621746_)
                        (if (gx#stx-pair? _tl2143121888_)
                            (let ((_e2147421637_ (gx#syntax-e _tl2143121888_)))
                              (let ((_tl2147221644_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2147421637_)))
                                    (_hd2147321641_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2147421637_))))
                                (if (gx#stx-pair/null? _tl2147221644_)
                                    (let ((___splice3965339654_
                                           (gx#syntax-split-splice
                                            _tl2147221644_
                                            '0)))
                                      (let ((_tl2147721650_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3965339654_
                                                '1)))
                                            (_target2147521647_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3965339654_
                                                '0))))
                                        (if (gx#stx-null? _tl2147721650_)
                                            (___match3973339734_
                                             _e2143021871_
                                             _hd2142921875_
                                             _tl2142821878_
                                             _e2143321881_
                                             _hd2143221885_
                                             _tl2143121888_
                                             _e2147421637_
                                             _hd2147321641_
                                             _tl2147221644_
                                             ___splice3965339654_
                                             _target2147521647_
                                             _tl2147721650_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2142321510_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2142321510_)))))
                            (let ()
                              (declare (not safe))
                              (_g2142321510_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice3964939650_
                                                       (gx#syntax-split-splice
                                                        _tl2143121888_
                                                        '0)))
                                                  (let ((_tl2145621746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3964939650_
                                                            '1)))
                                                        (_target2145421743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3964939650_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2145621746_)
                                                        (___match3970739708_
                                                         _e2143021871_
                                                         _hd2142921875_
                                                         _tl2142821878_
                                                         _e2143321881_
                                                         _hd2143221885_
                                                         _tl2143121888_
                                                         ___splice3964939650_
                                                         _target2145421743_
                                                         _tl2145621746_)
                                                        (if (gx#stx-pair?
                                                             _tl2143121888_)
                                                            (let ((_e2147421637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2143121888_)))
                      (let ((_tl2147221644_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2147421637_)))
                            (_hd2147321641_
                             (let ()
                               (declare (not safe))
                               (##car _e2147421637_))))
                        (if (gx#stx-pair/null? _tl2147221644_)
                            (let ((___splice3965339654_
                                   (gx#syntax-split-splice _tl2147221644_ '0)))
                              (let ((_tl2147721650_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice3965339654_ '1)))
                                    (_target2147521647_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice3965339654_
                                        '0))))
                                (if (gx#stx-null? _tl2147721650_)
                                    (___match3973339734_
                                     _e2143021871_
                                     _hd2142921875_
                                     _tl2142821878_
                                     _e2143321881_
                                     _hd2143221885_
                                     _tl2143121888_
                                     _e2147421637_
                                     _hd2147321641_
                                     _tl2147221644_
                                     ___splice3965339654_
                                     _target2147521647_
                                     _tl2147721650_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2142321510_)))))
                            (let () (declare (not safe)) (_g2142321510_)))))
                    (let () (declare (not safe)) (_g2142321510_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice3964939650_
                                               (gx#syntax-split-splice
                                                _tl2143121888_
                                                '0)))
                                          (let ((_tl2145621746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3964939650_
                                                    '1)))
                                                (_target2145421743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice3964939650_
                                                    '0))))
                                            (if (gx#stx-null? _tl2145621746_)
                                                (___match3970739708_
                                                 _e2143021871_
                                                 _hd2142921875_
                                                 _tl2142821878_
                                                 _e2143321881_
                                                 _hd2143221885_
                                                 _tl2143121888_
                                                 ___splice3964939650_
                                                 _target2145421743_
                                                 _tl2145621746_)
                                                (if (gx#stx-pair?
                                                     _tl2143121888_)
                                                    (let ((_e2147421637_
                                                           (gx#syntax-e
                                                            _tl2143121888_)))
                                                      (let ((_tl2147221644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2147421637_)))
                    (_hd2147321641_
                     (let () (declare (not safe)) (##car _e2147421637_))))
                (if (gx#stx-pair/null? _tl2147221644_)
                    (let ((___splice3965339654_
                           (gx#syntax-split-splice _tl2147221644_ '0)))
                      (let ((_tl2147721650_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3965339654_ '1)))
                            (_target2147521647_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice3965339654_ '0))))
                        (if (gx#stx-null? _tl2147721650_)
                            (___match3973339734_
                             _e2143021871_
                             _hd2142921875_
                             _tl2142821878_
                             _e2143321881_
                             _hd2143221885_
                             _tl2143121888_
                             _e2147421637_
                             _hd2147321641_
                             _tl2147221644_
                             ___splice3965339654_
                             _target2147521647_
                             _tl2147721650_)
                            (let () (declare (not safe)) (_g2142321510_)))))
                    (let () (declare (not safe)) (_g2142321510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2142321510_)))))))
                                    (if (gx#stx-pair? _tl2143121888_)
                                        (let ((_e2147421637_
                                               (gx#syntax-e _tl2143121888_)))
                                          (let ((_tl2147221644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2147421637_)))
                                                (_hd2147321641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2147421637_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2147221644_)
                                                (let ((___splice3965339654_
                                                       (gx#syntax-split-splice
                                                        _tl2147221644_
                                                        '0)))
                                                  (let ((_tl2147721650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3965339654_
                                                            '1)))
                                                        (_target2147521647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice3965339654_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2147721650_)
                                                        (___match3973339734_
                                                         _e2143021871_
                                                         _hd2142921875_
                                                         _tl2142821878_
                                                         _e2143321881_
                                                         _hd2143221885_
                                                         _tl2143121888_
                                                         _e2147421637_
                                                         _hd2147321641_
                                                         _tl2147221644_
                                                         ___splice3965339654_
                                                         _target2147521647_
                                                         _tl2147721650_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2142321510_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2142321510_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2142321510_))))))
                            (let () (declare (not safe)) (_g2142321510_)))))
                    (let () (declare (not safe)) (_g2142321510_)))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx22062_)
        (let* ((___stx3976239763_ _$stx22062_)
               (_g2206722107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3976239763_))))
          (let ((___kont3976539766_
                 (lambda (_L22245_ _L22247_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L22247_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22245_ '()))
                                     '())))))
                (___kont3976739768_
                 (lambda (_L22174_ _L22176_ _L22177_ _L22178_)
                   (cons _L22178_
                         (cons (cons _L22178_
                                     (cons _L22177_ (cons _L22176_ '())))
                               (foldr (lambda (_g2219922202_ _g2220022205_)
                                        (cons _g2219922202_ _g2220022205_))
                                      '()
                                      _L22174_))))))
            (let* ((___match3981739818_
                    (lambda (_e2208622114_
                             _hd2208522118_
                             _tl2208422121_
                             _e2208922124_
                             _hd2208822128_
                             _tl2208722131_
                             _e2209222134_
                             _hd2209122138_
                             _tl2209022141_
                             ___splice3976939770_
                             _target2209322144_
                             _tl2209522147_)
                      (letrec ((_loop2209622150_
                                (lambda (_hd2209422154_ _rest2210022157_)
                                  (if (gx#stx-pair? _hd2209422154_)
                                      (let ((_e2209722160_
                                             (gx#syntax-e _hd2209422154_)))
                                        (let ((_lp-tl2209922167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2209722160_)))
                                              (_lp-hd2209822164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2209722160_))))
                                          (_loop2209622150_
                                           _lp-tl2209922167_
                                           (cons _lp-hd2209822164_
                                                 _rest2210022157_))))
                                      (let ((_rest2210122170_
                                             (reverse _rest2210022157_)))
                                        (___kont3976739768_
                                         _rest2210122170_
                                         _hd2209122138_
                                         _hd2208822128_
                                         _hd2208522118_))))))
                        (_loop2209622150_ _target2209322144_ '()))))
                   (___match3979139792_
                    (lambda (_e2207322215_
                             _hd2207222219_
                             _tl2207122222_
                             _e2207622225_
                             _hd2207522229_
                             _tl2207422232_
                             _e2207922235_
                             _hd2207822239_
                             _tl2207722242_)
                      (let ((_L22245_ _hd2207822239_)
                            (_L22247_ _hd2207522229_))
                        (if (gx#identifier? _L22245_)
                            (___kont3976539766_ _L22245_ _L22247_)
                            (if (gx#stx-pair/null? _tl2207722242_)
                                (let ((___splice3976939770_
                                       (gx#syntax-split-splice
                                        _tl2207722242_
                                        '0)))
                                  (let ((_tl2209522147_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3976939770_
                                            '1)))
                                        (_target2209322144_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice3976939770_
                                            '0))))
                                    (if (gx#stx-null? _tl2209522147_)
                                        (___match3981739818_
                                         _e2207322215_
                                         _hd2207222219_
                                         _tl2207122222_
                                         _e2207622225_
                                         _hd2207522229_
                                         _tl2207422232_
                                         _e2207922235_
                                         _hd2207822239_
                                         _tl2207722242_
                                         ___splice3976939770_
                                         _target2209322144_
                                         _tl2209522147_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2206722107_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2206722107_))))))))
              (if (gx#stx-pair? ___stx3976239763_)
                  (let ((_e2207322215_ (gx#syntax-e ___stx3976239763_)))
                    (let ((_tl2207122222_
                           (let () (declare (not safe)) (##cdr _e2207322215_)))
                          (_hd2207222219_
                           (let ()
                             (declare (not safe))
                             (##car _e2207322215_))))
                      (if (gx#stx-pair? _tl2207122222_)
                          (let ((_e2207622225_ (gx#syntax-e _tl2207122222_)))
                            (let ((_tl2207422232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2207622225_)))
                                  (_hd2207522229_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2207622225_))))
                              (if (gx#stx-pair? _tl2207422232_)
                                  (let ((_e2207922235_
                                         (gx#syntax-e _tl2207422232_)))
                                    (let ((_tl2207722242_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2207922235_)))
                                          (_hd2207822239_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2207922235_))))
                                      (if (gx#stx-null? _tl2207722242_)
                                          (___match3979139792_
                                           _e2207322215_
                                           _hd2207222219_
                                           _tl2207122222_
                                           _e2207622225_
                                           _hd2207522229_
                                           _tl2207422232_
                                           _e2207922235_
                                           _hd2207822239_
                                           _tl2207722242_)
                                          (if (gx#stx-pair/null?
                                               _tl2207722242_)
                                              (let ((___splice3976939770_
                                                     (gx#syntax-split-splice
                                                      _tl2207722242_
                                                      '0)))
                                                (let ((_tl2209522147_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3976939770_
                                                          '1)))
                                                      (_target2209322144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice3976939770_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2209522147_)
                                                      (___match3981739818_
                                                       _e2207322215_
                                                       _hd2207222219_
                                                       _tl2207122222_
                                                       _e2207622225_
                                                       _hd2207522229_
                                                       _tl2207422232_
                                                       _e2207922235_
                                                       _hd2207822239_
                                                       _tl2207722242_
                                                       ___splice3976939770_
                                                       _target2209322144_
                                                       _tl2209522147_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2206722107_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2206722107_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2206722107_)))))
                          (let () (declare (not safe)) (_g2206722107_)))))
                  (let () (declare (not safe)) (_g2206722107_))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx22267_)
        (let* ((___stx3982039821_ _$stx22267_)
               (_g2227222324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx3982039821_))))
          (let ((___kont3982339824_
                 (lambda (_L22500_ _L22502_ _L22503_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L22503_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L22502_ '()))
                                     (cons _L22500_ '()))))))
                (___kont3982539826_
                 (lambda (_L22411_
                          _L22413_
                          _L22414_
                          _L22415_
                          _L22416_
                          _L22417_)
                   (cons _L22417_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L22416_
                                           (cons _L22415_
                                                 (foldr (lambda (_g2244422447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2244522450_)
                  (cons _g2244422447_ _g2244522450_))
                '()
                _L22414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L22413_ (cons _L22411_ '())))))))
            (let* ((___match3989539896_
                    (lambda (_e2229722331_
                             _hd2229622335_
                             _tl2229522338_
                             _e2230022341_
                             _hd2229922345_
                             _tl2229822348_
                             _e2230322351_
                             _hd2230222355_
                             _tl2230122358_
                             ___splice3982739828_
                             _target2230422361_
                             _tl2230622364_
                             _e2231522367_
                             _hd2231422371_
                             _tl2231322374_
                             _e2231822377_
                             _hd2231722381_
                             _tl2231622384_)
                      (letrec ((_loop2230722387_
                                (lambda (_hd2230522391_ _path2231122394_)
                                  (if (gx#stx-pair? _hd2230522391_)
                                      (let ((_e2230822397_
                                             (gx#syntax-e _hd2230522391_)))
                                        (let ((_lp-tl2231022404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2230822397_)))
                                              (_lp-hd2230922401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2230822397_))))
                                          (_loop2230722387_
                                           _lp-tl2231022404_
                                           (cons _lp-hd2230922401_
                                                 _path2231122394_))))
                                      (let ((_path2231222407_
                                             (reverse _path2231122394_)))
                                        (___kont3982539826_
                                         _hd2231722381_
                                         _hd2231422371_
                                         _path2231222407_
                                         _hd2230222355_
                                         _hd2229922345_
                                         _hd2229622335_))))))
                        (_loop2230722387_ _target2230422361_ '()))))
                   (___match3985539856_
                    (lambda (_e2227922460_
                             _hd2227822464_
                             _tl2227722467_
                             _e2228222470_
                             _hd2228122474_
                             _tl2228022477_
                             _e2228522480_
                             _hd2228422484_
                             _tl2228322487_
                             _e2228822490_
                             _hd2228722494_
                             _tl2228622497_)
                      (let ((_L22500_ _hd2228722494_)
                            (_L22502_ _hd2228422484_)
                            (_L22503_ _hd2228122474_))
                        (if (gx#identifier? _L22502_)
                            (___kont3982339824_ _L22500_ _L22502_ _L22503_)
                            (if (gx#stx-pair/null? _tl2228322487_)
                                (if (fx>= (gx#stx-length _tl2228322487_) '2)
                                    (let ((___splice3982739828_
                                           (gx#syntax-split-splice
                                            _tl2228322487_
                                            '2)))
                                      (let ((_tl2230622364_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3982739828_
                                                '1)))
                                            (_target2230422361_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice3982739828_
                                                '0))))
                                        (if (gx#stx-pair? _tl2230622364_)
                                            (let ((_e2231522367_
                                                   (gx#syntax-e
                                                    _tl2230622364_)))
                                              (let ((_tl2231322374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2231522367_)))
                                                    (_hd2231422371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2231522367_))))
                                                (if (gx#stx-pair?
                                                     _tl2231322374_)
                                                    (let ((_e2231822377_
                                                           (gx#syntax-e
                                                            _tl2231322374_)))
                                                      (let ((_tl2231622384_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2231822377_)))
                    (_hd2231722381_
                     (let () (declare (not safe)) (##car _e2231822377_))))
                (if (gx#stx-null? _tl2231622384_)
                    (___match3989539896_
                     _e2227922460_
                     _hd2227822464_
                     _tl2227722467_
                     _e2228222470_
                     _hd2228122474_
                     _tl2228022477_
                     _e2228522480_
                     _hd2228422484_
                     _tl2228322487_
                     ___splice3982739828_
                     _target2230422361_
                     _tl2230622364_
                     _e2231522367_
                     _hd2231422371_
                     _tl2231322374_
                     _e2231822377_
                     _hd2231722381_
                     _tl2231622384_)
                    (let () (declare (not safe)) (_g2227222324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2227222324_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2227222324_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2227222324_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2227222324_))))))))
              (if (gx#stx-pair? ___stx3982039821_)
                  (let ((_e2227922460_ (gx#syntax-e ___stx3982039821_)))
                    (let ((_tl2227722467_
                           (let () (declare (not safe)) (##cdr _e2227922460_)))
                          (_hd2227822464_
                           (let ()
                             (declare (not safe))
                             (##car _e2227922460_))))
                      (if (gx#stx-pair? _tl2227722467_)
                          (let ((_e2228222470_ (gx#syntax-e _tl2227722467_)))
                            (let ((_tl2228022477_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2228222470_)))
                                  (_hd2228122474_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2228222470_))))
                              (if (gx#stx-pair? _tl2228022477_)
                                  (let ((_e2228522480_
                                         (gx#syntax-e _tl2228022477_)))
                                    (let ((_tl2228322487_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2228522480_)))
                                          (_hd2228422484_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2228522480_))))
                                      (if (gx#stx-pair? _tl2228322487_)
                                          (let ((_e2228822490_
                                                 (gx#syntax-e _tl2228322487_)))
                                            (let ((_tl2228622497_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2228822490_)))
                                                  (_hd2228722494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2228822490_))))
                                              (if (gx#stx-null? _tl2228622497_)
                                                  (___match3985539856_
                                                   _e2227922460_
                                                   _hd2227822464_
                                                   _tl2227722467_
                                                   _e2228222470_
                                                   _hd2228122474_
                                                   _tl2228022477_
                                                   _e2228522480_
                                                   _hd2228422484_
                                                   _tl2228322487_
                                                   _e2228822490_
                                                   _hd2228722494_
                                                   _tl2228622497_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2228322487_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2228322487_)
                        '2)
                  (let ((___splice3982739828_
                         (gx#syntax-split-splice _tl2228322487_ '2)))
                    (let ((_tl2230622364_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3982739828_ '1)))
                          (_target2230422361_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice3982739828_ '0))))
                      (if (gx#stx-pair? _tl2230622364_)
                          (let ((_e2231522367_ (gx#syntax-e _tl2230622364_)))
                            (let ((_tl2231322374_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2231522367_)))
                                  (_hd2231422371_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2231522367_))))
                              (if (gx#stx-pair? _tl2231322374_)
                                  (let ((_e2231822377_
                                         (gx#syntax-e _tl2231322374_)))
                                    (let ((_tl2231622384_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2231822377_)))
                                          (_hd2231722381_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2231822377_))))
                                      (if (gx#stx-null? _tl2231622384_)
                                          (___match3989539896_
                                           _e2227922460_
                                           _hd2227822464_
                                           _tl2227722467_
                                           _e2228222470_
                                           _hd2228122474_
                                           _tl2228022477_
                                           _e2228522480_
                                           _hd2228422484_
                                           _tl2228322487_
                                           ___splice3982739828_
                                           _target2230422361_
                                           _tl2230622364_
                                           _e2231522367_
                                           _hd2231422371_
                                           _tl2231322374_
                                           _e2231822377_
                                           _hd2231722381_
                                           _tl2231622384_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2227222324_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2227222324_)))))
                          (let () (declare (not safe)) (_g2227222324_)))))
                  (let () (declare (not safe)) (_g2227222324_)))
              (let () (declare (not safe)) (_g2227222324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2228322487_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2228322487_)
                                                        '2)
                                                  (let ((___splice3982739828_
                                                         (gx#syntax-split-splice
                                                          _tl2228322487_
                                                          '2)))
                                                    (let ((_tl2230622364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3982739828_
                                                              '1)))
                                                          (_target2230422361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice3982739828_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2230622364_)
                                                          (let ((_e2231522367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2230622364_)))
                    (let ((_tl2231322374_
                           (let () (declare (not safe)) (##cdr _e2231522367_)))
                          (_hd2231422371_
                           (let ()
                             (declare (not safe))
                             (##car _e2231522367_))))
                      (if (gx#stx-pair? _tl2231322374_)
                          (let ((_e2231822377_ (gx#syntax-e _tl2231322374_)))
                            (let ((_tl2231622384_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2231822377_)))
                                  (_hd2231722381_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2231822377_))))
                              (if (gx#stx-null? _tl2231622384_)
                                  (___match3989539896_
                                   _e2227922460_
                                   _hd2227822464_
                                   _tl2227722467_
                                   _e2228222470_
                                   _hd2228122474_
                                   _tl2228022477_
                                   _e2228522480_
                                   _hd2228422484_
                                   _tl2228322487_
                                   ___splice3982739828_
                                   _target2230422361_
                                   _tl2230622364_
                                   _e2231522367_
                                   _hd2231422371_
                                   _tl2231322374_
                                   _e2231822377_
                                   _hd2231722381_
                                   _tl2231622384_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2227222324_)))))
                          (let () (declare (not safe)) (_g2227222324_)))))
                  (let () (declare (not safe)) (_g2227222324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2227222324_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2227222324_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2227222324_)))))
                          (let () (declare (not safe)) (_g2227222324_)))))
                  (let () (declare (not safe)) (_g2227222324_))))))))))
