(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1695199296)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl59940_ (make-table 'test: eq?)))
           (hash-copy! _tbl59940_ (force gxc#&basic-xform))
           (table-set! _tbl59940_ '%#call gxc#optimize-call%)
           _tbl59940_))))
    (define gxc#apply-optimize-call
      (lambda (_stx59933_ . _args59935_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx59933_ _args59935_))
         gxc#current-compile-methods
         (force gxc#&optimize-call))))
    (define gxc#optimize-call%
      (lambda (_stx59839_)
        (let* ((___stx5994359944_ _stx59839_)
               (_g5984259862_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5994359944_))))
          (let ((___kont5994559946_
                 (lambda (_L59906_ _L59907_)
                   (let* ((_rator-id59925_ (gxc#identifier-symbol _L59907_))
                          (_rator-type59927_
                           (gxc#optimizer-resolve-type _rator-id59925_)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type59927_
                            'gxc#!procedure::t))
                         (begin
                           (gxc#verbose
                            '"optimize-call "
                            _rator-id59925_
                            '" => "
                            _rator-type59927_
                            '" "
                            (##structure-ref
                             _rator-type59927_
                             '1
                             gxc#!type::t
                             '#f))
                           (let ((__method60305
                                  (method-ref
                                   _rator-type59927_
                                   'optimize-call)))
                             (if __method60305
                                 (__method60305
                                  _rator-type59927_
                                  _stx59839_
                                  _L59906_)
                                 (error '"Missing method"
                                        _rator-type59927_
                                        'optimize-call))))
                         (if (not _rator-type59927_)
                             (gxc#xform-call% _stx59839_)
                             (gxc#raise-compile-error
                              '"Illegal application; not a procedure"
                              _stx59839_
                              _rator-type59927_))))))
                (___kont5994759948_ (lambda () (gxc#xform-call% _stx59839_))))
            (if (gx#stx-pair? ___stx5994359944_)
                (let ((_e5984659874_ (gx#stx-e ___stx5994359944_)))
                  (let ((_tl5984859879_
                         (let () (declare (not safe)) (##cdr _e5984659874_)))
                        (_hd5984759877_
                         (let () (declare (not safe)) (##car _e5984659874_))))
                    (if (gx#stx-pair? _tl5984859879_)
                        (let ((_e5984959882_ (gx#stx-e _tl5984859879_)))
                          (let ((_tl5985159887_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e5984959882_)))
                                (_hd5985059885_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e5984959882_))))
                            (if (gx#stx-pair? _hd5985059885_)
                                (let ((_e5985259890_
                                       (gx#stx-e _hd5985059885_)))
                                  (let ((_tl5985459895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5985259890_)))
                                        (_hd5985359893_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5985259890_))))
                                    (if (gx#identifier? _hd5985359893_)
                                        (if (gx#stx-eq? '%#ref _hd5985359893_)
                                            (if (gx#stx-pair? _tl5985459895_)
                                                (let ((_e5985559898_
                                                       (gx#stx-e
                                                        _tl5985459895_)))
                                                  (let ((_tl5985759903_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e5985559898_)))
                                                        (_hd5985659901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e5985559898_))))
                                                    (if (gx#stx-null?
                                                         _tl5985759903_)
                                                        (___kont5994559946_
                                                         _tl5985159887_
                                                         _hd5985659901_)
                                                        (___kont5994759948_))))
                                                (___kont5994759948_))
                                            (___kont5994759948_))
                                        (___kont5994759948_))))
                                (___kont5994759948_))))
                        (___kont5994759948_))))
                (___kont5994759948_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self59693_ _stx59694_ _args59695_)
        (let* ((_self5969659702_ _self59693_)
               (_E5969859706_
                (lambda () (error '"No clause matching" _self5969659702_)))
               (_K5969959831_
                (lambda (_struct-t59709_)
                  (let* ((_struct-type59711_
                          (gxc#optimizer-resolve-type _struct-t59709_))
                         (_struct-type5971259726_ _struct-type59711_)
                         (_else5971559734_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx59694_
                             _struct-t59709_
                             _struct-type59711_))))
                    (let ((_K5971859806_
                           (lambda (_plist59745_ _struct-type-id59746_)
                             (let* ((___stx5998159982_ _args59695_)
                                    (_g5974959759_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx5998159982_))))
                               (let ((___kont5998359984_
                                      (lambda (_L59779_)
                                        (let ((_expr59800_
                                               (gxc#compile-e _L59779_))
                                              (_op59801_
                                               (if (and _plist59745_
                                                        (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _plist59745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (gxc#xform-wrap-source
                                           (cons _op59801_
                                                 (cons (cons '%#quote
                                                             (cons _struct-type-id59746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _expr59800_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _stx59694_))))
                                     (___kont5998559986_
                                      (lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx59694_))))
                                 (if (gx#stx-pair? ___stx5998159982_)
                                     (let ((_e5975259771_
                                            (gx#stx-e ___stx5998159982_)))
                                       (let ((_tl5975459776_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5975259771_)))
                                             (_hd5975359774_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5975259771_))))
                                         (if (gx#stx-null? _tl5975459776_)
                                             (___kont5998359984_
                                              _hd5975359774_)
                                             (___kont5998559986_))))
                                     (___kont5998559986_))))))
                          (_K5971759739_
                           (lambda () (gxc#xform-call% _stx59694_))))
                      (let ((_try-match5971459742_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5971259726_ '#f))
                                   (_K5971759739_)
                                   (_else5971559734_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5971259726_
                               'gxc#!struct-type::t))
                            (let* ((_e5971959809_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '1)))
                                   (_e5972059814_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '2)))
                                   (_e5972159817_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '3)))
                                   (_e5972259820_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '4)))
                                   (_e5972359823_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '5)))
                                   (_e5972459826_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5971259726_
                                       '6))))
                              (let ((_struct-type-id59812_ _e5971959809_)
                                    (_plist59829_ _e5972459826_))
                                (_K5971859806_
                                 _plist59829_
                                 _struct-type-id59812_)))
                            (_try-match5971459742_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5969659702_
                 'gxc#!struct-pred::t))
              (let* ((_e5970059834_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5969659702_ '1)))
                     (_struct-t59837_ _e5970059834_))
                (_K5969959831_ _struct-t59837_))
              (_E5969859706_)))))
    (bind-method!
     gxc#!struct-pred::t
     'optimize-call
     gxc#!struct-pred::optimize-call
     '#f)
    (define gxc#!struct-cons::optimize-call
      (lambda (_self59467_ _stx59468_ _args59469_)
        (let* ((_self5947059476_ _self59467_)
               (_E5947259480_
                (lambda () (error '"No clause matching" _self5947059476_)))
               (_K5947359563_
                (lambda (_struct-t59483_)
                  (let* ((_struct-type59485_
                          (gxc#optimizer-resolve-type _struct-t59483_))
                         (_struct-type5948659499_ _struct-type59485_)
                         (_else5948959507_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct constructor application; not a struct type"
                             _stx59468_
                             _struct-t59483_
                             _struct-type59485_))))
                    (let ((_K5949259537_
                           (lambda (_ctor59518_
                                    _xfields59519_
                                    _fields59520_
                                    _type-id59521_)
                             (let* ((_args59523_
                                     (map gxc#compile-e _args59469_))
                                    (_$e59525_
                                     (if _ctor59518_
                                         (if _xfields59519_
                                             (gxc#!struct-type-lookup-method
                                              _struct-type59485_
                                              _ctor59518_)
                                             '#f)
                                         '#f)))
                               (if _$e59525_
                                   ((lambda (_kons59528_)
                                      (let ((_$obj59530_
                                             (make-symbol (gensym '__obj))))
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons (cons (cons (cons _$obj59530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons 'make-object '()))
                                           (cons (cons '%#ref
                                                       (cons _struct-t59483_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (fx+ _fields59520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _xfields59519_)
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
                                                   (cons _kons59528_ '()))
                                             (cons (cons '%#ref
                                                         (cons _$obj59530_
                                                               '()))
                                                   _args59523_)))
                                 _stx59468_))
                               (cons (cons '%#ref (cons _$obj59530_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx59468_)))
                                    _$e59525_)
                                   (if (or _ctor59518_ (not _xfields59519_))
                                       (gxc#xform-wrap-source
                                        (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'make-struct-instance
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _struct-t59483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _args59523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _stx59468_)
                                       (let ((_arity59535_
                                              (fx+ _fields59520_
                                                   _xfields59519_)))
                                         (if (fx= _arity59535_
                                                  (length _args59523_))
                                             (gxc#xform-wrap-source
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _struct-t59483_ '())) _args59523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _stx59468_)
                                             (gxc#raise-compile-error
                                              '"Illegal struct constructor application; arity mismatch"
                                              _stx59468_
                                              _struct-t59483_
                                              _arity59535_))))))))
                          (_K5949159512_
                           (lambda ()
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t59483_)
                             (gxc#xform-call% _stx59468_))))
                      (let ((_try-match5948859515_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5948659499_ '#f))
                                   (_K5949159512_)
                                   (_else5948959507_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5948659499_
                               'gxc#!struct-type::t))
                            (let* ((_e5949359540_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5948659499_
                                       '1)))
                                   (_e5949459545_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5948659499_
                                       '2)))
                                   (_e5949559548_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5948659499_
                                       '3)))
                                   (_e5949659553_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5948659499_
                                       '4)))
                                   (_e5949759558_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5948659499_
                                       '5))))
                              (let ((_type-id59543_ _e5949359540_)
                                    (_fields59551_ _e5949559548_)
                                    (_xfields59556_ _e5949659553_)
                                    (_ctor59561_ _e5949759558_))
                                (_K5949259537_
                                 _ctor59561_
                                 _xfields59556_
                                 _fields59551_
                                 _type-id59543_)))
                            (_try-match5948859515_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5947059476_
                 'gxc#!struct-cons::t))
              (let* ((_e5947459566_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5947059476_ '1)))
                     (_struct-t59569_ _e5947459566_))
                (_K5947359563_ _struct-t59569_))
              (_E5947259480_)))))
    (bind-method!
     gxc#!struct-cons::t
     'optimize-call
     gxc#!struct-cons::optimize-call
     '#f)
    (define gxc#!struct-getf::optimize-call
      (lambda (_self59178_ _stx59179_ _args59180_)
        (let* ((_self5918159189_ _self59178_)
               (_E5918359193_
                (lambda () (error '"No clause matching" _self5918159189_)))
               (_K5918459327_
                (lambda (_unchecked?59196_ _off59197_ _struct-t59198_)
                  (let* ((_struct-type59200_
                          (gxc#optimizer-resolve-type _struct-t59198_))
                         (_struct-type5920159215_ _struct-type59200_)
                         (_else5920459223_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx59179_
                             _struct-t59198_
                             _struct-type59200_))))
                    (let ((_K5920759298_
                           (lambda (_plist59234_
                                    _xfields59235_
                                    _fields59236_
                                    _struct-type-id59237_)
                             (if _xfields59235_
                                 (let* ((___stx6002960030_ _args59180_)
                                        (_g5924059250_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx6002960030_))))
                                   (let ((___kont6003160032_
                                          (lambda (_L59270_)
                                            (let ((_expr59291_
                                                   (gxc#compile-e _L59270_))
                                                  (_off59292_
                                                   (fx+ _off59197_
                                                        _xfields59235_
                                                        '1))
                                                  (_op59293_
                                                   (if _unchecked?59196_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist59234_
                                                                (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _plist59234_))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gxc#xform-wrap-source
                                               (cons _op59293_
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _struct-t59198_ '()))
                   (cons (cons '%#quote (cons _off59292_ '()))
                         (cons _expr59291_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx59179_))))
                                         (___kont6003360034_
                                          (lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx59179_))))
                                     (if (gx#stx-pair? ___stx6002960030_)
                                         (let ((_e5924359262_
                                                (gx#stx-e ___stx6002960030_)))
                                           (let ((_tl5924559267_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5924359262_)))
                                                 (_hd5924459265_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5924359262_))))
                                             (if (gx#stx-null? _tl5924559267_)
                                                 (___kont6003160032_
                                                  _hd5924459265_)
                                                 (___kont6003360034_))))
                                         (___kont6003360034_))))
                                 (begin
                                   (gxc#verbose
                                    '"struct-getf: incomplete struct "
                                    _struct-type-id59237_)
                                   (gxc#xform-call% _stx59179_)))))
                          (_K5920659228_
                           (lambda () (gxc#xform-call% _stx59179_))))
                      (let ((_try-match5920359231_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5920159215_ '#f))
                                   (_K5920659228_)
                                   (_else5920459223_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5920159215_
                               'gxc#!struct-type::t))
                            (let* ((_e5920859301_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '1)))
                                   (_e5920959306_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '2)))
                                   (_e5921059309_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '3)))
                                   (_e5921159314_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '4)))
                                   (_e5921259319_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '5)))
                                   (_e5921359322_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5920159215_
                                       '6))))
                              (let ((_struct-type-id59304_ _e5920859301_)
                                    (_fields59312_ _e5921059309_)
                                    (_xfields59317_ _e5921159314_)
                                    (_plist59325_ _e5921359322_))
                                (_K5920759298_
                                 _plist59325_
                                 _xfields59317_
                                 _fields59312_
                                 _struct-type-id59304_)))
                            (_try-match5920359231_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5918159189_
                 'gxc#!struct-getf::t))
              (let* ((_e5918559330_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5918159189_ '1)))
                     (_struct-t59333_ _e5918559330_)
                     (_e5918659335_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5918159189_ '2)))
                     (_off59338_ _e5918659335_)
                     (_e5918759340_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5918159189_ '3)))
                     (_unchecked?59343_ _e5918759340_))
                (_K5918459327_ _unchecked?59343_ _off59338_ _struct-t59333_))
              (_E5918359193_)))))
    (bind-method!
     gxc#!struct-getf::t
     'optimize-call
     gxc#!struct-getf::optimize-call
     '#f)
    (define gxc#!struct-setf::optimize-call
      (lambda (_self58872_ _stx58873_ _args58874_)
        (let* ((_self5887558883_ _self58872_)
               (_E5887758887_
                (lambda () (error '"No clause matching" _self5887558883_)))
               (_K5887859038_
                (lambda (_unchecked?58890_ _off58891_ _struct-t58892_)
                  (let* ((_struct-type58894_
                          (gxc#optimizer-resolve-type _struct-t58892_))
                         (_struct-type5889558909_ _struct-type58894_)
                         (_else5889858917_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal struct predicate application; not a struct type"
                             _stx58873_
                             _struct-t58892_
                             _struct-type58894_))))
                    (let ((_K5890159009_
                           (lambda (_plist58928_
                                    _xfields58929_
                                    _fields58930_
                                    _struct-type-id58931_)
                             (if _xfields58929_
                                 (let* ((___stx6006260063_ _args58874_)
                                        (_g5893458948_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx6006260063_))))
                                   (let ((___kont6006460065_
                                          (lambda (_L58976_ _L58977_)
                                            (let ((_expr59001_
                                                   (gxc#compile-e _L58977_))
                                                  (_val59002_
                                                   (gxc#compile-e _L58976_))
                                                  (_off59003_
                                                   (fx+ _off58891_
                                                        _xfields58929_
                                                        '1))
                                                  (_op59004_
                                                   (if _unchecked?58890_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist58928_
                                                                (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _plist58928_))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gxc#xform-wrap-source
                                               (cons _op59004_
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _struct-t58892_ '()))
                   (cons (cons '%#quote (cons _off59003_ '()))
                         (cons _expr59001_ (cons _val59002_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58873_))))
                                         (___kont6006660067_
                                          (lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx58873_))))
                                     (if (gx#stx-pair? ___stx6006260063_)
                                         (let ((_e5893858960_
                                                (gx#stx-e ___stx6006260063_)))
                                           (let ((_tl5894058965_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5893858960_)))
                                                 (_hd5893958963_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5893858960_))))
                                             (if (gx#stx-pair? _tl5894058965_)
                                                 (let ((_e5894158968_
                                                        (gx#stx-e
                                                         _tl5894058965_)))
                                                   (let ((_tl5894358973_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5894158968_)))
                                                         (_hd5894258971_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5894158968_))))
                                                     (if (gx#stx-null?
                                                          _tl5894358973_)
                                                         (___kont6006460065_
                                                          _hd5894258971_
                                                          _hd5893958963_)
                                                         (___kont6006660067_))))
                                                 (___kont6006660067_))))
                                         (___kont6006660067_))))
                                 (begin
                                   (gxc#verbose
                                    '"struct-setf: incomplete struct "
                                    _struct-type-id58931_)
                                   (gxc#xform-call% _stx58873_)))))
                          (_K5890058922_
                           (lambda () (gxc#xform-call% _stx58873_))))
                      (let ((_try-match5889758925_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type5889558909_ '#f))
                                   (_K5890058922_)
                                   (_else5889858917_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type5889558909_
                               'gxc#!struct-type::t))
                            (let* ((_e5890259012_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '1)))
                                   (_e5890359017_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '2)))
                                   (_e5890459020_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '3)))
                                   (_e5890559025_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '4)))
                                   (_e5890659030_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '5)))
                                   (_e5890759033_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type5889558909_
                                       '6))))
                              (let ((_struct-type-id59015_ _e5890259012_)
                                    (_fields59023_ _e5890459020_)
                                    (_xfields59028_ _e5890559025_)
                                    (_plist59036_ _e5890759033_))
                                (_K5890159009_
                                 _plist59036_
                                 _xfields59028_
                                 _fields59023_
                                 _struct-type-id59015_)))
                            (_try-match5889758925_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5887558883_
                 'gxc#!struct-setf::t))
              (let* ((_e5887959041_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5887558883_ '1)))
                     (_struct-t59044_ _e5887959041_)
                     (_e5888059046_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5887558883_ '2)))
                     (_off59049_ _e5888059046_)
                     (_e5888159051_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5887558883_ '3)))
                     (_unchecked?59054_ _e5888159051_))
                (_K5887859038_ _unchecked?59054_ _off59049_ _struct-t59044_))
              (_E5887758887_)))))
    (bind-method!
     gxc#!struct-setf::t
     'optimize-call
     gxc#!struct-setf::optimize-call
     '#f)
    (define gxc#!class-pred::optimize-call
      (lambda (_self58600_ _stx58601_ _args58602_)
        (let* ((_self5860358609_ _self58600_)
               (_E5860558613_
                (lambda () (error '"No clause matching" _self5860358609_)))
               (_K5860658742_
                (lambda (_class-t58616_)
                  (let* ((_class-type58618_
                          (gxc#optimizer-resolve-type _class-t58616_))
                         (_class-type5861958634_ _class-type58618_)
                         (_else5862258642_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"illegal class predicate application; not a class type"
                             _stx58601_
                             _class-t58616_
                             _class-type58618_))))
                    (let ((_K5862558714_
                           (lambda (_plist58653_ _class-type-id58654_)
                             (let* ((___stx6010160102_ _args58602_)
                                    (_g5865758667_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx6010160102_))))
                               (let ((___kont6010360104_
                                      (lambda (_L58687_)
                                        (let ((_expr58708_
                                               (gxc#compile-e _L58687_))
                                              (_final?58709_
                                               (if _plist58653_
                                                   (assgetq 'final:
                                                            _plist58653_)
                                                   '#f)))
                                          (if _final?58709_
                                              (gxc#xform-wrap-source
                                               (cons '%#struct-direct-instance?
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _class-type-id58654_ '()))
                   (cons _expr58708_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58601_)
                                              (gxc#xform-wrap-source
                                               (cons '%#call
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class-instance? '()))
                   (cons (cons '%#ref (cons _class-t58616_ '()))
                         (cons _expr58708_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx58601_)))))
                                     (___kont6010560106_
                                      (lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal class predicate application"
                                         _stx58601_))))
                                 (if (gx#stx-pair? ___stx6010160102_)
                                     (let ((_e5866058679_
                                            (gx#stx-e ___stx6010160102_)))
                                       (let ((_tl5866258684_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5866058679_)))
                                             (_hd5866158682_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5866058679_))))
                                         (if (gx#stx-null? _tl5866258684_)
                                             (___kont6010360104_
                                              _hd5866158682_)
                                             (___kont6010560106_))))
                                     (___kont6010560106_))))))
                          (_K5862458647_
                           (lambda () (gxc#xform-call% _stx58601_))))
                      (let ((_try-match5862158650_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type5861958634_ '#f))
                                   (_K5862458647_)
                                   (_else5862258642_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type5861958634_
                               'gxc#!class-type::t))
                            (let* ((_e5862658717_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '1)))
                                   (_e5862758722_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '2)))
                                   (_e5862858725_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '3)))
                                   (_e5862958728_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '4)))
                                   (_e5863058731_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '5)))
                                   (_e5863158734_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '6)))
                                   (_e5863258737_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type5861958634_
                                       '7))))
                              (let ((_class-type-id58720_ _e5862658717_)
                                    (_plist58740_ _e5863258737_))
                                (_K5862558714_
                                 _plist58740_
                                 _class-type-id58720_)))
                            (_try-match5862158650_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5860358609_
                 'gxc#!class-pred::t))
              (let* ((_e5860758745_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5860358609_ '1)))
                     (_class-t58748_ _e5860758745_))
                (_K5860658742_ _class-t58748_))
              (_E5860558613_)))))
    (bind-method!
     gxc#!class-pred::t
     'optimize-call
     gxc#!class-pred::optimize-call
     '#f)
    (define gxc#!class-cons::optimize-call
      (lambda (_self58418_ _stx58419_ _args58420_)
        (let* ((_self5842158427_ _self58418_)
               (_E5842358431_
                (lambda () (error '"No clause matching" _self5842158427_)))
               (_K5842458470_
                (lambda (_class-t58434_)
                  (let* ((_class-type58436_
                          (gxc#optimizer-resolve-type _class-t58434_))
                         (_class-type5843758445_ _class-type58436_)
                         (_else5844058453_
                          (lambda ()
                            (gxc#raise-compile-error
                             '"Illegal class constructor application; not a struct type"
                             _stx58419_
                             _class-t58434_
                             _class-type58436_))))
                    (let ((_K5844358467_
                           (lambda ()
                             (let ((_args58465_
                                    (map gxc#compile-e _args58420_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons 'make-class-instance
                                                        '()))
                                            (cons (cons '%#ref
                                                        (cons _class-t58434_
                                                              '()))
                                                  _args58465_)))
                                _stx58419_))))
                          (_K5844258458_
                           (lambda ()
                             (gxc#verbose
                              '"cannot inline class constructor; class struct type "
                              _class-t58434_)
                             (gxc#xform-call% _stx58419_))))
                      (let ((_try-match5843958461_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type5843758445_ '#f))
                                   (_K5844258458_)
                                   (_else5844058453_)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type5843758445_
                               'gxc#!class-type::t))
                            (_K5844358467_)
                            (_try-match5843958461_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5842158427_
                 'gxc#!class-cons::t))
              (let* ((_e5842558473_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5842158427_ '1)))
                     (_class-t58476_ _e5842558473_))
                (_K5842458470_ _class-t58476_))
              (_E5842358431_)))))
    (bind-method!
     gxc#!class-cons::t
     'optimize-call
     gxc#!class-cons::optimize-call
     '#f)
    (define gxc#!class-getf::optimize-call
      (lambda (_self58205_ _stx58206_ _args58207_)
        (let* ((_self5820858216_ _self58205_)
               (_E5821058220_
                (lambda () (error '"No clause matching" _self5820858216_)))
               (_K5821158278_
                (lambda (_unchecked?58223_ _slot58224_ _class-t58225_)
                  (let* ((___stx6014160142_ _args58207_)
                         (_g5822858238_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx6014160142_))))
                    (let ((___kont6014360144_
                           (lambda (_L58258_)
                             (let ((_expr58273_ (gxc#compile-e _L58258_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons (if _unchecked?58223_
                                                            'slot-ref
                                                            'unchecked-slot-ref)
                                                        '()))
                                            (cons _expr58273_
                                                  (cons (cons '%#quote
                                                              (cons _slot58224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _stx58206_))))
                          (___kont6014560146_
                           (lambda ()
                             (gxc#raise-compile-error
                              '"Illegal class accessor application"
                              _stx58206_))))
                      (if (gx#stx-pair? ___stx6014160142_)
                          (let ((_e5823158250_ (gx#stx-e ___stx6014160142_)))
                            (let ((_tl5823358255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5823158250_)))
                                  (_hd5823258253_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5823158250_))))
                              (if (gx#stx-null? _tl5823358255_)
                                  (___kont6014360144_ _hd5823258253_)
                                  (___kont6014560146_))))
                          (___kont6014560146_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5820858216_
                 'gxc#!class-getf::t))
              (let* ((_e5821258281_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5820858216_ '1)))
                     (_class-t58284_ _e5821258281_)
                     (_e5821358286_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5820858216_ '2)))
                     (_slot58289_ _e5821358286_)
                     (_e5821458291_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5820858216_ '3)))
                     (_unchecked?58294_ _e5821458291_))
                (_K5821158278_ _unchecked?58294_ _slot58289_ _class-t58284_))
              (_E5821058220_)))))
    (bind-method!
     gxc#!class-getf::t
     'optimize-call
     gxc#!class-getf::optimize-call
     '#f)
    (define gxc#!class-setf::optimize-call
      (lambda (_self57975_ _stx57976_ _args57977_)
        (let* ((_self5797857986_ _self57975_)
               (_E5798057990_
                (lambda () (error '"No clause matching" _self5797857986_)))
               (_K5798158065_
                (lambda (_unchecked?57993_ _slot57994_ _class-t57995_)
                  (let* ((___stx6015760158_ _args57977_)
                         (_g5799858012_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx6015760158_))))
                    (let ((___kont6015960160_
                           (lambda (_L58040_ _L58041_)
                             (let ((_expr58059_ (gxc#compile-e _L58041_))
                                   (_val58060_ (gxc#compile-e _L58040_)))
                               (gxc#xform-wrap-source
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons (if _unchecked?57993_
                                                            'unchecked-slot-set!
                                                            'slot-set!)
                                                        '()))
                                            (cons _expr58059_
                                                  (cons (cons '%#quote
                                                              (cons _slot57994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _val58060_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _stx57976_))))
                          (___kont6016160162_
                           (lambda ()
                             (gxc#raise-compile-error
                              '"Illegal class mutator application"
                              _stx57976_))))
                      (if (gx#stx-pair? ___stx6015760158_)
                          (let ((_e5800258024_ (gx#stx-e ___stx6015760158_)))
                            (let ((_tl5800458029_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5800258024_)))
                                  (_hd5800358027_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5800258024_))))
                              (if (gx#stx-pair? _tl5800458029_)
                                  (let ((_e5800558032_
                                         (gx#stx-e _tl5800458029_)))
                                    (let ((_tl5800758037_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5800558032_)))
                                          (_hd5800658035_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5800558032_))))
                                      (if (gx#stx-null? _tl5800758037_)
                                          (___kont6015960160_
                                           _hd5800658035_
                                           _hd5800358027_)
                                          (___kont6016160162_))))
                                  (___kont6016160162_))))
                          (___kont6016160162_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5797857986_
                 'gxc#!class-setf::t))
              (let* ((_e5798258068_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5797857986_ '1)))
                     (_class-t58071_ _e5798258068_)
                     (_e5798358073_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5797857986_ '2)))
                     (_slot58076_ _e5798358073_)
                     (_e5798458078_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5797857986_ '3)))
                     (_unchecked?58081_ _e5798458078_))
                (_K5798158065_ _unchecked?58081_ _slot58076_ _class-t58071_))
              (_E5798057990_)))))
    (bind-method!
     gxc#!class-setf::t
     'optimize-call
     gxc#!class-setf::optimize-call
     '#f)
    (define gxc#!lambda::optimize-call
      (lambda (_self57809_ _stx57810_ _args57811_)
        (let* ((_self5781257821_ _self57809_)
               (_E5781457825_
                (lambda () (error '"No clause matching" _self5781257821_)))
               (_K5781557832_
                (lambda (_inline57828_ _dispatch57829_ _arity57830_)
                  (if (gxc#!lambda-arity-match? _self57809_ _args57811_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx57810_
                       _arity57830_))
                  (if _inline57828_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline57828_ _stx57810_)
                          _stx57810_)))
                      (if _dispatch57829_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch57829_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch57829_ '()))
                                          _args57811_))
                              _stx57810_)))
                          (gxc#xform-call% _stx57810_))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5781257821_ 'gxc#!lambda::t))
              (let* ((_e5781657835_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5781257821_ '1)))
                     (_e5781757838_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5781257821_ '2)))
                     (_arity57841_ _e5781757838_)
                     (_e5781857843_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5781257821_ '3)))
                     (_dispatch57846_ _e5781857843_)
                     (_e5781957848_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5781257821_ '4)))
                     (_inline57851_ _e5781957848_))
                (_K5781557832_ _inline57851_ _dispatch57846_ _arity57841_))
              (_E5781457825_)))))
    (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
    (define gxc#!case-lambda::optimize-call
      (lambda (_self57648_ _stx57649_ _args57650_)
        (let* ((_self5765157658_ _self57648_)
               (_E5765357662_
                (lambda () (error '"No clause matching" _self5765157658_)))
               (_K5765457676_
                (lambda (_clauses57665_)
                  (let ((_$e57671_
                         (find (lambda (_g5766657668_)
                                 (gxc#!lambda-arity-match?
                                  _g5766657668_
                                  _args57650_))
                               _clauses57665_)))
                    (if _$e57671_
                        ((lambda (_clause57674_)
                           (let ((__method60306
                                  (method-ref _clause57674_ 'optimize-call)))
                             (if __method60306
                                 (__method60306
                                  _clause57674_
                                  _stx57649_
                                  _args57650_)
                                 (error '"Missing method"
                                        _clause57674_
                                        'optimize-call))))
                         _$e57671_)
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _stx57649_
                         (map gxc#!lambda-arity _clauses57665_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self5765157658_
                 'gxc#!case-lambda::t))
              (let* ((_e5765557679_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5765157658_ '1)))
                     (_e5765657682_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5765157658_ '2)))
                     (_clauses57685_ _e5765657682_))
                (_K5765457676_ _clauses57685_))
              (_E5765357662_)))))
    (bind-method!
     gxc#!case-lambda::t
     'optimize-call
     gxc#!case-lambda::optimize-call
     '#f)
    (define gxc#!lambda-arity-match?
      (lambda (_self57462_ _args57463_)
        (let* ((_self5746457471_ _self57462_)
               (_E5746657475_
                (lambda () (error '"No clause matching" _self5746457471_)))
               (_K5746757515_
                (lambda (_arity57478_)
                  (let* ((_arity5747957488_ _arity57478_)
                         (_E5748257492_
                          (lambda ()
                            (error '"No clause matching" _arity5747957488_))))
                    (let ((_K5748657512_
                           (lambda () (fx= (length _args57463_) _arity57478_)))
                          (_K5748357498_
                           (lambda (_arity57496_)
                             (fx>= (length _args57463_) _arity57496_))))
                      (let ((_try-match5748157508_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity5747957488_))
                                   (let ((_tl5748557503_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity5747957488_)))
                                         (_hd5748457501_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity5747957488_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl5748557503_))
                                         (let ((_arity57506_ _hd5748457501_))
                                           (_K5748357498_ _arity57506_))
                                         (_E5748257492_)))
                                   (_E5748257492_)))))
                        (if (fixnum? _arity5747957488_)
                            (_K5748657512_)
                            (_try-match5748157508_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5746457471_ 'gxc#!lambda::t))
              (let* ((_e5746857518_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5746457471_ '1)))
                     (_e5746957521_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5746457471_ '2)))
                     (_arity57524_ _e5746957521_))
                (_K5746757515_ _arity57524_))
              (_E5746657475_)))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self57347_ _stx57348_ _args57349_)
        (let* ((_self5735057358_ _self57347_)
               (_E5735257362_
                (lambda () (error '"No clause matching" _self5735057358_)))
               (_K5735357446_
                (lambda (_dispatch57365_ _table57366_)
                  (let* ((_g5736757376_
                          (gxc#optimizer-lookup-type _dispatch57365_))
                         (_else5736957384_
                          (lambda ()
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch57365_)
                            (gxc#xform-call% _stx57348_)))
                         (_K5737157430_
                          (lambda (_main57387_ _keys57388_)
                            (let ((_g60307_
                                   (gxc#!kw-lambda-split-args
                                    _stx57348_
                                    _args57349_)))
                              (begin
                                (let ((_g60308_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g60307_)
                                             (##vector-length _g60307_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g60308_ 2)))
                                      (error "Context expects 2 values"
                                             _g60308_)))
                                (let ((_pargs57390_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g60307_ 0)))
                                      (_kwargs57391_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g60307_ 1))))
                                  (begin
                                    (gxc#verbose
                                     '"dispatch kw-lambda => "
                                     _main57387_)
                                    (if _table57366_
                                        (let ((_xargs57398_
                                               (map (lambda (_key57393_)
                                                      (let ((_$e57395_
                                                             (assgetq _key57393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _kwargs57391_)))
                (if _$e57395_ (values _$e57395_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys57388_)))
                                          (for-each
                                           (lambda (_kw57400_)
                                             (if (memq (car _kw57400_)
                                                       _keys57388_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx57348_
                                                  _keys57388_
                                                  _kw57400_)))
                                           _kwargs57391_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main57387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs57390_ _xargs57398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx57348_)))
                                        (let* ((_kwt57402_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars57405_
                                                (map (lambda (_g60309_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs57391_))
                                               (_kwbind57410_
                                                (map (lambda (_kw57407_
                                                              _kwvar57408_)
                                                       (cons (cons _kwvar57408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cdr _kw57407_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57391_
                                                     _kwvars57405_))
                                               (_kwset57415_
                                                (map (lambda (_kw57412_
                                                              _kwvar57413_)
                                                       (cons '%#call
                                                             (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _kwt57402_ '()))
                                 (cons (cons '%#quote
                                             (cons (car _kw57412_) '()))
                                       (cons (cons '%#ref
                                                   (cons _kwvar57413_ '()))
                                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57391_
                                                     _kwvars57405_))
                                               (_xkwargs57420_
                                                (map (lambda (_kw57417_
                                                              _kwvar57418_)
                                                       (cons (car _kw57417_)
                                                             (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _kwvar57418_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs57391_
                                                     _kwvars57405_))
                                               (_xargs57427_
                                                (map (lambda (_key57422_)
                                                       (let ((_$e57424_
                                                              (assgetq _key57422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _xkwargs57420_)))
                 (if _$e57424_ (values _$e57424_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys57388_)))
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#let-values
                                                  (cons _kwbind57410_
                                                        (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (cons (cons _kwt57402_ '())
                                              (cons (gxc#xform-wrap-source
                                                     (cons '%#call
                                                           (cons '(%#ref make-hash-table-eq)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '(%#quote size:)
                               (cons (cons '%#quote
                                           (cons (length _kwargs57391_) '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx57348_)
                                                    '()))
                                        '())
                                  (cons (cons '%#begin
                                              (foldr1 cons
                                                      (cons (gxc#xform-wrap-source
                                                             (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#ref (cons _main57387_ '()))
                                 (cons (cons '%#ref (cons _kwt57402_ '()))
                                       (foldr1 cons
                                               _pargs57390_
                                               _xargs57427_))))
                     _stx57348_)
                    '())
              _kwset57415_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx57348_)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g5736757376_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e5737257433_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5736757376_ '1)))
                               (_e5737357436_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5736757376_ '2)))
                               (_keys57439_ _e5737357436_)
                               (_e5737457441_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g5736757376_ '3)))
                               (_main57444_ _e5737457441_))
                          (_K5737157430_ _main57444_ _keys57439_))
                        (_else5736957384_))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self5735057358_ 'gxc#!kw-lambda::t))
              (let* ((_e5735457449_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5735057358_ '1)))
                     (_e5735557452_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5735057358_ '2)))
                     (_table57455_ _e5735557452_)
                     (_e5735657457_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self5735057358_ '3)))
                     (_dispatch57460_ _e5735657457_))
                (_K5735357446_ _dispatch57460_ _table57455_))
              (_E5735257362_)))))
    (bind-method!
     gxc#!kw-lambda::t
     'optimize-call
     gxc#!kw-lambda::optimize-call
     '#f)
    (define gxc#!kw-lambda-split-args
      (lambda (_stx56960_ _args56961_)
        (let _lp56963_ ((_rest56965_ _args56961_)
                        (_pargs56966_ '())
                        (_kwargs56967_ '()))
          (let* ((___stx6018860189_ _rest56965_)
                 (_g5697357025_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6018860189_))))
            (let ((___kont6019060191_
                   (lambda (_L57204_ _L57205_)
                     (_lp56963_
                      _L57204_
                      (cons _L57205_ _pargs56966_)
                      _kwargs56967_)))
                  (___kont6019260193_
                   (lambda (_L57150_)
                     (values (foldl1 cons _L57150_ _pargs56966_)
                             (reverse _kwargs56967_))))
                  (___kont6019460195_
                   (lambda (_L57097_ _L57098_ _L57099_)
                     (let ((_kw57116_ (gx#stx-e _L57099_)))
                       (if (assq _kw57116_ _kwargs56967_)
                           (gxc#raise-compile-error
                            '"Illegal keyword lambda application; duplicate keyword"
                            _stx56960_
                            _kw57116_)
                           (_lp56963_
                            _L57097_
                            _pargs56966_
                            (cons (cons _kw57116_ _L57098_) _kwargs56967_))))))
                  (___kont6019660197_
                   (lambda (_L57045_ _L57046_)
                     (_lp56963_
                      _L57045_
                      (cons _L57046_ _pargs56966_)
                      _kwargs56967_)))
                  (___kont6019860199_
                   (lambda ()
                     (values (reverse _pargs56966_) (reverse _kwargs56967_)))))
              (let* ((_g5697257032_
                      (lambda ()
                        (if (gx#stx-null? ___stx6018860189_)
                            (___kont6019860199_)
                            (_g5697357025_))))
                     (___match6029560296_
                      (lambda (_e5700457065_
                               _hd5700557068_
                               _tl5700657070_
                               _e5700757073_
                               _hd5700857076_
                               _tl5700957078_
                               _e5701057081_
                               _hd5701157084_
                               _tl5701257086_
                               _e5701357089_
                               _hd5701457092_
                               _tl5701557094_)
                        (let ((_L57097_ _tl5701557094_)
                              (_L57098_ _hd5701457092_)
                              (_L57099_ _hd5701157084_))
                          (if (gx#stx-keyword? _L57099_)
                              (___kont6019460195_ _L57097_ _L57098_ _L57099_)
                              (___kont6019660197_
                               _tl5700657070_
                               _hd5700557068_))))))
                (if (gx#stx-pair? ___stx6018860189_)
                    (let ((_e5697757169_ (gx#stx-e ___stx6018860189_)))
                      (let ((_tl5697957174_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5697757169_)))
                            (_hd5697857172_
                             (let ()
                               (declare (not safe))
                               (##car _e5697757169_))))
                        (if (gx#stx-pair? _hd5697857172_)
                            (let ((_e5698057177_ (gx#stx-e _hd5697857172_)))
                              (let ((_tl5698257182_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5698057177_)))
                                    (_hd5698157180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5698057177_))))
                                (if (gx#identifier? _hd5698157180_)
                                    (if (gx#stx-eq? '%#quote _hd5698157180_)
                                        (if (gx#stx-pair? _tl5698257182_)
                                            (let ((_e5698357185_
                                                   (gx#stx-e _tl5698257182_)))
                                              (let ((_tl5698557190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5698357185_)))
                                                    (_hd5698457188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5698357185_))))
                                                (if (gx#stx-datum?
                                                     _hd5698457188_)
                                                    (let ((_e5698657193_
                                                           (gx#stx-e
                                                            _hd5698457188_)))
                                                      (if (equal? _e5698657193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (gx#stx-null? _tl5698557190_)
                      (if (gx#stx-pair? _tl5697957174_)
                          (let ((_e5698757196_ (gx#stx-e _tl5697957174_)))
                            (let ((_tl5698957201_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5698757196_)))
                                  (_hd5698857199_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5698757196_))))
                              (___kont6019060191_
                               _tl5698957201_
                               _hd5698857199_)))
                          (___kont6019660197_ _tl5697957174_ _hd5697857172_))
                      (___kont6019660197_ _tl5697957174_ _hd5697857172_))
                  (if (equal? _e5698657193_ '#!rest)
                      (if (gx#stx-null? _tl5698557190_)
                          (___kont6019260193_ _tl5697957174_)
                          (___kont6019660197_ _tl5697957174_ _hd5697857172_))
                      (if (gx#stx-null? _tl5698557190_)
                          (if (gx#stx-pair? _tl5697957174_)
                              (let ((_e5701357089_ (gx#stx-e _tl5697957174_)))
                                (let ((_tl5701557094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5701357089_)))
                                      (_hd5701457092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5701357089_))))
                                  (___match6029560296_
                                   _e5697757169_
                                   _hd5697857172_
                                   _tl5697957174_
                                   _e5698057177_
                                   _hd5698157180_
                                   _tl5698257182_
                                   _e5698357185_
                                   _hd5698457188_
                                   _tl5698557190_
                                   _e5701357089_
                                   _hd5701457092_
                                   _tl5701557094_)))
                              (___kont6019660197_
                               _tl5697957174_
                               _hd5697857172_))
                          (___kont6019660197_
                           _tl5697957174_
                           _hd5697857172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         _tl5698557190_)
                                                        (if (gx#stx-pair?
                                                             _tl5697957174_)
                                                            (let ((_e5701357089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl5697957174_)))
                      (let ((_tl5701557094_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5701357089_)))
                            (_hd5701457092_
                             (let ()
                               (declare (not safe))
                               (##car _e5701357089_))))
                        (___match6029560296_
                         _e5697757169_
                         _hd5697857172_
                         _tl5697957174_
                         _e5698057177_
                         _hd5698157180_
                         _tl5698257182_
                         _e5698357185_
                         _hd5698457188_
                         _tl5698557190_
                         _e5701357089_
                         _hd5701457092_
                         _tl5701557094_)))
                    (___kont6019660197_ _tl5697957174_ _hd5697857172_))
                (___kont6019660197_ _tl5697957174_ _hd5697857172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6019660197_
                                             _tl5697957174_
                                             _hd5697857172_))
                                        (___kont6019660197_
                                         _tl5697957174_
                                         _hd5697857172_))
                                    (___kont6019660197_
                                     _tl5697957174_
                                     _hd5697857172_))))
                            (___kont6019660197_
                             _tl5697957174_
                             _hd5697857172_))))
                    (_g5697257032_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self56956_ _stx56957_ _args56958_)
        (gxc#xform-call% _stx56957_)))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'optimize-call
     gxc#!kw-lambda-primary::optimize-call
     '#f)))
