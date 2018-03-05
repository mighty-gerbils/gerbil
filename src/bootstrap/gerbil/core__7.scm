(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g34812_|
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
      (lambda _$args19686_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args19686_)))
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
      (lambda _$args19682_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args19682_)))
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
      (lambda _$args19678_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args19678_)))
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
      (lambda _$args19674_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args19674_)))
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
      (lambda _$args19670_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args19670_)))
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
      (lambda _$args19666_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args19666_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1963819652_
             (lambda (_stx19640_ _is?19642_)
               (if (gx#identifier? _stx19640_)
                   (let ((_e1964319645_
                          (gx#syntax-local-value _stx19640_ false)))
                     (if _e1964319645_
                         (let ((_e19649_ _e1964319645_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e19649_)
                               (_is?19642_ _e19649_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g34798_
          (let ((_g34797_ (length _g34798_)))
            (cond ((fx= _g34797_ 1)
                   (apply (lambda (_stx19656_)
                            (let ((_is?19659_ true))
                              (_opt-lambda1963819652_ _stx19656_ _is?19659_)))
                          _g34798_))
                  ((fx= _g34797_ 2) (apply _opt-lambda1963819652_ _g34798_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g34798_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx19636_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19636_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx19633_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx19633_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id19627_)
        (if _id19627_
            (let ((_info19630_ (gx#syntax-local-value _id19627_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info19630_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info19630_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self19392_ _stx19394_)
        (let* ((_g1939619416_
                (lambda (_g1939719412_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1939719412_)))
               (_g1939519623_
                (lambda (_g1939719420_)
                  (if (gx#stx-pair? _g1939719420_)
                      (let ((_e1939919423_ (gx#syntax-e _g1939719420_)))
                        (let ((_hd1940019427_ (##car _e1939919423_))
                              (_tl1940119430_ (##cdr _e1939919423_)))
                          (if (gx#stx-pair/null? _tl1940119430_)
                              (if (fx>= (gx#stx-length _tl1940119430_) '0)
                                  (let ((_g34799_
                                         (gx#syntax-split-splice
                                          _tl1940119430_
                                          '0)))
                                    (begin
                                      (let ((_g34800_ (values-count _g34799_)))
                                        (if (not (fx= _g34800_ 2))
                                            (error "Context expects 2 values"
                                                   _g34800_)))
                                      (let ((_target1940219433_
                                             (values-ref _g34799_ 0))
                                            (_tl1940419436_
                                             (values-ref _g34799_ 1)))
                                        (if (gx#stx-null? _tl1940419436_)
                                            (letrec ((_loop1940519439_
                                                      (lambda (_hd1940319443_
                                                               _arg1940919446_)
                                                        (if (gx#stx-pair?
                                                             _hd1940319443_)
                                                            (let ((_e1940619449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1940319443_)))
                      (let ((_lp-hd1940719453_ (##car _e1940619449_))
                            (_lp-tl1940819456_ (##cdr _e1940619449_)))
                        (_loop1940519439_
                         _lp-tl1940819456_
                         (cons _lp-hd1940719453_ _arg1940919446_))))
                    (let ((_arg1941019459_ (reverse _arg1940919446_)))
                      ((lambda (_L19463_)
                         (let* ((_g1947919510_
                                 (lambda (_g1948019506_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1948019506_)))
                                (_g1947819619_
                                 (lambda (_g1948019514_)
                                   (if (gx#stx-pair? _g1948019514_)
                                       (let ((_e1948719517_
                                              (gx#syntax-e _g1948019514_)))
                                         (let ((_hd1948819521_
                                                (##car _e1948719517_))
                                               (_tl1948919524_
                                                (##cdr _e1948719517_)))
                                           (if (gx#stx-pair? _tl1948919524_)
                                               (let ((_e1949019527_
                                                      (gx#syntax-e
                                                       _tl1948919524_)))
                                                 (let ((_hd1949119531_
                                                        (##car _e1949019527_))
                                                       (_tl1949219534_
                                                        (##cdr _e1949019527_)))
                                                   (if (gx#stx-pair?
                                                        _tl1949219534_)
                                                       (let ((_e1949319537_
                                                              (gx#syntax-e
                                                               _tl1949219534_)))
                                                         (let ((_hd1949419541_
                                                                (##car _e1949319537_))
                                                               (_tl1949519544_
                                                                (##cdr _e1949319537_)))
                                                           (if (gx#stx-pair?
                                                                _tl1949519544_)
                                                               (let ((_e1949619547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1949519544_)))
                         (let ((_hd1949719551_ (##car _e1949619547_))
                               (_tl1949819554_ (##cdr _e1949619547_)))
                           (if (gx#stx-pair? _tl1949819554_)
                               (let ((_e1949919557_
                                      (gx#syntax-e _tl1949819554_)))
                                 (let ((_hd1950019561_ (##car _e1949919557_))
                                       (_tl1950119564_ (##cdr _e1949919557_)))
                                   (if (gx#stx-pair? _tl1950119564_)
                                       (let ((_e1950219567_
                                              (gx#syntax-e _tl1950119564_)))
                                         (let ((_hd1950319571_
                                                (##car _e1950219567_))
                                               (_tl1950419574_
                                                (##cdr _e1950219567_)))
                                           (if (gx#stx-null? _tl1950419574_)
                                               ((lambda (_L19577_
                                                         _L19579_
                                                         _L19580_
                                                         _L19581_
                                                         _L19582_
                                                         _L19583_)
                                                  (let ()
                                                    (cons _L19581_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1961019613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1961119616_)
                             (cons _g1961019613_ _g1961119616_))
                           '()
                           _L19463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1950319571_
                                                _hd1950019561_
                                                _hd1949719551_
                                                _hd1949419541_
                                                _hd1949119531_
                                                _hd1948819521_)
                                               (_g1947919510_ _g1948019514_))))
                                       (_g1947919510_ _g1948019514_))))
                               (_g1947919510_ _g1948019514_))))
                       (_g1947919510_ _g1948019514_))))
               (_g1947919510_ _g1948019514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1947919510_ _g1948019514_))))
                                       (_g1947919510_ _g1948019514_)))))
                           (_g1947819619_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self19392_))))
                       _arg1941019459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1940519439_
                                               _target1940219433_
                                               '()))
                                            (_g1939619416_ _g1939719420_)))))
                                  (_g1939619416_ _g1939719420_))
                              (_g1939619416_ _g1939719420_))))
                      (_g1939619416_ _g1939719420_)))))
          (_g1939519623_ _stx19394_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx19383_)
        (letrec ((_body-opt?19386_
                  (lambda (_key19389_)
                    (memq (gx#stx-e _key19389_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx19383_ _body-opt?19386_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx18211_
               _id18213_
               _super-ref18214_
               _els18215_
               _body18216_
               _struct?18217_)
        (letrec* ((_wrap18219_
                   (lambda (_e-stx19380_)
                     (gx#stx-wrap-source
                      _e-stx19380_
                      (gx#stx-source _stx18211_))))
                  (_make-id18221_
                   (if (uninterned-symbol? (gx#stx-e _id18213_))
                       (lambda _g34801_ (gx#genident _id18213_))
                       (lambda _args19377_
                         (apply gx#stx-identifier _id18213_ _args19377_)))))
          (begin
            (gx#check-duplicate-identifiers _els18215_ _stx18211_)
            (let* ((_name18223_ (symbol->string (gx#stx-e _id18213_)))
                   (_super18226_
                    (if _struct?18217_
                        (if _super-ref18214_
                            (gx#syntax-local-value _super-ref18214_)
                            '#f)
                        (map gx#syntax-local-value _super-ref18214_)))
                   (_g1822918237_
                    (lambda (_g1823018233_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1823018233_)))
                   (_g1822819371_
                    (lambda (_g1823018241_)
                      ((lambda (_L18244_)
                         (let ()
                           (let* ((_g1826018268_
                                   (lambda (_g1826118264_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1826118264_)))
                                  (_g1825919367_
                                   (lambda (_g1826118272_)
                                     ((lambda (_L18275_)
                                        (let ()
                                          (let* ((_g1828818296_
                                                  (lambda (_g1828918292_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1828918292_)))
                                                 (_g1828719363_
                                                  (lambda (_g1828918300_)
                                                    ((lambda (_L18303_)
                                                       (let ()
                                                         (let* ((_g1831618324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1831718320_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1831718320_)))
                        (_g1831519359_
                         (lambda (_g1831718328_)
                           ((lambda (_L18331_)
                              (let ()
                                (let* ((_g1834418352_
                                        (lambda (_g1834518348_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1834518348_)))
                                       (_g1834319355_
                                        (lambda (_g1834518356_)
                                          ((lambda (_L18359_)
                                             (let ()
                                               (let* ((_g1837218380_
                                                       (lambda (_g1837318376_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1837318376_)))
                                                      (_g1837119351_
                                                       (lambda (_g1837318384_)
                                                         ((lambda (_L18387_)
                                                            (let ()
                                                              (let* ((_g1840018417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1840118413_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1840118413_)))
                             (_g1839919347_
                              (lambda (_g1840118421_)
                                (if (gx#stx-pair/null? _g1840118421_)
                                    (if (fx>= (gx#stx-length _g1840118421_) '0)
                                        (let ((_g34802_
                                               (gx#syntax-split-splice
                                                _g1840118421_
                                                '0)))
                                          (begin
                                            (let ((_g34803_
                                                   (values-count _g34802_)))
                                              (if (not (fx= _g34803_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34803_)))
                                            (let ((_target1840318424_
                                                   (values-ref _g34802_ 0))
                                                  (_tl1840518427_
                                                   (values-ref _g34802_ 1)))
                                              (if (gx#stx-null? _tl1840518427_)
                                                  (letrec ((_loop1840618430_
                                                            (lambda (_hd1840418434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1841018437_)
                      (if (gx#stx-pair? _hd1840418434_)
                          (let ((_e1840718440_ (gx#syntax-e _hd1840418434_)))
                            (let ((_lp-hd1840818444_ (##car _e1840718440_))
                                  (_lp-tl1840918447_ (##cdr _e1840718440_)))
                              (_loop1840618430_
                               _lp-tl1840918447_
                               (cons _lp-hd1840818444_ _attr1841018437_))))
                          (let ((_attr1841118450_ (reverse _attr1841018437_)))
                            ((lambda (_L18454_)
                               (let ()
                                 (let* ((_g1847118488_
                                         (lambda (_g1847218484_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1847218484_)))
                                        (_g1847019338_
                                         (lambda (_g1847218492_)
                                           (if (gx#stx-pair/null?
                                                _g1847218492_)
                                               (if (fx>= (gx#stx-length
                                                          _g1847218492_)
                                                         '0)
                                                   (let ((_g34804_
                                                          (gx#syntax-split-splice
                                                           _g1847218492_
                                                           '0)))
                                                     (begin
                                                       (let ((_g34805_
                                                              (values-count
                                                               _g34804_)))
                                                         (if (not (fx= _g34805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g34805_)))
               (let ((_target1847418495_ (values-ref _g34804_ 0))
                     (_tl1847618498_ (values-ref _g34804_ 1)))
                 (if (gx#stx-null? _tl1847618498_)
                     (letrec ((_loop1847718501_
                               (lambda (_hd1847518505_ _getf1848118508_)
                                 (if (gx#stx-pair? _hd1847518505_)
                                     (let ((_e1847818511_
                                            (gx#syntax-e _hd1847518505_)))
                                       (let ((_lp-hd1847918515_
                                              (##car _e1847818511_))
                                             (_lp-tl1848018518_
                                              (##cdr _e1847818511_)))
                                         (_loop1847718501_
                                          _lp-tl1848018518_
                                          (cons _lp-hd1847918515_
                                                _getf1848118508_))))
                                     (let ((_getf1848218521_
                                            (reverse _getf1848118508_)))
                                       ((lambda (_L18525_)
                                          (let ()
                                            (let* ((_g1854218559_
                                                    (lambda (_g1854318555_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1854318555_)))
                                                   (_g1854119329_
                                                    (lambda (_g1854318563_)
                                                      (if (gx#stx-pair/null?
                                                           _g1854318563_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1854318563_)
                            '0)
                      (let ((_g34806_
                             (gx#syntax-split-splice _g1854318563_ '0)))
                        (begin
                          (let ((_g34807_ (values-count _g34806_)))
                            (if (not (fx= _g34807_ 2))
                                (error "Context expects 2 values" _g34807_)))
                          (let ((_target1854518566_ (values-ref _g34806_ 0))
                                (_tl1854718569_ (values-ref _g34806_ 1)))
                            (if (gx#stx-null? _tl1854718569_)
                                (letrec ((_loop1854818572_
                                          (lambda (_hd1854618576_
                                                   _setf1855218579_)
                                            (if (gx#stx-pair? _hd1854618576_)
                                                (let ((_e1854918582_
                                                       (gx#syntax-e
                                                        _hd1854618576_)))
                                                  (let ((_lp-hd1855018586_
                                                         (##car _e1854918582_))
                                                        (_lp-tl1855118589_
                                                         (##cdr _e1854918582_)))
                                                    (_loop1854818572_
                                                     _lp-tl1855118589_
                                                     (cons _lp-hd1855018586_
                                                           _setf1855218579_))))
                                                (let ((_setf1855318592_
                                                       (reverse _setf1855218579_)))
                                                  ((lambda (_L18596_)
                                                     (let ()
                                                       (let* ((_type-attr18641_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els18215_)
                           '()
                           (if _struct?18217_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18596_
                                              _L18525_
                                              _L18454_)
                                             (foldr (lambda (_g1861218617_
                                                             _g1861318620_
                                                             _g1861418622_
                                                             _g1861518624_)
                                                      (cons (cons _g1861418622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1861318620_ (cons _g1861218617_ '())))
                    _g1861518624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18596_
                                                    _L18525_
                                                    _L18454_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L18596_
                                              _L18525_
                                              _L18454_)
                                             (foldr (lambda (_g1862618631_
                                                             _g1862718634_
                                                             _g1862818636_
                                                             _g1862918638_)
                                                      (cons (cons _g1862818636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1862718634_ (cons _g1862618631_ '())))
                    _g1862918638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L18596_
                                                    _L18525_
                                                    _L18454_))
                                           '())))))
                      (_type-name18648_
                       (cons 'name:
                             (cons (let ((_$e18644_
                                          (gx#stx-getq 'name: _body18216_)))
                                     (if _$e18644_ _$e18644_ _id18213_))
                                   '())))
                      (_type-id18663_
                       (let ((_$e18659_
                              (let ((_e1865018652_
                                     (gx#stx-getq 'id: _body18216_)))
                                (if _e1865018652_
                                    (let ((_e18656_ _e1865018652_))
                                      (cons 'id: (cons _e18656_ '())))
                                    '#f))))
                         (if _$e18659_ _$e18659_ '())))
                      (_type-ctor18678_
                       (let ((_$e18674_
                              (let ((_e1866518667_
                                     (gx#stx-getq 'constructor: _body18216_)))
                                (if _e1866518667_
                                    (let ((_e18671_ _e1866518667_))
                                      (cons 'constructor: (cons _e18671_ '())))
                                    '#f))))
                         (if _$e18674_ _$e18674_ '())))
                      (_plist18722_
                       (let* ((_plist18685_
                               (let ((_$e18681_
                                      (gx#stx-getq 'plist: _body18216_)))
                                 (if _$e18681_ _$e18681_ '())))
                              (_plist18688_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body18216_))
                                   (cons (cons 'transparent: '#t) _plist18685_)
                                   _plist18685_))
                              (_plist18691_
                               (if (gx#stx-e (gx#stx-getq 'final: _body18216_))
                                   (cons (cons 'final: '#t) _plist18688_)
                                   _plist18688_))
                              (_plist18704_
                               (let ((_$e18694_
                                      (gx#stx-e
                                       (gx#stx-getq 'print: _body18216_))))
                                 (if _$e18694_
                                     ((lambda (_print18698_)
                                        (let ((_print18701_
                                               (if (eq? _print18698_ '#t)
                                                   _els18215_
                                                   _print18698_)))
                                          (cons (cons 'print: _print18701_)
                                                _plist18691_)))
                                      _$e18694_)
                                     _plist18691_)))
                              (_plist18717_
                               (let ((_$e18707_
                                      (gx#stx-e
                                       (gx#stx-getq 'equal: _body18216_))))
                                 (if _$e18707_
                                     ((lambda (_equal18711_)
                                        (let ((_equal18714_
                                               (if (eq? _equal18711_ '#t)
                                                   _els18215_
                                                   _equal18711_)))
                                          (cons (cons 'equal: _equal18714_)
                                                _plist18704_)))
                                      _$e18707_)
                                     _plist18704_))))
                         _plist18717_))
                      (_type-plist18762_
                       (if (null? _plist18722_)
                           _plist18722_
                           (let* ((_g1872518733_
                                   (lambda (_g1872618729_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1872618729_)))
                                  (_g1872418758_
                                   (lambda (_g1872618737_)
                                     ((lambda (_L18740_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L18740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1872618737_))))
                             (_g1872418758_ _plist18722_))))
                      (_type-unchecked18777_
                       (let ((_$e18773_
                              (let ((_e1876418766_
                                     (gx#stx-getq 'unchecked: _body18216_)))
                                (if _e1876418766_
                                    (let ((_e18770_ _e1876418766_))
                                      (cons 'unchecked: (cons _e18770_ '())))
                                    '#f))))
                         (if _$e18773_ _$e18773_ '())))
                      (_g1878018797_
                       (lambda (_g1878118793_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1878118793_)))
                      (_g1877919325_
                       (lambda (_g1878118801_)
                         (if (gx#stx-pair/null? _g1878118801_)
                             (if (fx>= (gx#stx-length _g1878118801_) '0)
                                 (let ((_g34808_
                                        (gx#syntax-split-splice
                                         _g1878118801_
                                         '0)))
                                   (begin
                                     (let ((_g34809_ (values-count _g34808_)))
                                       (if (not (fx= _g34809_ 2))
                                           (error "Context expects 2 values"
                                                  _g34809_)))
                                     (let ((_target1878318804_
                                            (values-ref _g34808_ 0))
                                           (_tl1878518807_
                                            (values-ref _g34808_ 1)))
                                       (if (gx#stx-null? _tl1878518807_)
                                           (letrec ((_loop1878618810_
                                                     (lambda (_hd1878418814_
                                                              _type-body1879018817_)
                                                       (if (gx#stx-pair?
                                                            _hd1878418814_)
                                                           (let ((_e1878718820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1878418814_)))
                     (let ((_lp-hd1878818824_ (##car _e1878718820_))
                           (_lp-tl1878918827_ (##cdr _e1878718820_)))
                       (_loop1878618810_
                        _lp-tl1878918827_
                        (cons _lp-hd1878818824_ _type-body1879018817_))))
                   (let ((_type-body1879118830_
                          (reverse _type-body1879018817_)))
                     ((lambda (_L18834_)
                        (let ()
                          (let* ((_g1885118859_
                                  (lambda (_g1885218855_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1885218855_)))
                                 (_g1885019313_
                                  (lambda (_g1885218863_)
                                    ((lambda (_L18866_)
                                       (let ()
                                         (let* ((_g1887918887_
                                                 (lambda (_g1888018883_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1888018883_)))
                                                (_g1887819309_
                                                 (lambda (_g1888018891_)
                                                   ((lambda (_L18894_)
                                                      (let ()
                                                        (let* ((_g1890718915_
                                                                (lambda (_g1890818911_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1890818911_)))
                       (_g1890619223_
                        (lambda (_g1890818919_)
                          ((lambda (_L18922_)
                             (let ()
                               (let* ((_g1893518943_
                                       (lambda (_g1893618939_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1893618939_)))
                                      (_g1893419219_
                                       (lambda (_g1893618947_)
                                         ((lambda (_L18950_)
                                            (let ()
                                              (let* ((_g1896318971_
                                                      (lambda (_g1896418967_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1896418967_)))
                                                     (_g1896219215_
                                                      (lambda (_g1896418975_)
                                                        ((lambda (_L18978_)
                                                           (let ()
                                                             (let* ((_g1899118999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1899218995_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1899218995_)))
                            (_g1899019173_
                             (lambda (_g1899219003_)
                               ((lambda (_L19006_)
                                  (let ()
                                    (let* ((_g1901919027_
                                            (lambda (_g1902019023_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1902019023_)))
                                           (_g1901819169_
                                            (lambda (_g1902019031_)
                                              ((lambda (_L19034_)
                                                 (let ()
                                                   (let* ((_g1904719055_
                                                           (lambda (_g1904819051_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1904819051_)))
                                                          (_g1904619165_
                                                           (lambda (_g1904819059_)
                                                             ((lambda (_L19062_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1907519083_
                                  (lambda (_g1907619079_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1907619079_)))
                                 (_g1907419161_
                                  (lambda (_g1907619087_)
                                    ((lambda (_L19090_)
                                       (let ()
                                         (let* ((_g1910319111_
                                                 (lambda (_g1910419107_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1910419107_)))
                                                (_g1910219133_
                                                 (lambda (_g1910419115_)
                                                   ((lambda (_L19118_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap18219_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L18866_ (cons _L19118_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1910419115_))))
                                           (_g1910219133_
                                            (_wrap18219_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L18275_
                                                         (cons (cons _L18894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L18303_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L18922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L18303_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L18331_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L18359_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1913619143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1913719146_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1913619143_ '()))
                                _g1913719146_))
                        '()
                        _L18525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1913819149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1913919152_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1913819149_ '()))
                                      _g1913919152_))
                              '()
                              _L18596_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L18950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L18978_ '()))
                                     (cons _L19006_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L19034_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L19062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L19090_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1914019155_
                                                         _g1914119158_)
                                                  (cons _g1914019155_
                                                        _g1914119158_))
                                                '()
                                                _L18454_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1907619087_))))
                            (_g1907419161_ _plist18722_))))
                      _g1904819059_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1904619165_
                                                      (if (not (null? _type-ctor18678_))
                                                          (cadr _type-ctor18678_)
                                                          '#f)))))
                                               _g1902019031_))))
                                      (_g1901819169_
                                       (cadr _type-name18648_)))))
                                _g1899219003_))))
                       (_g1899019173_
                        (let ((_quote-e19212_
                               (lambda (_x-ref19177_)
                                 (if _x-ref19177_
                                     (let* ((_g1918019188_
                                             (lambda (_g1918119184_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1918119184_)))
                                            (_g1917919208_
                                             (lambda (_g1918119192_)
                                               ((lambda (_L19195_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L19195_
                                                                '()))))
                                                _g1918119192_))))
                                       (_g1917919208_ _x-ref19177_))
                                     '#f))))
                          (if _struct?18217_
                              (_quote-e19212_ _super-ref18214_)
                              (cons 'list
                                    (map _quote-e19212_
                                         _super-ref18214_))))))))
                 _g1896418975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1896219215_
                                                 (if (not (null? _type-id18663_))
                                                     (cadr _type-id18663_)
                                                     '#f)))))
                                          _g1893618947_))))
                                 (_g1893419219_
                                  (if _struct?18217_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1890818919_))))
                  (_g1890619223_
                   (if _struct?18217_
                       (if _super18226_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L18387_ '()))
                           '#f)
                       (let* ((_g1922719244_
                               (lambda (_g1922819240_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1922819240_)))
                              (_g1922619305_
                               (lambda (_g1922819248_)
                                 (if (gx#stx-pair/null? _g1922819248_)
                                     (if (fx>= (gx#stx-length _g1922819248_)
                                               '0)
                                         (let ((_g34810_
                                                (gx#syntax-split-splice
                                                 _g1922819248_
                                                 '0)))
                                           (begin
                                             (let ((_g34811_
                                                    (values-count _g34810_)))
                                               (if (not (fx= _g34811_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34811_)))
                                             (let ((_target1923019251_
                                                    (values-ref _g34810_ 0))
                                                   (_tl1923219254_
                                                    (values-ref _g34810_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1923219254_)
                                                   (letrec ((_loop1923319257_
                                                             (lambda (_hd1923119261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1923719264_)
                       (if (gx#stx-pair? _hd1923119261_)
                           (let ((_e1923419267_ (gx#syntax-e _hd1923119261_)))
                             (let ((_lp-hd1923519271_ (##car _e1923419267_))
                                   (_lp-tl1923619274_ (##cdr _e1923419267_)))
                               (_loop1923319257_
                                _lp-tl1923619274_
                                (cons _lp-hd1923519271_
                                      _super-id1923719264_))))
                           (let ((_super-id1923819277_
                                  (reverse _super-id1923719264_)))
                             ((lambda (_L19281_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1929619299_
                                                          _g1929719302_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1929619299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1929719302_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L19281_)))))
                              _super-id1923819277_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1923319257_
                                                      _target1923019251_
                                                      '()))
                                                   (_g1922719244_
                                                    _g1922819248_)))))
                                         (_g1922719244_ _g1922819248_))
                                     (_g1922719244_ _g1922819248_)))))
                         (_g1922619305_ _L18387_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1888018891_))))
                                           (_g1887819309_
                                            (if _struct?18217_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1885218863_))))
                            (_g1885019313_
                             (_wrap18219_
                              (cons _L18244_
                                    (cons _L18303_
                                          (cons _L18387_
                                                (cons _L18331_
                                                      (cons _L18359_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1931619319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1931719322_)
                               (cons _g1931619319_ _g1931719322_))
                             '()
                             _L18834_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1879118830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1878618810_
                                              _target1878318804_
                                              '()))
                                           (_g1878018797_ _g1878118801_)))))
                                 (_g1878018797_ _g1878118801_))
                             (_g1878018797_ _g1878118801_)))))
                 (_g1877919325_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked18777_
                                                     _type-plist18762_)
                                              _type-ctor18678_)
                                       _type-name18648_)
                                _type-id18663_)
                         _type-attr18641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1855318592_))))))
                                  (_loop1854818572_ _target1854518566_ '()))
                                (_g1854218559_ _g1854318563_)))))
                      (_g1854218559_ _g1854318563_))
                  (_g1854218559_ _g1854318563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1854119329_
                                               (gx#stx-map
                                                (lambda (_g1933219334_)
                                                  (_make-id18221_
                                                   _name18223_
                                                   '"-"
                                                   _g1933219334_
                                                   '"-set!"))
                                                _els18215_)))))
                                        _getf1848218521_))))))
                       (_loop1847718501_ _target1847418495_ '()))
                     (_g1847118488_ _g1847218492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1847118488_
                                                    _g1847218492_))
                                               (_g1847118488_
                                                _g1847218492_)))))
                                   (_g1847019338_
                                    (gx#stx-map
                                     (lambda (_g1934119343_)
                                       (_make-id18221_
                                        _name18223_
                                        '"-"
                                        _g1934119343_))
                                     _els18215_)))))
                             _attr1841118450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1840618430_
                                                     _target1840318424_
                                                     '()))
                                                  (_g1840018417_
                                                   _g1840118421_)))))
                                        (_g1840018417_ _g1840118421_))
                                    (_g1840018417_ _g1840118421_)))))
                        (_g1839919347_ _els18215_))))
                  _g1837318384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1837119351_
                                                  (if _struct?18217_
                                                      (if _super18226_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18226_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super18226_))))))
                                           _g1834518356_))))
                                  (_g1834319355_
                                   (_make-id18221_ _name18223_ '"?")))))
                            _g1831718328_))))
                   (_g1831519359_ (_make-id18221_ '"make-" _name18223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1828918300_))))
                                            (_g1828719363_
                                             (_make-id18221_
                                              _name18223_
                                              '"::t")))))
                                      _g1826118272_))))
                             (_g1825919367_ _id18213_))))
                       _g1823018241_))))
              (_g1822819371_
               (if _struct?18217_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx19699_)
        (letrec ((_generate19702_
                  (lambda (_hd19786_ _fields19788_ _body19789_)
                    (let* ((_g1979219807_
                            (lambda (_g1979319803_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1979319803_)))
                           (_g1979119818_
                            (lambda (_g1979319811_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19786_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19699_
                                      _hd19786_
                                      '#f
                                      _fields19788_
                                      _body19789_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19699_
                                      _hd19786_))))))
                           (_g1979019862_
                            (lambda (_g1979319822_)
                              (if (gx#stx-pair? _g1979319822_)
                                  (let ((_e1979619825_
                                         (gx#syntax-e _g1979319822_)))
                                    (let ((_hd1979719829_
                                           (##car _e1979619825_))
                                          (_tl1979819832_
                                           (##cdr _e1979619825_)))
                                      (if (gx#stx-pair? _tl1979819832_)
                                          (let ((_e1979919835_
                                                 (gx#syntax-e _tl1979819832_)))
                                            (let ((_hd1980019839_
                                                   (##car _e1979919835_))
                                                  (_tl1980119842_
                                                   (##cdr _e1979919835_)))
                                              (if (gx#stx-null? _tl1980119842_)
                                                  ((lambda (_L19845_ _L19847_)
                                                     (if (if (gx#identifier?
                                                              _L19847_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L19845_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx19699_
                                                          _L19847_
                                                          _L19845_
                                                          _fields19788_
                                                          _body19789_
                                                          '#t)
                                                         (_g1979119818_
                                                          _g1979319822_)))
                                                   _hd1980019839_
                                                   _hd1979719829_)
                                                  (_g1979119818_
                                                   _g1979319822_))))
                                          (_g1979119818_ _g1979319822_))))
                                  (_g1979119818_ _g1979319822_)))))
                      (_g1979019862_ _hd19786_)))))
          (let* ((_g1970519724_
                  (lambda (_g1970619720_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1970619720_)))
                 (_g1970419782_
                  (lambda (_g1970619728_)
                    (if (gx#stx-pair? _g1970619728_)
                        (let ((_e1971019731_ (gx#syntax-e _g1970619728_)))
                          (let ((_hd1971119735_ (##car _e1971019731_))
                                (_tl1971219738_ (##cdr _e1971019731_)))
                            (if (gx#stx-pair? _tl1971219738_)
                                (let ((_e1971319741_
                                       (gx#syntax-e _tl1971219738_)))
                                  (let ((_hd1971419745_ (##car _e1971319741_))
                                        (_tl1971519748_ (##cdr _e1971319741_)))
                                    (if (gx#stx-pair? _tl1971519748_)
                                        (let ((_e1971619751_
                                               (gx#syntax-e _tl1971519748_)))
                                          (let ((_hd1971719755_
                                                 (##car _e1971619751_))
                                                (_tl1971819758_
                                                 (##cdr _e1971619751_)))
                                            ((lambda (_L19761_
                                                      _L19763_
                                                      _L19764_)
                                               (if (if (gx#identifier-list?
                                                        _L19763_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19761_)
                                                       '#f)
                                                   (_generate19702_
                                                    _L19764_
                                                    _L19763_
                                                    _L19761_)
                                                   (_g1970519724_
                                                    _g1970619728_)))
                                             _tl1971819758_
                                             _hd1971719755_
                                             _hd1971419745_)))
                                        (_g1970519724_ _g1970619728_))))
                                (_g1970519724_ _g1970619728_))))
                        (_g1970519724_ _g1970619728_)))))
            (_g1970419782_ _stx19699_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx19866_)
        (letrec ((_generate19869_
                  (lambda (_hd19953_ _slots19955_ _body19956_)
                    (let* ((_g1995919971_
                            (lambda (_g1996019967_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1996019967_)))
                           (_g1995819982_
                            (lambda (_g1996019975_)
                              ((lambda ()
                                 (if (gx#identifier? _hd19953_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx19866_
                                      _hd19953_
                                      '()
                                      _slots19955_
                                      _body19956_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx19866_
                                      _hd19953_))))))
                           (_g1995720014_
                            (lambda (_g1996019986_)
                              (if (gx#stx-pair? _g1996019986_)
                                  (let ((_e1996319989_
                                         (gx#syntax-e _g1996019986_)))
                                    (let ((_hd1996419993_
                                           (##car _e1996319989_))
                                          (_tl1996519996_
                                           (##cdr _e1996319989_)))
                                      ((lambda (_L19999_ _L20001_)
                                         (if (if (gx#stx-list? _L19999_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L19999_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx19866_
                                              _L20001_
                                              (gx#syntax->list _L19999_)
                                              _slots19955_
                                              _body19956_
                                              '#f)
                                             (_g1995819982_ _g1996019986_)))
                                       _tl1996519996_
                                       _hd1996419993_)))
                                  (_g1995819982_ _g1996019986_)))))
                      (_g1995720014_ _hd19953_)))))
          (let* ((_g1987219891_
                  (lambda (_g1987319887_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1987319887_)))
                 (_g1987119949_
                  (lambda (_g1987319895_)
                    (if (gx#stx-pair? _g1987319895_)
                        (let ((_e1987719898_ (gx#syntax-e _g1987319895_)))
                          (let ((_hd1987819902_ (##car _e1987719898_))
                                (_tl1987919905_ (##cdr _e1987719898_)))
                            (if (gx#stx-pair? _tl1987919905_)
                                (let ((_e1988019908_
                                       (gx#syntax-e _tl1987919905_)))
                                  (let ((_hd1988119912_ (##car _e1988019908_))
                                        (_tl1988219915_ (##cdr _e1988019908_)))
                                    (if (gx#stx-pair? _tl1988219915_)
                                        (let ((_e1988319918_
                                               (gx#syntax-e _tl1988219915_)))
                                          (let ((_hd1988419922_
                                                 (##car _e1988319918_))
                                                (_tl1988519925_
                                                 (##cdr _e1988319918_)))
                                            ((lambda (_L19928_
                                                      _L19930_
                                                      _L19931_)
                                               (if (if (gx#identifier-list?
                                                        _L19930_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L19928_)
                                                       '#f)
                                                   (_generate19869_
                                                    _L19931_
                                                    _L19930_
                                                    _L19928_)
                                                   (_g1987219891_
                                                    _g1987319895_)))
                                             _tl1988519925_
                                             _hd1988419922_
                                             _hd1988119912_)))
                                        (_g1987219891_ _g1987319895_))))
                                (_g1987219891_ _g1987319895_))))
                        (_g1987219891_ _g1987319895_)))))
            (_g1987119949_ _stx19866_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx20018_)
        (letrec ((_wrap20021_
                  (lambda (_e-stx20358_)
                    (gx#stx-wrap-source
                     _e-stx20358_
                     (gx#stx-source _stx20018_))))
                 (_method-opt?20023_
                  (lambda (_x20355_) (memq (gx#stx-e _x20355_) '(rebind:)))))
          (let* ((_g2002520054_
                  (lambda (_g2002620050_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2002620050_)))
                 (_g2002420351_
                  (lambda (_g2002620058_)
                    (if (gx#stx-pair? _g2002620058_)
                        (let ((_e2003120061_ (gx#syntax-e _g2002620058_)))
                          (let ((_hd2003220065_ (##car _e2003120061_))
                                (_tl2003320068_ (##cdr _e2003120061_)))
                            (if (gx#stx-pair? _tl2003320068_)
                                (let ((_e2003420071_
                                       (gx#syntax-e _tl2003320068_)))
                                  (let ((_hd2003520075_ (##car _e2003420071_))
                                        (_tl2003620078_ (##cdr _e2003420071_)))
                                    (if (gx#stx-pair? _hd2003520075_)
                                        (let ((_e2003720081_
                                               (gx#syntax-e _hd2003520075_)))
                                          (let ((_hd2003820085_
                                                 (##car _e2003720081_))
                                                (_tl2003920088_
                                                 (##cdr _e2003720081_)))
                                            (if (gx#identifier? _hd2003820085_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g34812_|
                                                     _hd2003820085_)
                                                    (if (gx#stx-pair?
                                                         _tl2003920088_)
                                                        (let ((_e2004020091_
                                                               (gx#syntax-e
                                                                _tl2003920088_)))
                                                          (let ((_hd2004120095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2004020091_))
                        (_tl2004220098_ (##cdr _e2004020091_)))
                    (if (gx#stx-pair? _tl2004220098_)
                        (let ((_e2004320101_ (gx#syntax-e _tl2004220098_)))
                          (let ((_hd2004420105_ (##car _e2004320101_))
                                (_tl2004520108_ (##cdr _e2004320101_)))
                            (if (gx#stx-null? _tl2004520108_)
                                (if (gx#stx-pair? _tl2003620078_)
                                    (let ((_e2004620111_
                                           (gx#syntax-e _tl2003620078_)))
                                      (let ((_hd2004720115_
                                             (##car _e2004620111_))
                                            (_tl2004820118_
                                             (##cdr _e2004620111_)))
                                        ((lambda (_L20121_
                                                  _L20123_
                                                  _L20124_
                                                  _L20125_)
                                           (if (if (gx#identifier? _L20125_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L20124_)
                                                       (gx#stx-plist?
                                                        _L20121_
                                                        _method-opt?20023_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass20150_
                                                       (gx#syntax-local-value
                                                        _L20124_))
                                                      (_rebind?20153_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L20121_))
                                                           '#t
                                                           '#f))
                                                      (_g2015620164_
                                                       (lambda (_g2015720160_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2015720160_)))
                                                      (_g2015520347_
                                                       (lambda (_g2015720168_)
                                                         ((lambda (_L20171_)
                                                            (let ()
                                                              (let* ((_g2018520193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2018620189_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2018620189_)))
                             (_g2018420343_
                              (lambda (_g2018620197_)
                                ((lambda (_L20200_)
                                   (let ()
                                     (let* ((_g2021320221_
                                             (lambda (_g2021420217_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2021420217_)))
                                            (_g2021220339_
                                             (lambda (_g2021420225_)
                                               ((lambda (_L20228_)
                                                  (let ()
                                                    (let* ((_g2024120249_
                                                            (lambda (_g2024220245_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2024220245_)))
                                                           (_g2024020335_
                                                            (lambda (_g2024220253_)
                                                              ((lambda (_L20256_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2026920277_
                                   (lambda (_g2027020273_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2027020273_)))
                                  (_g2026820331_
                                   (lambda (_g2027020281_)
                                     ((lambda (_L20284_)
                                        (let ()
                                          (let* ((_g2029720305_
                                                  (lambda (_g2029820301_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2029820301_)))
                                                 (_g2029620327_
                                                  (lambda (_g2029820309_)
                                                    ((lambda (_L20312_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap20021_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L20256_ (cons _L20312_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2029820309_))))
                                            (_g2029620327_
                                             (_wrap20021_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'bind-method!)
                                                    (cons _L20171_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L20125_ '()))
                        (cons _L20200_ (cons _L20284_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2027020281_))))
                             (_g2026820331_ _rebind?20153_))))
                       _g2024220253_))))
              (_g2024020335_
               (_wrap20021_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _L20200_
                            (cons (cons (gx#datum->syntax '#f 'let-syntax)
                                        (cons (cons (cons _L20228_
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
                                                            (cons _L20171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'obj)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L20125_ '()))
                                      (cons (gx#datum->syntax '#f 'arg)
                                            (cons (gx#datum->syntax '#f '...)
                                                  '()))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons _L20123_ '())))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2021420225_))))
                                       (_g2021220339_
                                        (gx#stx-identifier
                                         _L20125_
                                         '@next-method)))))
                                 _g2018620197_))))
                        (_g2018420343_
                         (gx#stx-identifier
                          _L20125_
                          _L20124_
                          '"::"
                          _L20125_)))))
                  _g2015720168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2015520347_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass20150_)))
                                               (if (not (gx#identifier?
                                                         _L20125_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx20018_
                                                    _L20125_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L20124_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx20018_
                                                        _L20124_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx20018_)))))
                                         _tl2004820118_
                                         _hd2004720115_
                                         _hd2004420105_
                                         _hd2004120095_)))
                                    (_g2002520054_ _g2002620058_))
                                (_g2002520054_ _g2002620058_))))
                        (_g2002520054_ _g2002620058_))))
                (_g2002520054_ _g2002620058_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2002520054_
                                                     _g2002620058_))
                                                (_g2002520054_
                                                 _g2002620058_))))
                                        (_g2002520054_ _g2002620058_))))
                                (_g2002520054_ _g2002620058_))))
                        (_g2002520054_ _g2002620058_)))))
            (_g2002420351_ _stx20018_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx20361_)
        (let* ((_g2036620415_
                (lambda (_g2036720411_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2036720411_)))
               (_g2036520514_
                (lambda (_g2036720419_)
                  (if (gx#stx-pair? _g2036720419_)
                      (let ((_e2039220422_ (gx#syntax-e _g2036720419_)))
                        (let ((_hd2039320426_ (##car _e2039220422_))
                              (_tl2039420429_ (##cdr _e2039220422_)))
                          (if (gx#stx-pair? _tl2039420429_)
                              (let ((_e2039520432_
                                     (gx#syntax-e _tl2039420429_)))
                                (let ((_hd2039620436_ (##car _e2039520432_))
                                      (_tl2039720439_ (##cdr _e2039520432_)))
                                  (if (gx#stx-pair? _tl2039720439_)
                                      (let ((_e2039820442_
                                             (gx#syntax-e _tl2039720439_)))
                                        (let ((_hd2039920446_
                                               (##car _e2039820442_))
                                              (_tl2040020449_
                                               (##cdr _e2039820442_)))
                                          (if (gx#stx-pair/null?
                                               _tl2040020449_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2040020449_)
                                                        '0)
                                                  (let ((_g34813_
                                                         (gx#syntax-split-splice
                                                          _tl2040020449_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34814_
                                                             (values-count
                                                              _g34813_)))
                                                        (if (not (fx= _g34814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34814_)))
              (let ((_target2040120452_ (values-ref _g34813_ 0))
                    (_tl2040320455_ (values-ref _g34813_ 1)))
                (if (gx#stx-null? _tl2040320455_)
                    (letrec ((_loop2040420458_
                              (lambda (_hd2040220462_ _arg2040820465_)
                                (if (gx#stx-pair? _hd2040220462_)
                                    (let ((_e2040520468_
                                           (gx#syntax-e _hd2040220462_)))
                                      (let ((_lp-hd2040620472_
                                             (##car _e2040520468_))
                                            (_lp-tl2040720475_
                                             (##cdr _e2040520468_)))
                                        (_loop2040420458_
                                         _lp-tl2040720475_
                                         (cons _lp-hd2040620472_
                                               _arg2040820465_))))
                                    (let ((_arg2040920478_
                                           (reverse _arg2040820465_)))
                                      ((lambda (_L20482_ _L20484_ _L20485_)
                                         (if (gx#identifier? _L20485_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L20484_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L20485_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g2050520508_ _g2050620511_)
                                  (cons _g2050520508_ _g2050620511_))
                                '()
                                _L20482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2036620415_ _g2036720419_)))
                                       _arg2040920478_
                                       _hd2039920446_
                                       _hd2039620436_))))))
                      (_loop2040420458_ _target2040120452_ '()))
                    (_g2036620415_ _g2036720419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2036620415_
                                                   _g2036720419_))
                                              (_g2036620415_ _g2036720419_))))
                                      (_g2036620415_ _g2036720419_))))
                              (_g2036620415_ _g2036720419_))))
                      (_g2036620415_ _g2036720419_))))
               (_g2036420620_
                (lambda (_g2036720518_)
                  (if (gx#stx-pair? _g2036720518_)
                      (let ((_e2037120521_ (gx#syntax-e _g2036720518_)))
                        (let ((_hd2037220525_ (##car _e2037120521_))
                              (_tl2037320528_ (##cdr _e2037120521_)))
                          (if (gx#stx-pair? _tl2037320528_)
                              (let ((_e2037420531_
                                     (gx#syntax-e _tl2037320528_)))
                                (let ((_hd2037520535_ (##car _e2037420531_))
                                      (_tl2037620538_ (##cdr _e2037420531_)))
                                  (if (gx#stx-pair? _tl2037620538_)
                                      (let ((_e2037720541_
                                             (gx#syntax-e _tl2037620538_)))
                                        (let ((_hd2037820545_
                                               (##car _e2037720541_))
                                              (_tl2037920548_
                                               (##cdr _e2037720541_)))
                                          (if (gx#stx-pair/null?
                                               _tl2037920548_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2037920548_)
                                                        '0)
                                                  (let ((_g34815_
                                                         (gx#syntax-split-splice
                                                          _tl2037920548_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34816_
                                                             (values-count
                                                              _g34815_)))
                                                        (if (not (fx= _g34816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34816_)))
              (let ((_target2038020551_ (values-ref _g34815_ 0))
                    (_tl2038220554_ (values-ref _g34815_ 1)))
                (if (gx#stx-null? _tl2038220554_)
                    (letrec ((_loop2038320557_
                              (lambda (_hd2038120561_ _arg2038720564_)
                                (if (gx#stx-pair? _hd2038120561_)
                                    (let ((_e2038420567_
                                           (gx#syntax-e _hd2038120561_)))
                                      (let ((_lp-hd2038520571_
                                             (##car _e2038420567_))
                                            (_lp-tl2038620574_
                                             (##cdr _e2038420567_)))
                                        (_loop2038320557_
                                         _lp-tl2038620574_
                                         (cons _lp-hd2038520571_
                                               _arg2038720564_))))
                                    (let ((_arg2038820577_
                                           (reverse _arg2038720564_)))
                                      ((lambda (_L20581_ _L20583_ _L20584_)
                                         (if (if (gx#identifier? _L20584_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2060320606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2060420609_)
                     (cons _g2060320606_ _g2060420609_))
                   '()
                   _L20581_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L20583_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L20584_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2061120614_
                                                           _g2061220617_)
                                                    (cons _g2061120614_
                                                          _g2061220617_))
                                                  '()
                                                  _L20581_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2036520514_ _g2036720518_)))
                                       _arg2038820577_
                                       _hd2037820545_
                                       _hd2037520535_))))))
                      (_loop2038320557_ _target2038020551_ '()))
                    (_g2036520514_ _g2036720518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2036520514_
                                                   _g2036720518_))
                                              (_g2036520514_ _g2036720518_))))
                                      (_g2036520514_ _g2036720518_))))
                              (_g2036520514_ _g2036720518_))))
                      (_g2036520514_ _g2036720518_)))))
          (_g2036420620_ _$stx20361_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx20626_)
        (let* ((_g2063120671_
                (lambda (_g2063220667_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2063220667_)))
               (_g2063020772_
                (lambda (_g2063220675_)
                  (if (gx#stx-pair? _g2063220675_)
                      (let ((_e2064820678_ (gx#syntax-e _g2063220675_)))
                        (let ((_hd2064920682_ (##car _e2064820678_))
                              (_tl2065020685_ (##cdr _e2064820678_)))
                          (if (gx#stx-pair? _tl2065020685_)
                              (let ((_e2065120688_
                                     (gx#syntax-e _tl2065020685_)))
                                (let ((_hd2065220692_ (##car _e2065120688_))
                                      (_tl2065320695_ (##cdr _e2065120688_)))
                                  (if (gx#stx-pair? _tl2065320695_)
                                      (let ((_e2065420698_
                                             (gx#syntax-e _tl2065320695_)))
                                        (let ((_hd2065520702_
                                               (##car _e2065420698_))
                                              (_tl2065620705_
                                               (##cdr _e2065420698_)))
                                          (if (gx#stx-pair/null?
                                               _tl2065620705_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2065620705_)
                                                        '0)
                                                  (let ((_g34817_
                                                         (gx#syntax-split-splice
                                                          _tl2065620705_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34818_
                                                             (values-count
                                                              _g34817_)))
                                                        (if (not (fx= _g34818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34818_)))
              (let ((_target2065720708_ (values-ref _g34817_ 0))
                    (_tl2065920711_ (values-ref _g34817_ 1)))
                (if (gx#stx-null? _tl2065920711_)
                    (letrec ((_loop2066020714_
                              (lambda (_hd2065820718_ _rest2066420721_)
                                (if (gx#stx-pair? _hd2065820718_)
                                    (let ((_e2066120724_
                                           (gx#syntax-e _hd2065820718_)))
                                      (let ((_lp-hd2066220728_
                                             (##car _e2066120724_))
                                            (_lp-tl2066320731_
                                             (##cdr _e2066120724_)))
                                        (_loop2066020714_
                                         _lp-tl2066320731_
                                         (cons _lp-hd2066220728_
                                               _rest2066420721_))))
                                    (let ((_rest2066520734_
                                           (reverse _rest2066420721_)))
                                      ((lambda (_L20738_
                                                _L20740_
                                                _L20741_
                                                _L20742_)
                                         (cons _L20742_
                                               (cons (cons _L20742_
                                                           (cons _L20741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L20740_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2076320766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2076420769_)
                        (cons _g2076320766_ _g2076420769_))
                      '()
                      _L20738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest2066520734_
                                       _hd2065520702_
                                       _hd2065220692_
                                       _hd2064920682_))))))
                      (_loop2066020714_ _target2065720708_ '()))
                    (_g2063120671_ _g2063220675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2063120671_
                                                   _g2063220675_))
                                              (_g2063120671_ _g2063220675_))))
                                      (_g2063120671_ _g2063220675_))))
                              (_g2063120671_ _g2063220675_))))
                      (_g2063120671_ _g2063220675_))))
               (_g2062920826_
                (lambda (_g2063220776_)
                  (if (gx#stx-pair? _g2063220776_)
                      (let ((_e2063520779_ (gx#syntax-e _g2063220776_)))
                        (let ((_hd2063620783_ (##car _e2063520779_))
                              (_tl2063720786_ (##cdr _e2063520779_)))
                          (if (gx#stx-pair? _tl2063720786_)
                              (let ((_e2063820789_
                                     (gx#syntax-e _tl2063720786_)))
                                (let ((_hd2063920793_ (##car _e2063820789_))
                                      (_tl2064020796_ (##cdr _e2063820789_)))
                                  (if (gx#stx-pair? _tl2064020796_)
                                      (let ((_e2064120799_
                                             (gx#syntax-e _tl2064020796_)))
                                        (let ((_hd2064220803_
                                               (##car _e2064120799_))
                                              (_tl2064320806_
                                               (##cdr _e2064120799_)))
                                          (if (gx#stx-null? _tl2064320806_)
                                              ((lambda (_L20809_ _L20811_)
                                                 (if (gx#identifier? _L20809_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L20811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L20809_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2063020772_
                                                      _g2063220776_)))
                                               _hd2064220803_
                                               _hd2063920793_)
                                              (_g2063020772_ _g2063220776_))))
                                      (_g2063020772_ _g2063220776_))))
                              (_g2063020772_ _g2063220776_))))
                      (_g2063020772_ _g2063220776_)))))
          (_g2062920826_ _$stx20626_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx20831_)
        (let* ((_g2083620888_
                (lambda (_g2083720884_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2083720884_)))
               (_g2083521017_
                (lambda (_g2083720892_)
                  (if (gx#stx-pair? _g2083720892_)
                      (let ((_e2085920895_ (gx#syntax-e _g2083720892_)))
                        (let ((_hd2086020899_ (##car _e2085920895_))
                              (_tl2086120902_ (##cdr _e2085920895_)))
                          (if (gx#stx-pair? _tl2086120902_)
                              (let ((_e2086220905_
                                     (gx#syntax-e _tl2086120902_)))
                                (let ((_hd2086320909_ (##car _e2086220905_))
                                      (_tl2086420912_ (##cdr _e2086220905_)))
                                  (if (gx#stx-pair? _tl2086420912_)
                                      (let ((_e2086520915_
                                             (gx#syntax-e _tl2086420912_)))
                                        (let ((_hd2086620919_
                                               (##car _e2086520915_))
                                              (_tl2086720922_
                                               (##cdr _e2086520915_)))
                                          (if (gx#stx-pair/null?
                                               _tl2086720922_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2086720922_)
                                                        '2)
                                                  (let ((_g34819_
                                                         (gx#syntax-split-splice
                                                          _tl2086720922_
                                                          '2)))
                                                    (begin
                                                      (let ((_g34820_
                                                             (values-count
                                                              _g34819_)))
                                                        (if (not (fx= _g34820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34820_)))
              (let ((_target2086820925_ (values-ref _g34819_ 0))
                    (_tl2087020928_ (values-ref _g34819_ 1)))
                (if (gx#stx-pair? _tl2087020928_)
                    (let ((_e2087720931_ (gx#syntax-e _tl2087020928_)))
                      (let ((_hd2087820935_ (##car _e2087720931_))
                            (_tl2087920938_ (##cdr _e2087720931_)))
                        (if (gx#stx-pair? _tl2087920938_)
                            (let ((_e2088020941_ (gx#syntax-e _tl2087920938_)))
                              (let ((_hd2088120945_ (##car _e2088020941_))
                                    (_tl2088220948_ (##cdr _e2088020941_)))
                                (if (gx#stx-null? _tl2088220948_)
                                    (letrec ((_loop2087120951_
                                              (lambda (_hd2086920955_
                                                       _path2087520958_)
                                                (if (gx#stx-pair?
                                                     _hd2086920955_)
                                                    (let ((_e2087220961_
                                                           (gx#syntax-e
                                                            _hd2086920955_)))
                                                      (let ((_lp-hd2087320965_
                                                             (##car _e2087220961_))
                                                            (_lp-tl2087420968_
                                                             (##cdr _e2087220961_)))
                                                        (_loop2087120951_
                                                         _lp-tl2087420968_
                                                         (cons _lp-hd2087320965_
                                                               _path2087520958_))))
                                                    (let ((_path2087620971_
                                                           (reverse _path2087520958_)))
                                                      ((lambda (_L20975_
                                                                _L20977_
                                                                _L20978_
                                                                _L20979_
                                                                _L20980_
                                                                _L20981_)
                                                         (cons _L20981_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L20980_
                                         (cons _L20979_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2100821011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2100921014_)
                  (cons _g2100821011_ _g2100921014_))
                '()
                _L20978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L20977_ (cons _L20975_ '())))))
               _hd2088120945_
               _hd2087820935_
               _path2087620971_
               _hd2086620919_
               _hd2086320909_
               _hd2086020899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2087120951_
                                       _target2086820925_
                                       '()))
                                    (_g2083620888_ _g2083720892_))))
                            (_g2083620888_ _g2083720892_))))
                    (_g2083620888_ _g2083720892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2083620888_
                                                   _g2083720892_))
                                              (_g2083620888_ _g2083720892_))))
                                      (_g2083620888_ _g2083720892_))))
                              (_g2083620888_ _g2083720892_))))
                      (_g2083620888_ _g2083720892_))))
               (_g2083421085_
                (lambda (_g2083721021_)
                  (if (gx#stx-pair? _g2083721021_)
                      (let ((_e2084121024_ (gx#syntax-e _g2083721021_)))
                        (let ((_hd2084221028_ (##car _e2084121024_))
                              (_tl2084321031_ (##cdr _e2084121024_)))
                          (if (gx#stx-pair? _tl2084321031_)
                              (let ((_e2084421034_
                                     (gx#syntax-e _tl2084321031_)))
                                (let ((_hd2084521038_ (##car _e2084421034_))
                                      (_tl2084621041_ (##cdr _e2084421034_)))
                                  (if (gx#stx-pair? _tl2084621041_)
                                      (let ((_e2084721044_
                                             (gx#syntax-e _tl2084621041_)))
                                        (let ((_hd2084821048_
                                               (##car _e2084721044_))
                                              (_tl2084921051_
                                               (##cdr _e2084721044_)))
                                          (if (gx#stx-pair? _tl2084921051_)
                                              (let ((_e2085021054_
                                                     (gx#syntax-e
                                                      _tl2084921051_)))
                                                (let ((_hd2085121058_
                                                       (##car _e2085021054_))
                                                      (_tl2085221061_
                                                       (##cdr _e2085021054_)))
                                                  (if (gx#stx-null?
                                                       _tl2085221061_)
                                                      ((lambda (_L21064_
                                                                _L21066_
                                                                _L21067_)
                                                         (if (gx#identifier?
                                                              _L21066_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L21067_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L21066_ '()))
                                       (cons _L21064_ '()))))
                     (_g2083521017_ _g2083721021_)))
               _hd2085121058_
               _hd2084821048_
               _hd2084521038_)
              (_g2083521017_ _g2083721021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2083521017_ _g2083721021_))))
                                      (_g2083521017_ _g2083721021_))))
                              (_g2083521017_ _g2083721021_))))
                      (_g2083521017_ _g2083721021_)))))
          (_g2083421085_ _$stx20831_))))))
