(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g41351_|
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
      (lambda _$args20424_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args20424_)))
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
      (lambda _$args20420_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args20420_)))
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
      (lambda _$args20416_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args20416_)))
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
      (lambda _$args20412_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args20412_)))
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
      (lambda _$args20408_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args20408_)))
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
      (lambda _$args20404_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args20404_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
      (lambda (_stx20378_ _is?20380_)
        (if (gx#identifier? _stx20378_)
            (let ((_e2038120383_ (gx#syntax-local-value _stx20378_ false)))
              (if _e2038120383_
                  (let ((_e20387_ _e2038120383_))
                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                         _e20387_)
                        (_is?20380_ _e20387_)
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
      (lambda (_stx20394_)
        (let ((_is?20397_ true))
          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
           _stx20394_
           _is?20397_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (lambda _g41337_
        (let ((_g41336_ (length _g41337_)))
          (cond ((##fx= _g41336_ 1)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                        _g41337_))
                ((##fx= _g41336_ 2)
                 (apply |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
                        _g41337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                  _g41337_))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx20374_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20374_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx20371_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__%|
         _stx20371_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id20365_)
        (if _id20365_
            (let ((_info20368_ (gx#syntax-local-value _id20365_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info20368_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info20368_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self20130_ _stx20132_)
        (let* ((_g2013420154_
                (lambda (_g2013520150_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2013520150_)))
               (_g2013320361_
                (lambda (_g2013520158_)
                  (if (gx#stx-pair? _g2013520158_)
                      (let ((_e2013720161_ (gx#syntax-e _g2013520158_)))
                        (let ((_hd2013820165_ (##car _e2013720161_))
                              (_tl2013920168_ (##cdr _e2013720161_)))
                          (if (gx#stx-pair/null? _tl2013920168_)
                              (let ((_g41338_
                                     (gx#syntax-split-splice
                                      _tl2013920168_
                                      '0)))
                                (begin
                                  (let ((_g41339_
                                         (if (##values? _g41338_)
                                             (##vector-length _g41338_)
                                             1)))
                                    (if (not (##fx= _g41339_ 2))
                                        (error "Context expects 2 values"
                                               _g41339_)))
                                  (let ((_target2014020171_
                                         (##vector-ref _g41338_ 0))
                                        (_tl2014220174_
                                         (##vector-ref _g41338_ 1)))
                                    (if (gx#stx-null? _tl2014220174_)
                                        (letrec ((_loop2014320177_
                                                  (lambda (_hd2014120181_
                                                           _arg2014720184_)
                                                    (if (gx#stx-pair?
                                                         _hd2014120181_)
                                                        (let ((_e2014420187_
                                                               (gx#syntax-e
                                                                _hd2014120181_)))
                                                          (let ((_lp-hd2014520191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2014420187_))
                        (_lp-tl2014620194_ (##cdr _e2014420187_)))
                    (_loop2014320177_
                     _lp-tl2014620194_
                     (cons _lp-hd2014520191_ _arg2014720184_))))
                (let ((_arg2014820197_ (reverse _arg2014720184_)))
                  ((lambda (_L20201_)
                     (let* ((_g2021720248_
                             (lambda (_g2021820244_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2021820244_)))
                            (_g2021620357_
                             (lambda (_g2021820252_)
                               (if (gx#stx-pair? _g2021820252_)
                                   (let ((_e2022520255_
                                          (gx#syntax-e _g2021820252_)))
                                     (let ((_hd2022620259_
                                            (##car _e2022520255_))
                                           (_tl2022720262_
                                            (##cdr _e2022520255_)))
                                       (if (gx#stx-pair? _tl2022720262_)
                                           (let ((_e2022820265_
                                                  (gx#syntax-e
                                                   _tl2022720262_)))
                                             (let ((_hd2022920269_
                                                    (##car _e2022820265_))
                                                   (_tl2023020272_
                                                    (##cdr _e2022820265_)))
                                               (if (gx#stx-pair?
                                                    _tl2023020272_)
                                                   (let ((_e2023120275_
                                                          (gx#syntax-e
                                                           _tl2023020272_)))
                                                     (let ((_hd2023220279_
                                                            (##car _e2023120275_))
                                                           (_tl2023320282_
                                                            (##cdr _e2023120275_)))
                                                       (if (gx#stx-pair?
                                                            _tl2023320282_)
                                                           (let ((_e2023420285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2023320282_)))
                     (let ((_hd2023520289_ (##car _e2023420285_))
                           (_tl2023620292_ (##cdr _e2023420285_)))
                       (if (gx#stx-pair? _tl2023620292_)
                           (let ((_e2023720295_ (gx#syntax-e _tl2023620292_)))
                             (let ((_hd2023820299_ (##car _e2023720295_))
                                   (_tl2023920302_ (##cdr _e2023720295_)))
                               (if (gx#stx-pair? _tl2023920302_)
                                   (let ((_e2024020305_
                                          (gx#syntax-e _tl2023920302_)))
                                     (let ((_hd2024120309_
                                            (##car _e2024020305_))
                                           (_tl2024220312_
                                            (##cdr _e2024020305_)))
                                       (if (gx#stx-null? _tl2024220312_)
                                           ((lambda (_L20315_
                                                     _L20317_
                                                     _L20318_
                                                     _L20319_
                                                     _L20320_
                                                     _L20321_)
                                              (let ()
                                                (cons _L20319_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2034820351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2034920354_)
                         (cons _g2034820351_ _g2034920354_))
                       '()
                       _L20201_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd2024120309_
                                            _hd2023820299_
                                            _hd2023520289_
                                            _hd2023220279_
                                            _hd2022920269_
                                            _hd2022620259_)
                                           (_g2021720248_ _g2021820252_))))
                                   (_g2021720248_ _g2021820252_))))
                           (_g2021720248_ _g2021820252_))))
                   (_g2021720248_ _g2021820252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2021720248_
                                                    _g2021820252_))))
                                           (_g2021720248_ _g2021820252_))))
                                   (_g2021720248_ _g2021820252_)))))
                       (_g2021620357_
                        (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                         _self20130_))))
                   _arg2014820197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2014320177_
                                           _target2014020171_
                                           '()))
                                        (_g2013420154_ _g2013520158_)))))
                              (_g2013420154_ _g2013520158_))))
                      (_g2013420154_ _g2013520158_)))))
          (_g2013320361_ _stx20132_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx20121_)
        (letrec ((_body-opt?20124_
                  (lambda (_key20127_)
                    (memq (gx#stx-e _key20127_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx20121_ _body-opt?20124_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18949_
               _id18951_
               _super-ref18952_
               _els18953_
               _body18954_
               _struct?18955_)
        (letrec* ((_wrap18957_
                   (lambda (_e-stx20118_)
                     (gx#stx-wrap-source
                      _e-stx20118_
                      (gx#stx-source _stx18949_))))
                  (_make-id18959_
                   (if (uninterned-symbol? (gx#stx-e _id18951_))
                       (lambda _g41340_ (gx#genident _id18951_))
                       (lambda _args20115_
                         (apply gx#stx-identifier _id18951_ _args20115_)))))
          (begin
            (gx#check-duplicate-identifiers _els18953_ _stx18949_)
            (let* ((_name18961_ (symbol->string (gx#stx-e _id18951_)))
                   (_super18964_
                    (if _struct?18955_
                        (if _super-ref18952_
                            (gx#syntax-local-value _super-ref18952_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18952_)))
                   (_g1896718975_
                    (lambda (_g1896818971_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1896818971_)))
                   (_g1896620109_
                    (lambda (_g1896818979_)
                      ((lambda (_L18982_)
                         (let ()
                           (let* ((_g1899819006_
                                   (lambda (_g1899919002_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1899919002_)))
                                  (_g1899720105_
                                   (lambda (_g1899919010_)
                                     ((lambda (_L19013_)
                                        (let ()
                                          (let* ((_g1902619034_
                                                  (lambda (_g1902719030_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1902719030_)))
                                                 (_g1902520101_
                                                  (lambda (_g1902719038_)
                                                    ((lambda (_L19041_)
                                                       (let ()
                                                         (let* ((_g1905419062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1905519058_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1905519058_)))
                        (_g1905320097_
                         (lambda (_g1905519066_)
                           ((lambda (_L19069_)
                              (let ()
                                (let* ((_g1908219090_
                                        (lambda (_g1908319086_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1908319086_)))
                                       (_g1908120093_
                                        (lambda (_g1908319094_)
                                          ((lambda (_L19097_)
                                             (let ()
                                               (let* ((_g1911019118_
                                                       (lambda (_g1911119114_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1911119114_)))
                                                      (_g1910920089_
                                                       (lambda (_g1911119122_)
                                                         ((lambda (_L19125_)
                                                            (let ()
                                                              (let* ((_g1913819155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1913919151_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1913919151_)))
                             (_g1913720085_
                              (lambda (_g1913919159_)
                                (if (gx#stx-pair/null? _g1913919159_)
                                    (let ((_g41341_
                                           (gx#syntax-split-splice
                                            _g1913919159_
                                            '0)))
                                      (begin
                                        (let ((_g41342_
                                               (if (##values? _g41341_)
                                                   (##vector-length _g41341_)
                                                   1)))
                                          (if (not (##fx= _g41342_ 2))
                                              (error "Context expects 2 values"
                                                     _g41342_)))
                                        (let ((_target1914119162_
                                               (##vector-ref _g41341_ 0))
                                              (_tl1914319165_
                                               (##vector-ref _g41341_ 1)))
                                          (if (gx#stx-null? _tl1914319165_)
                                              (letrec ((_loop1914419168_
                                                        (lambda (_hd1914219172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _attr1914819175_)
                  (if (gx#stx-pair? _hd1914219172_)
                      (let ((_e1914519178_ (gx#syntax-e _hd1914219172_)))
                        (let ((_lp-hd1914619182_ (##car _e1914519178_))
                              (_lp-tl1914719185_ (##cdr _e1914519178_)))
                          (_loop1914419168_
                           _lp-tl1914719185_
                           (cons _lp-hd1914619182_ _attr1914819175_))))
                      (let ((_attr1914919188_ (reverse _attr1914819175_)))
                        ((lambda (_L19192_)
                           (let ()
                             (let* ((_g1920919226_
                                     (lambda (_g1921019222_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1921019222_)))
                                    (_g1920820076_
                                     (lambda (_g1921019230_)
                                       (if (gx#stx-pair/null? _g1921019230_)
                                           (let ((_g41343_
                                                  (gx#syntax-split-splice
                                                   _g1921019230_
                                                   '0)))
                                             (begin
                                               (let ((_g41344_
                                                      (if (##values? _g41343_)
                                                          (##vector-length
                                                           _g41343_)
                                                          1)))
                                                 (if (not (##fx= _g41344_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41344_)))
                                               (let ((_target1921219233_
                                                      (##vector-ref
                                                       _g41343_
                                                       0))
                                                     (_tl1921419236_
                                                      (##vector-ref
                                                       _g41343_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1921419236_)
                                                     (letrec ((_loop1921519239_
                                                               (lambda (_hd1921319243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _getf1921919246_)
                         (if (gx#stx-pair? _hd1921319243_)
                             (let ((_e1921619249_
                                    (gx#syntax-e _hd1921319243_)))
                               (let ((_lp-hd1921719253_ (##car _e1921619249_))
                                     (_lp-tl1921819256_ (##cdr _e1921619249_)))
                                 (_loop1921519239_
                                  _lp-tl1921819256_
                                  (cons _lp-hd1921719253_ _getf1921919246_))))
                             (let ((_getf1922019259_
                                    (reverse _getf1921919246_)))
                               ((lambda (_L19263_)
                                  (let ()
                                    (let* ((_g1928019297_
                                            (lambda (_g1928119293_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1928119293_)))
                                           (_g1927920067_
                                            (lambda (_g1928119301_)
                                              (if (gx#stx-pair/null?
                                                   _g1928119301_)
                                                  (let ((_g41345_
                                                         (gx#syntax-split-splice
                                                          _g1928119301_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41346_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41345_)
                         (##vector-length _g41345_)
                         1)))
                (if (not (##fx= _g41346_ 2))
                    (error "Context expects 2 values" _g41346_)))
              (let ((_target1928319304_ (##vector-ref _g41345_ 0))
                    (_tl1928519307_ (##vector-ref _g41345_ 1)))
                (if (gx#stx-null? _tl1928519307_)
                    (letrec ((_loop1928619310_
                              (lambda (_hd1928419314_ _setf1929019317_)
                                (if (gx#stx-pair? _hd1928419314_)
                                    (let ((_e1928719320_
                                           (gx#syntax-e _hd1928419314_)))
                                      (let ((_lp-hd1928819324_
                                             (##car _e1928719320_))
                                            (_lp-tl1928919327_
                                             (##cdr _e1928719320_)))
                                        (_loop1928619310_
                                         _lp-tl1928919327_
                                         (cons _lp-hd1928819324_
                                               _setf1929019317_))))
                                    (let ((_setf1929119330_
                                           (reverse _setf1929019317_)))
                                      ((lambda (_L19334_)
                                         (let ()
                                           (let* ((_type-attr19379_
                                                   (if (gx#stx-null?
                                                        _els18953_)
                                                       '()
                                                       (if _struct?18955_
                                                           (cons 'fields:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (begin
                                 (gx#syntax-check-splice-targets
                                  _L19334_
                                  _L19263_
                                  _L19192_)
                                 (foldr (lambda (_g1935019355_
                                                 _g1935119358_
                                                 _g1935219360_
                                                 _g1935319362_)
                                          (cons (cons _g1935219360_
                                                      (cons _g1935119358_
                                                            (cons _g1935019355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1935319362_))
                                        '()
                                        _L19334_
                                        _L19263_
                                        _L19192_))
                               '()))
                   (cons 'slots:
                         (cons (begin
                                 (gx#syntax-check-splice-targets
                                  _L19334_
                                  _L19263_
                                  _L19192_)
                                 (foldr (lambda (_g1936419369_
                                                 _g1936519372_
                                                 _g1936619374_
                                                 _g1936719376_)
                                          (cons (cons _g1936619374_
                                                      (cons _g1936519372_
                                                            (cons _g1936419369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1936719376_))
                                        '()
                                        _L19334_
                                        _L19263_
                                        _L19192_))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-name19386_
                                                   (cons 'name:
                                                         (cons (let ((_$e19382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-getq 'name: _body18954_)))
                         (if _$e19382_ _$e19382_ _id18951_))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-id19401_
                                                   (let ((_$e19397_
                                                          (let ((_e1938819390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'id: _body18954_)))
                    (if _e1938819390_
                        (let ((_e19394_ _e1938819390_))
                          (cons 'id: (cons _e19394_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19397_
                                                         _$e19397_
                                                         '())))
                                                  (_type-ctor19416_
                                                   (let ((_$e19412_
                                                          (let ((_e1940319405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'constructor: _body18954_)))
                    (if _e1940319405_
                        (let ((_e19409_ _e1940319405_))
                          (cons 'constructor: (cons _e19409_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19412_
                                                         _$e19412_
                                                         '())))
                                                  (_plist19460_
                                                   (let* ((_plist19423_
                                                           (let ((_$e19419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'plist: _body18954_)))
                     (if _$e19419_ _$e19419_ '())))
                  (_plist19426_
                   (if (gx#stx-e (gx#stx-getq 'transparent: _body18954_))
                       (cons (cons 'transparent: '#t) _plist19423_)
                       _plist19423_))
                  (_plist19429_
                   (if (gx#stx-e (gx#stx-getq 'final: _body18954_))
                       (cons (cons 'final: '#t) _plist19426_)
                       _plist19426_))
                  (_plist19442_
                   (let ((_$e19432_
                          (gx#stx-e (gx#stx-getq 'print: _body18954_))))
                     (if _$e19432_
                         ((lambda (_print19436_)
                            (let ((_print19439_
                                   (if (eq? _print19436_ '#t)
                                       _els18953_
                                       _print19436_)))
                              (cons (cons 'print: _print19439_) _plist19429_)))
                          _$e19432_)
                         _plist19429_)))
                  (_plist19455_
                   (let ((_$e19445_
                          (gx#stx-e (gx#stx-getq 'equal: _body18954_))))
                     (if _$e19445_
                         ((lambda (_equal19449_)
                            (let ((_equal19452_
                                   (if (eq? _equal19449_ '#t)
                                       _els18953_
                                       _equal19449_)))
                              (cons (cons 'equal: _equal19452_) _plist19442_)))
                          _$e19445_)
                         _plist19442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _plist19455_))
                                                  (_type-plist19500_
                                                   (if (null? _plist19460_)
                                                       _plist19460_
                                                       (let* ((_g1946319471_
                                                               (lambda (_g1946419467_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1946419467_)))
                      (_g1946219496_
                       (lambda (_g1946419475_)
                         ((lambda (_L19478_)
                            (let ()
                              (cons 'plist:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L19478_ '()))
                                          '()))))
                          _g1946419475_))))
                 (_g1946219496_ _plist19460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_type-unchecked19515_
                                                   (let ((_$e19511_
                                                          (let ((_e1950219504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-getq 'unchecked: _body18954_)))
                    (if _e1950219504_
                        (let ((_e19508_ _e1950219504_))
                          (cons 'unchecked: (cons _e19508_ '())))
                        '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e19511_
                                                         _$e19511_
                                                         '())))
                                                  (_g1951819535_
                                                   (lambda (_g1951919531_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1951919531_)))
                                                  (_g1951720063_
                                                   (lambda (_g1951919539_)
                                                     (if (gx#stx-pair/null?
                                                          _g1951919539_)
                                                         (let ((_g41347_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1951919539_
                         '0)))
                   (begin
                     (let ((_g41348_
                            (if (##values? _g41347_)
                                (##vector-length _g41347_)
                                1)))
                       (if (not (##fx= _g41348_ 2))
                           (error "Context expects 2 values" _g41348_)))
                     (let ((_target1952119542_ (##vector-ref _g41347_ 0))
                           (_tl1952319545_ (##vector-ref _g41347_ 1)))
                       (if (gx#stx-null? _tl1952319545_)
                           (letrec ((_loop1952419548_
                                     (lambda (_hd1952219552_
                                              _type-body1952819555_)
                                       (if (gx#stx-pair? _hd1952219552_)
                                           (let ((_e1952519558_
                                                  (gx#syntax-e
                                                   _hd1952219552_)))
                                             (let ((_lp-hd1952619562_
                                                    (##car _e1952519558_))
                                                   (_lp-tl1952719565_
                                                    (##cdr _e1952519558_)))
                                               (_loop1952419548_
                                                _lp-tl1952719565_
                                                (cons _lp-hd1952619562_
                                                      _type-body1952819555_))))
                                           (let ((_type-body1952919568_
                                                  (reverse _type-body1952819555_)))
                                             ((lambda (_L19572_)
                                                (let ()
                                                  (let* ((_g1958919597_
                                                          (lambda (_g1959019593_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1959019593_)))
                                                         (_g1958820051_
                                                          (lambda (_g1959019601_)
                                                            ((lambda (_L19604_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1961719625_
                                 (lambda (_g1961819621_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1961819621_)))
                                (_g1961620047_
                                 (lambda (_g1961819629_)
                                   ((lambda (_L19632_)
                                      (let ()
                                        (let* ((_g1964519653_
                                                (lambda (_g1964619649_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1964619649_)))
                                               (_g1964419961_
                                                (lambda (_g1964619657_)
                                                  ((lambda (_L19660_)
                                                     (let ()
                                                       (let* ((_g1967319681_
                                                               (lambda (_g1967419677_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1967419677_)))
                      (_g1967219957_
                       (lambda (_g1967419685_)
                         ((lambda (_L19688_)
                            (let ()
                              (let* ((_g1970119709_
                                      (lambda (_g1970219705_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1970219705_)))
                                     (_g1970019953_
                                      (lambda (_g1970219713_)
                                        ((lambda (_L19716_)
                                           (let ()
                                             (let* ((_g1972919737_
                                                     (lambda (_g1973019733_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1973019733_)))
                                                    (_g1972819911_
                                                     (lambda (_g1973019741_)
                                                       ((lambda (_L19744_)
                                                          (let ()
                                                            (let* ((_g1975719765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1975819761_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1975819761_)))
                           (_g1975619907_
                            (lambda (_g1975819769_)
                              ((lambda (_L19772_)
                                 (let ()
                                   (let* ((_g1978519793_
                                           (lambda (_g1978619789_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1978619789_)))
                                          (_g1978419903_
                                           (lambda (_g1978619797_)
                                             ((lambda (_L19800_)
                                                (let ()
                                                  (let* ((_g1981319821_
                                                          (lambda (_g1981419817_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1981419817_)))
                                                         (_g1981219899_
                                                          (lambda (_g1981419825_)
                                                            ((lambda (_L19828_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1984119849_
                                 (lambda (_g1984219845_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1984219845_)))
                                (_g1984019871_
                                 (lambda (_g1984219853_)
                                   ((lambda (_L19856_)
                                      (let ()
                                        (let ()
                                          (_wrap18957_
                                           (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _L19604_
                                                       (cons _L19856_
                                                             '())))))))
                                    _g1984219853_))))
                           (_g1984019871_
                            (_wrap18957_
                             (cons (gx#datum->syntax '#f 'defsyntax)
                                   (cons _L19013_
                                         (cons (cons _L19632_
                                                     (cons 'runtime-identifier:
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _L19041_ '()))
                         (cons 'expander-identifiers:
                               (cons (cons (gx#datum->syntax '#f '@list)
                                           (cons _L19660_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _L19041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                           (cons _L19069_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L19097_ '()))
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1987419881_
                                                         _g1987519884_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _g1987419881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _g1987519884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()
                                                _L19263_)))
                                 (cons (cons (gx#datum->syntax '#f '@list)
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1987619887_
                                                               _g1987719890_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _g1987619887_ '()))
                      _g1987719890_))
              '()
              _L19334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'type-exhibitor:
                                           (cons (cons _L19688_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _L19716_ '()))
                     (cons _L19744_
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L19772_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L19800_ '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L19828_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g1987819893_ _g1987919896_)
                                  (cons _g1987819893_ _g1987919896_))
                                '()
                                _L19192_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))))
                     _g1981419825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1981219899_
                                                     _plist19460_))))
                                              _g1978619797_))))
                                     (_g1978419903_
                                      (if (not (null? _type-ctor19416_))
                                          (cadr _type-ctor19416_)
                                          '#f)))))
                               _g1975819769_))))
                      (_g1975619907_ (cadr _type-name19386_)))))
                _g1973019741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1972819911_
                                                (let ((_quote-e19950_
                                                       (lambda (_x-ref19915_)
                                                         (if _x-ref19915_
                                                             (let* ((_g1991819926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1991919922_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1991919922_)))
                            (_g1991719946_
                             (lambda (_g1991919930_)
                               ((lambda (_L19933_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L19933_ '()))))
                                _g1991919930_))))
                       (_g1991719946_ _x-ref19915_))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _struct?18955_
                                                      (_quote-e19950_
                                                       _super-ref18952_)
                                                      (cons 'list
                                                            (map _quote-e19950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-ref18952_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g1970219713_))))
                                (_g1970019953_
                                 (if (not (null? _type-id19401_))
                                     (cadr _type-id19401_)
                                     '#f)))))
                          _g1967419685_))))
                 (_g1967219957_
                  (if _struct?18955_
                      (gx#datum->syntax '#f 'make-runtime-struct-exhibitor)
                      (gx#datum->syntax '#f 'make-runtime-class-exhibitor))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1964619657_))))
                                          (_g1964419961_
                                           (if _struct?18955_
                                               (if _super18964_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _L19125_ '()))
                                                   '#f)
                                               (let* ((_g1996519982_
                                                       (lambda (_g1996619978_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1996619978_)))
                                                      (_g1996420043_
                                                       (lambda (_g1996619986_)
                                                         (if (gx#stx-pair/null?
                                                              _g1996619986_)
                                                             (let ((_g41349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1996619986_ '0)))
                       (begin
                         (let ((_g41350_
                                (if (##values? _g41349_)
                                    (##vector-length _g41349_)
                                    1)))
                           (if (not (##fx= _g41350_ 2))
                               (error "Context expects 2 values" _g41350_)))
                         (let ((_target1996819989_ (##vector-ref _g41349_ 0))
                               (_tl1997019992_ (##vector-ref _g41349_ 1)))
                           (if (gx#stx-null? _tl1997019992_)
                               (letrec ((_loop1997119995_
                                         (lambda (_hd1996919999_
                                                  _super-id1997520002_)
                                           (if (gx#stx-pair? _hd1996919999_)
                                               (let ((_e1997220005_
                                                      (gx#syntax-e
                                                       _hd1996919999_)))
                                                 (let ((_lp-hd1997320009_
                                                        (##car _e1997220005_))
                                                       (_lp-tl1997420012_
                                                        (##cdr _e1997220005_)))
                                                   (_loop1997119995_
                                                    _lp-tl1997420012_
                                                    (cons _lp-hd1997320009_
                                                          _super-id1997520002_))))
                                               (let ((_super-id1997620015_
                                                      (reverse _super-id1997520002_)))
                                                 ((lambda (_L20019_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2003420037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2003520040_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g2003420037_ '()))
                                     _g2003520040_))
                             '()
                             _L20019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _super-id1997620015_))))))
                                 (_loop1997119995_ _target1996819989_ '()))
                               (_g1996519982_ _g1996619986_)))))
                     (_g1996519982_ _g1996619986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1996420043_ _L19125_)))))))
                                    _g1961819629_))))
                           (_g1961620047_
                            (if _struct?18955_
                                (gx#datum->syntax
                                 '#f
                                 'make-extended-struct-info)
                                (gx#datum->syntax
                                 '#f
                                 'make-extended-class-info))))))
                     _g1959019601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1958820051_
                                                     (_wrap18957_
                                                      (cons _L18982_
                                                            (cons _L19041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L19125_
                                (cons _L19069_
                                      (cons _L19097_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2005420057_
                                                              _g2005520060_)
                                                       (cons _g2005420057_
                                                             _g2005520060_))
                                                     '()
                                                     _L19572_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _type-body1952919568_))))))
                             (_loop1952419548_ _target1952119542_ '()))
                           (_g1951819535_ _g1951919539_)))))
                 (_g1951819535_ _g1951919539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1951720063_
                                              (foldr cons
                                                     (foldr cons
                                                            (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr cons
                                  (foldr cons
                                         _type-unchecked19515_
                                         _type-plist19500_)
                                  _type-ctor19416_)
                           _type-name19386_)
                    _type-id19401_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _type-attr19379_)))))
                                       _setf1929119330_))))))
                      (_loop1928619310_ _target1928319304_ '()))
                    (_g1928019297_ _g1928119301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1928019297_
                                                   _g1928119301_)))))
                                      (_g1927920067_
                                       (gx#stx-map
                                        (lambda (_g2007020072_)
                                          (_make-id18959_
                                           _name18961_
                                           '"-"
                                           _g2007020072_
                                           '"-set!"))
                                        _els18953_)))))
                                _getf1922019259_))))))
               (_loop1921519239_ _target1921219233_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1920919226_
                                                      _g1921019230_)))))
                                           (_g1920919226_ _g1921019230_)))))
                               (_g1920820076_
                                (gx#stx-map
                                 (lambda (_g2007920081_)
                                   (_make-id18959_
                                    _name18961_
                                    '"-"
                                    _g2007920081_))
                                 _els18953_)))))
                         _attr1914919188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1914419168_
                                                 _target1914119162_
                                                 '()))
                                              (_g1913819155_ _g1913919159_)))))
                                    (_g1913819155_ _g1913919159_)))))
                        (_g1913720085_ _els18953_))))
                  _g1911119122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1910920089_
                                                  (if _struct?18955_
                                                      (if _super18964_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18964_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18964_))))))
                                           _g1908319094_))))
                                  (_g1908120093_
                                   (_make-id18959_ _name18961_ '"?")))))
                            _g1905519066_))))
                   (_g1905320097_ (_make-id18959_ '"make-" _name18961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1902719038_))))
                                            (_g1902520101_
                                             (_make-id18959_
                                              _name18961_
                                              '"::t")))))
                                      _g1899919010_))))
                             (_g1899720105_ _id18951_))))
                       _g1896818979_))))
              (_g1896620109_
               (if _struct?18955_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx20437_)
        (letrec ((_generate20440_
                  (lambda (_hd20524_ _fields20526_ _body20527_)
                    (let* ((___stx3827938280_ _hd20524_)
                           (_g2053020545_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3827938280_))))
                      (let ((___kont3828238283_
                             (lambda (_L20583_ _L20585_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20437_
                                _L20585_
                                _L20583_
                                _fields20526_
                                _body20527_
                                '#t)))
                            (___kont3828438285_
                             (lambda ()
                               (if (gx#identifier? _hd20524_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20437_
                                    _hd20524_
                                    '#f
                                    _fields20526_
                                    _body20527_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20437_
                                    _hd20524_)))))
                        (let ((___match3830038301_
                               (lambda (_e2053420563_
                                        _hd2053520567_
                                        _tl2053620570_
                                        _e2053720573_
                                        _hd2053820577_
                                        _tl2053920580_)
                                 (let ((_L20583_ _hd2053820577_)
                                       (_L20585_ _hd2053520567_))
                                   (if (if (gx#identifier? _L20585_)
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                            _L20583_)
                                           '#f)
                                       (___kont3828238283_ _L20583_ _L20585_)
                                       (___kont3828438285_))))))
                          (if (gx#stx-pair? ___stx3827938280_)
                              (let ((_e2053420563_
                                     (gx#syntax-e ___stx3827938280_)))
                                (let ((_tl2053620570_ (##cdr _e2053420563_))
                                      (_hd2053520567_ (##car _e2053420563_)))
                                  (if (gx#stx-pair? _tl2053620570_)
                                      (let ((_e2053720573_
                                             (gx#syntax-e _tl2053620570_)))
                                        (let ((_tl2053920580_
                                               (##cdr _e2053720573_))
                                              (_hd2053820577_
                                               (##car _e2053720573_)))
                                          (if (gx#stx-null? _tl2053920580_)
                                              (___match3830038301_
                                               _e2053420563_
                                               _hd2053520567_
                                               _tl2053620570_
                                               _e2053720573_
                                               _hd2053820577_
                                               _tl2053920580_)
                                              (___kont3828438285_))))
                                      (___kont3828438285_))))
                              (___kont3828438285_))))))))
          (let* ((_g2044320462_
                  (lambda (_g2044420458_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2044420458_)))
                 (_g2044220520_
                  (lambda (_g2044420466_)
                    (if (gx#stx-pair? _g2044420466_)
                        (let ((_e2044820469_ (gx#syntax-e _g2044420466_)))
                          (let ((_hd2044920473_ (##car _e2044820469_))
                                (_tl2045020476_ (##cdr _e2044820469_)))
                            (if (gx#stx-pair? _tl2045020476_)
                                (let ((_e2045120479_
                                       (gx#syntax-e _tl2045020476_)))
                                  (let ((_hd2045220483_ (##car _e2045120479_))
                                        (_tl2045320486_ (##cdr _e2045120479_)))
                                    (if (gx#stx-pair? _tl2045320486_)
                                        (let ((_e2045420489_
                                               (gx#syntax-e _tl2045320486_)))
                                          (let ((_hd2045520493_
                                                 (##car _e2045420489_))
                                                (_tl2045620496_
                                                 (##cdr _e2045420489_)))
                                            ((lambda (_L20499_
                                                      _L20501_
                                                      _L20502_)
                                               (if (if (gx#identifier-list?
                                                        _L20501_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20499_)
                                                       '#f)
                                                   (_generate20440_
                                                    _L20502_
                                                    _L20501_
                                                    _L20499_)
                                                   (_g2044320462_
                                                    _g2044420466_)))
                                             _tl2045620496_
                                             _hd2045520493_
                                             _hd2045220483_)))
                                        (_g2044320462_ _g2044420466_))))
                                (_g2044320462_ _g2044420466_))))
                        (_g2044320462_ _g2044420466_)))))
            (_g2044220520_ _stx20437_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx20604_)
        (letrec ((_generate20607_
                  (lambda (_hd20691_ _slots20693_ _body20694_)
                    (let* ((___stx3830338304_ _hd20691_)
                           (_g2069720709_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3830338304_))))
                      (let ((___kont3830638307_
                             (lambda (_L20737_ _L20739_)
                               (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                _stx20604_
                                _L20739_
                                (gx#syntax->list _L20737_)
                                _slots20693_
                                _body20694_
                                '#f)))
                            (___kont3830838309_
                             (lambda ()
                               (if (gx#identifier? _hd20691_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                    _stx20604_
                                    _hd20691_
                                    '()
                                    _slots20693_
                                    _body20694_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx20604_
                                    _hd20691_)))))
                        (let ((___match3831638317_
                               (lambda (_e2070120727_
                                        _hd2070220731_
                                        _tl2070320734_)
                                 (let ((_L20737_ _tl2070320734_)
                                       (_L20739_ _hd2070220731_))
                                   (if (if (gx#stx-list? _L20737_)
                                           (gx#stx-andmap
                                            |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                            _L20737_)
                                           '#f)
                                       (___kont3830638307_ _L20737_ _L20739_)
                                       (___kont3830838309_))))))
                          (if (gx#stx-pair? ___stx3830338304_)
                              (let ((_e2070120727_
                                     (gx#syntax-e ___stx3830338304_)))
                                (let ((_tl2070320734_ (##cdr _e2070120727_))
                                      (_hd2070220731_ (##car _e2070120727_)))
                                  (___match3831638317_
                                   _e2070120727_
                                   _hd2070220731_
                                   _tl2070320734_)))
                              (___kont3830838309_))))))))
          (let* ((_g2061020629_
                  (lambda (_g2061120625_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2061120625_)))
                 (_g2060920687_
                  (lambda (_g2061120633_)
                    (if (gx#stx-pair? _g2061120633_)
                        (let ((_e2061520636_ (gx#syntax-e _g2061120633_)))
                          (let ((_hd2061620640_ (##car _e2061520636_))
                                (_tl2061720643_ (##cdr _e2061520636_)))
                            (if (gx#stx-pair? _tl2061720643_)
                                (let ((_e2061820646_
                                       (gx#syntax-e _tl2061720643_)))
                                  (let ((_hd2061920650_ (##car _e2061820646_))
                                        (_tl2062020653_ (##cdr _e2061820646_)))
                                    (if (gx#stx-pair? _tl2062020653_)
                                        (let ((_e2062120656_
                                               (gx#syntax-e _tl2062020653_)))
                                          (let ((_hd2062220660_
                                                 (##car _e2062120656_))
                                                (_tl2062320663_
                                                 (##cdr _e2062120656_)))
                                            ((lambda (_L20666_
                                                      _L20668_
                                                      _L20669_)
                                               (if (if (gx#identifier-list?
                                                        _L20668_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L20666_)
                                                       '#f)
                                                   (_generate20607_
                                                    _L20669_
                                                    _L20668_
                                                    _L20666_)
                                                   (_g2061020629_
                                                    _g2061120633_)))
                                             _tl2062320663_
                                             _hd2062220660_
                                             _hd2061920650_)))
                                        (_g2061020629_ _g2061120633_))))
                                (_g2061020629_ _g2061120633_))))
                        (_g2061020629_ _g2061120633_)))))
            (_g2060920687_ _stx20604_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20756_)
        (letrec ((_wrap20759_
                  (lambda (_e-stx21096_)
                    (gx#stx-wrap-source
                     _e-stx21096_
                     (gx#stx-source _stx20756_))))
                 (_method-opt?20761_
                  (lambda (_x21093_) (memq (gx#stx-e _x21093_) '(rebind:)))))
          (let* ((_g2076320792_
                  (lambda (_g2076420788_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2076420788_)))
                 (_g2076221089_
                  (lambda (_g2076420796_)
                    (if (gx#stx-pair? _g2076420796_)
                        (let ((_e2076920799_ (gx#syntax-e _g2076420796_)))
                          (let ((_hd2077020803_ (##car _e2076920799_))
                                (_tl2077120806_ (##cdr _e2076920799_)))
                            (if (gx#stx-pair? _tl2077120806_)
                                (let ((_e2077220809_
                                       (gx#syntax-e _tl2077120806_)))
                                  (let ((_hd2077320813_ (##car _e2077220809_))
                                        (_tl2077420816_ (##cdr _e2077220809_)))
                                    (if (gx#stx-pair? _hd2077320813_)
                                        (let ((_e2077520819_
                                               (gx#syntax-e _hd2077320813_)))
                                          (let ((_hd2077620823_
                                                 (##car _e2077520819_))
                                                (_tl2077720826_
                                                 (##cdr _e2077520819_)))
                                            (if (gx#identifier? _hd2077620823_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g41351_|
                                                     _hd2077620823_)
                                                    (if (gx#stx-pair?
                                                         _tl2077720826_)
                                                        (let ((_e2077820829_
                                                               (gx#syntax-e
                                                                _tl2077720826_)))
                                                          (let ((_hd2077920833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2077820829_))
                        (_tl2078020836_ (##cdr _e2077820829_)))
                    (if (gx#stx-pair? _tl2078020836_)
                        (let ((_e2078120839_ (gx#syntax-e _tl2078020836_)))
                          (let ((_hd2078220843_ (##car _e2078120839_))
                                (_tl2078320846_ (##cdr _e2078120839_)))
                            (if (gx#stx-null? _tl2078320846_)
                                (if (gx#stx-pair? _tl2077420816_)
                                    (let ((_e2078420849_
                                           (gx#syntax-e _tl2077420816_)))
                                      (let ((_hd2078520853_
                                             (##car _e2078420849_))
                                            (_tl2078620856_
                                             (##cdr _e2078420849_)))
                                        ((lambda (_L20859_
                                                  _L20861_
                                                  _L20862_
                                                  _L20863_)
                                           (if (if (gx#identifier? _L20863_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                        _L20862_)
                                                       (gx#stx-plist?
                                                        _L20859_
                                                        _method-opt?20761_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20888_
                                                       (gx#syntax-local-value
                                                        _L20862_))
                                                      (_rebind?20891_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20859_))
                                                           '#t
                                                           '#f))
                                                      (_g2089420902_
                                                       (lambda (_g2089520898_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2089520898_)))
                                                      (_g2089321085_
                                                       (lambda (_g2089520906_)
                                                         ((lambda (_L20909_)
                                                            (let ()
                                                              (let* ((_g2092320931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2092420927_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2092420927_)))
                             (_g2092221081_
                              (lambda (_g2092420935_)
                                ((lambda (_L20938_)
                                   (let ()
                                     (let* ((_g2095120959_
                                             (lambda (_g2095220955_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2095220955_)))
                                            (_g2095021077_
                                             (lambda (_g2095220963_)
                                               ((lambda (_L20966_)
                                                  (let ()
                                                    (let* ((_g2097920987_
                                                            (lambda (_g2098020983_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2098020983_)))
                                                           (_g2097821073_
                                                            (lambda (_g2098020991_)
                                                              ((lambda (_L20994_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2100721015_
                                   (lambda (_g2100821011_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2100821011_)))
                                  (_g2100621069_
                                   (lambda (_g2100821019_)
                                     ((lambda (_L21022_)
                                        (let ()
                                          (let* ((_g2103521043_
                                                  (lambda (_g2103621039_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2103621039_)))
                                                 (_g2103421065_
                                                  (lambda (_g2103621047_)
                                                    ((lambda (_L21050_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20759_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20994_ (cons _L21050_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2103621047_))))
                                            (_g2103421065_
                                             (_wrap20759_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20909_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20863_ '()))
                        (cons _L20938_ (cons _L21022_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2100821019_))))
                             (_g2100621069_ _rebind?20891_))))
                       _g2098020991_))))
              (_g2097821073_
               (_wrap20759_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20938_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20966_
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
                                                            (cons _L20909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20863_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20861_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2095220963_))))
                                       (_g2095021077_
                                        (gx#stx-identifier
                                         _L20863_
                                         '@next-method)))))
                                 _g2092420935_))))
                        (_g2092221081_
                         (gx#stx-identifier
                          _L20863_
                          _L20862_
                          '"::"
                          _L20863_)))))
                  _g2089520906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2089321085_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20888_)))
                                               (if (not (gx#identifier?
                                                         _L20863_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20756_
                                                    _L20863_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?__0|
                                                             _L20862_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20756_
                                                        _L20862_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20756_)))))
                                         _tl2078620856_
                                         _hd2078520853_
                                         _hd2078220843_
                                         _hd2077920833_)))
                                    (_g2076320792_ _g2076420796_))
                                (_g2076320792_ _g2076420796_))))
                        (_g2076320792_ _g2076420796_))))
                (_g2076320792_ _g2076420796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2076320792_
                                                     _g2076420796_))
                                                (_g2076320792_
                                                 _g2076420796_))))
                                        (_g2076320792_ _g2076420796_))))
                                (_g2076320792_ _g2076420796_))))
                        (_g2076320792_ _g2076420796_)))))
            (_g2076221089_ _stx20756_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx21099_)
        (let* ((___stx3831938320_ _$stx21099_)
               (_g2110421153_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3831938320_))))
          (let ((___kont3832238323_
                 (lambda (_L21319_ _L21321_ _L21322_)
                   (cons (gx#datum->syntax '#f 'apply)
                         (cons (gx#datum->syntax '#f 'call-method)
                               (cons _L21321_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L21322_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2134921352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2135021355_)
                          (cons _g2134921352_ _g2135021355_))
                        '()
                        _L21319_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont3832638327_
                 (lambda (_L21220_ _L21222_ _L21223_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _L21222_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21223_ '()))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g2124321246_
                                                       _g2124421249_)
                                                (cons _g2124321246_
                                                      _g2124421249_))
                                              '()
                                              _L21220_))))))))
            (let* ((___match3838238383_
                    (lambda (_e2113021160_
                             _hd2113121164_
                             _tl2113221167_
                             _e2113321170_
                             _hd2113421174_
                             _tl2113521177_
                             _e2113621180_
                             _hd2113721184_
                             _tl2113821187_
                             ___splice3832838329_
                             _target2113921190_
                             _tl2114121193_)
                      (letrec ((_loop2114221196_
                                (lambda (_hd2114021200_ _arg2114621203_)
                                  (if (gx#stx-pair? _hd2114021200_)
                                      (let ((_e2114321206_
                                             (gx#syntax-e _hd2114021200_)))
                                        (let ((_lp-tl2114521213_
                                               (##cdr _e2114321206_))
                                              (_lp-hd2114421210_
                                               (##car _e2114321206_)))
                                          (_loop2114221196_
                                           _lp-tl2114521213_
                                           (cons _lp-hd2114421210_
                                                 _arg2114621203_))))
                                      (let ((_arg2114721216_
                                             (reverse _arg2114621203_)))
                                        (let ((_L21220_ _arg2114721216_)
                                              (_L21222_ _hd2113721184_)
                                              (_L21223_ _hd2113421174_))
                                          (if (gx#identifier? _L21223_)
                                              (___kont3832638327_
                                               _L21220_
                                               _L21222_
                                               _L21223_)
                                              (_g2110421153_))))))))
                        (_loop2114221196_ _target2113921190_ '()))))
                   (___match3835638357_
                    (lambda (_e2110921259_
                             _hd2111021263_
                             _tl2111121266_
                             _e2111221269_
                             _hd2111321273_
                             _tl2111421276_
                             _e2111521279_
                             _hd2111621283_
                             _tl2111721286_
                             ___splice3832438325_
                             _target2111821289_
                             _tl2112021292_)
                      (letrec ((_loop2112121295_
                                (lambda (_hd2111921299_ _arg2112521302_)
                                  (if (gx#stx-pair? _hd2111921299_)
                                      (let ((_e2112221305_
                                             (gx#syntax-e _hd2111921299_)))
                                        (let ((_lp-tl2112421312_
                                               (##cdr _e2112221305_))
                                              (_lp-hd2112321309_
                                               (##car _e2112221305_)))
                                          (_loop2112121295_
                                           _lp-tl2112421312_
                                           (cons _lp-hd2112321309_
                                                 _arg2112521302_))))
                                      (let ((_arg2112621315_
                                             (reverse _arg2112521302_)))
                                        (let ((_L21319_ _arg2112621315_)
                                              (_L21321_ _hd2111621283_)
                                              (_L21322_ _hd2111321273_))
                                          (if (if (gx#identifier? _L21322_)
                                                  (gx#stx-ormap
                                                   gx#ellipsis?
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2134121344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2134221347_)
                      (cons _g2134121344_ _g2134221347_))
                    '()
                    _L21319_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              (___kont3832238323_
                                               _L21319_
                                               _L21321_
                                               _L21322_)
                                              (___match3838238383_
                                               _e2110921259_
                                               _hd2111021263_
                                               _tl2111121266_
                                               _e2111221269_
                                               _hd2111321273_
                                               _tl2111421276_
                                               _e2111521279_
                                               _hd2111621283_
                                               _tl2111721286_
                                               ___splice3832438325_
                                               _target2111821289_
                                               _tl2112021292_))))))))
                        (_loop2112121295_ _target2111821289_ '())))))
              (if (gx#stx-pair? ___stx3831938320_)
                  (let ((_e2110921259_ (gx#syntax-e ___stx3831938320_)))
                    (let ((_tl2111121266_ (##cdr _e2110921259_))
                          (_hd2111021263_ (##car _e2110921259_)))
                      (if (gx#stx-pair? _tl2111121266_)
                          (let ((_e2111221269_ (gx#syntax-e _tl2111121266_)))
                            (let ((_tl2111421276_ (##cdr _e2111221269_))
                                  (_hd2111321273_ (##car _e2111221269_)))
                              (if (gx#stx-pair? _tl2111421276_)
                                  (let ((_e2111521279_
                                         (gx#syntax-e _tl2111421276_)))
                                    (let ((_tl2111721286_
                                           (##cdr _e2111521279_))
                                          (_hd2111621283_
                                           (##car _e2111521279_)))
                                      (if (gx#stx-pair/null? _tl2111721286_)
                                          (let ((___splice3832438325_
                                                 (gx#syntax-split-splice
                                                  _tl2111721286_
                                                  '0)))
                                            (let ((_tl2112021292_
                                                   (##vector-ref
                                                    ___splice3832438325_
                                                    '1))
                                                  (_target2111821289_
                                                   (##vector-ref
                                                    ___splice3832438325_
                                                    '0)))
                                              (if (gx#stx-null? _tl2112021292_)
                                                  (___match3835638357_
                                                   _e2110921259_
                                                   _hd2111021263_
                                                   _tl2111121266_
                                                   _e2111221269_
                                                   _hd2111321273_
                                                   _tl2111421276_
                                                   _e2111521279_
                                                   _hd2111621283_
                                                   _tl2111721286_
                                                   ___splice3832438325_
                                                   _target2111821289_
                                                   _tl2112021292_)
                                                  (_g2110421153_))))
                                          (_g2110421153_))))
                                  (_g2110421153_))))
                          (_g2110421153_))))
                  (_g2110421153_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx21364_)
        (let* ((___stx3838538386_ _$stx21364_)
               (_g2136921409_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3838538386_))))
          (let ((___kont3838838389_
                 (lambda (_L21547_ _L21549_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _L21549_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21547_ '()))
                                     '())))))
                (___kont3839038391_
                 (lambda (_L21476_ _L21478_ _L21479_ _L21480_)
                   (cons _L21480_
                         (cons (cons _L21480_
                                     (cons _L21479_ (cons _L21478_ '())))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g2150121504_ _g2150221507_)
                                          (cons _g2150121504_ _g2150221507_))
                                        '()
                                        _L21476_)))))))
            (let* ((___match3844038441_
                    (lambda (_e2138621416_
                             _hd2138721420_
                             _tl2138821423_
                             _e2138921426_
                             _hd2139021430_
                             _tl2139121433_
                             _e2139221436_
                             _hd2139321440_
                             _tl2139421443_
                             ___splice3839238393_
                             _target2139521446_
                             _tl2139721449_)
                      (letrec ((_loop2139821452_
                                (lambda (_hd2139621456_ _rest2140221459_)
                                  (if (gx#stx-pair? _hd2139621456_)
                                      (let ((_e2139921462_
                                             (gx#syntax-e _hd2139621456_)))
                                        (let ((_lp-tl2140121469_
                                               (##cdr _e2139921462_))
                                              (_lp-hd2140021466_
                                               (##car _e2139921462_)))
                                          (_loop2139821452_
                                           _lp-tl2140121469_
                                           (cons _lp-hd2140021466_
                                                 _rest2140221459_))))
                                      (let ((_rest2140321472_
                                             (reverse _rest2140221459_)))
                                        (___kont3839038391_
                                         _rest2140321472_
                                         _hd2139321440_
                                         _hd2139021430_
                                         _hd2138721420_))))))
                        (_loop2139821452_ _target2139521446_ '()))))
                   (___match3841438415_
                    (lambda (_e2137321517_
                             _hd2137421521_
                             _tl2137521524_
                             _e2137621527_
                             _hd2137721531_
                             _tl2137821534_
                             _e2137921537_
                             _hd2138021541_
                             _tl2138121544_)
                      (let ((_L21547_ _hd2138021541_)
                            (_L21549_ _hd2137721531_))
                        (if (gx#identifier? _L21547_)
                            (___kont3838838389_ _L21547_ _L21549_)
                            (if (gx#stx-pair/null? _tl2138121544_)
                                (let ((___splice3839238393_
                                       (gx#syntax-split-splice
                                        _tl2138121544_
                                        '0)))
                                  (let ((_tl2139721449_
                                         (##vector-ref
                                          ___splice3839238393_
                                          '1))
                                        (_target2139521446_
                                         (##vector-ref
                                          ___splice3839238393_
                                          '0)))
                                    (if (gx#stx-null? _tl2139721449_)
                                        (___match3844038441_
                                         _e2137321517_
                                         _hd2137421521_
                                         _tl2137521524_
                                         _e2137621527_
                                         _hd2137721531_
                                         _tl2137821534_
                                         _e2137921537_
                                         _hd2138021541_
                                         _tl2138121544_
                                         ___splice3839238393_
                                         _target2139521446_
                                         _tl2139721449_)
                                        (_g2136921409_))))
                                (_g2136921409_)))))))
              (if (gx#stx-pair? ___stx3838538386_)
                  (let ((_e2137321517_ (gx#syntax-e ___stx3838538386_)))
                    (let ((_tl2137521524_ (##cdr _e2137321517_))
                          (_hd2137421521_ (##car _e2137321517_)))
                      (if (gx#stx-pair? _tl2137521524_)
                          (let ((_e2137621527_ (gx#syntax-e _tl2137521524_)))
                            (let ((_tl2137821534_ (##cdr _e2137621527_))
                                  (_hd2137721531_ (##car _e2137621527_)))
                              (if (gx#stx-pair? _tl2137821534_)
                                  (let ((_e2137921537_
                                         (gx#syntax-e _tl2137821534_)))
                                    (let ((_tl2138121544_
                                           (##cdr _e2137921537_))
                                          (_hd2138021541_
                                           (##car _e2137921537_)))
                                      (if (gx#stx-null? _tl2138121544_)
                                          (___match3841438415_
                                           _e2137321517_
                                           _hd2137421521_
                                           _tl2137521524_
                                           _e2137621527_
                                           _hd2137721531_
                                           _tl2137821534_
                                           _e2137921537_
                                           _hd2138021541_
                                           _tl2138121544_)
                                          (if (gx#stx-pair/null?
                                               _tl2138121544_)
                                              (let ((___splice3839238393_
                                                     (gx#syntax-split-splice
                                                      _tl2138121544_
                                                      '0)))
                                                (let ((_tl2139721449_
                                                       (##vector-ref
                                                        ___splice3839238393_
                                                        '1))
                                                      (_target2139521446_
                                                       (##vector-ref
                                                        ___splice3839238393_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl2139721449_)
                                                      (___match3844038441_
                                                       _e2137321517_
                                                       _hd2137421521_
                                                       _tl2137521524_
                                                       _e2137621527_
                                                       _hd2137721531_
                                                       _tl2137821534_
                                                       _e2137921537_
                                                       _hd2138021541_
                                                       _tl2138121544_
                                                       ___splice3839238393_
                                                       _target2139521446_
                                                       _tl2139721449_)
                                                      (_g2136921409_))))
                                              (_g2136921409_)))))
                                  (_g2136921409_))))
                          (_g2136921409_))))
                  (_g2136921409_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx21569_)
        (let* ((___stx3844338444_ _$stx21569_)
               (_g2157421626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3844338444_))))
          (let ((___kont3844638447_
                 (lambda (_L21802_ _L21804_ _L21805_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _L21805_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L21804_ '()))
                                     (cons _L21802_ '()))))))
                (___kont3844838449_
                 (lambda (_L21713_
                          _L21715_
                          _L21716_
                          _L21717_
                          _L21718_
                          _L21719_)
                   (cons _L21719_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _L21718_
                                           (cons _L21717_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2174621749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2174721752_)
                    (cons _g2174621749_ _g2174721752_))
                  '()
                  _L21716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L21715_ (cons _L21713_ '())))))))
            (let* ((___match3851838519_
                    (lambda (_e2159721633_
                             _hd2159821637_
                             _tl2159921640_
                             _e2160021643_
                             _hd2160121647_
                             _tl2160221650_
                             _e2160321653_
                             _hd2160421657_
                             _tl2160521660_
                             ___splice3845038451_
                             _target2160621663_
                             _tl2160821666_
                             _e2161521669_
                             _hd2161621673_
                             _tl2161721676_
                             _e2161821679_
                             _hd2161921683_
                             _tl2162021686_)
                      (letrec ((_loop2160921689_
                                (lambda (_hd2160721693_ _path2161321696_)
                                  (if (gx#stx-pair? _hd2160721693_)
                                      (let ((_e2161021699_
                                             (gx#syntax-e _hd2160721693_)))
                                        (let ((_lp-tl2161221706_
                                               (##cdr _e2161021699_))
                                              (_lp-hd2161121703_
                                               (##car _e2161021699_)))
                                          (_loop2160921689_
                                           _lp-tl2161221706_
                                           (cons _lp-hd2161121703_
                                                 _path2161321696_))))
                                      (let ((_path2161421709_
                                             (reverse _path2161321696_)))
                                        (___kont3844838449_
                                         _hd2161921683_
                                         _hd2161621673_
                                         _path2161421709_
                                         _hd2160421657_
                                         _hd2160121647_
                                         _hd2159821637_))))))
                        (_loop2160921689_ _target2160621663_ '()))))
                   (___match3847838479_
                    (lambda (_e2157921762_
                             _hd2158021766_
                             _tl2158121769_
                             _e2158221772_
                             _hd2158321776_
                             _tl2158421779_
                             _e2158521782_
                             _hd2158621786_
                             _tl2158721789_
                             _e2158821792_
                             _hd2158921796_
                             _tl2159021799_)
                      (let ((_L21802_ _hd2158921796_)
                            (_L21804_ _hd2158621786_)
                            (_L21805_ _hd2158321776_))
                        (if (gx#identifier? _L21804_)
                            (___kont3844638447_ _L21802_ _L21804_ _L21805_)
                            (if (gx#stx-pair/null? _tl2158721789_)
                                (if (fx>= (gx#stx-length _tl2158721789_) '2)
                                    (let ((___splice3845038451_
                                           (gx#syntax-split-splice
                                            _tl2158721789_
                                            '2)))
                                      (let ((_tl2160821666_
                                             (##vector-ref
                                              ___splice3845038451_
                                              '1))
                                            (_target2160621663_
                                             (##vector-ref
                                              ___splice3845038451_
                                              '0)))
                                        (if (gx#stx-pair? _tl2160821666_)
                                            (let ((_e2161521669_
                                                   (gx#syntax-e
                                                    _tl2160821666_)))
                                              (let ((_tl2161721676_
                                                     (##cdr _e2161521669_))
                                                    (_hd2161621673_
                                                     (##car _e2161521669_)))
                                                (if (gx#stx-pair?
                                                     _tl2161721676_)
                                                    (let ((_e2161821679_
                                                           (gx#syntax-e
                                                            _tl2161721676_)))
                                                      (let ((_tl2162021686_
                                                             (##cdr _e2161821679_))
                                                            (_hd2161921683_
                                                             (##car _e2161821679_)))
                                                        (if (gx#stx-null?
                                                             _tl2162021686_)
                                                            (___match3851838519_
                                                             _e2157921762_
                                                             _hd2158021766_
                                                             _tl2158121769_
                                                             _e2158221772_
                                                             _hd2158321776_
                                                             _tl2158421779_
                                                             _e2158521782_
                                                             _hd2158621786_
                                                             _tl2158721789_
                                                             ___splice3845038451_
                                                             _target2160621663_
                                                             _tl2160821666_
                                                             _e2161521669_
                                                             _hd2161621673_
                                                             _tl2161721676_
                                                             _e2161821679_
                                                             _hd2161921683_
                                                             _tl2162021686_)
                                                            (_g2157421626_))))
                                                    (_g2157421626_))))
                                            (_g2157421626_))))
                                    (_g2157421626_))
                                (_g2157421626_)))))))
              (if (gx#stx-pair? ___stx3844338444_)
                  (let ((_e2157921762_ (gx#syntax-e ___stx3844338444_)))
                    (let ((_tl2158121769_ (##cdr _e2157921762_))
                          (_hd2158021766_ (##car _e2157921762_)))
                      (if (gx#stx-pair? _tl2158121769_)
                          (let ((_e2158221772_ (gx#syntax-e _tl2158121769_)))
                            (let ((_tl2158421779_ (##cdr _e2158221772_))
                                  (_hd2158321776_ (##car _e2158221772_)))
                              (if (gx#stx-pair? _tl2158421779_)
                                  (let ((_e2158521782_
                                         (gx#syntax-e _tl2158421779_)))
                                    (let ((_tl2158721789_
                                           (##cdr _e2158521782_))
                                          (_hd2158621786_
                                           (##car _e2158521782_)))
                                      (if (gx#stx-pair? _tl2158721789_)
                                          (let ((_e2158821792_
                                                 (gx#syntax-e _tl2158721789_)))
                                            (let ((_tl2159021799_
                                                   (##cdr _e2158821792_))
                                                  (_hd2158921796_
                                                   (##car _e2158821792_)))
                                              (if (gx#stx-null? _tl2159021799_)
                                                  (___match3847838479_
                                                   _e2157921762_
                                                   _hd2158021766_
                                                   _tl2158121769_
                                                   _e2158221772_
                                                   _hd2158321776_
                                                   _tl2158421779_
                                                   _e2158521782_
                                                   _hd2158621786_
                                                   _tl2158721789_
                                                   _e2158821792_
                                                   _hd2158921796_
                                                   _tl2159021799_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2158721789_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2158721789_)
                        '2)
                  (let ((___splice3845038451_
                         (gx#syntax-split-splice _tl2158721789_ '2)))
                    (let ((_tl2160821666_
                           (##vector-ref ___splice3845038451_ '1))
                          (_target2160621663_
                           (##vector-ref ___splice3845038451_ '0)))
                      (if (gx#stx-pair? _tl2160821666_)
                          (let ((_e2161521669_ (gx#syntax-e _tl2160821666_)))
                            (let ((_tl2161721676_ (##cdr _e2161521669_))
                                  (_hd2161621673_ (##car _e2161521669_)))
                              (if (gx#stx-pair? _tl2161721676_)
                                  (let ((_e2161821679_
                                         (gx#syntax-e _tl2161721676_)))
                                    (let ((_tl2162021686_
                                           (##cdr _e2161821679_))
                                          (_hd2161921683_
                                           (##car _e2161821679_)))
                                      (if (gx#stx-null? _tl2162021686_)
                                          (___match3851838519_
                                           _e2157921762_
                                           _hd2158021766_
                                           _tl2158121769_
                                           _e2158221772_
                                           _hd2158321776_
                                           _tl2158421779_
                                           _e2158521782_
                                           _hd2158621786_
                                           _tl2158721789_
                                           ___splice3845038451_
                                           _target2160621663_
                                           _tl2160821666_
                                           _e2161521669_
                                           _hd2161621673_
                                           _tl2161721676_
                                           _e2161821679_
                                           _hd2161921683_
                                           _tl2162021686_)
                                          (_g2157421626_))))
                                  (_g2157421626_))))
                          (_g2157421626_))))
                  (_g2157421626_))
              (_g2157421626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2158721789_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2158721789_)
                                                        '2)
                                                  (let ((___splice3845038451_
                                                         (gx#syntax-split-splice
                                                          _tl2158721789_
                                                          '2)))
                                                    (let ((_tl2160821666_
                                                           (##vector-ref
                                                            ___splice3845038451_
                                                            '1))
                                                          (_target2160621663_
                                                           (##vector-ref
                                                            ___splice3845038451_
                                                            '0)))
                                                      (if (gx#stx-pair?
                                                           _tl2160821666_)
                                                          (let ((_e2161521669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2160821666_)))
                    (let ((_tl2161721676_ (##cdr _e2161521669_))
                          (_hd2161621673_ (##car _e2161521669_)))
                      (if (gx#stx-pair? _tl2161721676_)
                          (let ((_e2161821679_ (gx#syntax-e _tl2161721676_)))
                            (let ((_tl2162021686_ (##cdr _e2161821679_))
                                  (_hd2161921683_ (##car _e2161821679_)))
                              (if (gx#stx-null? _tl2162021686_)
                                  (___match3851838519_
                                   _e2157921762_
                                   _hd2158021766_
                                   _tl2158121769_
                                   _e2158221772_
                                   _hd2158321776_
                                   _tl2158421779_
                                   _e2158521782_
                                   _hd2158621786_
                                   _tl2158721789_
                                   ___splice3845038451_
                                   _target2160621663_
                                   _tl2160821666_
                                   _e2161521669_
                                   _hd2161621673_
                                   _tl2161721676_
                                   _e2161821679_
                                   _hd2161921683_
                                   _tl2162021686_)
                                  (_g2157421626_))))
                          (_g2157421626_))))
                  (_g2157421626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2157421626_))
                                              (_g2157421626_)))))
                                  (_g2157421626_))))
                          (_g2157421626_))))
                  (_g2157421626_)))))))))
