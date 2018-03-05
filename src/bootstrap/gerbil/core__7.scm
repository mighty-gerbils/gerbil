(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g34617_|
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
      (lambda _$args19491_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args19491_)))
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
      (lambda _$args19487_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args19487_)))
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
      (lambda _$args19483_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args19483_)))
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
      (lambda _$args19479_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args19479_)))
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
      (lambda _$args19475_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args19475_)))
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
      (lambda _$args19471_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args19471_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1944319457_
             (lambda (_stx19445_ _is?19447_)
               (if (gx#identifier? _stx19445_)
                   (let ((_e1944819450_
                          (gx#syntax-local-value _stx19445_ false)))
                     (if _e1944819450_
                         (let ((_e19454_ _e1944819450_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e19454_)
                               (_is?19447_ _e19454_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g34603_
          (let ((_g34602_ (length _g34603_)))
            (cond ((fx= _g34602_ 1)
                   (apply (lambda (_stx19461_)
                            (let ((_is?19464_ true))
                              (_opt-lambda1944319457_ _stx19461_ _is?19464_)))
                          _g34603_))
                  ((fx= _g34602_ 2) (apply _opt-lambda1944319457_ _g34603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g34603_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx19441_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19441_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx19438_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19438_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id19432_)
        (if _id19432_
            (let ((_info19435_ (gx#syntax-local-value _id19432_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info19435_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info19435_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19197_ _stx19199_)
        (let* ((_g1920119221_
                (lambda (_g1920219217_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1920219217_)))
               (_g1920019428_
                (lambda (_g1920219225_)
                  (if (gx#stx-pair? _g1920219225_)
                      (let ((_e1920419228_ (gx#syntax-e _g1920219225_)))
                        (let ((_hd1920519232_ (##car _e1920419228_))
                              (_tl1920619235_ (##cdr _e1920419228_)))
                          (if (gx#stx-pair/null? _tl1920619235_)
                              (if (fx>= (gx#stx-length _tl1920619235_) '0)
                                  (let ((_g34604_
                                         (gx#syntax-split-splice
                                          _tl1920619235_
                                          '0)))
                                    (begin
                                      (let ((_g34605_ (values-count _g34604_)))
                                        (if (not (fx= _g34605_ 2))
                                            (error "Context expects 2 values"
                                                   _g34605_)))
                                      (let ((_target1920719238_
                                             (values-ref _g34604_ 0))
                                            (_tl1920919241_
                                             (values-ref _g34604_ 1)))
                                        (if (gx#stx-null? _tl1920919241_)
                                            (letrec ((_loop1921019244_
                                                      (lambda (_hd1920819248_
                                                               _arg1921419251_)
                                                        (if (gx#stx-pair?
                                                             _hd1920819248_)
                                                            (let ((_e1921119254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1920819248_)))
                      (let ((_lp-hd1921219258_ (##car _e1921119254_))
                            (_lp-tl1921319261_ (##cdr _e1921119254_)))
                        (_loop1921019244_
                         _lp-tl1921319261_
                         (cons _lp-hd1921219258_ _arg1921419251_))))
                    (let ((_arg1921519264_ (reverse _arg1921419251_)))
                      ((lambda (_L19268_)
                         (let* ((_g1928419315_
                                 (lambda (_g1928519311_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1928519311_)))
                                (_g1928319424_
                                 (lambda (_g1928519319_)
                                   (if (gx#stx-pair? _g1928519319_)
                                       (let ((_e1929219322_
                                              (gx#syntax-e _g1928519319_)))
                                         (let ((_hd1929319326_
                                                (##car _e1929219322_))
                                               (_tl1929419329_
                                                (##cdr _e1929219322_)))
                                           (if (gx#stx-pair? _tl1929419329_)
                                               (let ((_e1929519332_
                                                      (gx#syntax-e
                                                       _tl1929419329_)))
                                                 (let ((_hd1929619336_
                                                        (##car _e1929519332_))
                                                       (_tl1929719339_
                                                        (##cdr _e1929519332_)))
                                                   (if (gx#stx-pair?
                                                        _tl1929719339_)
                                                       (let ((_e1929819342_
                                                              (gx#syntax-e
                                                               _tl1929719339_)))
                                                         (let ((_hd1929919346_
                                                                (##car _e1929819342_))
                                                               (_tl1930019349_
                                                                (##cdr _e1929819342_)))
                                                           (if (gx#stx-pair?
                                                                _tl1930019349_)
                                                               (let ((_e1930119352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1930019349_)))
                         (let ((_hd1930219356_ (##car _e1930119352_))
                               (_tl1930319359_ (##cdr _e1930119352_)))
                           (if (gx#stx-pair? _tl1930319359_)
                               (let ((_e1930419362_
                                      (gx#syntax-e _tl1930319359_)))
                                 (let ((_hd1930519366_ (##car _e1930419362_))
                                       (_tl1930619369_ (##cdr _e1930419362_)))
                                   (if (gx#stx-pair? _tl1930619369_)
                                       (let ((_e1930719372_
                                              (gx#syntax-e _tl1930619369_)))
                                         (let ((_hd1930819376_
                                                (##car _e1930719372_))
                                               (_tl1930919379_
                                                (##cdr _e1930719372_)))
                                           (if (gx#stx-null? _tl1930919379_)
                                               ((lambda (_L19382_
                                                         _L19384_
                                                         _L19385_
                                                         _L19386_
                                                         _L19387_
                                                         _L19388_)
                                                  (let ()
                                                    (cons _L19386_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1941519418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1941619421_)
                             (cons _g1941519418_ _g1941619421_))
                           '()
                           _L19268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1930819376_
                                                _hd1930519366_
                                                _hd1930219356_
                                                _hd1929919346_
                                                _hd1929619336_
                                                _hd1929319326_)
                                               (_g1928419315_ _g1928519319_))))
                                       (_g1928419315_ _g1928519319_))))
                               (_g1928419315_ _g1928519319_))))
                       (_g1928419315_ _g1928519319_))))
               (_g1928419315_ _g1928519319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1928419315_ _g1928519319_))))
                                       (_g1928419315_ _g1928519319_)))))
                           (_g1928319424_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19197_))))
                       _arg1921519264_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1921019244_
                                               _target1920719238_
                                               '()))
                                            (_g1920119221_ _g1920219225_)))))
                                  (_g1920119221_ _g1920219225_))
                              (_g1920119221_ _g1920219225_))))
                      (_g1920119221_ _g1920219225_)))))
          (_g1920019428_ _stx19199_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19188_)
        (letrec ((_body-opt?19191_
                  (lambda (_key19194_)
                    (memq (gx#stx-e _key19194_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19188_ _body-opt?19191_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18016_
               _id18018_
               _super-ref18019_
               _els18020_
               _body18021_
               _struct?18022_)
        (letrec* ((_wrap18024_
                   (lambda (_e-stx19185_)
                     (gx#stx-wrap-source
                      _e-stx19185_
                      (gx#stx-source _stx18016_))))
                  (_make-id18026_
                   (if (uninterned-symbol? (gx#stx-e _id18018_))
                       (lambda _g34606_ (gx#genident _id18018_))
                       (lambda _args19182_
                         (apply gx#stx-identifier _id18018_ _args19182_)))))
          (begin
            (gx#check-duplicate-identifiers _els18020_ _stx18016_)
            (let* ((_name18028_ (symbol->string (gx#stx-e _id18018_)))
                   (_super18031_
                    (if _struct?18022_
                        (if _super-ref18019_
                            (gx#syntax-local-value _super-ref18019_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18019_)))
                   (_g1803418042_
                    (lambda (_g1803518038_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1803518038_)))
                   (_g1803319176_
                    (lambda (_g1803518046_)
                      ((lambda (_L18049_)
                         (let ()
                           (let* ((_g1806518073_
                                   (lambda (_g1806618069_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1806618069_)))
                                  (_g1806419172_
                                   (lambda (_g1806618077_)
                                     ((lambda (_L18080_)
                                        (let ()
                                          (let* ((_g1809318101_
                                                  (lambda (_g1809418097_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1809418097_)))
                                                 (_g1809219168_
                                                  (lambda (_g1809418105_)
                                                    ((lambda (_L18108_)
                                                       (let ()
                                                         (let* ((_g1812118129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1812218125_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1812218125_)))
                        (_g1812019164_
                         (lambda (_g1812218133_)
                           ((lambda (_L18136_)
                              (let ()
                                (let* ((_g1814918157_
                                        (lambda (_g1815018153_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1815018153_)))
                                       (_g1814819160_
                                        (lambda (_g1815018161_)
                                          ((lambda (_L18164_)
                                             (let ()
                                               (let* ((_g1817718185_
                                                       (lambda (_g1817818181_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1817818181_)))
                                                      (_g1817619156_
                                                       (lambda (_g1817818189_)
                                                         ((lambda (_L18192_)
                                                            (let ()
                                                              (let* ((_g1820518222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1820618218_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1820618218_)))
                             (_g1820419152_
                              (lambda (_g1820618226_)
                                (if (gx#stx-pair/null? _g1820618226_)
                                    (if (fx>= (gx#stx-length _g1820618226_) '0)
                                        (let ((_g34607_
                                               (gx#syntax-split-splice
                                                _g1820618226_
                                                '0)))
                                          (begin
                                            (let ((_g34608_
                                                   (values-count _g34607_)))
                                              (if (not (fx= _g34608_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34608_)))
                                            (let ((_target1820818229_
                                                   (values-ref _g34607_ 0))
                                                  (_tl1821018232_
                                                   (values-ref _g34607_ 1)))
                                              (if (gx#stx-null? _tl1821018232_)
                                                  (letrec ((_loop1821118235_
                                                            (lambda (_hd1820918239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1821518242_)
                      (if (gx#stx-pair? _hd1820918239_)
                          (let ((_e1821218245_ (gx#syntax-e _hd1820918239_)))
                            (let ((_lp-hd1821318249_ (##car _e1821218245_))
                                  (_lp-tl1821418252_ (##cdr _e1821218245_)))
                              (_loop1821118235_
                               _lp-tl1821418252_
                               (cons _lp-hd1821318249_ _attr1821518242_))))
                          (let ((_attr1821618255_ (reverse _attr1821518242_)))
                            ((lambda (_L18259_)
                               (let ()
                                 (let* ((_g1827618293_
                                         (lambda (_g1827718289_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1827718289_)))
                                        (_g1827519143_
                                         (lambda (_g1827718297_)
                                           (if (gx#stx-pair/null?
                                                _g1827718297_)
                                               (if (fx>= (gx#stx-length
                                                          _g1827718297_)
                                                         '0)
                                                   (let ((_g34609_
                                                          (gx#syntax-split-splice
                                                           _g1827718297_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34610_
                                                              (values-count
                                                               _g34609_)))
                                                         (if (not (fx= _g34610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34610_)))
               (let ((_target1827918300_ (values-ref _g34609_ 0))
                     (_tl1828118303_ (values-ref _g34609_ 1)))
                 (if (gx#stx-null? _tl1828118303_)
                     (letrec ((_loop1828218306_
                               (lambda (_hd1828018310_ _getf1828618313_)
                                 (if (gx#stx-pair? _hd1828018310_)
                                     (let ((_e1828318316_
                                            (gx#syntax-e _hd1828018310_)))
                                       (let ((_lp-hd1828418320_
                                              (##car _e1828318316_))
                                             (_lp-tl1828518323_
                                              (##cdr _e1828318316_)))
                                         (_loop1828218306_
                                          _lp-tl1828518323_
                                          (cons _lp-hd1828418320_
                                                _getf1828618313_))))
                                     (let ((_getf1828718326_
                                            (reverse _getf1828618313_)))
                                       ((lambda (_L18330_)
                                          (let ()
                                            (let* ((_g1834718364_
                                                    (lambda (_g1834818360_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1834818360_)))
                                                   (_g1834619134_
                                                    (lambda (_g1834818368_)
                                                      (if (gx#stx-pair/null?
                                                           _g1834818368_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1834818368_)
                            '0)
                      (let ((_g34611_
                             (gx#syntax-split-splice _g1834818368_ '0)))
                        (begin
                          (let ((_g34612_ (values-count _g34611_)))
                            (if (not (fx= _g34612_ 2))
                                (error "Context expects 2 values" _g34612_)))
                          (let ((_target1835018371_ (values-ref _g34611_ 0))
                                (_tl1835218374_ (values-ref _g34611_ 1)))
                            (if (gx#stx-null? _tl1835218374_)
                                (letrec ((_loop1835318377_
                                          (lambda (_hd1835118381_
                                                   _setf1835718384_)
                                            (if (gx#stx-pair? _hd1835118381_)
                                                (let ((_e1835418387_
                                                       (gx#syntax-e
                                                        _hd1835118381_)))
                                                  (let ((_lp-hd1835518391_
                                                         (##car _e1835418387_))
                                                        (_lp-tl1835618394_
                                                         (##cdr _e1835418387_)))
                                                    (_loop1835318377_
                                                     _lp-tl1835618394_
                                                     (cons _lp-hd1835518391_
                                                           _setf1835718384_))))
                                                (let ((_setf1835818397_
                                                       (reverse _setf1835718384_)))
                                                  ((lambda (_L18401_)
                                                     (let ()
                                                       (let* ((_type-attr18446_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18020_)
                           '()
                           (if _struct?18022_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18401_
                                              _L18330_
                                              _L18259_)
                                             (foldr (lambda (_g1841718422_
                                                             _g1841818425_
                                                             _g1841918427_
                                                             _g1842018429_)
                                                      (cons (cons _g1841918427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1841818425_ (cons _g1841718422_ '())))
                    _g1842018429_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18401_
                                                    _L18330_
                                                    _L18259_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18401_
                                              _L18330_
                                              _L18259_)
                                             (foldr (lambda (_g1843118436_
                                                             _g1843218439_
                                                             _g1843318441_
                                                             _g1843418443_)
                                                      (cons (cons _g1843318441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1843218439_ (cons _g1843118436_ '())))
                    _g1843418443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18401_
                                                    _L18330_
                                                    _L18259_))
                                           '())))))
                      (_type-name18453_
                       (cons 'name:
                             (cons (let ((_$e18449_
                                          (gx#stx-getq 'name: _body18021_)))
                                     (if _$e18449_ _$e18449_ _id18018_))
                                   '())))
                      (_type-id18468_
                       (let ((_$e18464_
                              (let ((_e1845518457_
                                     (gx#stx-getq 'id: _body18021_)))
                                (if _e1845518457_
                                    (let ((_e18461_ _e1845518457_))
                                      (cons 'id: (cons _e18461_ '())))
                                    '#f))))
                         (if _$e18464_ _$e18464_ '())))
                      (_type-ctor18483_
                       (let ((_$e18479_
                              (let ((_e1847018472_
                                     (gx#stx-getq 'constructor: _body18021_)))
                                (if _e1847018472_
                                    (let ((_e18476_ _e1847018472_))
                                      (cons 'constructor: (cons _e18476_ '())))
                                    '#f))))
                         (if _$e18479_ _$e18479_ '())))
                      (_plist18527_
                       (let* ((_plist18490_
                               (let ((_$e18486_
                                      (gx#stx-getq 'plist: _body18021_)))
                                 (if _$e18486_ _$e18486_ '())))
                              (_plist18493_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18021_))
                                   (cons (cons 'transparent: '#t) _plist18490_)
                                   _plist18490_))
                              (_plist18496_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18021_))
                                   (cons (cons 'final: '#t) _plist18493_)
                                   _plist18493_))
                              (_plist18509_
                               (let ((_$e18499_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18021_))))
                                 (if _$e18499_
                                     ((lambda (_print18503_)
                                        (let ((_print18506_
                                               (if (eq? _print18503_ '#t)
                                                   _els18020_
                                                   _print18503_)))
                                          (cons (cons 'print: _print18506_)
                                                _plist18496_)))
                                      _$e18499_)
                                     _plist18496_)))
                              (_plist18522_
                               (let ((_$e18512_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18021_))))
                                 (if _$e18512_
                                     ((lambda (_equal18516_)
                                        (let ((_equal18519_
                                               (if (eq? _equal18516_ '#t)
                                                   _els18020_
                                                   _equal18516_)))
                                          (cons (cons 'equal: _equal18519_)
                                                _plist18509_)))
                                      _$e18512_)
                                     _plist18509_))))
                         _plist18522_))
                      (_type-plist18567_
                       (if (null? _plist18527_)
                           _plist18527_
                           (let* ((_g1853018538_
                                   (lambda (_g1853118534_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1853118534_)))
                                  (_g1852918563_
                                   (lambda (_g1853118542_)
                                     ((lambda (_L18545_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L18545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1853118542_))))
                             (_g1852918563_ _plist18527_))))
                      (_type-unchecked18582_
                       (let ((_$e18578_
                              (let ((_e1856918571_
                                     (gx#stx-getq 'unchecked: _body18021_)))
                                (if _e1856918571_
                                    (let ((_e18575_ _e1856918571_))
                                      (cons 'unchecked: (cons _e18575_ '())))
                                    '#f))))
                         (if _$e18578_ _$e18578_ '())))
                      (_g1858518602_
                       (lambda (_g1858618598_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1858618598_)))
                      (_g1858419130_
                       (lambda (_g1858618606_)
                         (if (gx#stx-pair/null? _g1858618606_)
                             (if (fx>= (gx#stx-length _g1858618606_) '0)
                                 (let ((_g34613_
                                        (gx#syntax-split-splice
                                         _g1858618606_
                                         '0)))
                                   (begin
                                     (let ((_g34614_ (values-count _g34613_)))
                                       (if (not (fx= _g34614_ 2))
                                           (error "Context expects 2 values"
                                                  _g34614_)))
                                     (let ((_target1858818609_
                                            (values-ref _g34613_ 0))
                                           (_tl1859018612_
                                            (values-ref _g34613_ 1)))
                                       (if (gx#stx-null? _tl1859018612_)
                                           (letrec ((_loop1859118615_
                                                     (lambda (_hd1858918619_
                                                              _type-body1859518622_)
                                                       (if (gx#stx-pair?
                                                            _hd1858918619_)
                                                           (let ((_e1859218625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1858918619_)))
                     (let ((_lp-hd1859318629_ (##car _e1859218625_))
                           (_lp-tl1859418632_ (##cdr _e1859218625_)))
                       (_loop1859118615_
                        _lp-tl1859418632_
                        (cons _lp-hd1859318629_ _type-body1859518622_))))
                   (let ((_type-body1859618635_
                          (reverse _type-body1859518622_)))
                     ((lambda (_L18639_)
                        (let ()
                          (let* ((_g1865618664_
                                  (lambda (_g1865718660_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1865718660_)))
                                 (_g1865519118_
                                  (lambda (_g1865718668_)
                                    ((lambda (_L18671_)
                                       (let ()
                                         (let* ((_g1868418692_
                                                 (lambda (_g1868518688_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1868518688_)))
                                                (_g1868319114_
                                                 (lambda (_g1868518696_)
                                                   ((lambda (_L18699_)
                                                      (let ()
                                                        (let* ((_g1871218720_
                                                                (lambda (_g1871318716_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1871318716_)))
                       (_g1871119028_
                        (lambda (_g1871318724_)
                          ((lambda (_L18727_)
                             (let ()
                               (let* ((_g1874018748_
                                       (lambda (_g1874118744_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1874118744_)))
                                      (_g1873919024_
                                       (lambda (_g1874118752_)
                                         ((lambda (_L18755_)
                                            (let ()
                                              (let* ((_g1876818776_
                                                      (lambda (_g1876918772_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1876918772_)))
                                                     (_g1876719020_
                                                      (lambda (_g1876918780_)
                                                        ((lambda (_L18783_)
                                                           (let ()
                                                             (let* ((_g1879618804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1879718800_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1879718800_)))
                            (_g1879518978_
                             (lambda (_g1879718808_)
                               ((lambda (_L18811_)
                                  (let ()
                                    (let* ((_g1882418832_
                                            (lambda (_g1882518828_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1882518828_)))
                                           (_g1882318974_
                                            (lambda (_g1882518836_)
                                              ((lambda (_L18839_)
                                                 (let ()
                                                   (let* ((_g1885218860_
                                                           (lambda (_g1885318856_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1885318856_)))
                                                          (_g1885118970_
                                                           (lambda (_g1885318864_)
                                                             ((lambda (_L18867_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1888018888_
                                  (lambda (_g1888118884_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1888118884_)))
                                 (_g1887918966_
                                  (lambda (_g1888118892_)
                                    ((lambda (_L18895_)
                                       (let ()
                                         (let* ((_g1890818916_
                                                 (lambda (_g1890918912_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1890918912_)))
                                                (_g1890718938_
                                                 (lambda (_g1890918920_)
                                                   ((lambda (_L18923_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18024_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L18671_ (cons _L18923_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1890918920_))))
                                           (_g1890718938_
                                            (_wrap18024_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18080_
                                                         (cons (cons _L18699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18108_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L18727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18108_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18136_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18164_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1894118948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1894218951_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1894118948_ '()))
                                _g1894218951_))
                        '()
                        _L18330_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1894318954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1894418957_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1894318954_ '()))
                                      _g1894418957_))
                              '()
                              _L18401_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L18755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L18783_ '()))
                                     (cons _L18811_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L18839_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L18867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L18895_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1894518960_
                                                         _g1894618963_)
                                                  (cons _g1894518960_
                                                        _g1894618963_))
                                                '()
                                                _L18259_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1888118892_))))
                            (_g1887918966_ _plist18527_))))
                      _g1885318864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1885118970_
                                                      (if (not (null? _type-ctor18483_))
                                                          (cadr _type-ctor18483_)
                                                          '#f)))))
                                               _g1882518836_))))
                                      (_g1882318974_
                                       (cadr _type-name18453_)))))
                                _g1879718808_))))
                       (_g1879518978_
                        (let ((_quote-e19017_
                               (lambda (_x-ref18982_)
                                 (if _x-ref18982_
                                     (let* ((_g1898518993_
                                             (lambda (_g1898618989_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1898618989_)))
                                            (_g1898419013_
                                             (lambda (_g1898618997_)
                                               ((lambda (_L19000_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19000_
                                                                '()))))
                                                _g1898618997_))))
                                       (_g1898419013_ _x-ref18982_))
                                     '#f))))
                          (if _struct?18022_
                              (_quote-e19017_ _super-ref18019_)
                              (cons 'list
                                    (map _quote-e19017_
                                         _super-ref18019_))))))))
                 _g1876918780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1876719020_
                                                 (if (not (null? _type-id18468_))
                                                     (cadr _type-id18468_)
                                                     '#f)))))
                                          _g1874118752_))))
                                 (_g1873919024_
                                  (if _struct?18022_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1871318724_))))
                  (_g1871119028_
                   (if _struct?18022_
                       (if _super18031_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18192_ '()))
                           '#f)
                       (let* ((_g1903219049_
                               (lambda (_g1903319045_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1903319045_)))
                              (_g1903119110_
                               (lambda (_g1903319053_)
                                 (if (gx#stx-pair/null? _g1903319053_)
                                     (if (fx>= (gx#stx-length _g1903319053_)
                                               '0)
                                         (let ((_g34615_
                                                (gx#syntax-split-splice
                                                 _g1903319053_
                                                 '0)))
                                           (begin
                                             (let ((_g34616_
                                                    (values-count _g34615_)))
                                               (if (not (fx= _g34616_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34616_)))
                                             (let ((_target1903519056_
                                                    (values-ref _g34615_ 0))
                                                   (_tl1903719059_
                                                    (values-ref _g34615_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1903719059_)
                                                   (letrec ((_loop1903819062_
                                                             (lambda (_hd1903619066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1904219069_)
                       (if (gx#stx-pair? _hd1903619066_)
                           (let ((_e1903919072_ (gx#syntax-e _hd1903619066_)))
                             (let ((_lp-hd1904019076_ (##car _e1903919072_))
                                   (_lp-tl1904119079_ (##cdr _e1903919072_)))
                               (_loop1903819062_
                                _lp-tl1904119079_
                                (cons _lp-hd1904019076_
                                      _super-id1904219069_))))
                           (let ((_super-id1904319082_
                                  (reverse _super-id1904219069_)))
                             ((lambda (_L19086_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1910119104_
                                                          _g1910219107_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1910119104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1910219107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19086_)))))
                              _super-id1904319082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1903819062_
                                                      _target1903519056_
                                                      '()))
                                                   (_g1903219049_
                                                    _g1903319053_)))))
                                         (_g1903219049_ _g1903319053_))
                                     (_g1903219049_ _g1903319053_)))))
                         (_g1903119110_ _L18192_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1868518696_))))
                                           (_g1868319114_
                                            (if _struct?18022_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1865718668_))))
                            (_g1865519118_
                             (_wrap18024_
                              (cons _L18049_
                                    (cons _L18108_
                                          (cons _L18192_
                                                (cons _L18136_
                                                      (cons _L18164_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1912119124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1912219127_)
                               (cons _g1912119124_ _g1912219127_))
                             '()
                             _L18639_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1859618635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1859118615_
                                              _target1858818609_
                                              '()))
                                           (_g1858518602_ _g1858618606_)))))
                                 (_g1858518602_ _g1858618606_))
                             (_g1858518602_ _g1858618606_)))))
                 (_g1858419130_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked18582_
                                                     _type-plist18567_)
                                              _type-ctor18483_)
                                       _type-name18453_)
                                _type-id18468_)
                         _type-attr18446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1835818397_))))))
                                  (_loop1835318377_ _target1835018371_ '()))
                                (_g1834718364_ _g1834818368_)))))
                      (_g1834718364_ _g1834818368_))
                  (_g1834718364_ _g1834818368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1834619134_
                                               (gx#stx-map
                                                (lambda (_g1913719139_)
                                                  (_make-id18026_
                                                   _name18028_
                                                   '"-"
                                                   _g1913719139_
                                                   '"-set!"))
                                                _els18020_)))))
                                        _getf1828718326_))))))
                       (_loop1828218306_ _target1827918300_ '()))
                     (_g1827618293_ _g1827718297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1827618293_
                                                    _g1827718297_))
                                               (_g1827618293_
                                                _g1827718297_)))))
                                   (_g1827519143_
                                    (gx#stx-map
                                     (lambda (_g1914619148_)
                                       (_make-id18026_
                                        _name18028_
                                        '"-"
                                        _g1914619148_))
                                     _els18020_)))))
                             _attr1821618255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1821118235_
                                                     _target1820818229_
                                                     '()))
                                                  (_g1820518222_
                                                   _g1820618226_)))))
                                        (_g1820518222_ _g1820618226_))
                                    (_g1820518222_ _g1820618226_)))))
                        (_g1820419152_ _els18020_))))
                  _g1817818189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1817619156_
                                                  (if _struct?18022_
                                                      (if _super18031_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18031_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18031_))))))
                                           _g1815018161_))))
                                  (_g1814819160_
                                   (_make-id18026_ _name18028_ '"?")))))
                            _g1812218133_))))
                   (_g1812019164_ (_make-id18026_ '"make-" _name18028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1809418105_))))
                                            (_g1809219168_
                                             (_make-id18026_
                                              _name18028_
                                              '"::t")))))
                                      _g1806618077_))))
                             (_g1806419172_ _id18018_))))
                       _g1803518046_))))
              (_g1803319176_
               (if _struct?18022_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx19504_)
        (letrec ((_generate19507_
                  (lambda (_hd19591_ _fields19593_ _body19594_)
                    (let* ((_g1959719612_
                            (lambda (_g1959819608_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1959819608_)))
                           (_g1959619623_
                            (lambda (_g1959819616_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19591_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19504_
                                      _hd19591_
                                      '#f
                                      _fields19593_
                                      _body19594_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19504_
                                      _hd19591_))))))
                           (_g1959519667_
                            (lambda (_g1959819627_)
                              (if (gx#stx-pair? _g1959819627_)
                                  (let ((_e1960119630_
                                         (gx#syntax-e _g1959819627_)))
                                    (let ((_hd1960219634_
                                           (##car _e1960119630_))
                                          (_tl1960319637_
                                           (##cdr _e1960119630_)))
                                      (if (gx#stx-pair? _tl1960319637_)
                                          (let ((_e1960419640_
                                                 (gx#syntax-e _tl1960319637_)))
                                            (let ((_hd1960519644_
                                                   (##car _e1960419640_))
                                                  (_tl1960619647_
                                                   (##cdr _e1960419640_)))
                                              (if (gx#stx-null? _tl1960619647_)
                                                  ((lambda (_L19650_ _L19652_)
                                                     (if (if (gx#identifier?
                                                              _L19652_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L19650_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx19504_
                                                          _L19652_
                                                          _L19650_
                                                          _fields19593_
                                                          _body19594_
                                                          '#t)
                                                         (_g1959619623_
                                                          _g1959819627_)))
                                                   _hd1960519644_
                                                   _hd1960219634_)
                                                  (_g1959619623_
                                                   _g1959819627_))))
                                          (_g1959619623_ _g1959819627_))))
                                  (_g1959619623_ _g1959819627_)))))
                      (_g1959519667_ _hd19591_)))))
          (let* ((_g1951019529_
                  (lambda (_g1951119525_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1951119525_)))
                 (_g1950919587_
                  (lambda (_g1951119533_)
                    (if (gx#stx-pair? _g1951119533_)
                        (let ((_e1951519536_ (gx#syntax-e _g1951119533_)))
                          (let ((_hd1951619540_ (##car _e1951519536_))
                                (_tl1951719543_ (##cdr _e1951519536_)))
                            (if (gx#stx-pair? _tl1951719543_)
                                (let ((_e1951819546_
                                       (gx#syntax-e _tl1951719543_)))
                                  (let ((_hd1951919550_ (##car _e1951819546_))
                                        (_tl1952019553_ (##cdr _e1951819546_)))
                                    (if (gx#stx-pair? _tl1952019553_)
                                        (let ((_e1952119556_
                                               (gx#syntax-e _tl1952019553_)))
                                          (let ((_hd1952219560_
                                                 (##car _e1952119556_))
                                                (_tl1952319563_
                                                 (##cdr _e1952119556_)))
                                            ((lambda (_L19566_
                                                      _L19568_
                                                      _L19569_)
                                               (if (if (gx#identifier-list?
                                                        _L19568_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19566_)
                                                       '#f)
                                                   (_generate19507_
                                                    _L19569_
                                                    _L19568_
                                                    _L19566_)
                                                   (_g1951019529_
                                                    _g1951119533_)))
                                             _tl1952319563_
                                             _hd1952219560_
                                             _hd1951919550_)))
                                        (_g1951019529_ _g1951119533_))))
                                (_g1951019529_ _g1951119533_))))
                        (_g1951019529_ _g1951119533_)))))
            (_g1950919587_ _stx19504_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx19671_)
        (letrec ((_generate19674_
                  (lambda (_hd19758_ _slots19760_ _body19761_)
                    (let* ((_g1976419776_
                            (lambda (_g1976519772_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1976519772_)))
                           (_g1976319787_
                            (lambda (_g1976519780_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19758_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19671_
                                      _hd19758_
                                      '()
                                      _slots19760_
                                      _body19761_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19671_
                                      _hd19758_))))))
                           (_g1976219819_
                            (lambda (_g1976519791_)
                              (if (gx#stx-pair? _g1976519791_)
                                  (let ((_e1976819794_
                                         (gx#syntax-e _g1976519791_)))
                                    (let ((_hd1976919798_
                                           (##car _e1976819794_))
                                          (_tl1977019801_
                                           (##cdr _e1976819794_)))
                                      ((lambda (_L19804_ _L19806_)
                                         (if (if (gx#stx-list? _L19804_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L19804_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx19671_
                                              _L19806_
                                              (gx#syntax->list _L19804_)
                                              _slots19760_
                                              _body19761_
                                              '#f)
                                             (_g1976319787_ _g1976519791_)))
                                       _tl1977019801_
                                       _hd1976919798_)))
                                  (_g1976319787_ _g1976519791_)))))
                      (_g1976219819_ _hd19758_)))))
          (let* ((_g1967719696_
                  (lambda (_g1967819692_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1967819692_)))
                 (_g1967619754_
                  (lambda (_g1967819700_)
                    (if (gx#stx-pair? _g1967819700_)
                        (let ((_e1968219703_ (gx#syntax-e _g1967819700_)))
                          (let ((_hd1968319707_ (##car _e1968219703_))
                                (_tl1968419710_ (##cdr _e1968219703_)))
                            (if (gx#stx-pair? _tl1968419710_)
                                (let ((_e1968519713_
                                       (gx#syntax-e _tl1968419710_)))
                                  (let ((_hd1968619717_ (##car _e1968519713_))
                                        (_tl1968719720_ (##cdr _e1968519713_)))
                                    (if (gx#stx-pair? _tl1968719720_)
                                        (let ((_e1968819723_
                                               (gx#syntax-e _tl1968719720_)))
                                          (let ((_hd1968919727_
                                                 (##car _e1968819723_))
                                                (_tl1969019730_
                                                 (##cdr _e1968819723_)))
                                            ((lambda (_L19733_
                                                      _L19735_
                                                      _L19736_)
                                               (if (if (gx#identifier-list?
                                                        _L19735_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19733_)
                                                       '#f)
                                                   (_generate19674_
                                                    _L19736_
                                                    _L19735_
                                                    _L19733_)
                                                   (_g1967719696_
                                                    _g1967819700_)))
                                             _tl1969019730_
                                             _hd1968919727_
                                             _hd1968619717_)))
                                        (_g1967719696_ _g1967819700_))))
                                (_g1967719696_ _g1967819700_))))
                        (_g1967719696_ _g1967819700_)))))
            (_g1967619754_ _stx19671_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx19823_)
        (letrec ((_wrap19826_
                  (lambda (_e-stx20163_)
                    (gx#stx-wrap-source
                     _e-stx20163_
                     (gx#stx-source _stx19823_))))
                 (_method-opt?19828_
                  (lambda (_x20160_) (memq (gx#stx-e _x20160_) '(rebind:)))))
          (let* ((_g1983019859_
                  (lambda (_g1983119855_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1983119855_)))
                 (_g1982920156_
                  (lambda (_g1983119863_)
                    (if (gx#stx-pair? _g1983119863_)
                        (let ((_e1983619866_ (gx#syntax-e _g1983119863_)))
                          (let ((_hd1983719870_ (##car _e1983619866_))
                                (_tl1983819873_ (##cdr _e1983619866_)))
                            (if (gx#stx-pair? _tl1983819873_)
                                (let ((_e1983919876_
                                       (gx#syntax-e _tl1983819873_)))
                                  (let ((_hd1984019880_ (##car _e1983919876_))
                                        (_tl1984119883_ (##cdr _e1983919876_)))
                                    (if (gx#stx-pair? _hd1984019880_)
                                        (let ((_e1984219886_
                                               (gx#syntax-e _hd1984019880_)))
                                          (let ((_hd1984319890_
                                                 (##car _e1984219886_))
                                                (_tl1984419893_
                                                 (##cdr _e1984219886_)))
                                            (if (gx#identifier? _hd1984319890_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g34617_|
                                                     _hd1984319890_)
                                                    (if (gx#stx-pair?
                                                         _tl1984419893_)
                                                        (let ((_e1984519896_
                                                               (gx#syntax-e
                                                                _tl1984419893_)))
                                                          (let ((_hd1984619900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1984519896_))
                        (_tl1984719903_ (##cdr _e1984519896_)))
                    (if (gx#stx-pair? _tl1984719903_)
                        (let ((_e1984819906_ (gx#syntax-e _tl1984719903_)))
                          (let ((_hd1984919910_ (##car _e1984819906_))
                                (_tl1985019913_ (##cdr _e1984819906_)))
                            (if (gx#stx-null? _tl1985019913_)
                                (if (gx#stx-pair? _tl1984119883_)
                                    (let ((_e1985119916_
                                           (gx#syntax-e _tl1984119883_)))
                                      (let ((_hd1985219920_
                                             (##car _e1985119916_))
                                            (_tl1985319923_
                                             (##cdr _e1985119916_)))
                                        ((lambda (_L19926_
                                                  _L19928_
                                                  _L19929_
                                                  _L19930_)
                                           (if (if (gx#identifier? _L19930_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L19929_)
                                                       (gx#stx-plist?
                                                        _L19926_
                                                        _method-opt?19828_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass19955_
                                                       (gx#syntax-local-value
                                                        _L19929_))
                                                      (_rebind?19958_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L19926_))
                                                           '#t
                                                           '#f))
                                                      (_g1996119969_
                                                       (lambda (_g1996219965_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1996219965_)))
                                                      (_g1996020152_
                                                       (lambda (_g1996219973_)
                                                         ((lambda (_L19976_)
                                                            (let ()
                                                              (let* ((_g1999019998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1999119994_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1999119994_)))
                             (_g1998920148_
                              (lambda (_g1999120002_)
                                ((lambda (_L20005_)
                                   (let ()
                                     (let* ((_g2001820026_
                                             (lambda (_g2001920022_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2001920022_)))
                                            (_g2001720144_
                                             (lambda (_g2001920030_)
                                               ((lambda (_L20033_)
                                                  (let ()
                                                    (let* ((_g2004620054_
                                                            (lambda (_g2004720050_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2004720050_)))
                                                           (_g2004520140_
                                                            (lambda (_g2004720058_)
                                                              ((lambda (_L20061_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2007420082_
                                   (lambda (_g2007520078_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2007520078_)))
                                  (_g2007320136_
                                   (lambda (_g2007520086_)
                                     ((lambda (_L20089_)
                                        (let ()
                                          (let* ((_g2010220110_
                                                  (lambda (_g2010320106_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2010320106_)))
                                                 (_g2010120132_
                                                  (lambda (_g2010320114_)
                                                    ((lambda (_L20117_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap19826_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20061_ (cons _L20117_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2010320114_))))
                                            (_g2010120132_
                                             (_wrap19826_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L19976_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L19930_ '()))
                        (cons _L20005_ (cons _L20089_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2007520086_))))
                             (_g2007320136_ _rebind?19958_))))
                       _g2004720058_))))
              (_g2004520140_
               (_wrap19826_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20005_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20033_
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
                                                            (cons _L19976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L19930_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L19928_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2001920030_))))
                                       (_g2001720144_
                                        (gx#stx-identifier
                                         _L19930_
                                         '@next-method)))))
                                 _g1999120002_))))
                        (_g1998920148_
                         (gx#stx-identifier
                          _L19930_
                          _L19929_
                          '"::"
                          _L19930_)))))
                  _g1996219973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1996020152_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass19955_)))
                                               (if (not (gx#identifier?
                                                         _L19930_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx19823_
                                                    _L19930_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L19929_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx19823_
                                                        _L19929_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx19823_)))))
                                         _tl1985319923_
                                         _hd1985219920_
                                         _hd1984919910_
                                         _hd1984619900_)))
                                    (_g1983019859_ _g1983119863_))
                                (_g1983019859_ _g1983119863_))))
                        (_g1983019859_ _g1983119863_))))
                (_g1983019859_ _g1983119863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1983019859_
                                                     _g1983119863_))
                                                (_g1983019859_
                                                 _g1983119863_))))
                                        (_g1983019859_ _g1983119863_))))
                                (_g1983019859_ _g1983119863_))))
                        (_g1983019859_ _g1983119863_)))))
            (_g1982920156_ _stx19823_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20166_)
        (let* ((_g2017120220_
                (lambda (_g2017220216_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2017220216_)))
               (_g2017020319_
                (lambda (_g2017220224_)
                  (if (gx#stx-pair? _g2017220224_)
                      (let ((_e2019720227_ (gx#syntax-e _g2017220224_)))
                        (let ((_hd2019820231_ (##car _e2019720227_))
                              (_tl2019920234_ (##cdr _e2019720227_)))
                          (if (gx#stx-pair? _tl2019920234_)
                              (let ((_e2020020237_
                                     (gx#syntax-e _tl2019920234_)))
                                (let ((_hd2020120241_ (##car _e2020020237_))
                                      (_tl2020220244_ (##cdr _e2020020237_)))
                                  (if (gx#stx-pair? _tl2020220244_)
                                      (let ((_e2020320247_
                                             (gx#syntax-e _tl2020220244_)))
                                        (let ((_hd2020420251_
                                               (##car _e2020320247_))
                                              (_tl2020520254_
                                               (##cdr _e2020320247_)))
                                          (if (gx#stx-pair/null?
                                               _tl2020520254_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2020520254_)
                                                        '0)
                                                  (let ((_g34618_
                                                         (gx#syntax-split-splice
                                                          _tl2020520254_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34619_
                                                             (values-count
                                                              _g34618_)))
                                                        (if (not (fx= _g34619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34619_)))
              (let ((_target2020620257_ (values-ref _g34618_ 0))
                    (_tl2020820260_ (values-ref _g34618_ 1)))
                (if (gx#stx-null? _tl2020820260_)
                    (letrec ((_loop2020920263_
                              (lambda (_hd2020720267_ _arg2021320270_)
                                (if (gx#stx-pair? _hd2020720267_)
                                    (let ((_e2021020273_
                                           (gx#syntax-e _hd2020720267_)))
                                      (let ((_lp-hd2021120277_
                                             (##car _e2021020273_))
                                            (_lp-tl2021220280_
                                             (##cdr _e2021020273_)))
                                        (_loop2020920263_
                                         _lp-tl2021220280_
                                         (cons _lp-hd2021120277_
                                               _arg2021320270_))))
                                    (let ((_arg2021420283_
                                           (reverse _arg2021320270_)))
                                      ((lambda (_L20287_ _L20289_ _L20290_)
                                         (if (gx#identifier? _L20290_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20289_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20290_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2031020313_ _g2031120316_)
                                  (cons _g2031020313_ _g2031120316_))
                                '()
                                _L20287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2017120220_ _g2017220224_)))
                                       _arg2021420283_
                                       _hd2020420251_
                                       _hd2020120241_))))))
                      (_loop2020920263_ _target2020620257_ '()))
                    (_g2017120220_ _g2017220224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2017120220_
                                                   _g2017220224_))
                                              (_g2017120220_ _g2017220224_))))
                                      (_g2017120220_ _g2017220224_))))
                              (_g2017120220_ _g2017220224_))))
                      (_g2017120220_ _g2017220224_))))
               (_g2016920425_
                (lambda (_g2017220323_)
                  (if (gx#stx-pair? _g2017220323_)
                      (let ((_e2017620326_ (gx#syntax-e _g2017220323_)))
                        (let ((_hd2017720330_ (##car _e2017620326_))
                              (_tl2017820333_ (##cdr _e2017620326_)))
                          (if (gx#stx-pair? _tl2017820333_)
                              (let ((_e2017920336_
                                     (gx#syntax-e _tl2017820333_)))
                                (let ((_hd2018020340_ (##car _e2017920336_))
                                      (_tl2018120343_ (##cdr _e2017920336_)))
                                  (if (gx#stx-pair? _tl2018120343_)
                                      (let ((_e2018220346_
                                             (gx#syntax-e _tl2018120343_)))
                                        (let ((_hd2018320350_
                                               (##car _e2018220346_))
                                              (_tl2018420353_
                                               (##cdr _e2018220346_)))
                                          (if (gx#stx-pair/null?
                                               _tl2018420353_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2018420353_)
                                                        '0)
                                                  (let ((_g34620_
                                                         (gx#syntax-split-splice
                                                          _tl2018420353_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34621_
                                                             (values-count
                                                              _g34620_)))
                                                        (if (not (fx= _g34621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34621_)))
              (let ((_target2018520356_ (values-ref _g34620_ 0))
                    (_tl2018720359_ (values-ref _g34620_ 1)))
                (if (gx#stx-null? _tl2018720359_)
                    (letrec ((_loop2018820362_
                              (lambda (_hd2018620366_ _arg2019220369_)
                                (if (gx#stx-pair? _hd2018620366_)
                                    (let ((_e2018920372_
                                           (gx#syntax-e _hd2018620366_)))
                                      (let ((_lp-hd2019020376_
                                             (##car _e2018920372_))
                                            (_lp-tl2019120379_
                                             (##cdr _e2018920372_)))
                                        (_loop2018820362_
                                         _lp-tl2019120379_
                                         (cons _lp-hd2019020376_
                                               _arg2019220369_))))
                                    (let ((_arg2019320382_
                                           (reverse _arg2019220369_)))
                                      ((lambda (_L20386_ _L20388_ _L20389_)
                                         (if (if (gx#identifier? _L20389_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2040820411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2040920414_)
                     (cons _g2040820411_ _g2040920414_))
                   '()
                   _L20386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L20388_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L20389_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2041620419_
                                                           _g2041720422_)
                                                    (cons _g2041620419_
                                                          _g2041720422_))
                                                  '()
                                                  _L20386_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2017020319_ _g2017220323_)))
                                       _arg2019320382_
                                       _hd2018320350_
                                       _hd2018020340_))))))
                      (_loop2018820362_ _target2018520356_ '()))
                    (_g2017020319_ _g2017220323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2017020319_
                                                   _g2017220323_))
                                              (_g2017020319_ _g2017220323_))))
                                      (_g2017020319_ _g2017220323_))))
                              (_g2017020319_ _g2017220323_))))
                      (_g2017020319_ _g2017220323_)))))
          (_g2016920425_ _$stx20166_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx20431_)
        (let* ((_g2043620476_
                (lambda (_g2043720472_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2043720472_)))
               (_g2043520577_
                (lambda (_g2043720480_)
                  (if (gx#stx-pair? _g2043720480_)
                      (let ((_e2045320483_ (gx#syntax-e _g2043720480_)))
                        (let ((_hd2045420487_ (##car _e2045320483_))
                              (_tl2045520490_ (##cdr _e2045320483_)))
                          (if (gx#stx-pair? _tl2045520490_)
                              (let ((_e2045620493_
                                     (gx#syntax-e _tl2045520490_)))
                                (let ((_hd2045720497_ (##car _e2045620493_))
                                      (_tl2045820500_ (##cdr _e2045620493_)))
                                  (if (gx#stx-pair? _tl2045820500_)
                                      (let ((_e2045920503_
                                             (gx#syntax-e _tl2045820500_)))
                                        (let ((_hd2046020507_
                                               (##car _e2045920503_))
                                              (_tl2046120510_
                                               (##cdr _e2045920503_)))
                                          (if (gx#stx-pair/null?
                                               _tl2046120510_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2046120510_)
                                                        '0)
                                                  (let ((_g34622_
                                                         (gx#syntax-split-splice
                                                          _tl2046120510_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34623_
                                                             (values-count
                                                              _g34622_)))
                                                        (if (not (fx= _g34623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34623_)))
              (let ((_target2046220513_ (values-ref _g34622_ 0))
                    (_tl2046420516_ (values-ref _g34622_ 1)))
                (if (gx#stx-null? _tl2046420516_)
                    (letrec ((_loop2046520519_
                              (lambda (_hd2046320523_ _rest2046920526_)
                                (if (gx#stx-pair? _hd2046320523_)
                                    (let ((_e2046620529_
                                           (gx#syntax-e _hd2046320523_)))
                                      (let ((_lp-hd2046720533_
                                             (##car _e2046620529_))
                                            (_lp-tl2046820536_
                                             (##cdr _e2046620529_)))
                                        (_loop2046520519_
                                         _lp-tl2046820536_
                                         (cons _lp-hd2046720533_
                                               _rest2046920526_))))
                                    (let ((_rest2047020539_
                                           (reverse _rest2046920526_)))
                                      ((lambda (_L20543_
                                                _L20545_
                                                _L20546_
                                                _L20547_)
                                         (cons _L20547_
                                               (cons (cons _L20547_
                                                           (cons _L20546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L20545_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2056820571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2056920574_)
                        (cons _g2056820571_ _g2056920574_))
                      '()
                      _L20543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2047020539_
                                       _hd2046020507_
                                       _hd2045720497_
                                       _hd2045420487_))))))
                      (_loop2046520519_ _target2046220513_ '()))
                    (_g2043620476_ _g2043720480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2043620476_
                                                   _g2043720480_))
                                              (_g2043620476_ _g2043720480_))))
                                      (_g2043620476_ _g2043720480_))))
                              (_g2043620476_ _g2043720480_))))
                      (_g2043620476_ _g2043720480_))))
               (_g2043420631_
                (lambda (_g2043720581_)
                  (if (gx#stx-pair? _g2043720581_)
                      (let ((_e2044020584_ (gx#syntax-e _g2043720581_)))
                        (let ((_hd2044120588_ (##car _e2044020584_))
                              (_tl2044220591_ (##cdr _e2044020584_)))
                          (if (gx#stx-pair? _tl2044220591_)
                              (let ((_e2044320594_
                                     (gx#syntax-e _tl2044220591_)))
                                (let ((_hd2044420598_ (##car _e2044320594_))
                                      (_tl2044520601_ (##cdr _e2044320594_)))
                                  (if (gx#stx-pair? _tl2044520601_)
                                      (let ((_e2044620604_
                                             (gx#syntax-e _tl2044520601_)))
                                        (let ((_hd2044720608_
                                               (##car _e2044620604_))
                                              (_tl2044820611_
                                               (##cdr _e2044620604_)))
                                          (if (gx#stx-null? _tl2044820611_)
                                              ((lambda (_L20614_ _L20616_)
                                                 (if (gx#identifier? _L20614_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L20616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20614_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2043520577_
                                                      _g2043720581_)))
                                               _hd2044720608_
                                               _hd2044420598_)
                                              (_g2043520577_ _g2043720581_))))
                                      (_g2043520577_ _g2043720581_))))
                              (_g2043520577_ _g2043720581_))))
                      (_g2043520577_ _g2043720581_)))))
          (_g2043420631_ _$stx20431_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx20636_)
        (let* ((_g2064120693_
                (lambda (_g2064220689_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2064220689_)))
               (_g2064020822_
                (lambda (_g2064220697_)
                  (if (gx#stx-pair? _g2064220697_)
                      (let ((_e2066420700_ (gx#syntax-e _g2064220697_)))
                        (let ((_hd2066520704_ (##car _e2066420700_))
                              (_tl2066620707_ (##cdr _e2066420700_)))
                          (if (gx#stx-pair? _tl2066620707_)
                              (let ((_e2066720710_
                                     (gx#syntax-e _tl2066620707_)))
                                (let ((_hd2066820714_ (##car _e2066720710_))
                                      (_tl2066920717_ (##cdr _e2066720710_)))
                                  (if (gx#stx-pair? _tl2066920717_)
                                      (let ((_e2067020720_
                                             (gx#syntax-e _tl2066920717_)))
                                        (let ((_hd2067120724_
                                               (##car _e2067020720_))
                                              (_tl2067220727_
                                               (##cdr _e2067020720_)))
                                          (if (gx#stx-pair/null?
                                               _tl2067220727_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2067220727_)
                                                        '2)
                                                  (let ((_g34624_
                                                         (gx#syntax-split-splice
                                                          _tl2067220727_
                                                          '2)))
                                                    (begin
                                                      (let ((_g34625_
                                                             (values-count
                                                              _g34624_)))
                                                        (if (not (fx= _g34625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34625_)))
              (let ((_target2067320730_ (values-ref _g34624_ 0))
                    (_tl2067520733_ (values-ref _g34624_ 1)))
                (if (gx#stx-pair? _tl2067520733_)
                    (let ((_e2068220736_ (gx#syntax-e _tl2067520733_)))
                      (let ((_hd2068320740_ (##car _e2068220736_))
                            (_tl2068420743_ (##cdr _e2068220736_)))
                        (if (gx#stx-pair? _tl2068420743_)
                            (let ((_e2068520746_ (gx#syntax-e _tl2068420743_)))
                              (let ((_hd2068620750_ (##car _e2068520746_))
                                    (_tl2068720753_ (##cdr _e2068520746_)))
                                (if (gx#stx-null? _tl2068720753_)
                                    (letrec ((_loop2067620756_
                                              (lambda (_hd2067420760_
                                                       _path2068020763_)
                                                (if (gx#stx-pair?
                                                     _hd2067420760_)
                                                    (let ((_e2067720766_
                                                           (gx#syntax-e
                                                            _hd2067420760_)))
                                                      (let ((_lp-hd2067820770_
                                                             (##car _e2067720766_))
                                                            (_lp-tl2067920773_
                                                             (##cdr _e2067720766_)))
                                                        (_loop2067620756_
                                                         _lp-tl2067920773_
                                                         (cons _lp-hd2067820770_
                                                               _path2068020763_))))
                                                    (let ((_path2068120776_
                                                           (reverse _path2068020763_)))
                                                      ((lambda (_L20780_
                                                                _L20782_
                                                                _L20783_
                                                                _L20784_
                                                                _L20785_
                                                                _L20786_)
                                                         (cons _L20786_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L20785_
                                         (cons _L20784_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2081320816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2081420819_)
                  (cons _g2081320816_ _g2081420819_))
                '()
                _L20783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L20782_ (cons _L20780_ '())))))
               _hd2068620750_
               _hd2068320740_
               _path2068120776_
               _hd2067120724_
               _hd2066820714_
               _hd2066520704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2067620756_
                                       _target2067320730_
                                       '()))
                                    (_g2064120693_ _g2064220697_))))
                            (_g2064120693_ _g2064220697_))))
                    (_g2064120693_ _g2064220697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2064120693_
                                                   _g2064220697_))
                                              (_g2064120693_ _g2064220697_))))
                                      (_g2064120693_ _g2064220697_))))
                              (_g2064120693_ _g2064220697_))))
                      (_g2064120693_ _g2064220697_))))
               (_g2063920890_
                (lambda (_g2064220826_)
                  (if (gx#stx-pair? _g2064220826_)
                      (let ((_e2064620829_ (gx#syntax-e _g2064220826_)))
                        (let ((_hd2064720833_ (##car _e2064620829_))
                              (_tl2064820836_ (##cdr _e2064620829_)))
                          (if (gx#stx-pair? _tl2064820836_)
                              (let ((_e2064920839_
                                     (gx#syntax-e _tl2064820836_)))
                                (let ((_hd2065020843_ (##car _e2064920839_))
                                      (_tl2065120846_ (##cdr _e2064920839_)))
                                  (if (gx#stx-pair? _tl2065120846_)
                                      (let ((_e2065220849_
                                             (gx#syntax-e _tl2065120846_)))
                                        (let ((_hd2065320853_
                                               (##car _e2065220849_))
                                              (_tl2065420856_
                                               (##cdr _e2065220849_)))
                                          (if (gx#stx-pair? _tl2065420856_)
                                              (let ((_e2065520859_
                                                     (gx#syntax-e
                                                      _tl2065420856_)))
                                                (let ((_hd2065620863_
                                                       (##car _e2065520859_))
                                                      (_tl2065720866_
                                                       (##cdr _e2065520859_)))
                                                  (if (gx#stx-null?
                                                       _tl2065720866_)
                                                      ((lambda (_L20869_
                                                                _L20871_
                                                                _L20872_)
                                                         (if (gx#identifier?
                                                              _L20871_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L20872_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L20871_ '()))
                                       (cons _L20869_ '()))))
                     (_g2064020822_ _g2064220826_)))
               _hd2065620863_
               _hd2065320853_
               _hd2065020843_)
              (_g2064020822_ _g2064220826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2064020822_ _g2064220826_))))
                                      (_g2064020822_ _g2064220826_))))
                              (_g2064020822_ _g2064220826_))))
                      (_g2064020822_ _g2064220826_)))))
          (_g2063920890_ _$stx20636_))))))
