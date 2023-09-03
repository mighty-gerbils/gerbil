(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1693679906)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl59959_ (make-table 'test: eq?)))
           (hash-copy! _tbl59959_ (force gxc#&basic-xform))
           (table-set! _tbl59959_ '%#call gxc#optimize-call%)
           _tbl59959_))))
    (define gxc#apply-optimize-call
      (lambda (_stx59952_ . _args59954_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx59952_ _args59954_))
         gxc#current-compile-methods
         (force gxc#&optimize-call))))
    (define gxc#optimize-call%
      (lambda (_stx59858_)
        (let* ((___stx5996259963_ _stx59858_)
               (_g5986159881_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5996259963_))))
          (let ((___kont5996459965_
                 (lambda (_L59925_ _L59926_)
                   (let* ((_rator-id59944_ (gxc#identifier-symbol _L59926_))
                          (_rator-type59946_
                           (gxc#optimizer-resolve-type _rator-id59944_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type59946_
                            'gxc#!procedure::t))
                         (begin
                           (gxc#verbose
                            '"optimize-call "
                            _rator-id59944_
                            '" => "
                            _rator-type59946_
                            '" "
                            (##structure-ref
                             _rator-type59946_
                             '1
                             gxc#!type::t
                             '#f))
                           (let ((__method60324
                                  (method-ref
                                   _rator-type59946_
                                   'optimize-call)))
                             (if __method60324
                                 (__method60324
                                  _rator-type59946_
                                  _stx59858_
                                  _L59925_)
                                 (error '"Missing method"
                                        _rator-type59946_
                                        'optimize-call))))
                         (if (not _rator-type59946_)
                             (gxc#xform-call% _stx59858_)
                             (gxc#raise-compile-error
                              '"Illegal application; not a procedure"
                              _stx59858_
                              _rator-type59946_))))))
                (___kont5996659967_ (lambda () (gxc#xform-call% _stx59858_))))
            (if (gx#stx-pair? ___stx5996259963_)
                (let ((_e5986559893_ (gx#stx-e ___stx5996259963_)))
                  (let ((_tl5986759898_
                         (let () (declare (not safe)) (##cdr _e5986559893_)))
                        (_hd5986659896_
                         (let () (declare (not safe)) (##car _e5986559893_))))
                    (if (gx#stx-pair? _tl5986759898_)
                        (let ((_e5986859901_ (gx#stx-e _tl5986759898_)))
                          (let ((_tl5987059906_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5986859901_)))
                                (_hd5986959904_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5986859901_))))
                            (if (gx#stx-pair? _hd5986959904_)
                                (let ((_e5987159909_
                                       (gx#stx-e _hd5986959904_)))
                                  (let ((_tl5987359914_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5987159909_)))
                                        (_hd5987259912_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5987159909_))))
                                    (if (gx#identifier? _hd5987259912_)
                                        (if (gx#stx-eq? '%#ref _hd5987259912_)
                                            (if (gx#stx-pair? _tl5987359914_)
                                                (let ((_e5987459917_
                                                       (gx#stx-e
                                                        _tl5987359914_)))
                                                  (let ((_tl5987659922_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5987459917_)))
                                                        (_hd5987559920_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5987459917_))))
                                                    (if (gx#stx-null?
                                                         _tl5987659922_)
                                                        (___kont5996459965_
                                                         _tl5987059906_
                                                         _hd5987559920_)
                                                        (___kont5996659967_))))
                                                (___kont5996659967_))
                                            (___kont5996659967_))
                                        (___kont5996659967_))))
                                (___kont5996659967_))))
                        (___kont5996659967_))))
                (___kont5996659967_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self59712_ _stx59713_ _args59714_)
        (let* ((_self5971559721_ _self59712_)
               (_E5971759725_
                (lambda () (error '"No clause matching" _self5971559721_)))
               (_K5971859850_
                (lambda (_struct-t59728_)
                  (let* ((_struct-type59730_
                          (gxc#optimizer-resolve-type _struct-t59728_))
                         (_struct-type5973159745_ _struct-type59730_)
                         (_else5973459753_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx59713_
                             _struct-t59728_
                             _struct-type59730_))))
                    (let ((_K5973759825_
                           (lambda (_plist59764_ _struct-type-id59765_)
                             (let* ((___stx6000060001_ _args59714_)
                                    (_g5976859778_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx6000060001_))))
                               (let ((___kont6000260003_
                                      (lambda (_L59798_)
                                        (let ((_expr59819_
                                               (gxc#compile-e _L59798_))
                                              (_op59820_
                                               (if (and _plist59764_
                                                        (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _plist59764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (gxc#xform-wrap-source
                                           (cons _op59820_
                                                 (cons (cons '%#quote
                                                             (cons _struct-type-id59765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _expr59819_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx59713_))))
                                     (___kont6000460005_
                                      (lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx59713_))))
                                 (if (gx#stx-pair? ___stx6000060001_)
                                     (let ((_e5977159790_
                                            (gx#stx-e ___stx6000060001_)))
                                       (let ((_tl5977359795_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5977159790_)))
                                             (_hd5977259793_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5977159790_))))
                                         (if (gx#stx-null? _tl5977359795_)
                                             (___kont6000260003_
                                              _hd5977259793_)
                                             (___kont6000460005_))))
                                     (___kont6000460005_))))))
                          (_K5973659758_
                           (lambda () (gxc#xform-call% _stx59713_))))
                      (let ((_try-match5973359761_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5973159745_ '#f))
                                   (_K5973659758_)
                                   (_else5973459753_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5973159745_
                               'gxc#!struct-type::t))
                            (let* ((_e5973859828_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '1)))
                                   (_e5973959833_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '2)))
                                   (_e5974059836_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '3)))
                                   (_e5974159839_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '4)))
                                   (_e5974259842_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '5)))
                                   (_e5974359845_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5973159745_
                                       '6))))
                              (let ((_struct-type-id59831_ _e5973859828_)
                                    (_plist59848_ _e5974359845_))
                                (_K5973759825_
                                 _plist59848_
                                 _struct-type-id59831_)))
                            (_try-match5973359761_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5971559721_
                 'gxc#!struct-pred::t))
              (let* ((_e5971959853_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5971559721_ '1)))
                     (_struct-t59856_ _e5971959853_))
                (_K5971859850_ _struct-t59856_))
              (_E5971759725_)))))
    (bind-method!
     gxc#!struct-pred::t
     'optimize-call
     gxc#!struct-pred::optimize-call
     '#f)
    (define gxc#!struct-cons::optimize-call
      (lambda (_self59486_ _stx59487_ _args59488_)
        (let* ((_self5948959495_ _self59486_)
               (_E5949159499_
                (lambda () (error '"No clause matching" _self5948959495_)))
               (_K5949259582_
                (lambda (_struct-t59502_)
                  (let* ((_struct-type59504_
                          (gxc#optimizer-resolve-type _struct-t59502_))
                         (_struct-type5950559518_ _struct-type59504_)
                         (_else5950859526_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct constructor application; not a struct type"
                             _stx59487_
                             _struct-t59502_
                             _struct-type59504_))))
                    (let ((_K5951159556_
                           (lambda (_ctor59537_
                                    _xfields59538_
                                    _fields59539_
                                    _type-id59540_)
                             (let* ((_args59542_
                                     (map gxc#compile-e _args59488_))
                                    (_$e59544_
                                     (if _ctor59537_
                                         (if _xfields59538_
                                             (gxc#!struct-type-lookup-method
                                              _struct-type59504_
                                              _ctor59537_)
                                             '#f)
                                         '#f)))
                               (if _$e59544_
                                   ((lambda (_kons59547_)
                                      (let ((_$obj59549_
                                             (make-symbol (gensym '__obj))))
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons (cons (cons (cons _$obj59549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons 'make-object '()))
                                           (cons (cons '%#ref
                                                       (cons _struct-t59502_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (fx+ _fields59539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _xfields59538_)
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#compile-e
                                (gxc#xform-wrap-source
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons _kons59547_ '()))
                                             (cons (cons '%#ref
                                                         (cons _$obj59549_
                                                               '()))
                                                   _args59542_)))
                                 _stx59487_))
                               (cons (cons '%#ref (cons _$obj59549_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx59487_)))
                                    _$e59544_)
                                   (if (or _ctor59537_ (not _xfields59538_))
                                       (gxc#xform-wrap-source
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'make-struct-instance
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _struct-t59502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _args59542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _stx59487_)
                                       (let ((_arity59554_
                                              (fx+ _fields59539_
                                                   _xfields59538_)))
                                         (if (fx= _arity59554_
                                                  (length _args59542_))
                                             (gxc#xform-wrap-source
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _struct-t59502_ '())) _args59542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _stx59487_)
                                             (gxc#raise-compile-error
                                              '"Illegal struct constructor application; arity mismatch"
                                              _stx59487_
                                              _struct-t59502_
                                              _arity59554_))))))))
                          (_K5951059531_
                           (lambda ()
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t59502_)
                             (gxc#xform-call% _stx59487_))))
                      (let ((_try-match5950759534_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5950559518_ '#f))
                                   (_K5951059531_)
                                   (_else5950859526_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5950559518_
                               'gxc#!struct-type::t))
                            (let* ((_e5951259559_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5950559518_
                                       '1)))
                                   (_e5951359564_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5950559518_
                                       '2)))
                                   (_e5951459567_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5950559518_
                                       '3)))
                                   (_e5951559572_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5950559518_
                                       '4)))
                                   (_e5951659577_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5950559518_
                                       '5))))
                              (let ((_type-id59562_ _e5951259559_)
                                    (_fields59570_ _e5951459567_)
                                    (_xfields59575_ _e5951559572_)
                                    (_ctor59580_ _e5951659577_))
                                (_K5951159556_
                                 _ctor59580_
                                 _xfields59575_
                                 _fields59570_
                                 _type-id59562_)))
                            (_try-match5950759534_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5948959495_
                 'gxc#!struct-cons::t))
              (let* ((_e5949359585_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5948959495_ '1)))
                     (_struct-t59588_ _e5949359585_))
                (_K5949259582_ _struct-t59588_))
              (_E5949159499_)))))
    (bind-method!
     gxc#!struct-cons::t
     'optimize-call
     gxc#!struct-cons::optimize-call
     '#f)
    (define gxc#!struct-getf::optimize-call
      (lambda (_self59197_ _stx59198_ _args59199_)
        (let* ((_self5920059208_ _self59197_)
               (_E5920259212_
                (lambda () (error '"No clause matching" _self5920059208_)))
               (_K5920359346_
                (lambda (_unchecked?59215_ _off59216_ _struct-t59217_)
                  (let* ((_struct-type59219_
                          (gxc#optimizer-resolve-type _struct-t59217_))
                         (_struct-type5922059234_ _struct-type59219_)
                         (_else5922359242_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx59198_
                             _struct-t59217_
                             _struct-type59219_))))
                    (let ((_K5922659317_
                           (lambda (_plist59253_
                                    _xfields59254_
                                    _fields59255_
                                    _struct-type-id59256_)
                             (if _xfields59254_
                                 (let* ((___stx6004860049_ _args59199_)
                                        (_g5925959269_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx6004860049_))))
                                   (let ((___kont6005060051_
                                          (lambda (_L59289_)
                                            (let ((_expr59310_
                                                   (gxc#compile-e _L59289_))
                                                  (_off59311_
                                                   (fx+ _off59216_
                                                        _xfields59254_
                                                        '1))
                                                  (_op59312_
                                                   (if _unchecked?59215_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist59253_
                                                                (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _plist59253_))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gxc#xform-wrap-source
                                               (cons _op59312_
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _struct-t59217_ '()))
                   (cons (cons '%#quote (cons _off59311_ '()))
                         (cons _expr59310_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx59198_))))
                                         (___kont6005260053_
                                          (lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx59198_))))
                                     (if (gx#stx-pair? ___stx6004860049_)
                                         (let ((_e5926259281_
                                                (gx#stx-e ___stx6004860049_)))
                                           (let ((_tl5926459286_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5926259281_)))
                                                 (_hd5926359284_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5926259281_))))
                                             (if (gx#stx-null? _tl5926459286_)
                                                 (___kont6005060051_
                                                  _hd5926359284_)
                                                 (___kont6005260053_))))
                                         (___kont6005260053_))))
                                 (begin
                                   (gxc#verbose
                                    '"struct-getf: incomplete struct "
                                    _struct-type-id59256_)
                                   (gxc#xform-call% _stx59198_)))))
                          (_K5922559247_
                           (lambda () (gxc#xform-call% _stx59198_))))
                      (let ((_try-match5922259250_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5922059234_ '#f))
                                   (_K5922559247_)
                                   (_else5922359242_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5922059234_
                               'gxc#!struct-type::t))
                            (let* ((_e5922759320_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '1)))
                                   (_e5922859325_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '2)))
                                   (_e5922959328_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '3)))
                                   (_e5923059333_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '4)))
                                   (_e5923159338_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '5)))
                                   (_e5923259341_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5922059234_
                                       '6))))
                              (let ((_struct-type-id59323_ _e5922759320_)
                                    (_fields59331_ _e5922959328_)
                                    (_xfields59336_ _e5923059333_)
                                    (_plist59344_ _e5923259341_))
                                (_K5922659317_
                                 _plist59344_
                                 _xfields59336_
                                 _fields59331_
                                 _struct-type-id59323_)))
                            (_try-match5922259250_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5920059208_
                 'gxc#!struct-getf::t))
              (let* ((_e5920459349_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5920059208_ '1)))
                     (_struct-t59352_ _e5920459349_)
                     (_e5920559354_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5920059208_ '2)))
                     (_off59357_ _e5920559354_)
                     (_e5920659359_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5920059208_ '3)))
                     (_unchecked?59362_ _e5920659359_))
                (_K5920359346_ _unchecked?59362_ _off59357_ _struct-t59352_))
              (_E5920259212_)))))
    (bind-method!
     gxc#!struct-getf::t
     'optimize-call
     gxc#!struct-getf::optimize-call
     '#f)
    (define gxc#!struct-setf::optimize-call
      (lambda (_self58891_ _stx58892_ _args58893_)
        (let* ((_self5889458902_ _self58891_)
               (_E5889658906_
                (lambda () (error '"No clause matching" _self5889458902_)))
               (_K5889759057_
                (lambda (_unchecked?58909_ _off58910_ _struct-t58911_)
                  (let* ((_struct-type58913_
                          (gxc#optimizer-resolve-type _struct-t58911_))
                         (_struct-type5891458928_ _struct-type58913_)
                         (_else5891758936_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx58892_
                             _struct-t58911_
                             _struct-type58913_))))
                    (let ((_K5892059028_
                           (lambda (_plist58947_
                                    _xfields58948_
                                    _fields58949_
                                    _struct-type-id58950_)
                             (if _xfields58948_
                                 (let* ((___stx6008160082_ _args58893_)
                                        (_g5895358967_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx6008160082_))))
                                   (let ((___kont6008360084_
                                          (lambda (_L58995_ _L58996_)
                                            (let ((_expr59020_
                                                   (gxc#compile-e _L58996_))
                                                  (_val59021_
                                                   (gxc#compile-e _L58995_))
                                                  (_off59022_
                                                   (fx+ _off58910_
                                                        _xfields58948_
                                                        '1))
                                                  (_op59023_
                                                   (if _unchecked?58909_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist58947_
                                                                (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _plist58947_))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gxc#xform-wrap-source
                                               (cons _op59023_
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _struct-t58911_ '()))
                   (cons (cons '%#quote (cons _off59022_ '()))
                         (cons _expr59020_ (cons _val59021_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58892_))))
                                         (___kont6008560086_
                                          (lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx58892_))))
                                     (if (gx#stx-pair? ___stx6008160082_)
                                         (let ((_e5895758979_
                                                (gx#stx-e ___stx6008160082_)))
                                           (let ((_tl5895958984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5895758979_)))
                                                 (_hd5895858982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5895758979_))))
                                             (if (gx#stx-pair? _tl5895958984_)
                                                 (let ((_e5896058987_
                                                        (gx#stx-e
                                                         _tl5895958984_)))
                                                   (let ((_tl5896258992_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5896058987_)))
                                                         (_hd5896158990_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5896058987_))))
                                                     (if (gx#stx-null?
                                                          _tl5896258992_)
                                                         (___kont6008360084_
                                                          _hd5896158990_
                                                          _hd5895858982_)
                                                         (___kont6008560086_))))
                                                 (___kont6008560086_))))
                                         (___kont6008560086_))))
                                 (begin
                                   (gxc#verbose
                                    '"struct-setf: incomplete struct "
                                    _struct-type-id58950_)
                                   (gxc#xform-call% _stx58892_)))))
                          (_K5891958941_
                           (lambda () (gxc#xform-call% _stx58892_))))
                      (let ((_try-match5891658944_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5891458928_ '#f))
                                   (_K5891958941_)
                                   (_else5891758936_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5891458928_
                               'gxc#!struct-type::t))
                            (let* ((_e5892159031_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '1)))
                                   (_e5892259036_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '2)))
                                   (_e5892359039_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '3)))
                                   (_e5892459044_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '4)))
                                   (_e5892559049_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '5)))
                                   (_e5892659052_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5891458928_
                                       '6))))
                              (let ((_struct-type-id59034_ _e5892159031_)
                                    (_fields59042_ _e5892359039_)
                                    (_xfields59047_ _e5892459044_)
                                    (_plist59055_ _e5892659052_))
                                (_K5892059028_
                                 _plist59055_
                                 _xfields59047_
                                 _fields59042_
                                 _struct-type-id59034_)))
                            (_try-match5891658944_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5889458902_
                 'gxc#!struct-setf::t))
              (let* ((_e5889859060_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5889458902_ '1)))
                     (_struct-t59063_ _e5889859060_)
                     (_e5889959065_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5889458902_ '2)))
                     (_off59068_ _e5889959065_)
                     (_e5890059070_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5889458902_ '3)))
                     (_unchecked?59073_ _e5890059070_))
                (_K5889759057_ _unchecked?59073_ _off59068_ _struct-t59063_))
              (_E5889658906_)))))
    (bind-method!
     gxc#!struct-setf::t
     'optimize-call
     gxc#!struct-setf::optimize-call
     '#f)
    (define gxc#!class-pred::optimize-call
      (lambda (_self58619_ _stx58620_ _args58621_)
        (let* ((_self5862258628_ _self58619_)
               (_E5862458632_
                (lambda () (error '"No clause matching" _self5862258628_)))
               (_K5862558761_
                (lambda (_class-t58635_)
                  (let* ((_class-type58637_
                          (gxc#optimizer-resolve-type _class-t58635_))
                         (_class-type5863858653_ _class-type58637_)
                         (_else5864158661_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"illegal class predicate application; not a class type"
                             _stx58620_
                             _class-t58635_
                             _class-type58637_))))
                    (let ((_K5864458733_
                           (lambda (_plist58672_ _class-type-id58673_)
                             (let* ((___stx6012060121_ _args58621_)
                                    (_g5867658686_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx6012060121_))))
                               (let ((___kont6012260123_
                                      (lambda (_L58706_)
                                        (let ((_expr58727_
                                               (gxc#compile-e _L58706_))
                                              (_final?58728_
                                               (if _plist58672_
                                                   (assgetq 'final:
                                                            _plist58672_)
                                                   '#f)))
                                          (if _final?58728_
                                              (gxc#xform-wrap-source
                                               (cons '%#struct-direct-instance?
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _class-type-id58673_ '()))
                   (cons _expr58727_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58620_)
                                              (gxc#xform-wrap-source
                                               (cons '%#call
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class-instance? '()))
                   (cons (cons '%#ref (cons _class-t58635_ '()))
                         (cons _expr58727_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58620_)))))
                                     (___kont6012460125_
                                      (lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal class predicate application"
                                         _stx58620_))))
                                 (if (gx#stx-pair? ___stx6012060121_)
                                     (let ((_e5867958698_
                                            (gx#stx-e ___stx6012060121_)))
                                       (let ((_tl5868158703_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5867958698_)))
                                             (_hd5868058701_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5867958698_))))
                                         (if (gx#stx-null? _tl5868158703_)
                                             (___kont6012260123_
                                              _hd5868058701_)
                                             (___kont6012460125_))))
                                     (___kont6012460125_))))))
                          (_K5864358666_
                           (lambda () (gxc#xform-call% _stx58620_))))
                      (let ((_try-match5864058669_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type5863858653_ '#f))
                                   (_K5864358666_)
                                   (_else5864158661_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type5863858653_
                               'gxc#!class-type::t))
                            (let* ((_e5864558736_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '1)))
                                   (_e5864658741_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '2)))
                                   (_e5864758744_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '3)))
                                   (_e5864858747_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '4)))
                                   (_e5864958750_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '5)))
                                   (_e5865058753_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '6)))
                                   (_e5865158756_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5863858653_
                                       '7))))
                              (let ((_class-type-id58739_ _e5864558736_)
                                    (_plist58759_ _e5865158756_))
                                (_K5864458733_
                                 _plist58759_
                                 _class-type-id58739_)))
                            (_try-match5864058669_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5862258628_
                 'gxc#!class-pred::t))
              (let* ((_e5862658764_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5862258628_ '1)))
                     (_class-t58767_ _e5862658764_))
                (_K5862558761_ _class-t58767_))
              (_E5862458632_)))))
    (bind-method!
     gxc#!class-pred::t
     'optimize-call
     gxc#!class-pred::optimize-call
     '#f)
    (define gxc#!class-cons::optimize-call
      (lambda (_self58437_ _stx58438_ _args58439_)
        (let* ((_self5844058446_ _self58437_)
               (_E5844258450_
                (lambda () (error '"No clause matching" _self5844058446_)))
               (_K5844358489_
                (lambda (_class-t58453_)
                  (let* ((_class-type58455_
                          (gxc#optimizer-resolve-type _class-t58453_))
                         (_class-type5845658464_ _class-type58455_)
                         (_else5845958472_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal class constructor application; not a struct type"
                             _stx58438_
                             _class-t58453_
                             _class-type58455_))))
                    (let ((_K5846258486_
                           (lambda ()
                             (let ((_args58484_
                                    (map gxc#compile-e _args58439_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'make-class-instance
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _class-t58453_
                                                              '()))
                                                  _args58484_)))
                                _stx58438_))))
                          (_K5846158477_
                           (lambda ()
                             (gxc#verbose
                              '"cannot inline class constructor; class struct type "
                              _class-t58453_)
                             (gxc#xform-call% _stx58438_))))
                      (let ((_try-match5845858480_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type5845658464_ '#f))
                                   (_K5846158477_)
                                   (_else5845958472_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type5845658464_
                               'gxc#!class-type::t))
                            (_K5846258486_)
                            (_try-match5845858480_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5844058446_
                 'gxc#!class-cons::t))
              (let* ((_e5844458492_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5844058446_ '1)))
                     (_class-t58495_ _e5844458492_))
                (_K5844358489_ _class-t58495_))
              (_E5844258450_)))))
    (bind-method!
     gxc#!class-cons::t
     'optimize-call
     gxc#!class-cons::optimize-call
     '#f)
    (define gxc#!class-getf::optimize-call
      (lambda (_self58224_ _stx58225_ _args58226_)
        (let* ((_self5822758235_ _self58224_)
               (_E5822958239_
                (lambda () (error '"No clause matching" _self5822758235_)))
               (_K5823058297_
                (lambda (_unchecked?58242_ _slot58243_ _class-t58244_)
                  (let* ((___stx6016060161_ _args58226_)
                         (_g5824758257_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx6016060161_))))
                    (let ((___kont6016260163_
                           (lambda (_L58277_)
                             (let ((_expr58292_ (gxc#compile-e _L58277_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons (if _unchecked?58242_
                                                            'slot-ref
                                                            'unchecked-slot-ref)
                                                        '()))
                                            (cons _expr58292_
                                                  (cons (cons '%#quote
                                                              (cons _slot58243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _stx58225_))))
                          (___kont6016460165_
                           (lambda ()
                             (gxc#raise-compile-error
                              '"Illegal class accessor application"
                              _stx58225_))))
                      (if (gx#stx-pair? ___stx6016060161_)
                          (let ((_e5825058269_ (gx#stx-e ___stx6016060161_)))
                            (let ((_tl5825258274_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5825058269_)))
                                  (_hd5825158272_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5825058269_))))
                              (if (gx#stx-null? _tl5825258274_)
                                  (___kont6016260163_ _hd5825158272_)
                                  (___kont6016460165_))))
                          (___kont6016460165_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5822758235_
                 'gxc#!class-getf::t))
              (let* ((_e5823158300_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5822758235_ '1)))
                     (_class-t58303_ _e5823158300_)
                     (_e5823258305_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5822758235_ '2)))
                     (_slot58308_ _e5823258305_)
                     (_e5823358310_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5822758235_ '3)))
                     (_unchecked?58313_ _e5823358310_))
                (_K5823058297_ _unchecked?58313_ _slot58308_ _class-t58303_))
              (_E5822958239_)))))
    (bind-method!
     gxc#!class-getf::t
     'optimize-call
     gxc#!class-getf::optimize-call
     '#f)
    (define gxc#!class-setf::optimize-call
      (lambda (_self57994_ _stx57995_ _args57996_)
        (let* ((_self5799758005_ _self57994_)
               (_E5799958009_
                (lambda () (error '"No clause matching" _self5799758005_)))
               (_K5800058084_
                (lambda (_unchecked?58012_ _slot58013_ _class-t58014_)
                  (let* ((___stx6017660177_ _args57996_)
                         (_g5801758031_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx6017660177_))))
                    (let ((___kont6017860179_
                           (lambda (_L58059_ _L58060_)
                             (let ((_expr58078_ (gxc#compile-e _L58060_))
                                   (_val58079_ (gxc#compile-e _L58059_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons (if _unchecked?58012_
                                                            'unchecked-slot-set!
                                                            'slot-set!)
                                                        '()))
                                            (cons _expr58078_
                                                  (cons (cons '%#quote
                                                              (cons _slot58013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _val58079_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _stx57995_))))
                          (___kont6018060181_
                           (lambda ()
                             (gxc#raise-compile-error
                              '"Illegal class mutator application"
                              _stx57995_))))
                      (if (gx#stx-pair? ___stx6017660177_)
                          (let ((_e5802158043_ (gx#stx-e ___stx6017660177_)))
                            (let ((_tl5802358048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5802158043_)))
                                  (_hd5802258046_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5802158043_))))
                              (if (gx#stx-pair? _tl5802358048_)
                                  (let ((_e5802458051_
                                         (gx#stx-e _tl5802358048_)))
                                    (let ((_tl5802658056_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5802458051_)))
                                          (_hd5802558054_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5802458051_))))
                                      (if (gx#stx-null? _tl5802658056_)
                                          (___kont6017860179_
                                           _hd5802558054_
                                           _hd5802258046_)
                                          (___kont6018060181_))))
                                  (___kont6018060181_))))
                          (___kont6018060181_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5799758005_
                 'gxc#!class-setf::t))
              (let* ((_e5800158087_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5799758005_ '1)))
                     (_class-t58090_ _e5800158087_)
                     (_e5800258092_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5799758005_ '2)))
                     (_slot58095_ _e5800258092_)
                     (_e5800358097_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5799758005_ '3)))
                     (_unchecked?58100_ _e5800358097_))
                (_K5800058084_ _unchecked?58100_ _slot58095_ _class-t58090_))
              (_E5799958009_)))))
    (bind-method!
     gxc#!class-setf::t
     'optimize-call
     gxc#!class-setf::optimize-call
     '#f)
    (define gxc#!lambda::optimize-call
      (lambda (_self57828_ _stx57829_ _args57830_)
        (let* ((_self5783157840_ _self57828_)
               (_E5783357844_
                (lambda () (error '"No clause matching" _self5783157840_)))
               (_K5783457851_
                (lambda (_inline57847_ _dispatch57848_ _arity57849_)
                  (if (gxc#!lambda-arity-match? _self57828_ _args57830_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx57829_
                       _arity57849_))
                  (if _inline57847_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline57847_ _stx57829_)
                          _stx57829_)))
                      (if _dispatch57848_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch57848_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch57848_ '()))
                                          _args57830_))
                              _stx57829_)))
                          (gxc#xform-call% _stx57829_))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5783157840_ 'gxc#!lambda::t))
              (let* ((_e5783557854_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5783157840_ '1)))
                     (_e5783657857_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5783157840_ '2)))
                     (_arity57860_ _e5783657857_)
                     (_e5783757862_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5783157840_ '3)))
                     (_dispatch57865_ _e5783757862_)
                     (_e5783857867_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5783157840_ '4)))
                     (_inline57870_ _e5783857867_))
                (_K5783457851_ _inline57870_ _dispatch57865_ _arity57860_))
              (_E5783357844_)))))
    (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
    (define gxc#!case-lambda::optimize-call
      (lambda (_self57667_ _stx57668_ _args57669_)
        (let* ((_self5767057677_ _self57667_)
               (_E5767257681_
                (lambda () (error '"No clause matching" _self5767057677_)))
               (_K5767357695_
                (lambda (_clauses57684_)
                  (let ((_$e57690_
                         (find (lambda (_g5768557687_)
                                 (gxc#!lambda-arity-match?
                                  _g5768557687_
                                  _args57669_))
                               _clauses57684_)))
                    (if _$e57690_
                        ((lambda (_clause57693_)
                           (let ((__method60325
                                  (method-ref _clause57693_ 'optimize-call)))
                             (if __method60325
                                 (__method60325
                                  _clause57693_
                                  _stx57668_
                                  _args57669_)
                                 (error '"Missing method"
                                        _clause57693_
                                        'optimize-call))))
                         _$e57690_)
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _stx57668_
                         (map gxc#!lambda-arity _clauses57684_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5767057677_
                 'gxc#!case-lambda::t))
              (let* ((_e5767457698_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5767057677_ '1)))
                     (_e5767557701_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5767057677_ '2)))
                     (_clauses57704_ _e5767557701_))
                (_K5767357695_ _clauses57704_))
              (_E5767257681_)))))
    (bind-method!
     gxc#!case-lambda::t
     'optimize-call
     gxc#!case-lambda::optimize-call
     '#f)
    (define gxc#!lambda-arity-match?
      (lambda (_self57481_ _args57482_)
        (let* ((_self5748357490_ _self57481_)
               (_E5748557494_
                (lambda () (error '"No clause matching" _self5748357490_)))
               (_K5748657534_
                (lambda (_arity57497_)
                  (let* ((_arity5749857507_ _arity57497_)
                         (_E5750157511_
                          (lambda ()
                            (error '"No clause matching" _arity5749857507_))))
                    (let ((_K5750557531_
                           (lambda () (fx= (length _args57482_) _arity57497_)))
                          (_K5750257517_
                           (lambda (_arity57515_)
                             (fx>= (length _args57482_) _arity57515_))))
                      (let ((_try-match5750057527_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity5749857507_))
                                   (let ((_tl5750457522_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity5749857507_)))
                                         (_hd5750357520_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity5749857507_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl5750457522_))
                                         (let ((_arity57525_ _hd5750357520_))
                                           (_K5750257517_ _arity57525_))
                                         (_E5750157511_)))
                                   (_E5750157511_)))))
                        (if (fixnum? _arity5749857507_)
                            (_K5750557531_)
                            (_try-match5750057527_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5748357490_ 'gxc#!lambda::t))
              (let* ((_e5748757537_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5748357490_ '1)))
                     (_e5748857540_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5748357490_ '2)))
                     (_arity57543_ _e5748857540_))
                (_K5748657534_ _arity57543_))
              (_E5748557494_)))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self57366_ _stx57367_ _args57368_)
        (let* ((_self5736957377_ _self57366_)
               (_E5737157381_
                (lambda () (error '"No clause matching" _self5736957377_)))
               (_K5737257465_
                (lambda (_dispatch57384_ _table57385_)
                  (let* ((_g5738657395_
                          (gxc#optimizer-lookup-type _dispatch57384_))
                         (_else5738857403_
                          (lambda ()
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch57384_)
                            (gxc#xform-call% _stx57367_)))
                         (_K5739057449_
                          (lambda (_main57406_ _keys57407_)
                            (let ((_g60326_
                                   (gxc#!kw-lambda-split-args
                                    _stx57367_
                                    _args57368_)))
                              (begin
                                (let ((_g60327_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g60326_)
                                             (##vector-length _g60326_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g60327_ 2)))
                                      (error "Context expects 2 values"
                                             _g60327_)))
                                (let ((_pargs57409_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g60326_ 0)))
                                      (_kwargs57410_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g60326_ 1))))
                                  (begin
                                    (gxc#verbose
                                     '"dispatch kw-lambda => "
                                     _main57406_)
                                    (if _table57385_
                                        (let ((_xargs57417_
                                               (map (lambda (_key57412_)
                                                      (let ((_$e57414_
                                                             (assgetq _key57412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _kwargs57410_)))
                (if _$e57414_ (values _$e57414_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys57407_)))
                                          (for-each
                                           (lambda (_kw57419_)
                                             (if (memq (car _kw57419_)
                                                       _keys57407_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx57367_
                                                  _keys57407_
                                                  _kw57419_)))
                                           _kwargs57410_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main57406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs57409_ _xargs57417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx57367_)))
                                        (let* ((_kwt57421_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars57424_
                                                (map (lambda (_g60328_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs57410_))
                                               (_kwbind57429_
                                                (map (lambda (_kw57426_
                                                              _kwvar57427_)
                                                       (cons (cons _kwvar57427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cdr _kw57426_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57410_
                                                     _kwvars57424_))
                                               (_kwset57434_
                                                (map (lambda (_kw57431_
                                                              _kwvar57432_)
                                                       (cons '%#call
                                                             (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _kwt57421_ '()))
                                 (cons (cons '%#quote
                                             (cons (car _kw57431_) '()))
                                       (cons (cons '%#ref
                                                   (cons _kwvar57432_ '()))
                                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57410_
                                                     _kwvars57424_))
                                               (_xkwargs57439_
                                                (map (lambda (_kw57436_
                                                              _kwvar57437_)
                                                       (cons (car _kw57436_)
                                                             (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _kwvar57437_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57410_
                                                     _kwvars57424_))
                                               (_xargs57446_
                                                (map (lambda (_key57441_)
                                                       (let ((_$e57443_
                                                              (assgetq _key57441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _xkwargs57439_)))
                 (if _$e57443_ (values _$e57443_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys57407_)))
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#let-values
                                                  (cons _kwbind57429_
                                                        (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons (cons _kwt57421_ '())
                                              (cons (gxc#xform-wrap-source
                                                     (cons '%#call
                                                           (cons '(%#ref make-hash-table-eq)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '(%#quote size:)
                               (cons (cons '%#quote
                                           (cons (length _kwargs57410_) '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx57367_)
                                                    '()))
                                        '())
                                  (cons (cons '%#begin
                                              (foldr1 cons
                                                      (cons (gxc#xform-wrap-source
                                                             (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _main57406_ '()))
                                 (cons (cons '%#ref (cons _kwt57421_ '()))
                                       (foldr1 cons
                                               _pargs57409_
                                               _xargs57446_))))
                     _stx57367_)
                    '())
              _kwset57434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx57367_)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g5738657395_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e5739157452_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5738657395_ '1)))
                               (_e5739257455_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5738657395_ '2)))
                               (_keys57458_ _e5739257455_)
                               (_e5739357460_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5738657395_ '3)))
                               (_main57463_ _e5739357460_))
                          (_K5739057449_ _main57463_ _keys57458_))
                        (_else5738857403_))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5736957377_ 'gxc#!kw-lambda::t))
              (let* ((_e5737357468_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5736957377_ '1)))
                     (_e5737457471_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5736957377_ '2)))
                     (_table57474_ _e5737457471_)
                     (_e5737557476_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5736957377_ '3)))
                     (_dispatch57479_ _e5737557476_))
                (_K5737257465_ _dispatch57479_ _table57474_))
              (_E5737157381_)))))
    (bind-method!
     gxc#!kw-lambda::t
     'optimize-call
     gxc#!kw-lambda::optimize-call
     '#f)
    (define gxc#!kw-lambda-split-args
      (lambda (_stx56979_ _args56980_)
        (let _lp56982_ ((_rest56984_ _args56980_)
                        (_pargs56985_ '())
                        (_kwargs56986_ '()))
          (let* ((___stx6020760208_ _rest56984_)
                 (_g5699257044_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6020760208_))))
            (let ((___kont6020960210_
                   (lambda (_L57223_ _L57224_)
                     (_lp56982_
                      _L57223_
                      (cons _L57224_ _pargs56985_)
                      _kwargs56986_)))
                  (___kont6021160212_
                   (lambda (_L57169_)
                     (values (foldl1 cons _L57169_ _pargs56985_)
                             (reverse _kwargs56986_))))
                  (___kont6021360214_
                   (lambda (_L57116_ _L57117_ _L57118_)
                     (let ((_kw57135_ (gx#stx-e _L57118_)))
                       (if (assq _kw57135_ _kwargs56986_)
                           (gxc#raise-compile-error
                            '"Illegal keyword lambda application; duplicate keyword"
                            _stx56979_
                            _kw57135_)
                           (_lp56982_
                            _L57116_
                            _pargs56985_
                            (cons (cons _kw57135_ _L57117_) _kwargs56986_))))))
                  (___kont6021560216_
                   (lambda (_L57064_ _L57065_)
                     (_lp56982_
                      _L57064_
                      (cons _L57065_ _pargs56985_)
                      _kwargs56986_)))
                  (___kont6021760218_
                   (lambda ()
                     (values (reverse _pargs56985_) (reverse _kwargs56986_)))))
              (let* ((_g5699157051_
                      (lambda ()
                        (if (gx#stx-null? ___stx6020760208_)
                            (___kont6021760218_)
                            (_g5699257044_))))
                     (___match6031460315_
                      (lambda (_e5702357084_
                               _hd5702457087_
                               _tl5702557089_
                               _e5702657092_
                               _hd5702757095_
                               _tl5702857097_
                               _e5702957100_
                               _hd5703057103_
                               _tl5703157105_
                               _e5703257108_
                               _hd5703357111_
                               _tl5703457113_)
                        (let ((_L57116_ _tl5703457113_)
                              (_L57117_ _hd5703357111_)
                              (_L57118_ _hd5703057103_))
                          (if (gx#stx-keyword? _L57118_)
                              (___kont6021360214_ _L57116_ _L57117_ _L57118_)
                              (___kont6021560216_
                               _tl5702557089_
                               _hd5702457087_))))))
                (if (gx#stx-pair? ___stx6020760208_)
                    (let ((_e5699657188_ (gx#stx-e ___stx6020760208_)))
                      (let ((_tl5699857193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5699657188_)))
                            (_hd5699757191_
                             (let ()
                               (declare (not safe))
                               (##car _e5699657188_))))
                        (if (gx#stx-pair? _hd5699757191_)
                            (let ((_e5699957196_ (gx#stx-e _hd5699757191_)))
                              (let ((_tl5700157201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5699957196_)))
                                    (_hd5700057199_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5699957196_))))
                                (if (gx#identifier? _hd5700057199_)
                                    (if (gx#stx-eq? '%#quote _hd5700057199_)
                                        (if (gx#stx-pair? _tl5700157201_)
                                            (let ((_e5700257204_
                                                   (gx#stx-e _tl5700157201_)))
                                              (let ((_tl5700457209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5700257204_)))
                                                    (_hd5700357207_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5700257204_))))
                                                (if (gx#stx-datum?
                                                     _hd5700357207_)
                                                    (let ((_e5700557212_
                                                           (gx#stx-e
                                                            _hd5700357207_)))
                                                      (if (equal? _e5700557212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (gx#stx-null? _tl5700457209_)
                      (if (gx#stx-pair? _tl5699857193_)
                          (let ((_e5700657215_ (gx#stx-e _tl5699857193_)))
                            (let ((_tl5700857220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5700657215_)))
                                  (_hd5700757218_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5700657215_))))
                              (___kont6020960210_
                               _tl5700857220_
                               _hd5700757218_)))
                          (___kont6021560216_ _tl5699857193_ _hd5699757191_))
                      (___kont6021560216_ _tl5699857193_ _hd5699757191_))
                  (if (equal? _e5700557212_ '#!rest)
                      (if (gx#stx-null? _tl5700457209_)
                          (___kont6021160212_ _tl5699857193_)
                          (___kont6021560216_ _tl5699857193_ _hd5699757191_))
                      (if (gx#stx-null? _tl5700457209_)
                          (if (gx#stx-pair? _tl5699857193_)
                              (let ((_e5703257108_ (gx#stx-e _tl5699857193_)))
                                (let ((_tl5703457113_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5703257108_)))
                                      (_hd5703357111_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5703257108_))))
                                  (___match6031460315_
                                   _e5699657188_
                                   _hd5699757191_
                                   _tl5699857193_
                                   _e5699957196_
                                   _hd5700057199_
                                   _tl5700157201_
                                   _e5700257204_
                                   _hd5700357207_
                                   _tl5700457209_
                                   _e5703257108_
                                   _hd5703357111_
                                   _tl5703457113_)))
                              (___kont6021560216_
                               _tl5699857193_
                               _hd5699757191_))
                          (___kont6021560216_
                           _tl5699857193_
                           _hd5699757191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5700457209_)
                                                        (if (gx#stx-pair?
                                                             _tl5699857193_)
                                                            (let ((_e5703257108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl5699857193_)))
                      (let ((_tl5703457113_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5703257108_)))
                            (_hd5703357111_
                             (let ()
                               (declare (not safe))
                               (##car _e5703257108_))))
                        (___match6031460315_
                         _e5699657188_
                         _hd5699757191_
                         _tl5699857193_
                         _e5699957196_
                         _hd5700057199_
                         _tl5700157201_
                         _e5700257204_
                         _hd5700357207_
                         _tl5700457209_
                         _e5703257108_
                         _hd5703357111_
                         _tl5703457113_)))
                    (___kont6021560216_ _tl5699857193_ _hd5699757191_))
                (___kont6021560216_ _tl5699857193_ _hd5699757191_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6021560216_
                                             _tl5699857193_
                                             _hd5699757191_))
                                        (___kont6021560216_
                                         _tl5699857193_
                                         _hd5699757191_))
                                    (___kont6021560216_
                                     _tl5699857193_
                                     _hd5699757191_))))
                            (___kont6021560216_
                             _tl5699857193_
                             _hd5699757191_))))
                    (_g5699157051_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self56975_ _stx56976_ _args56977_)
        (gxc#xform-call% _stx56976_)))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'optimize-call
     gxc#!kw-lambda-primary::optimize-call
     '#f)))
