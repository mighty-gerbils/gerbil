(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:2>[1]#_g47016_|
    (gx#core-quote-syntax '@method))
  (begin
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args33589_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
               _$args33589_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args33585_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
               _$args33585_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args33581_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info::t|
               _$args33581_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
      (lambda _$args33577_
        (apply make-class-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info::t|
               _$args33577_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args33573_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args33573_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args33569_
        (apply make-struct-instance
               |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args33569_)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda3354133555_
             (lambda (_stx33543_ _is?33545_)
               (if (gx#identifier? _stx33543_)
                   (let ((_e3354633548_
                          (gx#syntax-local-value _stx33543_ false)))
                     (if _e3354633548_
                         (let ((_e33552_ _e3354633548_))
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-info?|
                                _e33552_)
                               (_is?33545_ _e33552_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g47004_
          (let ((_g47003_ (length _g47004_)))
            (cond ((fx= _g47003_ 1)
                   (apply (lambda (_stx33559_)
                            (let ((_is?33562_ true))
                              (_opt-lambda3354133555_ _stx33559_ _is?33562_)))
                          _g47004_))
                  ((fx= _g47003_ 2)
                   (apply (lambda (_stx33565_ _is?33567_)
                            (_opt-lambda3354133555_ _stx33565_ _is?33567_))
                          _g47004_))
                  (else (error "No clause matching arguments" _g47004_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx33539_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx33539_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx33536_)
        (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
         _stx33536_
         |gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id33530_)
        (if _id33530_
            (let ((_info33533_ (gx#syntax-local-value _id33530_)))
              (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-runtime-type-info?|
                   _info33533_)
                  (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                   _info33533_)
                  '#f))
            '#f)))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
      (lambda (_stx33521_)
        (let ((_body-opt?33524_
               (lambda (_key33527_)
                 (memq (gx#stx-e _key33527_)
                       '(id: name: constructor: transparent: final: plist:)))))
          (gx#stx-plist? _stx33521_ _body-opt?33524_))))
    (define |gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
      (lambda (_stx32394_
               _id32396_
               _super-ref32397_
               _els32398_
               _body32399_
               _struct?32400_)
        (let ((_wrap32402_
               (lambda (_e-stx33518_)
                 (gx#stx-wrap-source
                  _e-stx33518_
                  (gx#stx-source _stx32394_)))))
          (let ((_make-id32404_
                 (if (uninterned-symbol? (gx#stx-e _id32396_))
                     (lambda _g47015_ (gx#genident _id32396_))
                     (lambda _args33515_
                       (apply gx#stx-identifier _id32396_ _args33515_)))))
            (begin
              (gx#check-duplicate-identifiers _els32398_ _stx32394_)
              (let ((_name32406_ (symbol->string (gx#stx-e _id32396_))))
                (let ((_super32409_
                       (if _struct?32400_
                           (if _super-ref32397_
                               (gx#syntax-local-value _super-ref32397_)
                               '#f)
                           (map gx#syntax-local-value _super-ref32397_))))
                  (let ((_g3241232420_
                         (lambda (_g3241332416_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3241332416_))))
                    (let ((_g3241133509_
                           (lambda (_g3241332424_)
                             ((lambda (_L32427_)
                                (let ()
                                  (let ((_g3244332451_
                                         (lambda (_g3244432447_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3244432447_))))
                                    (let ((_g3244233505_
                                           (lambda (_g3244432455_)
                                             ((lambda (_L32458_)
                                                (let ()
                                                  (let ((_g3247132479_
                                                         (lambda (_g3247232475_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g3247232475_))))
                                                    (let ((_g3247033501_
                                                           (lambda (_g3247232483_)
                                                             ((lambda (_L32486_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g3249932507_
                                 (lambda (_g3250032503_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3250032503_))))
                            (let ((_g3249833497_
                                   (lambda (_g3250032511_)
                                     ((lambda (_L32514_)
                                        (let ()
                                          (let ((_g3252732535_
                                                 (lambda (_g3252832531_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3252832531_))))
                                            (let ((_g3252633493_
                                                   (lambda (_g3252832539_)
                                                     ((lambda (_L32542_)
                                                        (let ()
                                                          (let ((_g3255532563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3255632559_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3255632559_))))
                    (let ((_g3255433489_
                           (lambda (_g3255632567_)
                             ((lambda (_L32570_)
                                (let ()
                                  (let ((_g3258332600_
                                         (lambda (_g3258432596_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3258432596_))))
                                    (let ((_g3258233485_
                                           (lambda (_g3258432604_)
                                             (if (gx#stx-pair/null?
                                                  _g3258432604_)
                                                 (if (fx>= (gx#stx-length
                                                            _g3258432604_)
                                                           '0)
                                                     (let ((_g47005_
                                                            (gx#syntax-split-splice
                                                             _g3258432604_
                                                             '0)))
                                                       (begin
                                                         (let ((_g47006_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47005_)))
                   (if (not (fx= _g47006_ 2))
                       (error "Context expects 2 values" _g47006_)))
                 (let ((_target3258632607_ (values-ref _g47005_ 0))
                       (_tl3258832610_ (values-ref _g47005_ 1)))
                   (if (gx#stx-null? _tl3258832610_)
                       (letrec ((_loop3258932613_
                                 (lambda (_hd3258732617_ _attr3259332620_)
                                   (if (gx#stx-pair? _hd3258732617_)
                                       (let ((_e3259032623_
                                              (gx#syntax-e _hd3258732617_)))
                                         (let ((_lp-hd3259132627_
                                                (##car _e3259032623_))
                                               (_lp-tl3259232630_
                                                (##cdr _e3259032623_)))
                                           (_loop3258932613_
                                            _lp-tl3259232630_
                                            (cons _lp-hd3259132627_
                                                  _attr3259332620_))))
                                       (let ((_attr3259432633_
                                              (reverse _attr3259332620_)))
                                         ((lambda (_L32637_)
                                            (let ()
                                              (let ((_g3265432671_
                                                     (lambda (_g3265532667_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3265532667_))))
                                                (let ((_g3265333476_
                                                       (lambda (_g3265532675_)
                                                         (if (gx#stx-pair/null?
                                                              _g3265532675_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3265532675_)
                               '0)
                         (let ((_g47007_
                                (gx#syntax-split-splice _g3265532675_ '0)))
                           (begin
                             (let ((_g47008_ (values-count _g47007_)))
                               (if (not (fx= _g47008_ 2))
                                   (error "Context expects 2 values"
                                          _g47008_)))
                             (let ((_target3265732678_ (values-ref _g47007_ 0))
                                   (_tl3265932681_ (values-ref _g47007_ 1)))
                               (if (gx#stx-null? _tl3265932681_)
                                   (letrec ((_loop3266032684_
                                             (lambda (_hd3265832688_
                                                      _getf3266432691_)
                                               (if (gx#stx-pair?
                                                    _hd3265832688_)
                                                   (let ((_e3266132694_
                                                          (gx#syntax-e
                                                           _hd3265832688_)))
                                                     (let ((_lp-hd3266232698_
                                                            (##car _e3266132694_))
                                                           (_lp-tl3266332701_
                                                            (##cdr _e3266132694_)))
                                                       (_loop3266032684_
                                                        _lp-tl3266332701_
                                                        (cons _lp-hd3266232698_
                                                              _getf3266432691_))))
                                                   (let ((_getf3266532704_
                                                          (reverse _getf3266432691_)))
                                                     ((lambda (_L32708_)
                                                        (let ()
                                                          (let ((_g3272532742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3272632738_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3272632738_))))
                    (let ((_g3272433467_
                           (lambda (_g3272632746_)
                             (if (gx#stx-pair/null? _g3272632746_)
                                 (if (fx>= (gx#stx-length _g3272632746_) '0)
                                     (let ((_g47009_
                                            (gx#syntax-split-splice
                                             _g3272632746_
                                             '0)))
                                       (begin
                                         (let ((_g47010_
                                                (values-count _g47009_)))
                                           (if (not (fx= _g47010_ 2))
                                               (error "Context expects 2 values"
                                                      _g47010_)))
                                         (let ((_target3272832749_
                                                (values-ref _g47009_ 0))
                                               (_tl3273032752_
                                                (values-ref _g47009_ 1)))
                                           (if (gx#stx-null? _tl3273032752_)
                                               (letrec ((_loop3273132755_
                                                         (lambda (_hd3272932759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _setf3273532762_)
                   (if (gx#stx-pair? _hd3272932759_)
                       (let ((_e3273232765_ (gx#syntax-e _hd3272932759_)))
                         (let ((_lp-hd3273332769_ (##car _e3273232765_))
                               (_lp-tl3273432772_ (##cdr _e3273232765_)))
                           (_loop3273132755_
                            _lp-tl3273432772_
                            (cons _lp-hd3273332769_ _setf3273532762_))))
                       (let ((_setf3273632775_ (reverse _setf3273532762_)))
                         ((lambda (_L32779_)
                            (let ()
                              (let ((_type-attr32821_
                                     (if (gx#stx-null? _els32398_)
                                         '()
                                         (if _struct?32400_
                                             (cons 'fields:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L32779_
                                                            _L32708_)
                                                           (foldr (lambda (_g3279532799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g3279632802_
                                   _g3279732804_)
                            (cons (cons _g3279632802_ (cons _g3279532799_ '()))
                                  _g3279732804_))
                          '()
                          _L32779_
                          _L32708_))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'slots:
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L32779_
                                                            _L32708_
                                                            _L32637_)
                                                           (foldr (lambda (_g3280632811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g3280732814_
                                   _g3280832816_
                                   _g3280932818_)
                            (cons (cons _g3280832816_
                                        (cons _g3280732814_
                                              (cons _g3280632811_ '())))
                                  _g3280932818_))
                          '()
                          _L32779_
                          _L32708_
                          _L32637_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (let ((_type-name32828_
                                       (cons 'name:
                                             (cons (let ((_$e32824_
                                                          (gx#stx-getq
                                                           'name:
                                                           _body32399_)))
                                                     (if _$e32824_
                                                         _$e32824_
                                                         _id32396_))
                                                   '()))))
                                  (let ((_type-id32843_
                                         (let ((_$e32839_
                                                (let ((_e3283032832_
                                                       (gx#stx-getq
                                                        'id:
                                                        _body32399_)))
                                                  (if _e3283032832_
                                                      (let ((_e32836_
                                                             _e3283032832_))
                                                        (cons 'id:
                                                              (cons _e32836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e32839_ _$e32839_ '()))))
                                    (let ((_type-ctor32858_
                                           (let ((_$e32854_
                                                  (let ((_e3284532847_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body32399_)))
                                                    (if _e3284532847_
                                                        (let ((_e32851_
                                                               _e3284532847_))
                                                          (cons 'constructor:
                                                                (cons _e32851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e32854_ _$e32854_ '()))))
                                      (let ((_plist32876_
                                             (let ((_plist32865_
                                                    (let ((_$e32861_
                                                           (gx#stx-getq
                                                            'plist:
                                                            _body32399_)))
                                                      (if _$e32861_
                                                          _$e32861_
                                                          '()))))
                                               (let ((_plist32868_
                                                      (if (gx#stx-e
                                                           (gx#stx-getq
                                                            'transparent:
                                                            _body32399_))
                                                          (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        _plist32865_)
                  _plist32865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_plist32871_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'final:
                                                              _body32399_))
                                                            (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          _plist32868_)
                    _plist32868_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let () _plist32871_))))))
                                        (let ((_type-plist32916_
                                               (if (null? _plist32876_)
                                                   _plist32876_
                                                   (let ((_g3287932887_
                                                          (lambda (_g3288032883_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g3288032883_))))
                                                     (let ((_g3287832912_
                                                            (lambda (_g3288032891_)
                                                              ((lambda (_L32894_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'plist:
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L32894_ '()))
                                       '()))))
                       _g3288032891_))))
               (_g3287832912_ _plist32876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g3291932936_
                                                 (lambda (_g3292032932_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g3292032932_))))
                                            (let ((_g3291833463_
                                                   (lambda (_g3292032940_)
                                                     (if (gx#stx-pair/null?
                                                          _g3292032940_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3292032940_)
                           '0)
                     (let ((_g47011_
                            (gx#syntax-split-splice _g3292032940_ '0)))
                       (begin
                         (let ((_g47012_ (values-count _g47011_)))
                           (if (not (fx= _g47012_ 2))
                               (error "Context expects 2 values" _g47012_)))
                         (let ((_target3292232943_ (values-ref _g47011_ 0))
                               (_tl3292432946_ (values-ref _g47011_ 1)))
                           (if (gx#stx-null? _tl3292432946_)
                               (letrec ((_loop3292532949_
                                         (lambda (_hd3292332953_
                                                  _type-body3292932956_)
                                           (if (gx#stx-pair? _hd3292332953_)
                                               (let ((_e3292632959_
                                                      (gx#syntax-e
                                                       _hd3292332953_)))
                                                 (let ((_lp-hd3292732963_
                                                        (##car _e3292632959_))
                                                       (_lp-tl3292832966_
                                                        (##cdr _e3292632959_)))
                                                   (_loop3292532949_
                                                    _lp-tl3292832966_
                                                    (cons _lp-hd3292732963_
                                                          _type-body3292932956_))))
                                               (let ((_type-body3293032969_
                                                      (reverse _type-body3292932956_)))
                                                 ((lambda (_L32973_)
                                                    (let ()
                                                      (let ((_g3298932997_
                                                             (lambda (_g3299032993_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3299032993_))))
                                                        (let ((_g3298833451_
                                                               (lambda (_g3299033001_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L33004_)
                            (let ()
                              (let ((_g3301733025_
                                     (lambda (_g3301833021_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3301833021_))))
                                (let ((_g3301633447_
                                       (lambda (_g3301833029_)
                                         ((lambda (_L33032_)
                                            (let ()
                                              (let ((_g3304533053_
                                                     (lambda (_g3304633049_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3304633049_))))
                                                (let ((_g3304433361_
                                                       (lambda (_g3304633057_)
                                                         ((lambda (_L33060_)
                                                            (let ()
                                                              (let ((_g3307333081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3307433077_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3307433077_))))
                        (let ((_g3307233357_
                               (lambda (_g3307433085_)
                                 ((lambda (_L33088_)
                                    (let ()
                                      (let ((_g3310133109_
                                             (lambda (_g3310233105_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3310233105_))))
                                        (let ((_g3310033353_
                                               (lambda (_g3310233113_)
                                                 ((lambda (_L33116_)
                                                    (let ()
                                                      (let ((_g3312933137_
                                                             (lambda (_g3313033133_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3313033133_))))
                                                        (let ((_g3312833311_
                                                               (lambda (_g3313033141_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L33144_)
                            (let ()
                              (let ((_g3315733165_
                                     (lambda (_g3315833161_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3315833161_))))
                                (let ((_g3315633307_
                                       (lambda (_g3315833169_)
                                         ((lambda (_L33172_)
                                            (let ()
                                              (let ((_g3318533193_
                                                     (lambda (_g3318633189_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g3318633189_))))
                                                (let ((_g3318433303_
                                                       (lambda (_g3318633197_)
                                                         ((lambda (_L33200_)
                                                            (let ()
                                                              (let ((_g3321333221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3321433217_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3321433217_))))
                        (let ((_g3321233299_
                               (lambda (_g3321433225_)
                                 ((lambda (_L33228_)
                                    (let ()
                                      (let ((_g3324133249_
                                             (lambda (_g3324233245_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g3324233245_))))
                                        (let ((_g3324033271_
                                               (lambda (_g3324233253_)
                                                 ((lambda (_L33256_)
                                                    (let ()
                                                      (let ()
                                                        (_wrap32402_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _L33004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L33256_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3324233253_))))
                                          (_g3324033271_
                                           (_wrap32402_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'defsyntax)
                                                  (cons _L32458_
                                                        (cons (cons _L33032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons 'runtime-identifier:
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'quote-syntax)
                                              (cons _L32486_ '()))
                                        (cons 'expander-identifiers:
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons _L33060_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote-syntax)
                                    (cons _L32486_ '()))
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _L32514_ '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _L32542_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g3327433281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3327533284_)
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _g3327433281_ '()))
                               _g3327533284_))
                       '()
                       _L32708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g3327633287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3327733290_)
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _g3327633287_ '()))
                                     _g3327733290_))
                             '()
                             _L32779_)))
              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons 'type-exhibitor:
                                                          (cons (cons _L33088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _L33116_ '()))
                                    (cons _L33144_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L33172_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L33200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L33228_ '()))
                    (cons (cons (gx#datum->syntax '#f 'quote)
                                (cons (begin
                                        '#!void
                                        (foldr (lambda (_g3327833293_
                                                        _g3327933296_)
                                                 (cons _g3327833293_
                                                       _g3327933296_))
                                               '()
                                               _L32637_))
                                      '()))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g3321433225_))))
                          (_g3321233299_ _plist32876_)))))
                  _g3318633197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3318433303_
                                                   (if (not (null? _type-ctor32858_))
                                                       (cadr _type-ctor32858_)
                                                       '#f))))))
                                          _g3315833169_))))
                                  (_g3315633307_ (cadr _type-name32828_))))))
                          _g3313033141_))))
                  (_g3312833311_
                   (let ((_quote-e33350_
                          (lambda (_x-ref33315_)
                            (if _x-ref33315_
                                (let ((_g3331833326_
                                       (lambda (_g3331933322_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3331933322_))))
                                  (let ((_g3331733346_
                                         (lambda (_g3331933330_)
                                           ((lambda (_L33333_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote-syntax)
                                                      (cons _L33333_ '()))))
                                            _g3331933330_))))
                                    (_g3331733346_ _x-ref33315_)))
                                '#f))))
                     (if _struct?32400_
                         (_quote-e33350_ _super-ref32397_)
                         (cons 'list
                               (map _quote-e33350_ _super-ref32397_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g3310233113_))))
                                          (_g3310033353_
                                           (if (not (null? _type-id32843_))
                                               (cadr _type-id32843_)
                                               '#f))))))
                                  _g3307433085_))))
                          (_g3307233357_
                           (if _struct?32400_
                               (gx#datum->syntax
                                '#f
                                'make-runtime-struct-exhibitor)
                               (gx#datum->syntax
                                '#f
                                'make-runtime-class-exhibitor)))))))
                  _g3304633057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3304433361_
                                                   (if _struct?32400_
                                                       (if _super32409_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote-syntax)
                         (cons _L32570_ '()))
                   '#f)
               (let ((_g3336533382_
                      (lambda (_g3336633378_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g3336633378_))))
                 (let ((_g3336433443_
                        (lambda (_g3336633386_)
                          (if (gx#stx-pair/null? _g3336633386_)
                              (if (fx>= (gx#stx-length _g3336633386_) '0)
                                  (let ((_g47013_
                                         (gx#syntax-split-splice
                                          _g3336633386_
                                          '0)))
                                    (begin
                                      (let ((_g47014_ (values-count _g47013_)))
                                        (if (not (fx= _g47014_ 2))
                                            (error "Context expects 2 values"
                                                   _g47014_)))
                                      (let ((_target3336833389_
                                             (values-ref _g47013_ 0))
                                            (_tl3337033392_
                                             (values-ref _g47013_ 1)))
                                        (if (gx#stx-null? _tl3337033392_)
                                            (letrec ((_loop3337133395_
                                                      (lambda (_hd3336933399_
                                                               _super-id3337533402_)
                                                        (if (gx#stx-pair?
                                                             _hd3336933399_)
                                                            (let ((_e3337233405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3336933399_)))
                      (let ((_lp-hd3337333409_ (##car _e3337233405_))
                            (_lp-tl3337433412_ (##cdr _e3337233405_)))
                        (_loop3337133395_
                         _lp-tl3337433412_
                         (cons _lp-hd3337333409_ _super-id3337533402_))))
                    (let ((_super-id3337633415_
                           (reverse _super-id3337533402_)))
                      ((lambda (_L33419_)
                         (let ()
                           (cons (gx#datum->syntax '#f '@list)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g3343433437_ _g3343533440_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _g3343433437_
                                                              '()))
                                                  _g3343533440_))
                                          '()
                                          _L33419_)))))
                       _super-id3337633415_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop3337133395_
                                               _target3336833389_
                                               '()))
                                            (_g3336533382_ _g3336633386_)))))
                                  (_g3336533382_ _g3336633386_))
                              (_g3336533382_ _g3336633386_)))))
                   (_g3336433443_ _L32570_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g3301833029_))))
                                  (_g3301633447_
                                   (if _struct?32400_
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-struct-info)
                                       (gx#datum->syntax
                                        '#f
                                        'make-extended-class-info)))))))
                          _g3299033001_))))
                  (_g3298833451_
                   (_wrap32402_
                    (cons _L32427_
                          (cons _L32486_
                                (cons _L32570_
                                      (cons _L32514_
                                            (cons _L32542_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g3345433457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3345533460_)
                     (cons _g3345433457_ _g3345533460_))
                   '()
                   _L32973_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _type-body3293032969_))))))
                                 (_loop3292532949_ _target3292232943_ '()))
                               (_g3291932936_ _g3292032940_)))))
                     (_g3291932936_ _g3292032940_))
                 (_g3291932936_ _g3292032940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3291833463_
                                               (foldr cons
                                                      (foldr cons
                                                             (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons _type-plist32916_ _type-ctor32858_)
                            _type-name32828_)
                     _type-id32843_)
              _type-attr32821_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _setf3273632775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop3273132755_
                                                  _target3272832749_
                                                  '()))
                                               (_g3272532742_
                                                _g3272632746_)))))
                                     (_g3272532742_ _g3272632746_))
                                 (_g3272532742_ _g3272632746_)))))
                      (_g3272433467_
                       (gx#stx-map
                        (lambda (_g3347033472_)
                          (_make-id32404_
                           _name32406_
                           '"-"
                           _g3347033472_
                           '"-set!"))
                        _els32398_))))))
              _getf3266532704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop3266032684_ _target3265732678_ '()))
                                   (_g3265432671_ _g3265532675_)))))
                         (_g3265432671_ _g3265532675_))
                     (_g3265432671_ _g3265532675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3265333476_
                                                   (gx#stx-map
                                                    (lambda (_g3347933481_)
                                                      (_make-id32404_
                                                       _name32406_
                                                       '"-"
                                                       _g3347933481_))
                                                    _els32398_))))))
                                          _attr3259432633_))))))
                         (_loop3258932613_ _target3258632607_ '()))
                       (_g3258332600_ _g3258432604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3258332600_
                                                      _g3258432604_))
                                                 (_g3258332600_
                                                  _g3258432604_)))))
                                      (_g3258233485_ _els32398_)))))
                              _g3255632567_))))
                      (_g3255433489_
                       (if _struct?32400_
                           (if _super32409_
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super32409_)
                               '#f)
                           (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                _super32409_)))))))
              _g3252832539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3252633493_
                                               (_make-id32404_
                                                _name32406_
                                                '"?"))))))
                                      _g3250032511_))))
                              (_g3249833497_
                               (_make-id32404_ '"make-" _name32406_))))))
                      _g3247232483_))))
              (_g3247033501_ (_make-id32404_ _name32406_ '"::t"))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g3244432455_))))
                                      (_g3244233505_ _id32396_)))))
                              _g3241332424_))))
                      (_g3241133509_
                       (if _struct?32400_
                           (gx#datum->syntax '#f 'defstruct-type)
                           (gx#datum->syntax '#f 'defclass-type))))))))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defstruct|
      (lambda (_stx33601_)
        (let ((_generate33604_
               (lambda (_hd33688_ _fields33690_ _body33691_)
                 (let ((_g3369433709_
                        (lambda (_g3369533705_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3369533705_))))
                   (let ((_g3369333720_
                          (lambda (_g3369533713_)
                            ((lambda ()
                               (if (gx#identifier? _hd33688_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx33601_
                                    _hd33688_
                                    '#f
                                    _fields33690_
                                    _body33691_
                                    '#t)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx33601_
                                    _hd33688_)))))))
                     (let ((_g3369233764_
                            (lambda (_g3369533724_)
                              (if (gx#stx-pair? _g3369533724_)
                                  (let ((_e3369833727_
                                         (gx#syntax-e _g3369533724_)))
                                    (let ((_hd3369933731_
                                           (##car _e3369833727_))
                                          (_tl3370033734_
                                           (##cdr _e3369833727_)))
                                      (if (gx#stx-pair? _tl3370033734_)
                                          (let ((_e3370133737_
                                                 (gx#syntax-e _tl3370033734_)))
                                            (let ((_hd3370233741_
                                                   (##car _e3370133737_))
                                                  (_tl3370333744_
                                                   (##cdr _e3370133737_)))
                                              (if (gx#stx-null? _tl3370333744_)
                                                  ((lambda (_L33747_ _L33749_)
                                                     (if (if (gx#identifier?
                                                              _L33749_)
                                                             (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L33747_)
                                                             '#f)
                                                         (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                                          _stx33601_
                                                          _L33749_
                                                          _L33747_
                                                          _fields33690_
                                                          _body33691_
                                                          '#t)
                                                         (_g3369333720_
                                                          _g3369533724_)))
                                                   _hd3370233741_
                                                   _hd3369933731_)
                                                  (_g3369333720_
                                                   _g3369533724_))))
                                          (_g3369333720_ _g3369533724_))))
                                  (_g3369333720_ _g3369533724_)))))
                       (_g3369233764_ _hd33688_)))))))
          (let ((_g3360733626_
                 (lambda (_g3360833622_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3360833622_))))
            (let ((_g3360633684_
                   (lambda (_g3360833630_)
                     (if (gx#stx-pair? _g3360833630_)
                         (let ((_e3361233633_ (gx#syntax-e _g3360833630_)))
                           (let ((_hd3361333637_ (##car _e3361233633_))
                                 (_tl3361433640_ (##cdr _e3361233633_)))
                             (if (gx#stx-pair? _tl3361433640_)
                                 (let ((_e3361533643_
                                        (gx#syntax-e _tl3361433640_)))
                                   (let ((_hd3361633647_ (##car _e3361533643_))
                                         (_tl3361733650_
                                          (##cdr _e3361533643_)))
                                     (if (gx#stx-pair? _tl3361733650_)
                                         (let ((_e3361833653_
                                                (gx#syntax-e _tl3361733650_)))
                                           (let ((_hd3361933657_
                                                  (##car _e3361833653_))
                                                 (_tl3362033660_
                                                  (##cdr _e3361833653_)))
                                             ((lambda (_L33663_
                                                       _L33665_
                                                       _L33666_)
                                                (if (if (gx#identifier-list?
                                                         _L33665_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L33663_)
                                                        '#f)
                                                    (_generate33604_
                                                     _L33666_
                                                     _L33665_
                                                     _L33663_)
                                                    (_g3360733626_
                                                     _g3360833630_)))
                                              _tl3362033660_
                                              _hd3361933657_
                                              _hd3361633647_)))
                                         (_g3360733626_ _g3360833630_))))
                                 (_g3360733626_ _g3360833630_))))
                         (_g3360733626_ _g3360833630_)))))
              (_g3360633684_ _stx33601_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defclass|
      (lambda (_stx33768_)
        (let ((_generate33771_
               (lambda (_hd33855_ _slots33857_ _body33858_)
                 (let ((_g3386133873_
                        (lambda (_g3386233869_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3386233869_))))
                   (let ((_g3386033884_
                          (lambda (_g3386233877_)
                            ((lambda ()
                               (if (gx#identifier? _hd33855_)
                                   (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                    _stx33768_
                                    _hd33855_
                                    '()
                                    _slots33857_
                                    _body33858_
                                    '#f)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx33768_
                                    _hd33855_)))))))
                     (let ((_g3385933916_
                            (lambda (_g3386233888_)
                              (if (gx#stx-pair? _g3386233888_)
                                  (let ((_e3386533891_
                                         (gx#syntax-e _g3386233888_)))
                                    (let ((_hd3386633895_
                                           (##car _e3386533891_))
                                          (_tl3386733898_
                                           (##cdr _e3386533891_)))
                                      ((lambda (_L33901_ _L33903_)
                                         (if (if (gx#stx-list? _L33901_)
                                                 (gx#stx-andmap
                                                  |gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                                  _L33901_)
                                                 '#f)
                                             (|gerbil/core::<MOP>::<MOP:2>[1]#generate-typedef|
                                              _stx33768_
                                              _L33903_
                                              (gx#syntax->list _L33901_)
                                              _slots33857_
                                              _body33858_
                                              '#f)
                                             (_g3386033884_ _g3386233888_)))
                                       _tl3386733898_
                                       _hd3386633895_)))
                                  (_g3386033884_ _g3386233888_)))))
                       (_g3385933916_ _hd33855_)))))))
          (let ((_g3377433793_
                 (lambda (_g3377533789_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g3377533789_))))
            (let ((_g3377333851_
                   (lambda (_g3377533797_)
                     (if (gx#stx-pair? _g3377533797_)
                         (let ((_e3377933800_ (gx#syntax-e _g3377533797_)))
                           (let ((_hd3378033804_ (##car _e3377933800_))
                                 (_tl3378133807_ (##cdr _e3377933800_)))
                             (if (gx#stx-pair? _tl3378133807_)
                                 (let ((_e3378233810_
                                        (gx#syntax-e _tl3378133807_)))
                                   (let ((_hd3378333814_ (##car _e3378233810_))
                                         (_tl3378433817_
                                          (##cdr _e3378233810_)))
                                     (if (gx#stx-pair? _tl3378433817_)
                                         (let ((_e3378533820_
                                                (gx#syntax-e _tl3378433817_)))
                                           (let ((_hd3378633824_
                                                  (##car _e3378533820_))
                                                 (_tl3378733827_
                                                  (##cdr _e3378533820_)))
                                             ((lambda (_L33830_
                                                       _L33832_
                                                       _L33833_)
                                                (if (if (gx#identifier-list?
                                                         _L33832_)
                                                        (|gerbil/core::<MOP>::<MOP:2>[1]#typedef-body?|
                                                         _L33830_)
                                                        '#f)
                                                    (_generate33771_
                                                     _L33833_
                                                     _L33832_
                                                     _L33830_)
                                                    (_g3377433793_
                                                     _g3377533797_)))
                                              _tl3378733827_
                                              _hd3378633824_
                                              _hd3378333814_)))
                                         (_g3377433793_ _g3377533797_))))
                                 (_g3377433793_ _g3377533797_))))
                         (_g3377433793_ _g3377533797_)))))
              (_g3377333851_ _stx33768_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#defmethod|
      (lambda (_stx33920_)
        (let ((_wrap33923_
               (lambda (_e-stx34553_)
                 (gx#stx-wrap-source
                  _e-stx34553_
                  (gx#stx-source _stx33920_)))))
          (let ((_method-opt?33925_
                 (lambda (_x34550_)
                   (memq (gx#stx-e _x34550_) '(rebind: no-cache:)))))
            (let ((_g3392733956_
                   (lambda (_g3392833952_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g3392833952_))))
              (let ((_g3392634546_
                     (lambda (_g3392833960_)
                       (if (gx#stx-pair? _g3392833960_)
                           (let ((_e3393333963_ (gx#syntax-e _g3392833960_)))
                             (let ((_hd3393433967_ (##car _e3393333963_))
                                   (_tl3393533970_ (##cdr _e3393333963_)))
                               (if (gx#stx-pair? _tl3393533970_)
                                   (let ((_e3393633973_
                                          (gx#syntax-e _tl3393533970_)))
                                     (let ((_hd3393733977_
                                            (##car _e3393633973_))
                                           (_tl3393833980_
                                            (##cdr _e3393633973_)))
                                       (if (gx#stx-pair? _hd3393733977_)
                                           (let ((_e3393933983_
                                                  (gx#syntax-e
                                                   _hd3393733977_)))
                                             (let ((_hd3394033987_
                                                    (##car _e3393933983_))
                                                   (_tl3394133990_
                                                    (##cdr _e3393933983_)))
                                               (if (gx#identifier?
                                                    _hd3394033987_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<MOP>::<MOP:2>[1]#_g47016_|
                                                        _hd3394033987_)
                                                       (if (gx#stx-pair?
                                                            _tl3394133990_)
                                                           (let ((_e3394233993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl3394133990_)))
                     (let ((_hd3394333997_ (##car _e3394233993_))
                           (_tl3394434000_ (##cdr _e3394233993_)))
                       (if (gx#stx-pair? _tl3394434000_)
                           (let ((_e3394534003_ (gx#syntax-e _tl3394434000_)))
                             (let ((_hd3394634007_ (##car _e3394534003_))
                                   (_tl3394734010_ (##cdr _e3394534003_)))
                               (if (gx#stx-null? _tl3394734010_)
                                   (if (gx#stx-pair? _tl3393833980_)
                                       (let ((_e3394834013_
                                              (gx#syntax-e _tl3393833980_)))
                                         (let ((_hd3394934017_
                                                (##car _e3394834013_))
                                               (_tl3395034020_
                                                (##cdr _e3394834013_)))
                                           ((lambda (_L34023_
                                                     _L34025_
                                                     _L34026_
                                                     _L34027_)
                                              (if (if (gx#identifier? _L34027_)
                                                      (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-type-info?|
                                                           _L34026_)
                                                          (gx#stx-plist?
                                                           _L34023_
                                                           _method-opt?33925_)
                                                          '#f)
                                                      '#f)
                                                  (let ((_klass34052_
                                                         (gx#syntax-local-value
                                                          _L34026_)))
                                                    (let ((_rebind?34055_
                                                           (if (gx#stx-e
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'rebind:
                         _L34023_))
                       '#t
                       '#f)))
              (let ((_no-cache?34058_
                     (if (gx#stx-e (gx#stx-getq 'no-cache: _L34023_))
                         '#t
                         '#f)))
                (let ((_g3406134069_
                       (lambda (_g3406234065_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3406234065_))))
                  (let ((_g3406034542_
                         (lambda (_g3406234073_)
                           ((lambda (_L34076_)
                              (let ()
                                (let ((_g3409134099_
                                       (lambda (_g3409234095_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3409234095_))))
                                  (let ((_g3409034538_
                                         (lambda (_g3409234103_)
                                           ((lambda (_L34106_)
                                              (let ()
                                                (let ((_g3411934127_
                                                       (lambda (_g3412034123_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g3412034123_))))
                                                  (let ((_g3411834245_
                                                         (lambda (_g3412034131_)
                                                           ((lambda (_L34134_)
                                                              (let ()
                                                                (let ((_g3414734155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g3414834151_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g3414834151_))))
                          (let ((_g3414634241_
                                 (lambda (_g3414834159_)
                                   ((lambda (_L34162_)
                                      (let ()
                                        (let ((_g3417534183_
                                               (lambda (_g3417634179_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g3417634179_))))
                                          (let ((_g3417434237_
                                                 (lambda (_g3417634187_)
                                                   ((lambda (_L34190_)
                                                      (let ()
                                                        (let ((_g3420334211_
                                                               (lambda (_g3420434207_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g3420434207_))))
                  (let ((_g3420234233_
                         (lambda (_g3420434215_)
                           ((lambda (_L34218_)
                              (let ()
                                (let ()
                                  (_wrap33923_
                                   (cons (gx#datum->syntax '#f 'begin)
                                         (cons _L34162_
                                               (cons _L34218_ '())))))))
                            _g3420434215_))))
                    (_g3420234233_
                     (_wrap33923_
                      (cons (gx#datum->syntax '#f 'bind-method!)
                            (cons _L34076_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L34027_ '()))
                                        (cons _L34106_
                                              (cons _L34190_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3417634187_))))
                                            (_g3417434237_ _rebind?34055_)))))
                                    _g3414834159_))))
                            (_g3414634241_
                             (_wrap33923_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons _L34106_ (cons _L34134_ '())))))))))
                    _g3412034131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3411834245_
                                                     (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-info?|
                                                          _klass34052_)
                                                         (let ((_g3424934257_
                                                                (lambda (_g3425034253_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g3425034253_))))
                   (let ((_g3424834342_
                          (lambda (_g3425034261_)
                            ((lambda (_L34264_)
                               (let ()
                                 (let ((_g3427634284_
                                        (lambda (_g3427734280_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3427734280_))))
                                   (let ((_g3427534338_
                                          (lambda (_g3427734288_)
                                            ((lambda (_L34291_)
                                               (let ()
                                                 (let ((_g3430434312_
                                                        (lambda (_g3430534308_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g3430534308_))))
                                                   (let ((_g3430334334_
                                                          (lambda (_g3430534316_)
                                                            ((lambda (_L34319_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_wrap33923_
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _L34264_ (cons _L34319_ '()))
                                        (cons _L34025_ '())))))))
                     _g3430534316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3430334334_
                                                      (_wrap33923_
                                                       (if _no-cache?34058_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (gx#datum->syntax '#f '$args)
                               (cons (cons (gx#datum->syntax '#f 'apply)
                                           (cons _L34291_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$args)
                                                       '())))
                                     '())))
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$super)
                                     (cons (cons (gx#datum->syntax '#f 'delay)
                                                 (cons _L34291_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (gx#datum->syntax '#f '$args)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'force)
                                 (cons (gx#datum->syntax '#f '$super) '()))
                           (cons (gx#datum->syntax '#f '$args) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3427734288_))))
                                     (_g3427534338_
                                      (_wrap33923_
                                       (cons (gx#datum->syntax '#f 'or)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'struct-find-next-method)
                                                         (cons _L34076_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L34027_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'error)
                                                               (cons '"Cannot find super method"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L34076_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L34027_ '()))
                                         '()))))
                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _g3425034261_))))
                     (_g3424834342_ (gx#datum->syntax _L34027_ '@super))))
                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-info?|
                      _klass34052_)
                     (let ((_g3434634354_
                            (lambda (_g3434734350_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3434734350_))))
                       (let ((_g3434534534_
                              (lambda (_g3434734358_)
                                ((lambda (_L34361_)
                                   (let ()
                                     (let ((_g3437234380_
                                            (lambda (_g3437334376_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g3437334376_))))
                                       (let ((_g3437134530_
                                              (lambda (_g3437334384_)
                                                ((lambda (_L34387_)
                                                   (let ()
                                                     (let ((_g3440034408_
                                                            (lambda (_g3440134404_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g3440134404_))))
                                                       (let ((_g3439934526_
                                                              (lambda (_g3440134412_)
                                                                ((lambda (_L34415_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (let ((_g3442834436_
                                    (lambda (_g3442934432_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g3442934432_))))
                               (let ((_g3442734522_
                                      (lambda (_g3442934440_)
                                        ((lambda (_L34443_)
                                           (let ()
                                             (let ((_g3445634464_
                                                    (lambda (_g3445734460_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g3445734460_))))
                                               (let ((_g3445534518_
                                                      (lambda (_g3445734468_)
                                                        ((lambda (_L34471_)
                                                           (let ()
                                                             (let ((_g3448434492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g3448534488_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3448534488_))))
                       (let ((_g3448334514_
                              (lambda (_g3448534496_)
                                ((lambda (_L34499_)
                                   (let ()
                                     (let ()
                                       (_wrap33923_
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L34361_
                                                                (cons _L34443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons _L34387_ (cons _L34499_ '())) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L34025_ '())))))))
                                 _g3448534496_))))
                         (_g3448334514_
                          (_wrap33923_
                           (cons (gx#datum->syntax '#f 'lambda)
                                 (cons (cons (gx#datum->syntax '#f '$obj)
                                             (gx#datum->syntax '#f '$args))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (cons _L34471_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '()))
                 (cons (gx#datum->syntax '#f '$obj)
                       (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))))))
                 _g3445734468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3445534518_
                                                  (_wrap33923_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '())
                       (cons (cons (gx#datum->syntax '#f 'or)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-find-next-method*)
                                               (cons _L34076_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'object-type)
                         (cons (gx#datum->syntax '#f '$obj) '()))
                   (cons (cons (gx#datum->syntax '#f 'quote)
                               (cons _L34027_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Cannot find next method"
                                                           (cons _L34076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$obj)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L34027_ '()))
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g3442934440_))))
                                 (_g3442734522_
                                  (_wrap33923_
                                   (if _no-cache?34058_
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '$args)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'apply)
                                                               (cons _L34415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$args) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '$super)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'delay)
                             (cons _L34415_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$args)
                             (cons (cons (gx#datum->syntax '#f 'apply)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'force)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$super)
                                                           '()))
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '$args)
                                                     '())))
                                   '())))
                 '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _g3440134412_))))
                 (_g3439934526_
                  (_wrap33923_
                   (cons (gx#datum->syntax '#f 'or)
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      'class-find-next-method)
                                     (cons _L34076_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L34027_ '()))
                                                 '())))
                               (cons (cons (gx#datum->syntax '#f 'error)
                                           (cons '"Cannot find super method"
                                                 (cons _L34076_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _L34027_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g3437334384_))))
                                         (_g3437134530_
                                          (gx#datum->syntax
                                           _L34027_
                                           '@next))))))
                                 _g3434734358_))))
                         (_g3434534534_ (gx#datum->syntax _L34027_ '@super))))
                     _L34025_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g3409234103_))))
                                    (_g3409034538_
                                     (gx#stx-identifier
                                      _L34027_
                                      _L34026_
                                      '"::"
                                      _L34027_))))))
                            _g3406234073_))))
                    (_g3406034542_
                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                      _klass34052_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3392733956_
                                                   _g3392833960_)))
                                            _tl3395034020_
                                            _hd3394934017_
                                            _hd3394634007_
                                            _hd3394333997_)))
                                       (_g3392733956_ _g3392833960_))
                                   (_g3392733956_ _g3392833960_))))
                           (_g3392733956_ _g3392833960_))))
                   (_g3392733956_ _g3392833960_))
               (_g3392733956_ _g3392833960_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3392733956_
                                                    _g3392833960_))))
                                           (_g3392733956_ _g3392833960_))))
                                   (_g3392733956_ _g3392833960_))))
                           (_g3392733956_ _g3392833960_)))))
                (_g3392634546_ _stx33920_)))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@method|
      (lambda (_$stx34556_)
        (let ((_g3456134610_
               (lambda (_g3456234606_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3456234606_))))
          (let ((_g3456034709_
                 (lambda (_g3456234614_)
                   (if (gx#stx-pair? _g3456234614_)
                       (let ((_e3458734617_ (gx#syntax-e _g3456234614_)))
                         (let ((_hd3458834621_ (##car _e3458734617_))
                               (_tl3458934624_ (##cdr _e3458734617_)))
                           (if (gx#stx-pair? _tl3458934624_)
                               (let ((_e3459034627_
                                      (gx#syntax-e _tl3458934624_)))
                                 (let ((_hd3459134631_ (##car _e3459034627_))
                                       (_tl3459234634_ (##cdr _e3459034627_)))
                                   (if (gx#stx-pair? _tl3459234634_)
                                       (let ((_e3459334637_
                                              (gx#syntax-e _tl3459234634_)))
                                         (let ((_hd3459434641_
                                                (##car _e3459334637_))
                                               (_tl3459534644_
                                                (##cdr _e3459334637_)))
                                           (if (gx#stx-pair/null?
                                                _tl3459534644_)
                                               (if (fx>= (gx#stx-length
                                                          _tl3459534644_)
                                                         '0)
                                                   (let ((_g47017_
                                                          (gx#syntax-split-splice
                                                           _tl3459534644_
                                                           '0)))
                                                     (begin
                                                       (let ((_g47018_
                                                              (values-count
                                                               _g47017_)))
                                                         (if (not (fx= _g47018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47018_)))
               (let ((_target3459634647_ (values-ref _g47017_ 0))
                     (_tl3459834650_ (values-ref _g47017_ 1)))
                 (if (gx#stx-null? _tl3459834650_)
                     (letrec ((_loop3459934653_
                               (lambda (_hd3459734657_ _arg3460334660_)
                                 (if (gx#stx-pair? _hd3459734657_)
                                     (let ((_e3460034663_
                                            (gx#syntax-e _hd3459734657_)))
                                       (let ((_lp-hd3460134667_
                                              (##car _e3460034663_))
                                             (_lp-tl3460234670_
                                              (##cdr _e3460034663_)))
                                         (_loop3459934653_
                                          _lp-tl3460234670_
                                          (cons _lp-hd3460134667_
                                                _arg3460334660_))))
                                     (let ((_arg3460434673_
                                            (reverse _arg3460334660_)))
                                       ((lambda (_L34677_ _L34679_ _L34680_)
                                          (if (gx#identifier? _L34680_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'call-method)
                                                    (cons _L34679_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L34680_ '()))
                        (begin
                          '#!void
                          (foldr (lambda (_g3470034703_ _g3470134706_)
                                   (cons _g3470034703_ _g3470134706_))
                                 '()
                                 _L34677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3456134610_ _g3456234614_)))
                                        _arg3460434673_
                                        _hd3459434641_
                                        _hd3459134631_))))))
                       (_loop3459934653_ _target3459634647_ '()))
                     (_g3456134610_ _g3456234614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3456134610_
                                                    _g3456234614_))
                                               (_g3456134610_ _g3456234614_))))
                                       (_g3456134610_ _g3456234614_))))
                               (_g3456134610_ _g3456234614_))))
                       (_g3456134610_ _g3456234614_)))))
            (let ((_g3455934815_
                   (lambda (_g3456234713_)
                     (if (gx#stx-pair? _g3456234713_)
                         (let ((_e3456634716_ (gx#syntax-e _g3456234713_)))
                           (let ((_hd3456734720_ (##car _e3456634716_))
                                 (_tl3456834723_ (##cdr _e3456634716_)))
                             (if (gx#stx-pair? _tl3456834723_)
                                 (let ((_e3456934726_
                                        (gx#syntax-e _tl3456834723_)))
                                   (let ((_hd3457034730_ (##car _e3456934726_))
                                         (_tl3457134733_
                                          (##cdr _e3456934726_)))
                                     (if (gx#stx-pair? _tl3457134733_)
                                         (let ((_e3457234736_
                                                (gx#syntax-e _tl3457134733_)))
                                           (let ((_hd3457334740_
                                                  (##car _e3457234736_))
                                                 (_tl3457434743_
                                                  (##cdr _e3457234736_)))
                                             (if (gx#stx-pair/null?
                                                  _tl3457434743_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl3457434743_)
                                                           '0)
                                                     (let ((_g47019_
                                                            (gx#syntax-split-splice
                                                             _tl3457434743_
                                                             '0)))
                                                       (begin
                                                         (let ((_g47020_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47019_)))
                   (if (not (fx= _g47020_ 2))
                       (error "Context expects 2 values" _g47020_)))
                 (let ((_target3457534746_ (values-ref _g47019_ 0))
                       (_tl3457734749_ (values-ref _g47019_ 1)))
                   (if (gx#stx-null? _tl3457734749_)
                       (letrec ((_loop3457834752_
                                 (lambda (_hd3457634756_ _arg3458234759_)
                                   (if (gx#stx-pair? _hd3457634756_)
                                       (let ((_e3457934762_
                                              (gx#syntax-e _hd3457634756_)))
                                         (let ((_lp-hd3458034766_
                                                (##car _e3457934762_))
                                               (_lp-tl3458134769_
                                                (##cdr _e3457934762_)))
                                           (_loop3457834752_
                                            _lp-tl3458134769_
                                            (cons _lp-hd3458034766_
                                                  _arg3458234759_))))
                                       (let ((_arg3458334772_
                                              (reverse _arg3458234759_)))
                                         ((lambda (_L34776_ _L34778_ _L34779_)
                                            (if (if (gx#identifier? _L34779_)
                                                    (gx#stx-ormap
                                                     gx#ellipsis?
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g3479834801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3479934804_)
                        (cons _g3479834801_ _g3479934804_))
                      '()
                      _L34776_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _L34778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L34779_ '()))
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g3480634809_
                                                              _g3480734812_)
                                                       (cons _g3480634809_
                                                             _g3480734812_))
                                                     '()
                                                     _L34776_)))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3456034709_ _g3456234713_)))
                                          _arg3458334772_
                                          _hd3457334740_
                                          _hd3457034730_))))))
                         (_loop3457834752_ _target3457534746_ '()))
                       (_g3456034709_ _g3456234713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3456034709_
                                                      _g3456234713_))
                                                 (_g3456034709_
                                                  _g3456234713_))))
                                         (_g3456034709_ _g3456234713_))))
                                 (_g3456034709_ _g3456234713_))))
                         (_g3456034709_ _g3456234713_)))))
              (_g3455934815_ _$stx34556_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@|
      (lambda (_$stx34821_)
        (let ((_g3482634866_
               (lambda (_g3482734862_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3482734862_))))
          (let ((_g3482534967_
                 (lambda (_g3482734870_)
                   (if (gx#stx-pair? _g3482734870_)
                       (let ((_e3484334873_ (gx#syntax-e _g3482734870_)))
                         (let ((_hd3484434877_ (##car _e3484334873_))
                               (_tl3484534880_ (##cdr _e3484334873_)))
                           (if (gx#stx-pair? _tl3484534880_)
                               (let ((_e3484634883_
                                      (gx#syntax-e _tl3484534880_)))
                                 (let ((_hd3484734887_ (##car _e3484634883_))
                                       (_tl3484834890_ (##cdr _e3484634883_)))
                                   (if (gx#stx-pair? _tl3484834890_)
                                       (let ((_e3484934893_
                                              (gx#syntax-e _tl3484834890_)))
                                         (let ((_hd3485034897_
                                                (##car _e3484934893_))
                                               (_tl3485134900_
                                                (##cdr _e3484934893_)))
                                           (if (gx#stx-pair/null?
                                                _tl3485134900_)
                                               (if (fx>= (gx#stx-length
                                                          _tl3485134900_)
                                                         '0)
                                                   (let ((_g47021_
                                                          (gx#syntax-split-splice
                                                           _tl3485134900_
                                                           '0)))
                                                     (begin
                                                       (let ((_g47022_
                                                              (values-count
                                                               _g47021_)))
                                                         (if (not (fx= _g47022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47022_)))
               (let ((_target3485234903_ (values-ref _g47021_ 0))
                     (_tl3485434906_ (values-ref _g47021_ 1)))
                 (if (gx#stx-null? _tl3485434906_)
                     (letrec ((_loop3485534909_
                               (lambda (_hd3485334913_ _rest3485934916_)
                                 (if (gx#stx-pair? _hd3485334913_)
                                     (let ((_e3485634919_
                                            (gx#syntax-e _hd3485334913_)))
                                       (let ((_lp-hd3485734923_
                                              (##car _e3485634919_))
                                             (_lp-tl3485834926_
                                              (##cdr _e3485634919_)))
                                         (_loop3485534909_
                                          _lp-tl3485834926_
                                          (cons _lp-hd3485734923_
                                                _rest3485934916_))))
                                     (let ((_rest3486034929_
                                            (reverse _rest3485934916_)))
                                       ((lambda (_L34933_
                                                 _L34935_
                                                 _L34936_
                                                 _L34937_)
                                          (cons _L34937_
                                                (cons (cons _L34937_
                                                            (cons _L34936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L34935_ '())))
              (begin
                '#!void
                (foldr (lambda (_g3495834961_ _g3495934964_)
                         (cons _g3495834961_ _g3495934964_))
                       '()
                       _L34933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _rest3486034929_
                                        _hd3485034897_
                                        _hd3484734887_
                                        _hd3484434877_))))))
                       (_loop3485534909_ _target3485234903_ '()))
                     (_g3482634866_ _g3482734870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3482634866_
                                                    _g3482734870_))
                                               (_g3482634866_ _g3482734870_))))
                                       (_g3482634866_ _g3482734870_))))
                               (_g3482634866_ _g3482734870_))))
                       (_g3482634866_ _g3482734870_)))))
            (let ((_g3482435021_
                   (lambda (_g3482734971_)
                     (if (gx#stx-pair? _g3482734971_)
                         (let ((_e3483034974_ (gx#syntax-e _g3482734971_)))
                           (let ((_hd3483134978_ (##car _e3483034974_))
                                 (_tl3483234981_ (##cdr _e3483034974_)))
                             (if (gx#stx-pair? _tl3483234981_)
                                 (let ((_e3483334984_
                                        (gx#syntax-e _tl3483234981_)))
                                   (let ((_hd3483434988_ (##car _e3483334984_))
                                         (_tl3483534991_
                                          (##cdr _e3483334984_)))
                                     (if (gx#stx-pair? _tl3483534991_)
                                         (let ((_e3483634994_
                                                (gx#syntax-e _tl3483534991_)))
                                           (let ((_hd3483734998_
                                                  (##car _e3483634994_))
                                                 (_tl3483835001_
                                                  (##cdr _e3483634994_)))
                                             (if (gx#stx-null? _tl3483835001_)
                                                 ((lambda (_L35004_ _L35006_)
                                                    (if (gx#identifier?
                                                         _L35004_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'slot-ref)
                                                              (cons _L35006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L35004_ '()))
                                  '())))
                (_g3482534967_ _g3482734971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd3483734998_
                                                  _hd3483434988_)
                                                 (_g3482534967_
                                                  _g3482734971_))))
                                         (_g3482534967_ _g3482734971_))))
                                 (_g3482534967_ _g3482734971_))))
                         (_g3482534967_ _g3482734971_)))))
              (_g3482435021_ _$stx34821_))))))
    (define |gerbil/core::<MOP>::<MOP:2>[:0:]#@-set!|
      (lambda (_$stx35026_)
        (let ((_g3503135078_
               (lambda (_g3503235074_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g3503235074_))))
          (let ((_g3503035191_
                 (lambda (_g3503235082_)
                   (if (gx#stx-pair? _g3503235082_)
                       (let ((_e3505235085_ (gx#syntax-e _g3503235082_)))
                         (let ((_hd3505335089_ (##car _e3505235085_))
                               (_tl3505435092_ (##cdr _e3505235085_)))
                           (if (gx#stx-pair? _tl3505435092_)
                               (let ((_e3505535095_
                                      (gx#syntax-e _tl3505435092_)))
                                 (let ((_hd3505635099_ (##car _e3505535095_))
                                       (_tl3505735102_ (##cdr _e3505535095_)))
                                   (if (gx#stx-pair? _tl3505735102_)
                                       (let ((_e3505835105_
                                              (gx#syntax-e _tl3505735102_)))
                                         (let ((_hd3505935109_
                                                (##car _e3505835105_))
                                               (_tl3506035112_
                                                (##cdr _e3505835105_)))
                                           (if (gx#stx-pair/null?
                                                _tl3506035112_)
                                               (if (fx>= (gx#stx-length
                                                          _tl3506035112_)
                                                         '1)
                                                   (let ((_g47023_
                                                          (gx#syntax-split-splice
                                                           _tl3506035112_
                                                           '1)))
                                                     (begin
                                                       (let ((_g47024_
                                                              (values-count
                                                               _g47023_)))
                                                         (if (not (fx= _g47024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g47024_)))
               (let ((_target3506135115_ (values-ref _g47023_ 0))
                     (_tl3506335118_ (values-ref _g47023_ 1)))
                 (if (gx#stx-pair? _tl3506335118_)
                     (let ((_e3507035121_ (gx#syntax-e _tl3506335118_)))
                       (let ((_hd3507135125_ (##car _e3507035121_))
                             (_tl3507235128_ (##cdr _e3507035121_)))
                         (if (gx#stx-null? _tl3507235128_)
                             (letrec ((_loop3506435131_
                                       (lambda (_hd3506235135_
                                                _path3506835138_)
                                         (if (gx#stx-pair? _hd3506235135_)
                                             (let ((_e3506535141_
                                                    (gx#syntax-e
                                                     _hd3506235135_)))
                                               (let ((_lp-hd3506635145_
                                                      (##car _e3506535141_))
                                                     (_lp-tl3506735148_
                                                      (##cdr _e3506535141_)))
                                                 (_loop3506435131_
                                                  _lp-tl3506735148_
                                                  (cons _lp-hd3506635145_
                                                        _path3506835138_))))
                                             (let ((_path3506935151_
                                                    (reverse _path3506835138_)))
                                               ((lambda (_L35155_
                                                         _L35157_
                                                         _L35158_
                                                         _L35159_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'slot-set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@)
                            (cons _L35159_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g3518235185_
                                                    _g3518335188_)
                                             (cons _g3518235185_
                                                   _g3518335188_))
                                           '()
                                           _L35157_))))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L35158_ '()))
                            (cons _L35155_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd3507135125_
                                                _path3506935151_
                                                _hd3505935109_
                                                _hd3505635099_))))))
                               (_loop3506435131_ _target3506135115_ '()))
                             (_g3503135078_ _g3503235082_))))
                     (_g3503135078_ _g3503235082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3503135078_
                                                    _g3503235082_))
                                               (_g3503135078_ _g3503235082_))))
                                       (_g3503135078_ _g3503235082_))))
                               (_g3503135078_ _g3503235082_))))
                       (_g3503135078_ _g3503235082_)))))
            (let ((_g3502935259_
                   (lambda (_g3503235195_)
                     (if (gx#stx-pair? _g3503235195_)
                         (let ((_e3503635198_ (gx#syntax-e _g3503235195_)))
                           (let ((_hd3503735202_ (##car _e3503635198_))
                                 (_tl3503835205_ (##cdr _e3503635198_)))
                             (if (gx#stx-pair? _tl3503835205_)
                                 (let ((_e3503935208_
                                        (gx#syntax-e _tl3503835205_)))
                                   (let ((_hd3504035212_ (##car _e3503935208_))
                                         (_tl3504135215_
                                          (##cdr _e3503935208_)))
                                     (if (gx#stx-pair? _tl3504135215_)
                                         (let ((_e3504235218_
                                                (gx#syntax-e _tl3504135215_)))
                                           (let ((_hd3504335222_
                                                  (##car _e3504235218_))
                                                 (_tl3504435225_
                                                  (##cdr _e3504235218_)))
                                             (if (gx#stx-pair? _tl3504435225_)
                                                 (let ((_e3504535228_
                                                        (gx#syntax-e
                                                         _tl3504435225_)))
                                                   (let ((_hd3504635232_
                                                          (##car _e3504535228_))
                                                         (_tl3504735235_
                                                          (##cdr _e3504535228_)))
                                                     (if (gx#stx-null?
                                                          _tl3504735235_)
                                                         ((lambda (_L35238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L35240_
                           _L35241_)
                    (if (gx#identifier? _L35240_)
                        (cons (gx#datum->syntax '#f 'slot-set!)
                              (cons _L35241_
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L35240_ '()))
                                          (cons _L35238_ '()))))
                        (_g3503035191_ _g3503235195_)))
                  _hd3504635232_
                  _hd3504335222_
                  _hd3504035212_)
                 (_g3503035191_ _g3503235195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3503035191_
                                                  _g3503235195_))))
                                         (_g3503035191_ _g3503235195_))))
                                 (_g3503035191_ _g3503235195_))))
                         (_g3503035191_ _g3503235195_)))))
              (_g3502935259_ _$stx35026_))))))))
