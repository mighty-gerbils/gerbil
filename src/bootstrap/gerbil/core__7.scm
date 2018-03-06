(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g35020_|
    (gx#make-syntax-quote '@method #f (gx#current-expander-context) '()))
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
      (lambda _$args19894_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args19894_)))
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
      (lambda _$args19890_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args19890_)))
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
      (lambda _$args19886_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args19886_)))
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
      (lambda _$args19882_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args19882_)))
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
      (lambda _$args19878_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args19878_)))
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
      (lambda _$args19874_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args19874_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1984619860_
             (lambda (_stx19848_ _is?19850_)
               (if (gx#identifier? _stx19848_)
                   (let ((_e1985119853_
                          (gx#syntax-local-value _stx19848_ false)))
                     (if _e1985119853_
                         (let ((_e19857_ _e1985119853_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e19857_)
                               (_is?19850_ _e19857_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g35006_
          (let ((_g35005_ (length _g35006_)))
            (cond ((fx= _g35005_ 1)
                   (apply (lambda (_stx19864_)
                            (let ((_is?19867_ true))
                              (_opt-lambda1984619860_ _stx19864_ _is?19867_)))
                          _g35006_))
                  ((fx= _g35005_ 2) (apply _opt-lambda1984619860_ _g35006_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g35006_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx19844_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19844_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx19841_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19841_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id19835_)
        (if _id19835_
            (let ((_info19838_ (gx#syntax-local-value _id19835_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info19838_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info19838_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19600_ _stx19602_)
        (let* ((_g1960419624_
                (lambda (_g1960519620_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1960519620_)))
               (_g1960319831_
                (lambda (_g1960519628_)
                  (if (gx#stx-pair? _g1960519628_)
                      (let ((_e1960719631_ (gx#syntax-e _g1960519628_)))
                        (let ((_hd1960819635_ (##car _e1960719631_))
                              (_tl1960919638_ (##cdr _e1960719631_)))
                          (if (gx#stx-pair/null? _tl1960919638_)
                              (if (fx>= (gx#stx-length _tl1960919638_) '0)
                                  (let ((_g35007_
                                         (gx#syntax-split-splice
                                          _tl1960919638_
                                          '0)))
                                    (begin
                                      (let ((_g35008_ (values-count _g35007_)))
                                        (if (not (fx= _g35008_ 2))
                                            (error "Context expects 2 values"
                                                   _g35008_)))
                                      (let ((_target1961019641_
                                             (values-ref _g35007_ 0))
                                            (_tl1961219644_
                                             (values-ref _g35007_ 1)))
                                        (if (gx#stx-null? _tl1961219644_)
                                            (letrec ((_loop1961319647_
                                                      (lambda (_hd1961119651_
                                                               _arg1961719654_)
                                                        (if (gx#stx-pair?
                                                             _hd1961119651_)
                                                            (let ((_e1961419657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1961119651_)))
                      (let ((_lp-hd1961519661_ (##car _e1961419657_))
                            (_lp-tl1961619664_ (##cdr _e1961419657_)))
                        (_loop1961319647_
                         _lp-tl1961619664_
                         (cons _lp-hd1961519661_ _arg1961719654_))))
                    (let ((_arg1961819667_ (reverse _arg1961719654_)))
                      ((lambda (_L19671_)
                         (let* ((_g1968719718_
                                 (lambda (_g1968819714_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1968819714_)))
                                (_g1968619827_
                                 (lambda (_g1968819722_)
                                   (if (gx#stx-pair? _g1968819722_)
                                       (let ((_e1969519725_
                                              (gx#syntax-e _g1968819722_)))
                                         (let ((_hd1969619729_
                                                (##car _e1969519725_))
                                               (_tl1969719732_
                                                (##cdr _e1969519725_)))
                                           (if (gx#stx-pair? _tl1969719732_)
                                               (let ((_e1969819735_
                                                      (gx#syntax-e
                                                       _tl1969719732_)))
                                                 (let ((_hd1969919739_
                                                        (##car _e1969819735_))
                                                       (_tl1970019742_
                                                        (##cdr _e1969819735_)))
                                                   (if (gx#stx-pair?
                                                        _tl1970019742_)
                                                       (let ((_e1970119745_
                                                              (gx#syntax-e
                                                               _tl1970019742_)))
                                                         (let ((_hd1970219749_
                                                                (##car _e1970119745_))
                                                               (_tl1970319752_
                                                                (##cdr _e1970119745_)))
                                                           (if (gx#stx-pair?
                                                                _tl1970319752_)
                                                               (let ((_e1970419755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1970319752_)))
                         (let ((_hd1970519759_ (##car _e1970419755_))
                               (_tl1970619762_ (##cdr _e1970419755_)))
                           (if (gx#stx-pair? _tl1970619762_)
                               (let ((_e1970719765_
                                      (gx#syntax-e _tl1970619762_)))
                                 (let ((_hd1970819769_ (##car _e1970719765_))
                                       (_tl1970919772_ (##cdr _e1970719765_)))
                                   (if (gx#stx-pair? _tl1970919772_)
                                       (let ((_e1971019775_
                                              (gx#syntax-e _tl1970919772_)))
                                         (let ((_hd1971119779_
                                                (##car _e1971019775_))
                                               (_tl1971219782_
                                                (##cdr _e1971019775_)))
                                           (if (gx#stx-null? _tl1971219782_)
                                               ((lambda (_L19785_
                                                         _L19787_
                                                         _L19788_
                                                         _L19789_
                                                         _L19790_
                                                         _L19791_)
                                                  (let ()
                                                    (cons _L19789_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1981819821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1981919824_)
                             (cons _g1981819821_ _g1981919824_))
                           '()
                           _L19671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1971119779_
                                                _hd1970819769_
                                                _hd1970519759_
                                                _hd1970219749_
                                                _hd1969919739_
                                                _hd1969619729_)
                                               (_g1968719718_ _g1968819722_))))
                                       (_g1968719718_ _g1968819722_))))
                               (_g1968719718_ _g1968819722_))))
                       (_g1968719718_ _g1968819722_))))
               (_g1968719718_ _g1968819722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1968719718_ _g1968819722_))))
                                       (_g1968719718_ _g1968819722_)))))
                           (_g1968619827_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19600_))))
                       _arg1961819667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1961319647_
                                               _target1961019641_
                                               '()))
                                            (_g1960419624_ _g1960519628_)))))
                                  (_g1960419624_ _g1960519628_))
                              (_g1960419624_ _g1960519628_))))
                      (_g1960419624_ _g1960519628_)))))
          (_g1960319831_ _stx19602_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19591_)
        (letrec ((_body-opt?19594_
                  (lambda (_key19597_)
                    (memq (gx#stx-e _key19597_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19591_ _body-opt?19594_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18419_
               _id18421_
               _super-ref18422_
               _els18423_
               _body18424_
               _struct?18425_)
        (letrec* ((_wrap18427_
                   (lambda (_e-stx19588_)
                     (gx#stx-wrap-source
                      _e-stx19588_
                      (gx#stx-source _stx18419_))))
                  (_make-id18429_
                   (if (uninterned-symbol? (gx#stx-e _id18421_))
                       (lambda _g35009_ (gx#genident _id18421_))
                       (lambda _args19585_
                         (apply gx#stx-identifier _id18421_ _args19585_)))))
          (begin
            (gx#check-duplicate-identifiers _els18423_ _stx18419_)
            (let* ((_name18431_ (symbol->string (gx#stx-e _id18421_)))
                   (_super18434_
                    (if _struct?18425_
                        (if _super-ref18422_
                            (gx#syntax-local-value _super-ref18422_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18422_)))
                   (_g1843718445_
                    (lambda (_g1843818441_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1843818441_)))
                   (_g1843619579_
                    (lambda (_g1843818449_)
                      ((lambda (_L18452_)
                         (let ()
                           (let* ((_g1846818476_
                                   (lambda (_g1846918472_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1846918472_)))
                                  (_g1846719575_
                                   (lambda (_g1846918480_)
                                     ((lambda (_L18483_)
                                        (let ()
                                          (let* ((_g1849618504_
                                                  (lambda (_g1849718500_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1849718500_)))
                                                 (_g1849519571_
                                                  (lambda (_g1849718508_)
                                                    ((lambda (_L18511_)
                                                       (let ()
                                                         (let* ((_g1852418532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1852518528_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1852518528_)))
                        (_g1852319567_
                         (lambda (_g1852518536_)
                           ((lambda (_L18539_)
                              (let ()
                                (let* ((_g1855218560_
                                        (lambda (_g1855318556_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1855318556_)))
                                       (_g1855119563_
                                        (lambda (_g1855318564_)
                                          ((lambda (_L18567_)
                                             (let ()
                                               (let* ((_g1858018588_
                                                       (lambda (_g1858118584_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1858118584_)))
                                                      (_g1857919559_
                                                       (lambda (_g1858118592_)
                                                         ((lambda (_L18595_)
                                                            (let ()
                                                              (let* ((_g1860818625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1860918621_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1860918621_)))
                             (_g1860719555_
                              (lambda (_g1860918629_)
                                (if (gx#stx-pair/null? _g1860918629_)
                                    (if (fx>= (gx#stx-length _g1860918629_) '0)
                                        (let ((_g35010_
                                               (gx#syntax-split-splice
                                                _g1860918629_
                                                '0)))
                                          (begin
                                            (let ((_g35011_
                                                   (values-count _g35010_)))
                                              (if (not (fx= _g35011_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35011_)))
                                            (let ((_target1861118632_
                                                   (values-ref _g35010_ 0))
                                                  (_tl1861318635_
                                                   (values-ref _g35010_ 1)))
                                              (if (gx#stx-null? _tl1861318635_)
                                                  (letrec ((_loop1861418638_
                                                            (lambda (_hd1861218642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1861818645_)
                      (if (gx#stx-pair? _hd1861218642_)
                          (let ((_e1861518648_ (gx#syntax-e _hd1861218642_)))
                            (let ((_lp-hd1861618652_ (##car _e1861518648_))
                                  (_lp-tl1861718655_ (##cdr _e1861518648_)))
                              (_loop1861418638_
                               _lp-tl1861718655_
                               (cons _lp-hd1861618652_ _attr1861818645_))))
                          (let ((_attr1861918658_ (reverse _attr1861818645_)))
                            ((lambda (_L18662_)
                               (let ()
                                 (let* ((_g1867918696_
                                         (lambda (_g1868018692_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1868018692_)))
                                        (_g1867819546_
                                         (lambda (_g1868018700_)
                                           (if (gx#stx-pair/null?
                                                _g1868018700_)
                                               (if (fx>= (gx#stx-length
                                                          _g1868018700_)
                                                         '0)
                                                   (let ((_g35012_
                                                          (gx#syntax-split-splice
                                                           _g1868018700_
                                                           '0)))
                                                     (begin
                                                       (let ((_g35013_
                                                              (values-count
                                                               _g35012_)))
                                                         (if (not (fx= _g35013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g35013_)))
               (let ((_target1868218703_ (values-ref _g35012_ 0))
                     (_tl1868418706_ (values-ref _g35012_ 1)))
                 (if (gx#stx-null? _tl1868418706_)
                     (letrec ((_loop1868518709_
                               (lambda (_hd1868318713_ _getf1868918716_)
                                 (if (gx#stx-pair? _hd1868318713_)
                                     (let ((_e1868618719_
                                            (gx#syntax-e _hd1868318713_)))
                                       (let ((_lp-hd1868718723_
                                              (##car _e1868618719_))
                                             (_lp-tl1868818726_
                                              (##cdr _e1868618719_)))
                                         (_loop1868518709_
                                          _lp-tl1868818726_
                                          (cons _lp-hd1868718723_
                                                _getf1868918716_))))
                                     (let ((_getf1869018729_
                                            (reverse _getf1868918716_)))
                                       ((lambda (_L18733_)
                                          (let ()
                                            (let* ((_g1875018767_
                                                    (lambda (_g1875118763_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1875118763_)))
                                                   (_g1874919537_
                                                    (lambda (_g1875118771_)
                                                      (if (gx#stx-pair/null?
                                                           _g1875118771_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1875118771_)
                            '0)
                      (let ((_g35014_
                             (gx#syntax-split-splice _g1875118771_ '0)))
                        (begin
                          (let ((_g35015_ (values-count _g35014_)))
                            (if (not (fx= _g35015_ 2))
                                (error "Context expects 2 values" _g35015_)))
                          (let ((_target1875318774_ (values-ref _g35014_ 0))
                                (_tl1875518777_ (values-ref _g35014_ 1)))
                            (if (gx#stx-null? _tl1875518777_)
                                (letrec ((_loop1875618780_
                                          (lambda (_hd1875418784_
                                                   _setf1876018787_)
                                            (if (gx#stx-pair? _hd1875418784_)
                                                (let ((_e1875718790_
                                                       (gx#syntax-e
                                                        _hd1875418784_)))
                                                  (let ((_lp-hd1875818794_
                                                         (##car _e1875718790_))
                                                        (_lp-tl1875918797_
                                                         (##cdr _e1875718790_)))
                                                    (_loop1875618780_
                                                     _lp-tl1875918797_
                                                     (cons _lp-hd1875818794_
                                                           _setf1876018787_))))
                                                (let ((_setf1876118800_
                                                       (reverse _setf1876018787_)))
                                                  ((lambda (_L18804_)
                                                     (let ()
                                                       (let* ((_type-attr18849_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18423_)
                           '()
                           (if _struct?18425_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18804_
                                              _L18733_
                                              _L18662_)
                                             (foldr (lambda (_g1882018825_
                                                             _g1882118828_
                                                             _g1882218830_
                                                             _g1882318832_)
                                                      (cons (cons _g1882218830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1882118828_ (cons _g1882018825_ '())))
                    _g1882318832_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18804_
                                                    _L18733_
                                                    _L18662_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18804_
                                              _L18733_
                                              _L18662_)
                                             (foldr (lambda (_g1883418839_
                                                             _g1883518842_
                                                             _g1883618844_
                                                             _g1883718846_)
                                                      (cons (cons _g1883618844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1883518842_ (cons _g1883418839_ '())))
                    _g1883718846_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18804_
                                                    _L18733_
                                                    _L18662_))
                                           '())))))
                      (_type-name18856_
                       (cons 'name:
                             (cons (let ((_$e18852_
                                          (gx#stx-getq 'name: _body18424_)))
                                     (if _$e18852_ _$e18852_ _id18421_))
                                   '())))
                      (_type-id18871_
                       (let ((_$e18867_
                              (let ((_e1885818860_
                                     (gx#stx-getq 'id: _body18424_)))
                                (if _e1885818860_
                                    (let ((_e18864_ _e1885818860_))
                                      (cons 'id: (cons _e18864_ '())))
                                    '#f))))
                         (if _$e18867_ _$e18867_ '())))
                      (_type-ctor18886_
                       (let ((_$e18882_
                              (let ((_e1887318875_
                                     (gx#stx-getq 'constructor: _body18424_)))
                                (if _e1887318875_
                                    (let ((_e18879_ _e1887318875_))
                                      (cons 'constructor: (cons _e18879_ '())))
                                    '#f))))
                         (if _$e18882_ _$e18882_ '())))
                      (_plist18930_
                       (let* ((_plist18893_
                               (let ((_$e18889_
                                      (gx#stx-getq 'plist: _body18424_)))
                                 (if _$e18889_ _$e18889_ '())))
                              (_plist18896_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18424_))
                                   (cons (cons 'transparent: '#t) _plist18893_)
                                   _plist18893_))
                              (_plist18899_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18424_))
                                   (cons (cons 'final: '#t) _plist18896_)
                                   _plist18896_))
                              (_plist18912_
                               (let ((_$e18902_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18424_))))
                                 (if _$e18902_
                                     ((lambda (_print18906_)
                                        (let ((_print18909_
                                               (if (eq? _print18906_ '#t)
                                                   _els18423_
                                                   _print18906_)))
                                          (cons (cons 'print: _print18909_)
                                                _plist18899_)))
                                      _$e18902_)
                                     _plist18899_)))
                              (_plist18925_
                               (let ((_$e18915_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18424_))))
                                 (if _$e18915_
                                     ((lambda (_equal18919_)
                                        (let ((_equal18922_
                                               (if (eq? _equal18919_ '#t)
                                                   _els18423_
                                                   _equal18919_)))
                                          (cons (cons 'equal: _equal18922_)
                                                _plist18912_)))
                                      _$e18915_)
                                     _plist18912_))))
                         _plist18925_))
                      (_type-plist18970_
                       (if (null? _plist18930_)
                           _plist18930_
                           (let* ((_g1893318941_
                                   (lambda (_g1893418937_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1893418937_)))
                                  (_g1893218966_
                                   (lambda (_g1893418945_)
                                     ((lambda (_L18948_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L18948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1893418945_))))
                             (_g1893218966_ _plist18930_))))
                      (_type-unchecked18985_
                       (let ((_$e18981_
                              (let ((_e1897218974_
                                     (gx#stx-getq 'unchecked: _body18424_)))
                                (if _e1897218974_
                                    (let ((_e18978_ _e1897218974_))
                                      (cons 'unchecked: (cons _e18978_ '())))
                                    '#f))))
                         (if _$e18981_ _$e18981_ '())))
                      (_g1898819005_
                       (lambda (_g1898919001_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1898919001_)))
                      (_g1898719533_
                       (lambda (_g1898919009_)
                         (if (gx#stx-pair/null? _g1898919009_)
                             (if (fx>= (gx#stx-length _g1898919009_) '0)
                                 (let ((_g35016_
                                        (gx#syntax-split-splice
                                         _g1898919009_
                                         '0)))
                                   (begin
                                     (let ((_g35017_ (values-count _g35016_)))
                                       (if (not (fx= _g35017_ 2))
                                           (error "Context expects 2 values"
                                                  _g35017_)))
                                     (let ((_target1899119012_
                                            (values-ref _g35016_ 0))
                                           (_tl1899319015_
                                            (values-ref _g35016_ 1)))
                                       (if (gx#stx-null? _tl1899319015_)
                                           (letrec ((_loop1899419018_
                                                     (lambda (_hd1899219022_
                                                              _type-body1899819025_)
                                                       (if (gx#stx-pair?
                                                            _hd1899219022_)
                                                           (let ((_e1899519028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1899219022_)))
                     (let ((_lp-hd1899619032_ (##car _e1899519028_))
                           (_lp-tl1899719035_ (##cdr _e1899519028_)))
                       (_loop1899419018_
                        _lp-tl1899719035_
                        (cons _lp-hd1899619032_ _type-body1899819025_))))
                   (let ((_type-body1899919038_
                          (reverse _type-body1899819025_)))
                     ((lambda (_L19042_)
                        (let ()
                          (let* ((_g1905919067_
                                  (lambda (_g1906019063_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1906019063_)))
                                 (_g1905819521_
                                  (lambda (_g1906019071_)
                                    ((lambda (_L19074_)
                                       (let ()
                                         (let* ((_g1908719095_
                                                 (lambda (_g1908819091_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1908819091_)))
                                                (_g1908619517_
                                                 (lambda (_g1908819099_)
                                                   ((lambda (_L19102_)
                                                      (let ()
                                                        (let* ((_g1911519123_
                                                                (lambda (_g1911619119_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1911619119_)))
                       (_g1911419431_
                        (lambda (_g1911619127_)
                          ((lambda (_L19130_)
                             (let ()
                               (let* ((_g1914319151_
                                       (lambda (_g1914419147_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1914419147_)))
                                      (_g1914219427_
                                       (lambda (_g1914419155_)
                                         ((lambda (_L19158_)
                                            (let ()
                                              (let* ((_g1917119179_
                                                      (lambda (_g1917219175_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1917219175_)))
                                                     (_g1917019423_
                                                      (lambda (_g1917219183_)
                                                        ((lambda (_L19186_)
                                                           (let ()
                                                             (let* ((_g1919919207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1920019203_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1920019203_)))
                            (_g1919819381_
                             (lambda (_g1920019211_)
                               ((lambda (_L19214_)
                                  (let ()
                                    (let* ((_g1922719235_
                                            (lambda (_g1922819231_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1922819231_)))
                                           (_g1922619377_
                                            (lambda (_g1922819239_)
                                              ((lambda (_L19242_)
                                                 (let ()
                                                   (let* ((_g1925519263_
                                                           (lambda (_g1925619259_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1925619259_)))
                                                          (_g1925419373_
                                                           (lambda (_g1925619267_)
                                                             ((lambda (_L19270_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1928319291_
                                  (lambda (_g1928419287_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1928419287_)))
                                 (_g1928219369_
                                  (lambda (_g1928419295_)
                                    ((lambda (_L19298_)
                                       (let ()
                                         (let* ((_g1931119319_
                                                 (lambda (_g1931219315_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1931219315_)))
                                                (_g1931019341_
                                                 (lambda (_g1931219323_)
                                                   ((lambda (_L19326_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18427_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L19074_ (cons _L19326_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1931219323_))))
                                           (_g1931019341_
                                            (_wrap18427_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18483_
                                                         (cons (cons _L19102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18511_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L19130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18511_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18539_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18567_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1934419351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1934519354_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1934419351_ '()))
                                _g1934519354_))
                        '()
                        _L18733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1934619357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1934719360_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1934619357_ '()))
                                      _g1934719360_))
                              '()
                              _L18804_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L19158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L19186_ '()))
                                     (cons _L19214_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19242_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19298_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1934819363_
                                                         _g1934919366_)
                                                  (cons _g1934819363_
                                                        _g1934919366_))
                                                '()
                                                _L18662_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1928419295_))))
                            (_g1928219369_ _plist18930_))))
                      _g1925619267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1925419373_
                                                      (if (not (null? _type-ctor18886_))
                                                          (cadr _type-ctor18886_)
                                                          '#f)))))
                                               _g1922819239_))))
                                      (_g1922619377_
                                       (cadr _type-name18856_)))))
                                _g1920019211_))))
                       (_g1919819381_
                        (let ((_quote-e19420_
                               (lambda (_x-ref19385_)
                                 (if _x-ref19385_
                                     (let* ((_g1938819396_
                                             (lambda (_g1938919392_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1938919392_)))
                                            (_g1938719416_
                                             (lambda (_g1938919400_)
                                               ((lambda (_L19403_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19403_
                                                                '()))))
                                                _g1938919400_))))
                                       (_g1938719416_ _x-ref19385_))
                                     '#f))))
                          (if _struct?18425_
                              (_quote-e19420_ _super-ref18422_)
                              (cons 'list
                                    (map _quote-e19420_
                                         _super-ref18422_))))))))
                 _g1917219183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917019423_
                                                 (if (not (null? _type-id18871_))
                                                     (cadr _type-id18871_)
                                                     '#f)))))
                                          _g1914419155_))))
                                 (_g1914219427_
                                  (if _struct?18425_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1911619127_))))
                  (_g1911419431_
                   (if _struct?18425_
                       (if _super18434_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18595_ '()))
                           '#f)
                       (let* ((_g1943519452_
                               (lambda (_g1943619448_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1943619448_)))
                              (_g1943419513_
                               (lambda (_g1943619456_)
                                 (if (gx#stx-pair/null? _g1943619456_)
                                     (if (fx>= (gx#stx-length _g1943619456_)
                                               '0)
                                         (let ((_g35018_
                                                (gx#syntax-split-splice
                                                 _g1943619456_
                                                 '0)))
                                           (begin
                                             (let ((_g35019_
                                                    (values-count _g35018_)))
                                               (if (not (fx= _g35019_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35019_)))
                                             (let ((_target1943819459_
                                                    (values-ref _g35018_ 0))
                                                   (_tl1944019462_
                                                    (values-ref _g35018_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1944019462_)
                                                   (letrec ((_loop1944119465_
                                                             (lambda (_hd1943919469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1944519472_)
                       (if (gx#stx-pair? _hd1943919469_)
                           (let ((_e1944219475_ (gx#syntax-e _hd1943919469_)))
                             (let ((_lp-hd1944319479_ (##car _e1944219475_))
                                   (_lp-tl1944419482_ (##cdr _e1944219475_)))
                               (_loop1944119465_
                                _lp-tl1944419482_
                                (cons _lp-hd1944319479_
                                      _super-id1944519472_))))
                           (let ((_super-id1944619485_
                                  (reverse _super-id1944519472_)))
                             ((lambda (_L19489_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1950419507_
                                                          _g1950519510_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1950419507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1950519510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19489_)))))
                              _super-id1944619485_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1944119465_
                                                      _target1943819459_
                                                      '()))
                                                   (_g1943519452_
                                                    _g1943619456_)))))
                                         (_g1943519452_ _g1943619456_))
                                     (_g1943519452_ _g1943619456_)))))
                         (_g1943419513_ _L18595_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1908819099_))))
                                           (_g1908619517_
                                            (if _struct?18425_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1906019071_))))
                            (_g1905819521_
                             (_wrap18427_
                              (cons _L18452_
                                    (cons _L18511_
                                          (cons _L18595_
                                                (cons _L18539_
                                                      (cons _L18567_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1952419527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1952519530_)
                               (cons _g1952419527_ _g1952519530_))
                             '()
                             _L19042_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1899919038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1899419018_
                                              _target1899119012_
                                              '()))
                                           (_g1898819005_ _g1898919009_)))))
                                 (_g1898819005_ _g1898919009_))
                             (_g1898819005_ _g1898919009_)))))
                 (_g1898719533_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked18985_
                                                     _type-plist18970_)
                                              _type-ctor18886_)
                                       _type-name18856_)
                                _type-id18871_)
                         _type-attr18849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1876118800_))))))
                                  (_loop1875618780_ _target1875318774_ '()))
                                (_g1875018767_ _g1875118771_)))))
                      (_g1875018767_ _g1875118771_))
                  (_g1875018767_ _g1875118771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1874919537_
                                               (gx#stx-map
                                                (lambda (_g1954019542_)
                                                  (_make-id18429_
                                                   _name18431_
                                                   '"-"
                                                   _g1954019542_
                                                   '"-set!"))
                                                _els18423_)))))
                                        _getf1869018729_))))))
                       (_loop1868518709_ _target1868218703_ '()))
                     (_g1867918696_ _g1868018700_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1867918696_
                                                    _g1868018700_))
                                               (_g1867918696_
                                                _g1868018700_)))))
                                   (_g1867819546_
                                    (gx#stx-map
                                     (lambda (_g1954919551_)
                                       (_make-id18429_
                                        _name18431_
                                        '"-"
                                        _g1954919551_))
                                     _els18423_)))))
                             _attr1861918658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1861418638_
                                                     _target1861118632_
                                                     '()))
                                                  (_g1860818625_
                                                   _g1860918629_)))))
                                        (_g1860818625_ _g1860918629_))
                                    (_g1860818625_ _g1860918629_)))))
                        (_g1860719555_ _els18423_))))
                  _g1858118592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1857919559_
                                                  (if _struct?18425_
                                                      (if _super18434_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18434_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18434_))))))
                                           _g1855318564_))))
                                  (_g1855119563_
                                   (_make-id18429_ _name18431_ '"?")))))
                            _g1852518536_))))
                   (_g1852319567_ (_make-id18429_ '"make-" _name18431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1849718508_))))
                                            (_g1849519571_
                                             (_make-id18429_
                                              _name18431_
                                              '"::t")))))
                                      _g1846918480_))))
                             (_g1846719575_ _id18421_))))
                       _g1843818449_))))
              (_g1843619579_
               (if _struct?18425_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx19907_)
        (letrec ((_generate19910_
                  (lambda (_hd19994_ _fields19996_ _body19997_)
                    (let* ((_g2000020015_
                            (lambda (_g2000120011_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2000120011_)))
                           (_g1999920026_
                            (lambda (_g2000120019_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19994_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19907_
                                      _hd19994_
                                      '#f
                                      _fields19996_
                                      _body19997_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19907_
                                      _hd19994_))))))
                           (_g1999820070_
                            (lambda (_g2000120030_)
                              (if (gx#stx-pair? _g2000120030_)
                                  (let ((_e2000420033_
                                         (gx#syntax-e _g2000120030_)))
                                    (let ((_hd2000520037_
                                           (##car _e2000420033_))
                                          (_tl2000620040_
                                           (##cdr _e2000420033_)))
                                      (if (gx#stx-pair? _tl2000620040_)
                                          (let ((_e2000720043_
                                                 (gx#syntax-e _tl2000620040_)))
                                            (let ((_hd2000820047_
                                                   (##car _e2000720043_))
                                                  (_tl2000920050_
                                                   (##cdr _e2000720043_)))
                                              (if (gx#stx-null? _tl2000920050_)
                                                  ((lambda (_L20053_ _L20055_)
                                                     (if (if (gx#identifier?
                                                              _L20055_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L20053_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx19907_
                                                          _L20055_
                                                          _L20053_
                                                          _fields19996_
                                                          _body19997_
                                                          '#t)
                                                         (_g1999920026_
                                                          _g2000120030_)))
                                                   _hd2000820047_
                                                   _hd2000520037_)
                                                  (_g1999920026_
                                                   _g2000120030_))))
                                          (_g1999920026_ _g2000120030_))))
                                  (_g1999920026_ _g2000120030_)))))
                      (_g1999820070_ _hd19994_)))))
          (let* ((_g1991319932_
                  (lambda (_g1991419928_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1991419928_)))
                 (_g1991219990_
                  (lambda (_g1991419936_)
                    (if (gx#stx-pair? _g1991419936_)
                        (let ((_e1991819939_ (gx#syntax-e _g1991419936_)))
                          (let ((_hd1991919943_ (##car _e1991819939_))
                                (_tl1992019946_ (##cdr _e1991819939_)))
                            (if (gx#stx-pair? _tl1992019946_)
                                (let ((_e1992119949_
                                       (gx#syntax-e _tl1992019946_)))
                                  (let ((_hd1992219953_ (##car _e1992119949_))
                                        (_tl1992319956_ (##cdr _e1992119949_)))
                                    (if (gx#stx-pair? _tl1992319956_)
                                        (let ((_e1992419959_
                                               (gx#syntax-e _tl1992319956_)))
                                          (let ((_hd1992519963_
                                                 (##car _e1992419959_))
                                                (_tl1992619966_
                                                 (##cdr _e1992419959_)))
                                            ((lambda (_L19969_
                                                      _L19971_
                                                      _L19972_)
                                               (if (if (gx#identifier-list?
                                                        _L19971_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19969_)
                                                       '#f)
                                                   (_generate19910_
                                                    _L19972_
                                                    _L19971_
                                                    _L19969_)
                                                   (_g1991319932_
                                                    _g1991419936_)))
                                             _tl1992619966_
                                             _hd1992519963_
                                             _hd1992219953_)))
                                        (_g1991319932_ _g1991419936_))))
                                (_g1991319932_ _g1991419936_))))
                        (_g1991319932_ _g1991419936_)))))
            (_g1991219990_ _stx19907_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20074_)
        (letrec ((_generate20077_
                  (lambda (_hd20161_ _slots20163_ _body20164_)
                    (let* ((_g2016720179_
                            (lambda (_g2016820175_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2016820175_)))
                           (_g2016620190_
                            (lambda (_g2016820183_)
                              ((lambda ()
                                 (if (gx#identifier? _hd20161_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx20074_
                                      _hd20161_
                                      '()
                                      _slots20163_
                                      _body20164_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx20074_
                                      _hd20161_))))))
                           (_g2016520222_
                            (lambda (_g2016820194_)
                              (if (gx#stx-pair? _g2016820194_)
                                  (let ((_e2017120197_
                                         (gx#syntax-e _g2016820194_)))
                                    (let ((_hd2017220201_
                                           (##car _e2017120197_))
                                          (_tl2017320204_
                                           (##cdr _e2017120197_)))
                                      ((lambda (_L20207_ _L20209_)
                                         (if (if (gx#stx-list? _L20207_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L20207_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx20074_
                                              _L20209_
                                              (gx#syntax->list _L20207_)
                                              _slots20163_
                                              _body20164_
                                              '#f)
                                             (_g2016620190_ _g2016820194_)))
                                       _tl2017320204_
                                       _hd2017220201_)))
                                  (_g2016620190_ _g2016820194_)))))
                      (_g2016520222_ _hd20161_)))))
          (let* ((_g2008020099_
                  (lambda (_g2008120095_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2008120095_)))
                 (_g2007920157_
                  (lambda (_g2008120103_)
                    (if (gx#stx-pair? _g2008120103_)
                        (let ((_e2008520106_ (gx#syntax-e _g2008120103_)))
                          (let ((_hd2008620110_ (##car _e2008520106_))
                                (_tl2008720113_ (##cdr _e2008520106_)))
                            (if (gx#stx-pair? _tl2008720113_)
                                (let ((_e2008820116_
                                       (gx#syntax-e _tl2008720113_)))
                                  (let ((_hd2008920120_ (##car _e2008820116_))
                                        (_tl2009020123_ (##cdr _e2008820116_)))
                                    (if (gx#stx-pair? _tl2009020123_)
                                        (let ((_e2009120126_
                                               (gx#syntax-e _tl2009020123_)))
                                          (let ((_hd2009220130_
                                                 (##car _e2009120126_))
                                                (_tl2009320133_
                                                 (##cdr _e2009120126_)))
                                            ((lambda (_L20136_
                                                      _L20138_
                                                      _L20139_)
                                               (if (if (gx#identifier-list?
                                                        _L20138_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20136_)
                                                       '#f)
                                                   (_generate20077_
                                                    _L20139_
                                                    _L20138_
                                                    _L20136_)
                                                   (_g2008020099_
                                                    _g2008120103_)))
                                             _tl2009320133_
                                             _hd2009220130_
                                             _hd2008920120_)))
                                        (_g2008020099_ _g2008120103_))))
                                (_g2008020099_ _g2008120103_))))
                        (_g2008020099_ _g2008120103_)))))
            (_g2007920157_ _stx20074_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20226_)
        (letrec ((_wrap20229_
                  (lambda (_e-stx20566_)
                    (gx#stx-wrap-source
                     _e-stx20566_
                     (gx#stx-source _stx20226_))))
                 (_method-opt?20231_
                  (lambda (_x20563_) (memq (gx#stx-e _x20563_) '(rebind:)))))
          (let* ((_g2023320262_
                  (lambda (_g2023420258_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2023420258_)))
                 (_g2023220559_
                  (lambda (_g2023420266_)
                    (if (gx#stx-pair? _g2023420266_)
                        (let ((_e2023920269_ (gx#syntax-e _g2023420266_)))
                          (let ((_hd2024020273_ (##car _e2023920269_))
                                (_tl2024120276_ (##cdr _e2023920269_)))
                            (if (gx#stx-pair? _tl2024120276_)
                                (let ((_e2024220279_
                                       (gx#syntax-e _tl2024120276_)))
                                  (let ((_hd2024320283_ (##car _e2024220279_))
                                        (_tl2024420286_ (##cdr _e2024220279_)))
                                    (if (gx#stx-pair? _hd2024320283_)
                                        (let ((_e2024520289_
                                               (gx#syntax-e _hd2024320283_)))
                                          (let ((_hd2024620293_
                                                 (##car _e2024520289_))
                                                (_tl2024720296_
                                                 (##cdr _e2024520289_)))
                                            (if (gx#identifier? _hd2024620293_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g35020_|
                                                     _hd2024620293_)
                                                    (if (gx#stx-pair?
                                                         _tl2024720296_)
                                                        (let ((_e2024820299_
                                                               (gx#syntax-e
                                                                _tl2024720296_)))
                                                          (let ((_hd2024920303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2024820299_))
                        (_tl2025020306_ (##cdr _e2024820299_)))
                    (if (gx#stx-pair? _tl2025020306_)
                        (let ((_e2025120309_ (gx#syntax-e _tl2025020306_)))
                          (let ((_hd2025220313_ (##car _e2025120309_))
                                (_tl2025320316_ (##cdr _e2025120309_)))
                            (if (gx#stx-null? _tl2025320316_)
                                (if (gx#stx-pair? _tl2024420286_)
                                    (let ((_e2025420319_
                                           (gx#syntax-e _tl2024420286_)))
                                      (let ((_hd2025520323_
                                             (##car _e2025420319_))
                                            (_tl2025620326_
                                             (##cdr _e2025420319_)))
                                        ((lambda (_L20329_
                                                  _L20331_
                                                  _L20332_
                                                  _L20333_)
                                           (if (if (gx#identifier? _L20333_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20332_)
                                                       (gx#stx-plist?
                                                        _L20329_
                                                        _method-opt?20231_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20358_
                                                       (gx#syntax-local-value
                                                        _L20332_))
                                                      (_rebind?20361_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20329_))
                                                           '#t
                                                           '#f))
                                                      (_g2036420372_
                                                       (lambda (_g2036520368_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2036520368_)))
                                                      (_g2036320555_
                                                       (lambda (_g2036520376_)
                                                         ((lambda (_L20379_)
                                                            (let ()
                                                              (let* ((_g2039320401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2039420397_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2039420397_)))
                             (_g2039220551_
                              (lambda (_g2039420405_)
                                ((lambda (_L20408_)
                                   (let ()
                                     (let* ((_g2042120429_
                                             (lambda (_g2042220425_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2042220425_)))
                                            (_g2042020547_
                                             (lambda (_g2042220433_)
                                               ((lambda (_L20436_)
                                                  (let ()
                                                    (let* ((_g2044920457_
                                                            (lambda (_g2045020453_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2045020453_)))
                                                           (_g2044820543_
                                                            (lambda (_g2045020461_)
                                                              ((lambda (_L20464_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2047720485_
                                   (lambda (_g2047820481_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2047820481_)))
                                  (_g2047620539_
                                   (lambda (_g2047820489_)
                                     ((lambda (_L20492_)
                                        (let ()
                                          (let* ((_g2050520513_
                                                  (lambda (_g2050620509_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2050620509_)))
                                                 (_g2050420535_
                                                  (lambda (_g2050620517_)
                                                    ((lambda (_L20520_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20229_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20464_ (cons _L20520_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2050620517_))))
                                            (_g2050420535_
                                             (_wrap20229_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20379_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20333_ '()))
                        (cons _L20408_ (cons _L20492_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2047820489_))))
                             (_g2047620539_ _rebind?20361_))))
                       _g2045020461_))))
              (_g2044820543_
               (_wrap20229_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20408_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20436_
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
                                                            (cons _L20379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20333_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20331_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2042220433_))))
                                       (_g2042020547_
                                        (gx#stx-identifier
                                         _L20333_
                                         '@next-method)))))
                                 _g2039420405_))))
                        (_g2039220551_
                         (gx#stx-identifier
                          _L20333_
                          _L20332_
                          '"::"
                          _L20333_)))))
                  _g2036520376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2036320555_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20358_)))
                                               (if (not (gx#identifier?
                                                         _L20333_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20226_
                                                    _L20333_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20332_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20226_
                                                        _L20332_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20226_)))))
                                         _tl2025620326_
                                         _hd2025520323_
                                         _hd2025220313_
                                         _hd2024920303_)))
                                    (_g2023320262_ _g2023420266_))
                                (_g2023320262_ _g2023420266_))))
                        (_g2023320262_ _g2023420266_))))
                (_g2023320262_ _g2023420266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2023320262_
                                                     _g2023420266_))
                                                (_g2023320262_
                                                 _g2023420266_))))
                                        (_g2023320262_ _g2023420266_))))
                                (_g2023320262_ _g2023420266_))))
                        (_g2023320262_ _g2023420266_)))))
            (_g2023220559_ _stx20226_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20569_)
        (let* ((_g2057420623_
                (lambda (_g2057520619_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2057520619_)))
               (_g2057320722_
                (lambda (_g2057520627_)
                  (if (gx#stx-pair? _g2057520627_)
                      (let ((_e2060020630_ (gx#syntax-e _g2057520627_)))
                        (let ((_hd2060120634_ (##car _e2060020630_))
                              (_tl2060220637_ (##cdr _e2060020630_)))
                          (if (gx#stx-pair? _tl2060220637_)
                              (let ((_e2060320640_
                                     (gx#syntax-e _tl2060220637_)))
                                (let ((_hd2060420644_ (##car _e2060320640_))
                                      (_tl2060520647_ (##cdr _e2060320640_)))
                                  (if (gx#stx-pair? _tl2060520647_)
                                      (let ((_e2060620650_
                                             (gx#syntax-e _tl2060520647_)))
                                        (let ((_hd2060720654_
                                               (##car _e2060620650_))
                                              (_tl2060820657_
                                               (##cdr _e2060620650_)))
                                          (if (gx#stx-pair/null?
                                               _tl2060820657_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2060820657_)
                                                        '0)
                                                  (let ((_g35021_
                                                         (gx#syntax-split-splice
                                                          _tl2060820657_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35022_
                                                             (values-count
                                                              _g35021_)))
                                                        (if (not (fx= _g35022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g35022_)))
              (let ((_target2060920660_ (values-ref _g35021_ 0))
                    (_tl2061120663_ (values-ref _g35021_ 1)))
                (if (gx#stx-null? _tl2061120663_)
                    (letrec ((_loop2061220666_
                              (lambda (_hd2061020670_ _arg2061620673_)
                                (if (gx#stx-pair? _hd2061020670_)
                                    (let ((_e2061320676_
                                           (gx#syntax-e _hd2061020670_)))
                                      (let ((_lp-hd2061420680_
                                             (##car _e2061320676_))
                                            (_lp-tl2061520683_
                                             (##cdr _e2061320676_)))
                                        (_loop2061220666_
                                         _lp-tl2061520683_
                                         (cons _lp-hd2061420680_
                                               _arg2061620673_))))
                                    (let ((_arg2061720686_
                                           (reverse _arg2061620673_)))
                                      ((lambda (_L20690_ _L20692_ _L20693_)
                                         (if (gx#identifier? _L20693_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20692_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20693_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2071320716_ _g2071420719_)
                                  (cons _g2071320716_ _g2071420719_))
                                '()
                                _L20690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2057420623_ _g2057520627_)))
                                       _arg2061720686_
                                       _hd2060720654_
                                       _hd2060420644_))))))
                      (_loop2061220666_ _target2060920660_ '()))
                    (_g2057420623_ _g2057520627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2057420623_
                                                   _g2057520627_))
                                              (_g2057420623_ _g2057520627_))))
                                      (_g2057420623_ _g2057520627_))))
                              (_g2057420623_ _g2057520627_))))
                      (_g2057420623_ _g2057520627_))))
               (_g2057220828_
                (lambda (_g2057520726_)
                  (if (gx#stx-pair? _g2057520726_)
                      (let ((_e2057920729_ (gx#syntax-e _g2057520726_)))
                        (let ((_hd2058020733_ (##car _e2057920729_))
                              (_tl2058120736_ (##cdr _e2057920729_)))
                          (if (gx#stx-pair? _tl2058120736_)
                              (let ((_e2058220739_
                                     (gx#syntax-e _tl2058120736_)))
                                (let ((_hd2058320743_ (##car _e2058220739_))
                                      (_tl2058420746_ (##cdr _e2058220739_)))
                                  (if (gx#stx-pair? _tl2058420746_)
                                      (let ((_e2058520749_
                                             (gx#syntax-e _tl2058420746_)))
                                        (let ((_hd2058620753_
                                               (##car _e2058520749_))
                                              (_tl2058720756_
                                               (##cdr _e2058520749_)))
                                          (if (gx#stx-pair/null?
                                               _tl2058720756_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2058720756_)
                                                        '0)
                                                  (let ((_g35023_
                                                         (gx#syntax-split-splice
                                                          _tl2058720756_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35024_
                                                             (values-count
                                                              _g35023_)))
                                                        (if (not (fx= _g35024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g35024_)))
              (let ((_target2058820759_ (values-ref _g35023_ 0))
                    (_tl2059020762_ (values-ref _g35023_ 1)))
                (if (gx#stx-null? _tl2059020762_)
                    (letrec ((_loop2059120765_
                              (lambda (_hd2058920769_ _arg2059520772_)
                                (if (gx#stx-pair? _hd2058920769_)
                                    (let ((_e2059220775_
                                           (gx#syntax-e _hd2058920769_)))
                                      (let ((_lp-hd2059320779_
                                             (##car _e2059220775_))
                                            (_lp-tl2059420782_
                                             (##cdr _e2059220775_)))
                                        (_loop2059120765_
                                         _lp-tl2059420782_
                                         (cons _lp-hd2059320779_
                                               _arg2059520772_))))
                                    (let ((_arg2059620785_
                                           (reverse _arg2059520772_)))
                                      ((lambda (_L20789_ _L20791_ _L20792_)
                                         (if (if (gx#identifier? _L20792_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2081120814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2081220817_)
                     (cons _g2081120814_ _g2081220817_))
                   '()
                   _L20789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L20791_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L20792_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2081920822_
                                                           _g2082020825_)
                                                    (cons _g2081920822_
                                                          _g2082020825_))
                                                  '()
                                                  _L20789_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2057320722_ _g2057520726_)))
                                       _arg2059620785_
                                       _hd2058620753_
                                       _hd2058320743_))))))
                      (_loop2059120765_ _target2058820759_ '()))
                    (_g2057320722_ _g2057520726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2057320722_
                                                   _g2057520726_))
                                              (_g2057320722_ _g2057520726_))))
                                      (_g2057320722_ _g2057520726_))))
                              (_g2057320722_ _g2057520726_))))
                      (_g2057320722_ _g2057520726_)))))
          (_g2057220828_ _$stx20569_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx20834_)
        (let* ((_g2083920879_
                (lambda (_g2084020875_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2084020875_)))
               (_g2083820980_
                (lambda (_g2084020883_)
                  (if (gx#stx-pair? _g2084020883_)
                      (let ((_e2085620886_ (gx#syntax-e _g2084020883_)))
                        (let ((_hd2085720890_ (##car _e2085620886_))
                              (_tl2085820893_ (##cdr _e2085620886_)))
                          (if (gx#stx-pair? _tl2085820893_)
                              (let ((_e2085920896_
                                     (gx#syntax-e _tl2085820893_)))
                                (let ((_hd2086020900_ (##car _e2085920896_))
                                      (_tl2086120903_ (##cdr _e2085920896_)))
                                  (if (gx#stx-pair? _tl2086120903_)
                                      (let ((_e2086220906_
                                             (gx#syntax-e _tl2086120903_)))
                                        (let ((_hd2086320910_
                                               (##car _e2086220906_))
                                              (_tl2086420913_
                                               (##cdr _e2086220906_)))
                                          (if (gx#stx-pair/null?
                                               _tl2086420913_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2086420913_)
                                                        '0)
                                                  (let ((_g35025_
                                                         (gx#syntax-split-splice
                                                          _tl2086420913_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35026_
                                                             (values-count
                                                              _g35025_)))
                                                        (if (not (fx= _g35026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g35026_)))
              (let ((_target2086520916_ (values-ref _g35025_ 0))
                    (_tl2086720919_ (values-ref _g35025_ 1)))
                (if (gx#stx-null? _tl2086720919_)
                    (letrec ((_loop2086820922_
                              (lambda (_hd2086620926_ _rest2087220929_)
                                (if (gx#stx-pair? _hd2086620926_)
                                    (let ((_e2086920932_
                                           (gx#syntax-e _hd2086620926_)))
                                      (let ((_lp-hd2087020936_
                                             (##car _e2086920932_))
                                            (_lp-tl2087120939_
                                             (##cdr _e2086920932_)))
                                        (_loop2086820922_
                                         _lp-tl2087120939_
                                         (cons _lp-hd2087020936_
                                               _rest2087220929_))))
                                    (let ((_rest2087320942_
                                           (reverse _rest2087220929_)))
                                      ((lambda (_L20946_
                                                _L20948_
                                                _L20949_
                                                _L20950_)
                                         (cons _L20950_
                                               (cons (cons _L20950_
                                                           (cons _L20949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L20948_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2097120974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2097220977_)
                        (cons _g2097120974_ _g2097220977_))
                      '()
                      _L20946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2087320942_
                                       _hd2086320910_
                                       _hd2086020900_
                                       _hd2085720890_))))))
                      (_loop2086820922_ _target2086520916_ '()))
                    (_g2083920879_ _g2084020883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083920879_
                                                   _g2084020883_))
                                              (_g2083920879_ _g2084020883_))))
                                      (_g2083920879_ _g2084020883_))))
                              (_g2083920879_ _g2084020883_))))
                      (_g2083920879_ _g2084020883_))))
               (_g2083721034_
                (lambda (_g2084020984_)
                  (if (gx#stx-pair? _g2084020984_)
                      (let ((_e2084320987_ (gx#syntax-e _g2084020984_)))
                        (let ((_hd2084420991_ (##car _e2084320987_))
                              (_tl2084520994_ (##cdr _e2084320987_)))
                          (if (gx#stx-pair? _tl2084520994_)
                              (let ((_e2084620997_
                                     (gx#syntax-e _tl2084520994_)))
                                (let ((_hd2084721001_ (##car _e2084620997_))
                                      (_tl2084821004_ (##cdr _e2084620997_)))
                                  (if (gx#stx-pair? _tl2084821004_)
                                      (let ((_e2084921007_
                                             (gx#syntax-e _tl2084821004_)))
                                        (let ((_hd2085021011_
                                               (##car _e2084921007_))
                                              (_tl2085121014_
                                               (##cdr _e2084921007_)))
                                          (if (gx#stx-null? _tl2085121014_)
                                              ((lambda (_L21017_ _L21019_)
                                                 (if (gx#identifier? _L21017_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L21019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L21017_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2083820980_
                                                      _g2084020984_)))
                                               _hd2085021011_
                                               _hd2084721001_)
                                              (_g2083820980_ _g2084020984_))))
                                      (_g2083820980_ _g2084020984_))))
                              (_g2083820980_ _g2084020984_))))
                      (_g2083820980_ _g2084020984_)))))
          (_g2083721034_ _$stx20834_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21039_)
        (let* ((_g2104421096_
                (lambda (_g2104521092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2104521092_)))
               (_g2104321225_
                (lambda (_g2104521100_)
                  (if (gx#stx-pair? _g2104521100_)
                      (let ((_e2106721103_ (gx#syntax-e _g2104521100_)))
                        (let ((_hd2106821107_ (##car _e2106721103_))
                              (_tl2106921110_ (##cdr _e2106721103_)))
                          (if (gx#stx-pair? _tl2106921110_)
                              (let ((_e2107021113_
                                     (gx#syntax-e _tl2106921110_)))
                                (let ((_hd2107121117_ (##car _e2107021113_))
                                      (_tl2107221120_ (##cdr _e2107021113_)))
                                  (if (gx#stx-pair? _tl2107221120_)
                                      (let ((_e2107321123_
                                             (gx#syntax-e _tl2107221120_)))
                                        (let ((_hd2107421127_
                                               (##car _e2107321123_))
                                              (_tl2107521130_
                                               (##cdr _e2107321123_)))
                                          (if (gx#stx-pair/null?
                                               _tl2107521130_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2107521130_)
                                                        '2)
                                                  (let ((_g35027_
                                                         (gx#syntax-split-splice
                                                          _tl2107521130_
                                                          '2)))
                                                    (begin
                                                      (let ((_g35028_
                                                             (values-count
                                                              _g35027_)))
                                                        (if (not (fx= _g35028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g35028_)))
              (let ((_target2107621133_ (values-ref _g35027_ 0))
                    (_tl2107821136_ (values-ref _g35027_ 1)))
                (if (gx#stx-pair? _tl2107821136_)
                    (let ((_e2108521139_ (gx#syntax-e _tl2107821136_)))
                      (let ((_hd2108621143_ (##car _e2108521139_))
                            (_tl2108721146_ (##cdr _e2108521139_)))
                        (if (gx#stx-pair? _tl2108721146_)
                            (let ((_e2108821149_ (gx#syntax-e _tl2108721146_)))
                              (let ((_hd2108921153_ (##car _e2108821149_))
                                    (_tl2109021156_ (##cdr _e2108821149_)))
                                (if (gx#stx-null? _tl2109021156_)
                                    (letrec ((_loop2107921159_
                                              (lambda (_hd2107721163_
                                                       _path2108321166_)
                                                (if (gx#stx-pair?
                                                     _hd2107721163_)
                                                    (let ((_e2108021169_
                                                           (gx#syntax-e
                                                            _hd2107721163_)))
                                                      (let ((_lp-hd2108121173_
                                                             (##car _e2108021169_))
                                                            (_lp-tl2108221176_
                                                             (##cdr _e2108021169_)))
                                                        (_loop2107921159_
                                                         _lp-tl2108221176_
                                                         (cons _lp-hd2108121173_
                                                               _path2108321166_))))
                                                    (let ((_path2108421179_
                                                           (reverse _path2108321166_)))
                                                      ((lambda (_L21183_
                                                                _L21185_
                                                                _L21186_
                                                                _L21187_
                                                                _L21188_
                                                                _L21189_)
                                                         (cons _L21189_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L21188_
                                         (cons _L21187_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2121621219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2121721222_)
                  (cons _g2121621219_ _g2121721222_))
                '()
                _L21186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L21185_ (cons _L21183_ '())))))
               _hd2108921153_
               _hd2108621143_
               _path2108421179_
               _hd2107421127_
               _hd2107121117_
               _hd2106821107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2107921159_
                                       _target2107621133_
                                       '()))
                                    (_g2104421096_ _g2104521100_))))
                            (_g2104421096_ _g2104521100_))))
                    (_g2104421096_ _g2104521100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2104421096_
                                                   _g2104521100_))
                                              (_g2104421096_ _g2104521100_))))
                                      (_g2104421096_ _g2104521100_))))
                              (_g2104421096_ _g2104521100_))))
                      (_g2104421096_ _g2104521100_))))
               (_g2104221293_
                (lambda (_g2104521229_)
                  (if (gx#stx-pair? _g2104521229_)
                      (let ((_e2104921232_ (gx#syntax-e _g2104521229_)))
                        (let ((_hd2105021236_ (##car _e2104921232_))
                              (_tl2105121239_ (##cdr _e2104921232_)))
                          (if (gx#stx-pair? _tl2105121239_)
                              (let ((_e2105221242_
                                     (gx#syntax-e _tl2105121239_)))
                                (let ((_hd2105321246_ (##car _e2105221242_))
                                      (_tl2105421249_ (##cdr _e2105221242_)))
                                  (if (gx#stx-pair? _tl2105421249_)
                                      (let ((_e2105521252_
                                             (gx#syntax-e _tl2105421249_)))
                                        (let ((_hd2105621256_
                                               (##car _e2105521252_))
                                              (_tl2105721259_
                                               (##cdr _e2105521252_)))
                                          (if (gx#stx-pair? _tl2105721259_)
                                              (let ((_e2105821262_
                                                     (gx#syntax-e
                                                      _tl2105721259_)))
                                                (let ((_hd2105921266_
                                                       (##car _e2105821262_))
                                                      (_tl2106021269_
                                                       (##cdr _e2105821262_)))
                                                  (if (gx#stx-null?
                                                       _tl2106021269_)
                                                      ((lambda (_L21272_
                                                                _L21274_
                                                                _L21275_)
                                                         (if (gx#identifier?
                                                              _L21274_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21275_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21274_ '()))
                                       (cons _L21272_ '()))))
                     (_g2104321225_ _g2104521229_)))
               _hd2105921266_
               _hd2105621256_
               _hd2105321246_)
              (_g2104321225_ _g2104521229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2104321225_ _g2104521229_))))
                                      (_g2104321225_ _g2104521229_))))
                              (_g2104321225_ _g2104521229_))))
                      (_g2104321225_ _g2104521229_)))))
          (_g2104221293_ _$stx21039_))))))
