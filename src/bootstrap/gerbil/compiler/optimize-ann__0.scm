(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-ann::timestamp 1693679904)
  (begin
    (declare (inlining-limit 200))
    (define gxc#&optmize-annotated
      (make-promise
       (lambda ()
         (let ((_tbl53724_ (make-table 'test: eq?)))
           (hash-copy! _tbl53724_ (force gxc#&basic-xform))
           (table-set! _tbl53724_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl53724_))))
    (define gxc#apply-optimize-annotated
      (lambda (_stx53717_ . _args53719_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53717_ _args53719_))
         gxc#current-compile-methods
         (force gxc#&optmize-annotated))))
    (define gxc#&generate-runtime-repr
      (make-promise
       (lambda ()
         (let ((_tbl53714_ (make-table 'test: eq?)))
           (hash-copy! _tbl53714_ (force gxc#&generate-runtime))
           (table-set! _tbl53714_ '%#quote-syntax identity)
           _tbl53714_))))
    (define gxc#apply-generate-runtime-repr
      (lambda (_stx53707_ . _args53709_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53707_ _args53709_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime-repr))))
    (define gxc#&push-match-vars
      (make-promise
       (lambda ()
         (let ((_tbl53704_ (make-table 'test: eq?)))
           (table-set! _tbl53704_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl53704_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl53704_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl53704_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl53704_ '%#call gxc#push-match-vars-call%)
           _tbl53704_))))
    (define gxc#apply-push-match-vars
      (lambda (_stx53697_ . _args53699_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx53697_ _args53699_))
         gxc#current-compile-methods
         (force gxc#&push-match-vars))))
    (define gxc#current-annotation-optimizer (make-parameter '()))
    (define gxc#optimize-annotation%
      (lambda (_stx53615_)
        (let* ((___stx5374053741_ _stx53615_)
               (_g5361853635_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5374053741_))))
          (let ((___kont5374253743_
                 (lambda (_L53671_ _L53672_)
                   (let ((_ann53688_ (gx#stx-e _L53672_)))
                     (call-with-parameters
                      (lambda ()
                        (let ((_$e53691_ _ann53688_))
                          (if (eq? '@match _$e53691_)
                              (begin
                                (gxc#verbose '"Optimizing match expansion")
                                (gxc#optimize-match _L53671_))
                              (if (eq? '@syntax-case _$e53691_)
                                  (begin
                                    (gxc#verbose
                                     '"Optimizing syntax-case expansion")
                                    (gxc#optimize-syntax-case _L53671_))
                                  (gxc#compile-e _L53671_)))))
                      gxc#current-annotation-optimizer
                      (cons _ann53688_ (gxc#current-annotation-optimizer))))))
                (___kont5374453745_
                 (lambda () (gxc#xform-begin-annotation% _stx53615_))))
            (let ((___match5376553766_
                   (lambda (_e5362253647_
                            _hd5362353650_
                            _tl5362453652_
                            _e5362553655_
                            _hd5362653658_
                            _tl5362753660_
                            _e5362853663_
                            _hd5362953666_
                            _tl5363053668_)
                     (let ((_L53671_ _hd5362953666_) (_L53672_ _hd5362653658_))
                       (if (gx#identifier? _L53672_)
                           (___kont5374253743_ _L53671_ _L53672_)
                           (___kont5374453745_))))))
              (if (gx#stx-pair? ___stx5374053741_)
                  (let ((_e5362253647_ (gx#stx-e ___stx5374053741_)))
                    (let ((_tl5362453652_
                           (let () (declare (not safe)) (##cdr _e5362253647_)))
                          (_hd5362353650_
                           (let ()
                             (declare (not safe))
                             (##car _e5362253647_))))
                      (if (gx#stx-pair? _tl5362453652_)
                          (let ((_e5362553655_ (gx#stx-e _tl5362453652_)))
                            (let ((_tl5362753660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5362553655_)))
                                  (_hd5362653658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5362553655_))))
                              (if (gx#stx-pair? _tl5362753660_)
                                  (let ((_e5362853663_
                                         (gx#stx-e _tl5362753660_)))
                                    (let ((_tl5363053668_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5362853663_)))
                                          (_hd5362953666_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5362853663_))))
                                      (if (gx#stx-null? _tl5363053668_)
                                          (___match5376553766_
                                           _e5362253647_
                                           _hd5362353650_
                                           _tl5362453652_
                                           _e5362553655_
                                           _hd5362653658_
                                           _tl5362753660_
                                           _e5362853663_
                                           _hd5362953666_
                                           _tl5363053668_)
                                          (___kont5374453745_))))
                                  (___kont5374453745_))))
                          (___kont5374453745_))))
                  (___kont5374453745_)))))))
    (define gxc#optimize-match
      (lambda (_stx52914_)
        (let* ((_g5291652946_
                (lambda (_g5291752943_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g5291752943_)))
               (_g5291553612_
                (lambda (_g5291752949_)
                  (if (gx#stx-pair? _g5291752949_)
                      (let ((_e5292152951_ (gx#stx-e _g5291752949_)))
                        (let ((_hd5292252954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5292152951_)))
                              (_tl5292352956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5292152951_))))
                          (if (gx#identifier? _hd5292252954_)
                              (if (gx#stx-eq? '%#let-values _hd5292252954_)
                                  (if (gx#stx-pair? _tl5292352956_)
                                      (let ((_e5292452959_
                                             (gx#stx-e _tl5292352956_)))
                                        (let ((_hd5292552962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5292452959_)))
                                              (_tl5292652964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5292452959_))))
                                          (if (gx#stx-pair? _hd5292552962_)
                                              (let ((_e5292752967_
                                                     (gx#stx-e
                                                      _hd5292552962_)))
                                                (let ((_hd5292852970_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5292752967_)))
                                                      (_tl5292952972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5292752967_))))
                                                  (if (gx#stx-pair?
                                                       _hd5292852970_)
                                                      (let ((_e5293052975_
                                                             (gx#stx-e
                                                              _hd5292852970_)))
                                                        (let ((_hd5293152978_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e5293052975_)))
                      (_tl5293252980_
                       (let () (declare (not safe)) (##cdr _e5293052975_))))
                  (if (gx#stx-pair? _hd5293152978_)
                      (let ((_e5293352983_ (gx#stx-e _hd5293152978_)))
                        (let ((_hd5293452986_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5293352983_)))
                              (_tl5293552988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5293352983_))))
                          (if (gx#stx-null? _tl5293552988_)
                              (if (gx#stx-pair? _tl5293252980_)
                                  (let ((_e5293652991_
                                         (gx#stx-e _tl5293252980_)))
                                    (let ((_hd5293752994_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5293652991_)))
                                          (_tl5293852996_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5293652991_))))
                                      (if (gx#stx-null? _tl5293852996_)
                                          (if (gx#stx-null? _tl5292952972_)
                                              (if (gx#stx-pair? _tl5292652964_)
                                                  (let ((_e5293952999_
                                                         (gx#stx-e
                                                          _tl5292652964_)))
                                                    (let ((_hd5294053002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5293952999_)))
                                                          (_tl5294153004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5293952999_))))
                                                      (if (gx#stx-null?
                                                           _tl5294153004_)
                                                          ((lambda (_L53007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L53008_
                            _L53009_)
                     (let _lp53033_ ((_body53035_ _L53007_)
                                     (_negation53036_ (cons _L53009_ _L53008_))
                                     (_clauses53037_ '())
                                     (_konts53038_ '()))
                       (let* ((___stx5394853949_ _body53035_)
                              (_g5304153081_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  ___stx5394853949_))))
                         (let ((___kont5395053951_
                                (lambda (_L53411_)
                                  (let* ((___stx5388453885_ _L53411_)
                                         (_g5342553455_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx5388453885_))))
                                    (let ((___kont5388653887_
                                           (lambda (_L53551_ _L53552_ _L53553_)
                                             (if (null? _clauses53037_)
                                                 (let* ((_negation5357753584_
                                                         _negation53036_)
                                                        (_E5357953588_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _negation5357753584_)))
                (_K5358053594_
                 (lambda (_negate53591_ _E53592_)
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _E53592_ '())
                                            (cons _negate53591_ '()))
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _L53553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gxc#compile-e _L53552_) '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L53551_ '())))
                                      '())))
                    _stx52914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##pair? _negation5357753584_))
                                                       (let ((_hd5358153597_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _negation5357753584_)))
                     (_tl5358253599_
                      (let ()
                        (declare (not safe))
                        (##cdr _negation5357753584_))))
                 (let* ((_E53602_ _hd5358153597_)
                        (_negate53604_ _tl5358253599_))
                   (_K5358053594_ _negate53604_ _E53602_)))
               (_E5357953588_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#optimize-match-body
                                                  _stx52914_
                                                  _negation53036_
                                                  (cons (cons '#f
                                                              (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#lambda)
                            (cons '() (cons _L53551_ '()))))
                _clauses53037_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L53553_
                                                              (gxc#compile-e
                                                               _L53552_))
                                                        _konts53038_)))))
                                          (___kont5388853889_
                                           (lambda ()
                                             (let* ((_negation5346153468_
                                                     _negation53036_)
                                                    (_E5346353472_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _negation5346153468_)))
                                                    (_K5346453478_
                                                     (lambda (_negate53475_
                                                              _E53476_)
                                                       (gxc#xform-wrap-source
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _E53476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _negate53475_ '()))
                                  '())
                            (cons _L53411_ '())))
                _stx52914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _negation5346153468_))
                                                   (let ((_hd5346553481_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _negation5346153468_)))
                                                         (_tl5346653483_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _negation5346153468_))))
                                                     (let* ((_E53486_
                                                             _hd5346553481_)
                                                            (_negate53488_
                                                             _tl5346653483_))
                                                       (_K5346453478_
                                                        _negate53488_
                                                        _E53486_)))
                                                   (_E5346353472_))))))
                                      (let ((_g5342453490_
                                             (lambda ()
                                               (if (null? _clauses53037_)
                                                   (___kont5388853889_)
                                                   (_g5342553455_)))))
                                        (if (gx#stx-pair? ___stx5388453885_)
                                            (let ((_e5343053495_
                                                   (gx#stx-e
                                                    ___stx5388453885_)))
                                              (let ((_tl5343253500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5343053495_)))
                                                    (_hd5343153498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5343053495_))))
                                                (if (gx#identifier?
                                                     _hd5343153498_)
                                                    (if (gx#stx-eq?
                                                         '%#let-values
                                                         _hd5343153498_)
                                                        (if (gx#stx-pair?
                                                             _tl5343253500_)
                                                            (let ((_e5343353503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl5343253500_)))
                      (let ((_tl5343553508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e5343353503_)))
                            (_hd5343453506_
                             (let ()
                               (declare (not safe))
                               (##car _e5343353503_))))
                        (if (gx#stx-pair? _hd5343453506_)
                            (let ((_e5343653511_ (gx#stx-e _hd5343453506_)))
                              (let ((_tl5343853516_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e5343653511_)))
                                    (_hd5343753514_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e5343653511_))))
                                (if (gx#stx-pair? _hd5343753514_)
                                    (let ((_e5343953519_
                                           (gx#stx-e _hd5343753514_)))
                                      (let ((_tl5344153524_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e5343953519_)))
                                            (_hd5344053522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e5343953519_))))
                                        (if (gx#stx-pair? _hd5344053522_)
                                            (let ((_e5344253527_
                                                   (gx#stx-e _hd5344053522_)))
                                              (let ((_tl5344453532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e5344253527_)))
                                                    (_hd5344353530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e5344253527_))))
                                                (if (gx#stx-null?
                                                     _tl5344453532_)
                                                    (if (gx#stx-pair?
                                                         _tl5344153524_)
                                                        (let ((_e5344553535_
                                                               (gx#stx-e
                                                                _tl5344153524_)))
                                                          (let ((_tl5344753540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5344553535_)))
                        (_hd5344653538_
                         (let () (declare (not safe)) (##car _e5344553535_))))
                    (if (gx#stx-null? _tl5344753540_)
                        (if (gx#stx-null? _tl5343853516_)
                            (if (gx#stx-pair? _tl5343553508_)
                                (let ((_e5344853543_
                                       (gx#stx-e _tl5343553508_)))
                                  (let ((_tl5345053548_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e5344853543_)))
                                        (_hd5344953546_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e5344853543_))))
                                    (if (gx#stx-null? _tl5345053548_)
                                        (___kont5388653887_
                                         _hd5344953546_
                                         _hd5344653538_
                                         _hd5344353530_)
                                        (_g5342453490_))))
                                (_g5342453490_))
                            (_g5342453490_))
                        (_g5342453490_))))
                (_g5342453490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5342453490_))))
                                            (_g5342453490_))))
                                    (_g5342453490_))))
                            (_g5342453490_))))
                    (_g5342453490_))
                (_g5342453490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g5342453490_))))
                                            (_g5342453490_)))))))
                               (___kont5395253953_
                                (lambda (_L53142_ _L53143_ _L53144_)
                                  (let* ((___stx5376853769_ _L53143_)
                                         (_g5317153220_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             ___stx5376853769_))))
                                    (let ((___kont5377053771_
                                           (lambda (_L53348_ _L53349_ _L53350_)
                                             (_lp53033_
                                              _L53142_
                                              _negation53036_
                                              (cons (cons _L53144_
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#lambda)
                        (cons '() (cons _L53348_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _clauses53037_)
                                              (cons (cons _L53350_
                                                          (gxc#compile-e
                                                           _L53349_))
                                                    _konts53038_))))
                                          (___kont5377253773_
                                           (lambda (_L53249_)
                                             (_lp53033_
                                              _L53142_
                                              (cons _L53144_
                                                    (gxc#compile-e _L53249_))
                                              _clauses53037_
                                              _konts53038_))))
                                      (if (gx#stx-pair? ___stx5376853769_)
                                          (let ((_e5317653268_
                                                 (gx#stx-e ___stx5376853769_)))
                                            (let ((_tl5317853273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e5317653268_)))
                                                  (_hd5317753271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e5317653268_))))
                                              (if (gx#identifier?
                                                   _hd5317753271_)
                                                  (if (gx#stx-eq?
                                                       '%#lambda
                                                       _hd5317753271_)
                                                      (if (gx#stx-pair?
                                                           _tl5317853273_)
                                                          (let ((_e5317953276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl5317853273_)))
                    (let ((_tl5318153281_
                           (let () (declare (not safe)) (##cdr _e5317953276_)))
                          (_hd5318053279_
                           (let ()
                             (declare (not safe))
                             (##car _e5317953276_))))
                      (if (gx#stx-null? _hd5318053279_)
                          (if (gx#stx-pair? _tl5318153281_)
                              (let ((_e5318253284_ (gx#stx-e _tl5318153281_)))
                                (let ((_tl5318453289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5318253284_)))
                                      (_hd5318353287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5318253284_))))
                                  (if (gx#stx-pair? _hd5318353287_)
                                      (let ((_e5318553292_
                                             (gx#stx-e _hd5318353287_)))
                                        (let ((_tl5318753297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5318553292_)))
                                              (_hd5318653295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5318553292_))))
                                          (if (gx#identifier? _hd5318653295_)
                                              (if (gx#stx-eq?
                                                   '%#let-values
                                                   _hd5318653295_)
                                                  (if (gx#stx-pair?
                                                       _tl5318753297_)
                                                      (let ((_e5318853300_
                                                             (gx#stx-e
                                                              _tl5318753297_)))
                                                        (let ((_tl5319053305_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5318853300_)))
                      (_hd5318953303_
                       (let () (declare (not safe)) (##car _e5318853300_))))
                  (if (gx#stx-pair? _hd5318953303_)
                      (let ((_e5319153308_ (gx#stx-e _hd5318953303_)))
                        (let ((_tl5319353313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5319153308_)))
                              (_hd5319253311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5319153308_))))
                          (if (gx#stx-pair? _hd5319253311_)
                              (let ((_e5319453316_ (gx#stx-e _hd5319253311_)))
                                (let ((_tl5319653321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5319453316_)))
                                      (_hd5319553319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5319453316_))))
                                  (if (gx#stx-pair? _hd5319553319_)
                                      (let ((_e5319753324_
                                             (gx#stx-e _hd5319553319_)))
                                        (let ((_tl5319953329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5319753324_)))
                                              (_hd5319853327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5319753324_))))
                                          (if (gx#stx-null? _tl5319953329_)
                                              (if (gx#stx-pair? _tl5319653321_)
                                                  (let ((_e5320053332_
                                                         (gx#stx-e
                                                          _tl5319653321_)))
                                                    (let ((_tl5320253337_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5320053332_)))
                                                          (_hd5320153335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5320053332_))))
                                                      (if (gx#stx-null?
                                                           _tl5320253337_)
                                                          (if (gx#stx-null?
                                                               _tl5319353313_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl5319053305_)
                          (let ((_e5320353340_ (gx#stx-e _tl5319053305_)))
                            (let ((_tl5320553345_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5320353340_)))
                                  (_hd5320453343_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5320353340_))))
                              (if (gx#stx-null? _tl5320553345_)
                                  (if (gx#stx-null? _tl5318453289_)
                                      (___kont5377053771_
                                       _hd5320453343_
                                       _hd5320153335_
                                       _hd5319853327_)
                                      (_g5317153220_))
                                  (_g5317153220_))))
                          (_g5317153220_))
                      (_g5317153220_))
                  (_g5317153220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5317153220_))
                                              (_g5317153220_))))
                                      (_g5317153220_))))
                              (_g5317153220_))))
                      (_g5317153220_))))
              (_g5317153220_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5317153220_))
                                              (_g5317153220_))))
                                      (_g5317153220_))))
                              (_g5317153220_))
                          (_g5317153220_))))
                  (_g5317153220_))
              (if (gx#stx-eq? '%#begin-annotation _hd5317753271_)
                  (if (gx#stx-pair? _tl5317853273_)
                      (let ((_e5321053233_ (gx#stx-e _tl5317853273_)))
                        (let ((_tl5321253238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5321053233_)))
                              (_hd5321153236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5321053233_))))
                          (if (gx#identifier? _hd5321153236_)
                              (if (gx#stx-eq? '@match-else _hd5321153236_)
                                  (if (gx#stx-pair? _tl5321253238_)
                                      (let ((_e5321353241_
                                             (gx#stx-e _tl5321253238_)))
                                        (let ((_tl5321553246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5321353241_)))
                                              (_hd5321453244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5321353241_))))
                                          (if (gx#stx-null? _tl5321553246_)
                                              (___kont5377253773_
                                               _hd5321453244_)
                                              (_g5317153220_))))
                                      (_g5317153220_))
                                  (_g5317153220_))
                              (_g5317153220_))))
                      (_g5317153220_))
                  (_g5317153220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5317153220_))))
                                          (_g5317153220_)))))))
                           (if (gx#stx-pair? ___stx5394853949_)
                               (let ((_e5304453387_
                                      (gx#stx-e ___stx5394853949_)))
                                 (let ((_tl5304653392_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e5304453387_)))
                                       (_hd5304553390_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e5304453387_))))
                                   (if (gx#identifier? _hd5304553390_)
                                       (if (gx#stx-eq?
                                            '%#begin-annotation
                                            _hd5304553390_)
                                           (if (gx#stx-pair? _tl5304653392_)
                                               (let ((_e5304753395_
                                                      (gx#stx-e
                                                       _tl5304653392_)))
                                                 (let ((_tl5304953400_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e5304753395_)))
                                                       (_hd5304853398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e5304753395_))))
                                                   (if (gx#identifier?
                                                        _hd5304853398_)
                                                       (if (gx#stx-eq?
                                                            '@match-body
                                                            _hd5304853398_)
                                                           (if (gx#stx-pair?
                                                                _tl5304953400_)
                                                               (let ((_e5305053403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl5304953400_)))
                         (let ((_tl5305253408_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5305053403_)))
                               (_hd5305153406_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5305053403_))))
                           (if (gx#stx-null? _tl5305253408_)
                               (___kont5395053951_ _hd5305153406_)
                               (_g5304153081_))))
                       (_g5304153081_))
                   (_g5304153081_))
               (_g5304153081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5304153081_))
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _hd5304553390_)
                                               (if (gx#stx-pair?
                                                    _tl5304653392_)
                                                   (let ((_e5305953094_
                                                          (gx#stx-e
                                                           _tl5304653392_)))
                                                     (let ((_tl5306153099_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e5305953094_)))
                                                           (_hd5306053097_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e5305953094_))))
                                                       (if (gx#stx-pair?
                                                            _hd5306053097_)
                                                           (let ((_e5306253102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd5306053097_)))
                     (let ((_tl5306453107_
                            (let ()
                              (declare (not safe))
                              (##cdr _e5306253102_)))
                           (_hd5306353105_
                            (let ()
                              (declare (not safe))
                              (##car _e5306253102_))))
                       (if (gx#stx-pair? _hd5306353105_)
                           (let ((_e5306553110_ (gx#stx-e _hd5306353105_)))
                             (let ((_tl5306753115_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e5306553110_)))
                                   (_hd5306653113_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e5306553110_))))
                               (if (gx#stx-pair? _hd5306653113_)
                                   (let ((_e5306853118_
                                          (gx#stx-e _hd5306653113_)))
                                     (let ((_tl5307053123_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e5306853118_)))
                                           (_hd5306953121_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e5306853118_))))
                                       (if (gx#stx-null? _tl5307053123_)
                                           (if (gx#stx-pair? _tl5306753115_)
                                               (let ((_e5307153126_
                                                      (gx#stx-e
                                                       _tl5306753115_)))
                                                 (let ((_tl5307353131_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e5307153126_)))
                                                       (_hd5307253129_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e5307153126_))))
                                                   (if (gx#stx-null?
                                                        _tl5307353131_)
                                                       (if (gx#stx-null?
                                                            _tl5306453107_)
                                                           (if (gx#stx-pair?
                                                                _tl5306153099_)
                                                               (let ((_e5307453134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl5306153099_)))
                         (let ((_tl5307653139_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e5307453134_)))
                               (_hd5307553137_
                                (let ()
                                  (declare (not safe))
                                  (##car _e5307453134_))))
                           (if (gx#stx-null? _tl5307653139_)
                               (___kont5395253953_
                                _hd5307553137_
                                _hd5307253129_
                                _hd5306953121_)
                               (_g5304153081_))))
                       (_g5304153081_))
                   (_g5304153081_))
               (_g5304153081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g5304153081_))
                                           (_g5304153081_))))
                                   (_g5304153081_))))
                           (_g5304153081_))))
                   (_g5304153081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5304153081_))
                                               (_g5304153081_)))
                                       (_g5304153081_))))
                               (_g5304153081_))))))
                   _hd5294053002_
                   _hd5293752994_
                   _hd5293452986_)
                  (_g5291652946_ _g5291752949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5291652946_
                                                   _g5291752949_))
                                              (_g5291652946_ _g5291752949_))
                                          (_g5291652946_ _g5291752949_))))
                                  (_g5291652946_ _g5291752949_))
                              (_g5291652946_ _g5291752949_))))
                      (_g5291652946_ _g5291752949_))))
              (_g5291652946_ _g5291752949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g5291652946_ _g5291752949_))))
                                      (_g5291652946_ _g5291752949_))
                                  (_g5291652946_ _g5291752949_))
                              (_g5291652946_ _g5291752949_))))
                      (_g5291652946_ _g5291752949_)))))
          (_g5291553612_ _stx52914_))))
    (define gxc#optimize-match-body
      (lambda (_stx52620_ _negation52621_ _clauses52622_ _konts52623_)
        (letrec ((_push-variables52625_
                  (lambda (_clause52872_ _kont52873_)
                    (let ((_clause5287452884_ _clause52872_)
                          (_kont5287552886_ _kont52873_))
                      (let* ((_E5287752890_
                              (lambda ()
                                (error '"No clause matching"
                                       _clause5287452884_
                                       _kont5287552886_)))
                             (_K5287852897_
                              (lambda (_clause-lambda52893_
                                       _clause-name52894_
                                       _K52895_)
                                (cons _clause-name52894_
                                      (gxc#apply-push-match-vars
                                       _clause-lambda52893_
                                       '()
                                       _K52895_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _clause5287452884_))
                            (let ((_hd5288152900_
                                   (let ()
                                     (declare (not safe))
                                     (##car _clause5287452884_)))
                                  (_tl5288252902_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _clause5287452884_))))
                              (let* ((_clause-name52905_ _hd5288152900_)
                                     (_clause-lambda52907_ _tl5288252902_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _kont5287552886_))
                                    (let* ((_hd5287952909_
                                            (let ()
                                              (declare (not safe))
                                              (##car _kont5287552886_)))
                                           (_K52912_ _hd5287952909_))
                                      (_K5287852897_
                                       _clause-lambda52907_
                                       _clause-name52905_
                                       _K52912_))
                                    (_E5287752890_))))
                            (_E5287752890_))))))
                 (_start-match52626_
                  (lambda (_kont52806_)
                    (let* ((_g5280852824_
                            (lambda (_g5280952821_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g5280952821_)))
                           (_g5280752869_
                            (lambda (_g5280952827_)
                              (if (gx#stx-pair? _g5280952827_)
                                  (let ((_e5281152829_
                                         (gx#stx-e _g5280952827_)))
                                    (let ((_hd5281252832_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5281152829_)))
                                          (_tl5281352834_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5281152829_))))
                                      (if (gx#identifier? _hd5281252832_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd5281252832_)
                                              (if (gx#stx-pair? _tl5281352834_)
                                                  (let ((_e5281452837_
                                                         (gx#stx-e
                                                          _tl5281352834_)))
                                                    (let ((_hd5281552840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5281452837_)))
                                                          (_tl5281652842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5281452837_))))
                                                      (if (gx#stx-null?
                                                           _hd5281552840_)
                                                          (if (gx#stx-pair?
                                                               _tl5281652842_)
                                                              (let ((_e5281752845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5281652842_)))
                        (let ((_hd5281852848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5281752845_)))
                              (_tl5281952850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5281752845_))))
                          (if (gx#stx-null? _tl5281952850_)
                              ((lambda (_L52853_) _L52853_) _hd5281852848_)
                              (_g5280852824_ _g5280952827_))))
                      (_g5280852824_ _g5280952827_))
                  (_g5280852824_ _g5280952827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5280852824_
                                                   _g5280952827_))
                                              (_g5280852824_ _g5280952827_))
                                          (_g5280852824_ _g5280952827_))))
                                  (_g5280852824_ _g5280952827_)))))
                      (_g5280752869_ _kont52806_))))
                 (_match-body52627_
                  (lambda (_blocks52703_)
                    (let* ((_blocks5270452713_ _blocks52703_)
                           (_E5270652717_
                            (lambda ()
                              (error '"No clause matching"
                                     _blocks5270452713_)))
                           (_K5270752789_
                            (lambda (_rest52720_ _start52721_)
                              (let _lp52723_ ((_rest52725_ _rest52720_)
                                              (_body52726_
                                               (_start-match52626_
                                                _start52721_)))
                                (let* ((_rest5272752735_ _rest52725_)
                                       (_else5272952743_
                                        (lambda () _body52726_))
                                       (_K5273152777_
                                        (lambda (_rest52746_ _block52747_)
                                          (let* ((_block5274852755_
                                                  _block52747_)
                                                 (_E5275052759_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _block5274852755_)))
                                                 (_K5275152765_
                                                  (lambda (_kont52762_
                                                           _K52763_)
                                                    (_lp52723_
                                                     _rest52746_
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _K52763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _kont52762_ '()))
                               '())
                         (cons _body52726_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _block5274852755_))
                                                (let ((_hd5275252768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _block5274852755_)))
                                                      (_tl5275352770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _block5274852755_))))
                                                  (let* ((_K52773_
                                                          _hd5275252768_)
                                                         (_kont52775_
                                                          _tl5275352770_))
                                                    (_K5275152765_
                                                     _kont52775_
                                                     _K52773_)))
                                                (_E5275052759_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest5272752735_))
                                      (let ((_hd5273252780_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest5272752735_)))
                                            (_tl5273352782_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest5272752735_))))
                                        (let* ((_block52785_ _hd5273252780_)
                                               (_rest52787_ _tl5273352782_))
                                          (_K5273152777_
                                           _rest52787_
                                           _block52785_)))
                                      (_else5272952743_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _blocks5270452713_))
                          (let ((_hd5270852792_
                                 (let ()
                                   (declare (not safe))
                                   (##car _blocks5270452713_)))
                                (_tl5270952794_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _blocks5270452713_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd5270852792_))
                                (let ((_hd5271052797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd5270852792_)))
                                      (_tl5271152799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd5270852792_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##eq? _hd5271052797_ '#f))
                                      (let* ((_start52802_ _tl5271152799_)
                                             (_rest52804_ _tl5270952794_))
                                        (_K5270752789_
                                         _rest52804_
                                         _start52802_))
                                      (_E5270652717_)))
                                (_E5270652717_)))
                          (_E5270652717_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_clauses52630_
                     (map _push-variables52625_ _clauses52622_ _konts52623_))
                    (_blocks52632_
                     (gxc#optimize-match-basic-blocks _clauses52630_))
                    (_blocks52634_
                     (gxc#optimize-match-fold-basic-blocks _blocks52632_))
                    (_body52636_ (_match-body52627_ _blocks52634_))
                    (_bind52670_
                     (map (lambda (_e5263752639_)
                            (let* ((_g5264152648_ _e5263752639_)
                                   (_E5264352652_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _g5264152648_)))
                                   (_K5264452658_
                                    (lambda (_kont52655_ _K52656_)
                                      (cons (cons _K52656_ '())
                                            (cons _kont52655_ '())))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _g5264152648_))
                                  (let ((_hd5264552661_
                                         (let ()
                                           (declare (not safe))
                                           (##car _g5264152648_)))
                                        (_tl5264652663_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _g5264152648_))))
                                    (let* ((_K52666_ _hd5264552661_)
                                           (_kont52668_ _tl5264652663_))
                                      (_K5264452658_ _kont52668_ _K52666_)))
                                  (_E5264352652_))))
                          _konts52623_))
                    (_negate52700_
                     (let* ((_negation5267152678_ _negation52621_)
                            (_E5267352682_
                             (lambda ()
                               (error '"No clause matching"
                                      _negation5267152678_)))
                            (_K5267452688_
                             (lambda (_kont52685_ _K52686_)
                               (cons (cons _K52686_ '())
                                     (cons _kont52685_ '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _negation5267152678_))
                           (let ((_hd5267552691_
                                  (let ()
                                    (declare (not safe))
                                    (##car _negation5267152678_)))
                                 (_tl5267652693_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _negation5267152678_))))
                             (let* ((_K52696_ _hd5267552691_)
                                    (_kont52698_ _tl5267652693_))
                               (_K5267452688_ _kont52698_ _K52696_)))
                           (_E5267352682_)))))
               (gxc#xform-wrap-source
                (cons '%#let-values
                      (cons (cons _negate52700_ '())
                            (cons (cons '%#let-values
                                        (cons _bind52670_
                                              (cons _body52636_ '())))
                                  '())))
                _stx52620_)))
           gx#current-expander-context
           (let ((__obj56813 (make-object gx#local-context::t '5)))
             (gx#local-context:::init!__0 __obj56813)
             __obj56813)))))
    (define gxc#optimize-match-basic-blocks
      (lambda (_clauses52580_)
        (let _lp52582_ ((_rest52584_ _clauses52580_) (_blocks52585_ '()))
          (let* ((_rest5258652594_ _rest52584_)
                 (_else5258852602_ (lambda () (reverse _blocks52585_)))
                 (_K5259052608_
                  (lambda (_rest52605_ _clause52606_)
                    (_lp52582_
                     _rest52605_
                     (gxc#optimize-match-lift-basic-blocks
                      _clause52606_
                      _blocks52585_)))))
            (if (let () (declare (not safe)) (##pair? _rest5258652594_))
                (let ((_hd5259152611_
                       (let () (declare (not safe)) (##car _rest5258652594_)))
                      (_tl5259252613_
                       (let () (declare (not safe)) (##cdr _rest5258652594_))))
                  (let* ((_clause52616_ _hd5259152611_)
                         (_rest52618_ _tl5259252613_))
                    (_K5259052608_ _rest52618_ _clause52616_)))
                (_else5258852602_))))))
    (define gxc#optimize-match-lift-basic-blocks
      (lambda (_clause51924_ _blocks51925_)
        (letrec ((_bind->args51927_
                  (lambda (_bind52575_)
                    (foldl1 (lambda (_b52577_ _r52578_)
                              (cons (cons '%#ref (cons (car _b52577_) '()))
                                    _r52578_))
                            '()
                            _bind52575_)))
                 (_create-block51928_
                  (lambda (_body52524_
                           _let-bind52525_
                           _bind52526_
                           _assert52527_)
                    (let* ((_id52529_ (make-symbol (gensym '__match)))
                           (_id52531_ (gx#core-quote-syntax__0 _id52529_))
                           (_g56816_ (gx#core-bind-runtime!__0 _id52531_))
                           (_block52534_
                            (cons _id52531_
                                  (cons _body52524_
                                        (cons _bind52526_
                                              (cons _assert52527_ '())))))
                           (_continue52536_
                            (cons '%#call
                                  (cons (cons '%#ref (cons _id52531_ '()))
                                        (_bind->args51927_ _bind52526_))))
                           (_continue52572_
                            (if (null? _let-bind52525_)
                                _continue52536_
                                (let ((_locals52570_
                                       (map (lambda (_e5253752539_)
                                              (let* ((_g5254152548_
                                                      _e5253752539_)
                                                     (_E5254352552_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g5254152548_)))
                                                     (_K5254452558_
                                                      (lambda (_expr52555_
                                                               _id52556_)
                                                        (cons (cons _id52556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _expr52555_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _g5254152548_))
                                                    (let ((_hd5254552561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _g5254152548_)))
                                                          (_tl5254652563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _g5254152548_))))
                                                      (let* ((_id52566_
                                                              _hd5254552561_)
                                                             (_expr52568_
                                                              _tl5254652563_))
                                                        (_K5254452558_
                                                         _expr52568_
                                                         _id52566_)))
                                                    (_E5254352552_))))
                                            _let-bind52525_)))
                                  (cons '%#let-values
                                        (cons _locals52570_
                                              (cons _continue52536_ '())))))))
                      (values _continue52572_ _block52534_))))
                 (_basic-block51929_
                  (lambda (_body52110_ _bind52111_ _assert52112_)
                    (let* ((___stx5405654057_ _body52110_)
                           (_g5211752201_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5405654057_))))
                      (let ((___kont5405854059_
                             (lambda (_L52460_ _L52461_ _L52462_)
                               (let ((_g56817_
                                      (_create-block51928_
                                       _L52461_
                                       '()
                                       _bind52111_
                                       (cons (cons _L52462_ '#t)
                                             _assert52112_))))
                                 (begin
                                   (let ((_g56818_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56817_)
                                                (##vector-length _g56817_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56818_ 2)))
                                         (error "Context expects 2 values"
                                                _g56818_)))
                                   (let ((_k-continue52480_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56817_ 0)))
                                         (_k-block52481_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56817_ 1))))
                                     (let* ((___stx5403854039_ _L52460_)
                                            (_g5248452493_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx5403854039_))))
                                       (let ((___kont5404054041_
                                              (lambda ()
                                                (values (cons '%#if
                                                              (cons _L52462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k-continue52480_ (cons _L52460_ '()))))
                (cons _k-block52481_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (___kont5404254043_
                                              (lambda ()
                                                (let ((_g56819_
                                                       (_create-block51928_
                                                        _L52460_
                                                        '()
                                                        _bind52111_
                                                        (cons (cons _L52462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f)
                      _assert52112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (let ((_g56820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g56819_)
                         (##vector-length _g56819_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g56820_ 2)))
                  (error "Context expects 2 values" _g56820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_e-continue52500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g56819_
                                                              0)))
                                                          (_e-block52501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g56819_
                                                              1))))
                                                      (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L52462_
                                  (cons _k-continue52480_
                                        (cons _e-continue52500_ '()))))
                      (cons _k-block52481_ (cons _e-block52501_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#stx-pair? ___stx5403854039_)
                                             (let ((_e5248652508_
                                                    (gx#stx-e
                                                     ___stx5403854039_)))
                                               (let ((_tl5248852513_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5248652508_)))
                                                     (_hd5248752511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5248652508_))))
                                                 (if (gx#identifier?
                                                      _hd5248752511_)
                                                     (if (gx#stx-eq?
                                                          '%#call
                                                          _hd5248752511_)
                                                         (___kont5404054041_)
                                                         (___kont5404254043_))
                                                     (___kont5404254043_))))
                                             (___kont5404254043_)))))))))
                            (___kont5406054061_
                             (lambda () (values _body52110_ '())))
                            (___kont5406454065_
                             (lambda (_L52289_ _L52290_ _L52291_)
                               (let* ((_let-bind52326_
                                       (map cons
                                            (foldr1 (lambda (_g5231152314_
                                                             _g5231252316_)
                                                      (cons _g5231152314_
                                                            _g5231252316_))
                                                    '()
                                                    _L52291_)
                                            (foldr1 (lambda (_g5231852321_
                                                             _g5231952323_)
                                                      (cons _g5231852321_
                                                            _g5231952323_))
                                                    '()
                                                    _L52290_)))
                                      (_g56821_
                                       (_create-block51928_
                                        _L52289_
                                        _let-bind52326_
                                        (foldl1 cons
                                                _bind52111_
                                                _let-bind52326_)
                                        _assert52112_)))
                                 (begin
                                   (let ((_g56822_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56821_)
                                                (##vector-length _g56821_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56822_ 2)))
                                         (error "Context expects 2 values"
                                                _g56822_)))
                                   (let ((_continue52328_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56821_ 0)))
                                         (_block52329_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56821_ 1))))
                                     (let ()
                                       (values _continue52328_
                                               (cons _block52329_ '()))))))))
                            (___kont5406854069_
                             (lambda () (values _body52110_ '()))))
                        (let* ((___match5414754148_
                                (lambda (_e5216852213_
                                         _hd5216952216_
                                         _tl5217052218_
                                         _e5217152221_
                                         _hd5217252224_
                                         _tl5217352226_
                                         ___splice5406654067_
                                         _target5217452229_
                                         _tl5217652231_)
                                  (letrec ((_loop5217752234_
                                            (lambda (_hd5217552237_
                                                     _expr5218152239_
                                                     _id5218252241_)
                                              (if (gx#stx-pair? _hd5217552237_)
                                                  (let ((_e5217852244_
                                                         (gx#stx-e
                                                          _hd5217552237_)))
                                                    (let ((_lp-tl5218052249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5217852244_)))
                                                          (_lp-hd5217952247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5217852244_))))
                                                      (if (gx#stx-pair?
                                                           _lp-hd5217952247_)
                                                          (let ((_e5218552252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _lp-hd5217952247_)))
                    (let ((_tl5218752257_
                           (let () (declare (not safe)) (##cdr _e5218552252_)))
                          (_hd5218652255_
                           (let ()
                             (declare (not safe))
                             (##car _e5218552252_))))
                      (if (gx#stx-pair? _hd5218652255_)
                          (let ((_e5218852260_ (gx#stx-e _hd5218652255_)))
                            (let ((_tl5219052265_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5218852260_)))
                                  (_hd5218952263_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5218852260_))))
                              (if (gx#stx-null? _tl5219052265_)
                                  (if (gx#stx-pair? _tl5218752257_)
                                      (let ((_e5219152268_
                                             (gx#stx-e _tl5218752257_)))
                                        (let ((_tl5219352273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5219152268_)))
                                              (_hd5219252271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5219152268_))))
                                          (if (gx#stx-null? _tl5219352273_)
                                              (_loop5217752234_
                                               _lp-tl5218052249_
                                               (cons _hd5219252271_
                                                     _expr5218152239_)
                                               (cons _hd5218952263_
                                                     _id5218252241_))
                                              (___kont5406854069_))))
                                      (___kont5406854069_))
                                  (___kont5406854069_))))
                          (___kont5406854069_))))
                  (___kont5406854069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_id5218452278_
                                                         (reverse _id5218252241_))
                                                        (_expr5218352276_
                                                         (reverse _expr5218152239_)))
                                                    (if (gx#stx-pair?
                                                         _tl5217352226_)
                                                        (let ((_e5219452281_
                                                               (gx#stx-e
                                                                _tl5217352226_)))
                                                          (let ((_tl5219652286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5219452281_)))
                        (_hd5219552284_
                         (let () (declare (not safe)) (##car _e5219452281_))))
                    (if (gx#stx-null? _tl5219652286_)
                        (___kont5406454065_
                         _hd5219552284_
                         _expr5218352276_
                         _id5218452278_)
                        (___kont5406854069_))))
                (___kont5406854069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop5217752234_
                                     _target5217452229_
                                     '()
                                     '()))))
                               (___match5412354124_
                                (lambda (_e5213452337_
                                         _hd5213552340_
                                         _tl5213652342_
                                         _e5213752345_
                                         _hd5213852348_
                                         _tl5213952350_
                                         ___splice5406254063_
                                         _target5214052353_
                                         _tl5214252355_)
                                  (letrec ((_loop5214352358_
                                            (lambda (_hd5214152361_)
                                              (if (gx#stx-pair? _hd5214152361_)
                                                  (let ((_e5214452364_
                                                         (gx#stx-e
                                                          _hd5214152361_)))
                                                    (let ((_lp-tl5214652369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5214452364_)))
                                                          (_lp-hd5214552367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5214452364_))))
                                                      (if (gx#stx-pair?
                                                           _lp-hd5214552367_)
                                                          (let ((_e5214752372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _lp-hd5214552367_)))
                    (let ((_tl5214952377_
                           (let () (declare (not safe)) (##cdr _e5214752372_)))
                          (_hd5214852375_
                           (let ()
                             (declare (not safe))
                             (##car _e5214752372_))))
                      (if (gx#stx-pair? _hd5214852375_)
                          (let ((_e5215052380_ (gx#stx-e _hd5214852375_)))
                            (let ((_tl5215252385_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5215052380_)))
                                  (_hd5215152383_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5215052380_))))
                              (if (gx#stx-null? _tl5215252385_)
                                  (if (gx#stx-pair? _tl5214952377_)
                                      (let ((_e5215352388_
                                             (gx#stx-e _tl5214952377_)))
                                        (let ((_tl5215552393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e5215352388_)))
                                              (_hd5215452391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e5215352388_))))
                                          (if (gx#stx-pair? _hd5215452391_)
                                              (let ((_e5215652396_
                                                     (gx#stx-e
                                                      _hd5215452391_)))
                                                (let ((_tl5215852401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5215652396_)))
                                                      (_hd5215752399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5215652396_))))
                                                  (if (gx#identifier?
                                                       _hd5215752399_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd5215752399_)
                                                          (if (gx#stx-pair?
                                                               _tl5215852401_)
                                                              (let ((_e5215952404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5215852401_)))
                        (let ((_tl5216152409_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5215952404_)))
                              (_hd5216052407_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5215952404_))))
                          (if (gx#stx-null? _tl5216152409_)
                              (if (gx#stx-null? _tl5215552393_)
                                  (_loop5214352358_ _lp-tl5214652369_)
                                  (___match5414754148_
                                   _e5213452337_
                                   _hd5213552340_
                                   _tl5213652342_
                                   _e5213752345_
                                   _hd5213852348_
                                   _tl5213952350_
                                   ___splice5406254063_
                                   _target5214052353_
                                   _tl5214252355_))
                              (___match5414754148_
                               _e5213452337_
                               _hd5213552340_
                               _tl5213652342_
                               _e5213752345_
                               _hd5213852348_
                               _tl5213952350_
                               ___splice5406254063_
                               _target5214052353_
                               _tl5214252355_))))
                      (___match5414754148_
                       _e5213452337_
                       _hd5213552340_
                       _tl5213652342_
                       _e5213752345_
                       _hd5213852348_
                       _tl5213952350_
                       ___splice5406254063_
                       _target5214052353_
                       _tl5214252355_))
                  (___match5414754148_
                   _e5213452337_
                   _hd5213552340_
                   _tl5213652342_
                   _e5213752345_
                   _hd5213852348_
                   _tl5213952350_
                   ___splice5406254063_
                   _target5214052353_
                   _tl5214252355_))
              (___match5414754148_
               _e5213452337_
               _hd5213552340_
               _tl5213652342_
               _e5213752345_
               _hd5213852348_
               _tl5213952350_
               ___splice5406254063_
               _target5214052353_
               _tl5214252355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match5414754148_
                                               _e5213452337_
                                               _hd5213552340_
                                               _tl5213652342_
                                               _e5213752345_
                                               _hd5213852348_
                                               _tl5213952350_
                                               ___splice5406254063_
                                               _target5214052353_
                                               _tl5214252355_))))
                                      (___match5414754148_
                                       _e5213452337_
                                       _hd5213552340_
                                       _tl5213652342_
                                       _e5213752345_
                                       _hd5213852348_
                                       _tl5213952350_
                                       ___splice5406254063_
                                       _target5214052353_
                                       _tl5214252355_))
                                  (___match5414754148_
                                   _e5213452337_
                                   _hd5213552340_
                                   _tl5213652342_
                                   _e5213752345_
                                   _hd5213852348_
                                   _tl5213952350_
                                   ___splice5406254063_
                                   _target5214052353_
                                   _tl5214252355_))))
                          (___match5414754148_
                           _e5213452337_
                           _hd5213552340_
                           _tl5213652342_
                           _e5213752345_
                           _hd5213852348_
                           _tl5213952350_
                           ___splice5406254063_
                           _target5214052353_
                           _tl5214252355_))))
                  (___match5414754148_
                   _e5213452337_
                   _hd5213552340_
                   _tl5213652342_
                   _e5213752345_
                   _hd5213852348_
                   _tl5213952350_
                   ___splice5406254063_
                   _target5214052353_
                   _tl5214252355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (if (gx#stx-pair?
                                                         _tl5213952350_)
                                                        (let ((_e5216252413_
                                                               (gx#stx-e
                                                                _tl5213952350_)))
                                                          (let ((_tl5216452418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e5216252413_)))
                        (_hd5216352416_
                         (let () (declare (not safe)) (##car _e5216252413_))))
                    (if (gx#stx-null? _tl5216452418_)
                        (___kont5406054061_)
                        (___match5414754148_
                         _e5213452337_
                         _hd5213552340_
                         _tl5213652342_
                         _e5213752345_
                         _hd5213852348_
                         _tl5213952350_
                         ___splice5406254063_
                         _target5214052353_
                         _tl5214252355_))))
                (___match5414754148_
                 _e5213452337_
                 _hd5213552340_
                 _tl5213652342_
                 _e5213752345_
                 _hd5213852348_
                 _tl5213952350_
                 ___splice5406254063_
                 _target5214052353_
                 _tl5214252355_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop5214352358_ _target5214052353_)))))
                          (if (gx#stx-pair? ___stx5405654057_)
                              (let ((_e5212252428_
                                     (gx#stx-e ___stx5405654057_)))
                                (let ((_tl5212452433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5212252428_)))
                                      (_hd5212352431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5212252428_))))
                                  (if (gx#identifier? _hd5212352431_)
                                      (if (gx#stx-eq? '%#if _hd5212352431_)
                                          (if (gx#stx-pair? _tl5212452433_)
                                              (let ((_e5212552436_
                                                     (gx#stx-e
                                                      _tl5212452433_)))
                                                (let ((_tl5212752441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5212552436_)))
                                                      (_hd5212652439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5212552436_))))
                                                  (if (gx#stx-pair?
                                                       _tl5212752441_)
                                                      (let ((_e5212852444_
                                                             (gx#stx-e
                                                              _tl5212752441_)))
                                                        (let ((_tl5213052449_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e5212852444_)))
                      (_hd5212952447_
                       (let () (declare (not safe)) (##car _e5212852444_))))
                  (if (gx#stx-pair? _tl5213052449_)
                      (let ((_e5213152452_ (gx#stx-e _tl5213052449_)))
                        (let ((_tl5213352457_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5213152452_)))
                              (_hd5213252455_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5213152452_))))
                          (if (gx#stx-null? _tl5213352457_)
                              (___kont5405854059_
                               _hd5213252455_
                               _hd5212952447_
                               _hd5212652439_)
                              (___kont5406854069_))))
                      (___kont5406854069_))))
              (___kont5406854069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5406854069_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd5212352431_)
                                              (if (gx#stx-pair? _tl5212452433_)
                                                  (let ((_e5213752345_
                                                         (gx#stx-e
                                                          _tl5212452433_)))
                                                    (let ((_tl5213952350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5213752345_)))
                                                          (_hd5213852348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5213752345_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd5213852348_)
                                                          (let ((___splice5406254063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd5213852348_ '0)))
                    (let ((_tl5214252355_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5406254063_ '1)))
                          (_target5214052353_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice5406254063_ '0))))
                      (if (gx#stx-null? _tl5214252355_)
                          (___match5412354124_
                           _e5212252428_
                           _hd5212352431_
                           _tl5212452433_
                           _e5213752345_
                           _hd5213852348_
                           _tl5213952350_
                           ___splice5406254063_
                           _target5214052353_
                           _tl5214252355_)
                          (___kont5406854069_))))
                  (___kont5406854069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5406854069_))
                                              (___kont5406854069_)))
                                      (___kont5406854069_))))
                              (___kont5406854069_)))))))
                 (_fold-blocks51930_
                  (lambda (_rest52029_ _blocks52030_)
                    (let* ((_rest5203152048_ _rest52029_)
                           (_E5203452052_
                            (lambda ()
                              (error '"No clause matching" _rest5203152048_))))
                      (let ((_K5203652072_
                             (lambda (_rest52063_
                                      _assert52064_
                                      _bind52065_
                                      _body52066_
                                      _name52067_)
                               (let ((_g56823_
                                      (_basic-block51929_
                                       _body52066_
                                       _bind52065_
                                       _assert52064_)))
                                 (begin
                                   (let ((_g56824_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g56823_)
                                                (##vector-length _g56823_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g56824_ 2)))
                                         (error "Context expects 2 values"
                                                _g56824_)))
                                   (let ((_body52069_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56823_ 0)))
                                         (_body-blocks52070_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g56823_ 1))))
                                     (_fold-blocks51930_
                                      (foldl1 cons
                                              _rest52063_
                                              _body-blocks52070_)
                                      (cons (cons _name52067_
                                                  (cons 'continue:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (reverse (map car _bind52065_))
                                  (cons _body52069_ '())))
                      (cons _assert52064_ (cons _bind52065_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks52030_)))))))
                            (_K5203552057_ (lambda () _blocks52030_)))
                        (let ((_try-match5203352060_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##null? _rest5203152048_))
                                     (_K5203552057_)
                                     (_E5203452052_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest5203152048_))
                              (let ((_tl5203852077_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest5203152048_)))
                                    (_hd5203752075_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest5203152048_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd5203752075_))
                                    (let ((_tl5204052082_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd5203752075_)))
                                          (_hd5203952080_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd5203752075_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl5204052082_))
                                          (let ((_tl5204252089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl5204052082_)))
                                                (_hd5204152087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl5204052082_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _tl5204252089_))
                                                (let ((_tl5204452096_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _tl5204252089_)))
                                                      (_hd5204352094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _tl5204252089_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _tl5204452096_))
                                                      (let ((_tl5204652103_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _tl5204452096_)))
                    (_hd5204552101_
                     (let () (declare (not safe)) (##car _tl5204452096_))))
                (if (let () (declare (not safe)) (##null? _tl5204652103_))
                    (let ((_name52085_ _hd5203952080_)
                          (_body52092_ _hd5204152087_)
                          (_bind52099_ _hd5204352094_)
                          (_assert52106_ _hd5204552101_)
                          (_rest52108_ _tl5203852077_))
                      (_K5203652072_
                       _rest52108_
                       _assert52106_
                       _bind52099_
                       _body52092_
                       _name52085_))
                    (_E5203452052_)))
              (_E5203452052_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E5203452052_)))
                                          (_E5203452052_)))
                                    (_E5203452052_)))
                              (_try-match5203352060_))))))))
          (let* ((_clause5193151938_ _clause51924_)
                 (_E5193351942_
                  (lambda () (error '"No clause matching" _clause5193151938_)))
                 (_K5193452017_
                  (lambda (_body51945_ _name51946_)
                    (let* ((_g5194851964_
                            (lambda (_g5194951961_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g5194951961_)))
                           (_g5194752014_
                            (lambda (_g5194951967_)
                              (if (gx#stx-pair? _g5194951967_)
                                  (let ((_e5195151969_
                                         (gx#stx-e _g5194951967_)))
                                    (let ((_hd5195251972_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e5195151969_)))
                                          (_tl5195351974_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e5195151969_))))
                                      (if (gx#identifier? _hd5195251972_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd5195251972_)
                                              (if (gx#stx-pair? _tl5195351974_)
                                                  (let ((_e5195451977_
                                                         (gx#stx-e
                                                          _tl5195351974_)))
                                                    (let ((_hd5195551980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e5195451977_)))
                                                          (_tl5195651982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e5195451977_))))
                                                      (if (gx#stx-null?
                                                           _hd5195551980_)
                                                          (if (gx#stx-pair?
                                                               _tl5195651982_)
                                                              (let ((_e5195751985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5195651982_)))
                        (let ((_hd5195851988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5195751985_)))
                              (_tl5195951990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5195751985_))))
                          (if (gx#stx-null? _tl5195951990_)
                              ((lambda (_L51993_)
                                 (let ((_g56825_
                                        (_basic-block51929_ _L51993_ '() '())))
                                   (begin
                                     (let ((_g56826_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g56825_)
                                                  (##vector-length _g56825_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g56826_ 2)))
                                           (error "Context expects 2 values"
                                                  _g56826_)))
                                     (let ((_body52011_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g56825_ 0)))
                                           (_body-blocks52012_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g56825_ 1))))
                                       (_fold-blocks51930_
                                        _body-blocks52012_
                                        (cons (cons _name51946_
                                                    (cons 'restart:
                                                          (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '() (cons _body52011_ '())))
                        (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _blocks51925_))))))
                               _hd5195851988_)
                              (_g5194851964_ _g5194951967_))))
                      (_g5194851964_ _g5194951967_))
                  (_g5194851964_ _g5194951967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5194851964_
                                                   _g5194951967_))
                                              (_g5194851964_ _g5194951967_))
                                          (_g5194851964_ _g5194951967_))))
                                  (_g5194851964_ _g5194951967_)))))
                      (_g5194752014_ _body51945_)))))
            (if (let () (declare (not safe)) (##pair? _clause5193151938_))
                (let ((_hd5193552020_
                       (let ()
                         (declare (not safe))
                         (##car _clause5193151938_)))
                      (_tl5193652022_
                       (let ()
                         (declare (not safe))
                         (##cdr _clause5193151938_))))
                  (let* ((_name52025_ _hd5193552020_)
                         (_body52027_ _tl5193652022_))
                    (_K5193452017_ _body52027_ _name52025_)))
                (_E5193351942_))))))
    (define gxc#optimize-match-fold-basic-blocks
      (lambda (_blocks51530_)
        (let _lp51532_ ((_rest51534_ _blocks51530_) (_blocks51535_ '()))
          (let* ((_rest5153651544_ _rest51534_)
                 (_else5153851593_
                  (lambda ()
                    (foldl1 (lambda (_block51552_ _r51553_)
                              (let* ((_block5155451565_ _block51552_)
                                     (_E5155651569_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _block5155451565_)))
                                     (_K5155751575_
                                      (lambda (_kont51572_ _name51573_)
                                        (cons (cons _name51573_ _kont51572_)
                                              _r51553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _block5155451565_))
                                    (let ((_hd5155851578_
                                           (let ()
                                             (declare (not safe))
                                             (##car _block5155451565_)))
                                          (_tl5155951580_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _block5155451565_))))
                                      (let ((_name51583_ _hd5155851578_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl5155951580_))
                                            (let ((_tl5156151585_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl5155951580_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl5156151585_))
                                                  (let* ((_hd5156251588_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _tl5156151585_)))
                                                         (_kont51591_
                                                          _hd5156251588_))
                                                    (_K5155751575_
                                                     _kont51591_
                                                     _name51583_))
                                                  (_E5155651569_)))
                                            (_E5155651569_))))
                                    (_E5155651569_))))
                            '()
                            _blocks51535_)))
                 (_K5154051912_
                  (lambda (_rest51596_ _block51597_)
                    (let* ((_block5159851623_ _block51597_)
                           (_E5160151627_
                            (lambda ()
                              (error '"No clause matching"
                                     _block5159851623_))))
                      (let ((_K5161351883_
                             (lambda (_assert51805_ _kont51806_ _name51807_)
                               (let* ((_g5180951825_
                                       (lambda (_g5181051822_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g5181051822_)))
                                      (_g5180851880_
                                       (lambda (_g5181051828_)
                                         (if (gx#stx-pair? _g5181051828_)
                                             (let ((_e5181251830_
                                                    (gx#stx-e _g5181051828_)))
                                               (let ((_hd5181351833_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5181251830_)))
                                                     (_tl5181451835_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5181251830_))))
                                                 (if (gx#identifier?
                                                      _hd5181351833_)
                                                     (if (gx#stx-eq?
                                                          '%#lambda
                                                          _hd5181351833_)
                                                         (if (gx#stx-pair?
                                                              _tl5181451835_)
                                                             (let ((_e5181551838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5181451835_)))
                       (let ((_hd5181651841_
                              (let ()
                                (declare (not safe))
                                (##car _e5181551838_)))
                             (_tl5181751843_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5181551838_))))
                         (if (gx#stx-null? _hd5181651841_)
                             (if (gx#stx-pair? _tl5181751843_)
                                 (let ((_e5181851846_
                                        (gx#stx-e _tl5181751843_)))
                                   (let ((_hd5181951849_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5181851846_)))
                                         (_tl5182051851_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5181851846_))))
                                     (if (gx#stx-null? _tl5182051851_)
                                         ((lambda (_L51854_)
                                            (let* ((_body51869_
                                                    (gxc#optimize-match-block
                                                     _L51854_
                                                     _assert51805_
                                                     '()
                                                     _rest51596_))
                                                   (_block51871_
                                                    (cons _name51807_
                                                          (cons 'restart:
                                                                (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons '() (cons _body51869_ '())))
                              (cons _assert51805_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_blocks51873_
                                                    (cons _block51871_
                                                          _blocks51535_))
                                                   (_rest51875_
                                                    (gxc#optimize-match-prune-blocks
                                                     _rest51596_
                                                     _blocks51873_))
                                                   (_rest51877_
                                                    (gxc#optimize-match-fuse-restart-blocks
                                                     _rest51875_
                                                     _blocks51873_)))
                                              (_lp51532_
                                               _rest51877_
                                               _blocks51873_)))
                                          _hd5181951849_)
                                         (_g5180951825_ _g5181051828_))))
                                 (_g5180951825_ _g5181051828_))
                             (_g5180951825_ _g5181051828_))))
                     (_g5180951825_ _g5181051828_))
                 (_g5180951825_ _g5181051828_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g5180951825_
                                                      _g5181051828_))))
                                             (_g5180951825_ _g5181051828_)))))
                                 (_g5180851880_ _kont51806_))))
                            (_K5160251766_
                             (lambda (_bind51631_
                                      _assert51632_
                                      _kont51633_
                                      _name51634_)
                               (let* ((_g5163651662_
                                       (lambda (_g5163751659_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g5163751659_)))
                                      (_g5163551763_
                                       (lambda (_g5163751665_)
                                         (if (gx#stx-pair? _g5163751665_)
                                             (let ((_e5164051667_
                                                    (gx#stx-e _g5163751665_)))
                                               (let ((_hd5164151670_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5164051667_)))
                                                     (_tl5164251672_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5164051667_))))
                                                 (if (gx#identifier?
                                                      _hd5164151670_)
                                                     (if (gx#stx-eq?
                                                          '%#lambda
                                                          _hd5164151670_)
                                                         (if (gx#stx-pair?
                                                              _tl5164251672_)
                                                             (let ((_e5164351675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5164251672_)))
                       (let ((_hd5164451678_
                              (let ()
                                (declare (not safe))
                                (##car _e5164351675_)))
                             (_tl5164551680_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5164351675_))))
                         (if (gx#stx-pair/null? _hd5164451678_)
                             (let ((_g56827_
                                    (gx#syntax-split-splice
                                     _hd5164451678_
                                     '0)))
                               (begin
                                 (let ((_g56828_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g56827_)
                                              (##vector-length _g56827_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g56828_ 2)))
                                       (error "Context expects 2 values"
                                              _g56828_)))
                                 (let ((_target5164651683_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g56827_ 0)))
                                       (_tl5164851685_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g56827_ 1))))
                                   (if (gx#stx-null? _tl5164851685_)
                                       (letrec ((_loop5164951688_
                                                 (lambda (_hd5164751691_
                                                          _id5165351693_)
                                                   (if (gx#stx-pair?
                                                        _hd5164751691_)
                                                       (let ((_e5165051696_
                                                              (gx#stx-e
                                                               _hd5164751691_)))
                                                         (let ((_lp-hd5165151699_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e5165051696_)))
                       (_lp-tl5165251701_
                        (let () (declare (not safe)) (##cdr _e5165051696_))))
                   (_loop5164951688_
                    _lp-tl5165251701_
                    (cons _lp-hd5165151699_ _id5165351693_))))
               (let ((_id5165451704_ (reverse _id5165351693_)))
                 (if (gx#stx-pair? _tl5164551680_)
                     (let ((_e5165551707_ (gx#stx-e _tl5164551680_)))
                       (let ((_hd5165651710_
                              (let ()
                                (declare (not safe))
                                (##car _e5165551707_)))
                             (_tl5165751712_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5165551707_))))
                         (if (gx#stx-null? _tl5165751712_)
                             ((lambda (_L51715_ _L51716_)
                                (let* ((_body51745_
                                        (gxc#optimize-match-block
                                         _L51715_
                                         _assert51632_
                                         _bind51631_
                                         _rest51596_))
                                       (_block51754_
                                        (cons _name51634_
                                              (cons 'continue:
                                                    (cons (cons '%#lambda
                                                                (cons (foldr1 (lambda (_g5174651749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               _g5174751751_)
                                        (cons _g5174651749_ _g5174751751_))
                                      '()
                                      _L51716_)
                              (cons _body51745_ '())))
                  (cons _assert51632_ (cons _bind51631_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_blocks51756_
                                        (cons _block51754_ _blocks51535_))
                                       (_rest51758_
                                        (gxc#optimize-match-prune-blocks
                                         _rest51596_
                                         _blocks51756_))
                                       (_rest51760_
                                        (gxc#optimize-match-fuse-restart-blocks
                                         _rest51758_
                                         _blocks51756_)))
                                  (_lp51532_ _rest51760_ _blocks51756_)))
                              _hd5165651710_
                              _id5165451704_)
                             (_g5163651662_ _g5163751665_))))
                     (_g5163651662_ _g5163751665_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop5164951688_
                                          _target5164651683_
                                          '()))
                                       (_g5163651662_ _g5163751665_)))))
                             (_g5163651662_ _g5163751665_))))
                     (_g5163651662_ _g5163751665_))
                 (_g5163651662_ _g5163751665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g5163651662_
                                                      _g5163751665_))))
                                             (_g5163651662_ _g5163751665_)))))
                                 (_g5163551763_ _kont51633_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _block5159851623_))
                            (let ((_tl5161551888_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _block5159851623_)))
                                  (_hd5161451886_
                                   (let ()
                                     (declare (not safe))
                                     (##car _block5159851623_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl5161551888_))
                                  (let ((_tl5161751895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl5161551888_)))
                                        (_hd5161651893_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl5161551888_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##eq? _hd5161651893_ 'restart:))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl5161751895_))
                                            (let ((_tl5161951900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl5161751895_)))
                                                  (_hd5161851898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl5161751895_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl5161951900_))
                                                  (let ((_tl5162151907_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl5161951900_)))
                                                        (_hd5162051905_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl5161951900_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl5162151907_))
                                                        (let ((_name51891_
                                                               _hd5161451886_)
                                                              (_kont51903_
                                                               _hd5161851898_)
                                                              (_assert51910_
                                                               _hd5162051905_))
                                                          (_K5161351883_
                                                           _assert51910_
                                                           _kont51903_
                                                           _name51891_))
                                                        (_E5160151627_)))
                                                  (_E5160151627_)))
                                            (_E5160151627_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##eq? _hd5161651893_
                                                     'continue:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _tl5161751895_))
                                                (let ((_tl5160851783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _tl5161751895_)))
                                                      (_hd5160751781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _tl5161751895_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _tl5160851783_))
                                                      (let ((_tl5161051790_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _tl5160851783_)))
                    (_hd5160951788_
                     (let () (declare (not safe)) (##car _tl5160851783_))))
                (if (let () (declare (not safe)) (##pair? _tl5161051790_))
                    (let ((_tl5161251797_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl5161051790_)))
                          (_hd5161151795_
                           (let ()
                             (declare (not safe))
                             (##car _tl5161051790_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl5161251797_))
                          (let ((_name51774_ _hd5161451886_)
                                (_kont51786_ _hd5160751781_)
                                (_assert51793_ _hd5160951788_)
                                (_bind51800_ _hd5161151795_))
                            (_K5160251766_
                             _bind51800_
                             _assert51793_
                             _kont51786_
                             _name51774_))
                          (_E5160151627_)))
                    (_E5160151627_)))
              (_E5160151627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E5160151627_))
                                            (_E5160151627_))))
                                  (_E5160151627_)))
                            (_E5160151627_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5153651544_))
                (let ((_hd5154151915_
                       (let () (declare (not safe)) (##car _rest5153651544_)))
                      (_tl5154251917_
                       (let () (declare (not safe)) (##cdr _rest5153651544_))))
                  (let* ((_block51920_ _hd5154151915_)
                         (_rest51922_ _tl5154251917_))
                    (_K5154051912_ _rest51922_ _block51920_)))
                (_else5153851593_))))))
    (define gxc#optimize-match-block
      (lambda (_body46153_ _assert46154_ _bind46155_ _blocks46156_)
        (letrec* ((_env-assert46391_ '())
                  (_env-type46392_ '())
                  (_env-bind46393_ '())
                  (_in-splice?46394_ '#f)
                  (_do-assert46395_
                   (lambda (_assert51453_ _K51454_)
                     (if (pair? _assert51453_)
                         (let _lp51456_ ((_rest51458_ _assert51453_)
                                         (_env-assert51459_ _env-assert46391_)
                                         (_env-type51460_ _env-type46392_))
                           (let* ((_rest5146151469_ _rest51458_)
                                  (_else5146351477_
                                   (lambda ()
                                     (_do-assert!46401_
                                      _env-assert51459_
                                      _env-type51460_
                                      _K51454_)))
                                  (_K5146551518_
                                   (lambda (_rest51480_ _assert51481_)
                                     (let* ((_assert5148251489_ _assert51481_)
                                            (_E5148451493_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _assert5148251489_)))
                                            (_K5148551506_
                                             (lambda (_val51496_ _expr51497_)
                                               (let* ((_sexpr51499_
                                                       (gxc#apply-generate-runtime-repr
                                                        _expr51497_))
                                                      (_env-assert51501_
                                                       (cons (cons _sexpr51499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _val51496_)
                     _env-assert51459_))
              (_env-type51503_
               (_fold-assert-type46397_
                _expr51497_
                _val51496_
                _env-type51460_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_lp51456_
                                                  _rest51480_
                                                  _env-assert51501_
                                                  _env-type51503_)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _assert5148251489_))
                                           (let ((_hd5148651509_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _assert5148251489_)))
                                                 (_tl5148751511_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _assert5148251489_))))
                                             (let* ((_expr51514_
                                                     _hd5148651509_)
                                                    (_val51516_
                                                     _tl5148751511_))
                                               (_K5148551506_
                                                _val51516_
                                                _expr51514_)))
                                           (_E5148451493_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest5146151469_))
                                 (let ((_hd5146651521_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest5146151469_)))
                                       (_tl5146751523_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest5146151469_))))
                                   (let* ((_assert51526_ _hd5146651521_)
                                          (_rest51528_ _tl5146751523_))
                                     (_K5146551518_
                                      _rest51528_
                                      _assert51526_)))
                                 (_else5146351477_))))
                         (_K51454_))))
                  (_predicate-type46396_
                   (lambda (_id51398_)
                     (let* ((_sym51400_ (gxc#identifier-symbol _id51398_))
                            (_$e51402_ _sym51400_))
                       (let ((_default5140451435_
                              (lambda ()
                                (let* ((_g5140751414_
                                        (gxc#optimizer-resolve-type
                                         _sym51400_))
                                       (_else5140951422_ (lambda () '#f))
                                       (_K5141151427_
                                        (lambda (_struct-t51425_)
                                          (gxc#optimizer-resolve-type
                                           _struct-t51425_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _g5140751414_
                                         'gxc#!struct-pred::t))
                                      (let* ((_e5141251430_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _g5140751414_
                                                 '1)))
                                             (_struct-t51433_ _e5141251430_))
                                        (gxc#optimizer-resolve-type
                                         _struct-t51433_))
                                      (_else5140951422_)))))
                             (_table5140551437_
                              '#(#f
                                 (##box? . 3)
                                 #f
                                 (##pair? . 0)
                                 #f
                                 (gx#stx-vector? . 7)
                                 (gx#identifier? . 4)
                                 #f
                                 #f
                                 #f
                                 (vector? . 2)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-pair? . 5)
                                 #f
                                 (gx#stx-null? . 6)
                                 #f
                                 #f
                                 #f
                                 (##vector? . 2)
                                 #f
                                 (pair? . 0)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-datum? . 9)
                                 (box? . 3)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (##null? . 1)
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 #f
                                 (gx#stx-box? . 8)
                                 #f
                                 #f
                                 #f)))
                         (if (symbol? _$e51402_)
                             (let* ((_h51440_
                                     (let ()
                                       (declare (not safe))
                                       (##symbol-hash _$e51402_)))
                                    (_ix51443_
                                     (let ()
                                       (declare (not safe))
                                       (##fxmodulo _h51440_ '63)))
                                    (_q51446_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _table5140551437_
                                        _ix51443_))))
                               (if _q51446_
                                   (if (eq? (let ()
                                              (declare (not safe))
                                              (##car _q51446_))
                                            _$e51402_)
                                       (let ((_x51450_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _q51446_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (##fx< _x51450_ '5))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _x51450_ '2))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51450_ '0))
                                                     'pair
                                                     'null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51450_ '2))
                                                     'vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _x51450_ '3))
                                                         'box
                                                         'identifier)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fx< _x51450_ '7))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51450_ '5))
                                                     'stx-pair
                                                     'stx-null)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fx= _x51450_ '7))
                                                     'stx-vector
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fx= _x51450_ '8))
                                                         'stx-box
                                                         'stx-datum)))))
                                       (_default5140451435_))
                                   (_default5140451435_)))
                             (_default5140451435_))))))
                  (_fold-assert-type46397_
                   (lambda (_expr50346_ _val50347_ _env50348_)
                     (let* ((___stx5431454315_ _expr50346_)
                            (_g5035650535_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5431454315_))))
                       (let ((___kont5431654317_
                              (lambda (_L51367_ _L51368_)
                                (let ((_$e51390_
                                       (_predicate-type46396_ _L51368_)))
                                  (if _$e51390_
                                      ((lambda (_t51393_)
                                         (cons (cons _L51367_
                                                     (cons _t51393_
                                                           (cons _val50347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env50348_))
                                       _$e51390_)
                                      _env50348_))))
                             (___kont5431854319_
                              (lambda (_L51057_ _L51058_ _L51059_)
                                (let ((_$e51084_
                                       (gxc#identifier-symbol _L51059_)))
                                  (if (or (eq? '##fx= _$e51084_)
                                          (eq? 'fx= _$e51084_))
                                      (let* ((___stx5422054221_ _L51058_)
                                             (_g5109151120_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 ___stx5422054221_))))
                                        (let ((___kont5422254223_
                                               (lambda (_L51188_ _L51189_)
                                                 (let ((_$e51214_
                                                        (_countf-symbol46398_
                                                         _L51189_)))
                                                   (if _$e51214_
                                                       ((lambda (_sym51217_)
                                                          (cons (cons _L51188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _sym51217_
                                    (cons (gx#stx-e _L51057_)
                                          (cons _val50347_ '()))))
                        _env50348_))
                _$e51214_)
               _env50348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5422454225_
                                               (lambda () _env50348_)))
                                          (if (gx#stx-pair? ___stx5422054221_)
                                              (let ((_e5109551132_
                                                     (gx#stx-e
                                                      ___stx5422054221_)))
                                                (let ((_tl5109751137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5109551132_)))
                                                      (_hd5109651135_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5109551132_))))
                                                  (if (gx#identifier?
                                                       _hd5109651135_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd5109651135_)
                                                          (if (gx#stx-pair?
                                                               _tl5109751137_)
                                                              (let ((_e5109851140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl5109751137_)))
                        (let ((_tl5110051145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e5109851140_)))
                              (_hd5109951143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e5109851140_))))
                          (if (gx#stx-pair? _hd5109951143_)
                              (let ((_e5110151148_ (gx#stx-e _hd5109951143_)))
                                (let ((_tl5110351153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5110151148_)))
                                      (_hd5110251151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5110151148_))))
                                  (if (gx#identifier? _hd5110251151_)
                                      (if (gx#stx-eq? '%#ref _hd5110251151_)
                                          (if (gx#stx-pair? _tl5110351153_)
                                              (let ((_e5110451156_
                                                     (gx#stx-e
                                                      _tl5110351153_)))
                                                (let ((_tl5110651161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e5110451156_)))
                                                      (_hd5110551159_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e5110451156_))))
                                                  (if (gx#stx-null?
                                                       _tl5110651161_)
                                                      (if (gx#stx-pair?
                                                           _tl5110051145_)
                                                          (let ((_e5110751164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl5110051145_)))
                    (let ((_tl5110951169_
                           (let () (declare (not safe)) (##cdr _e5110751164_)))
                          (_hd5110851167_
                           (let ()
                             (declare (not safe))
                             (##car _e5110751164_))))
                      (if (gx#stx-pair? _hd5110851167_)
                          (let ((_e5111051172_ (gx#stx-e _hd5110851167_)))
                            (let ((_tl5111251177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5111051172_)))
                                  (_hd5111151175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5111051172_))))
                              (if (gx#identifier? _hd5111151175_)
                                  (if (gx#stx-eq? '%#ref _hd5111151175_)
                                      (if (gx#stx-pair? _tl5111251177_)
                                          (let ((_e5111351180_
                                                 (gx#stx-e _tl5111251177_)))
                                            (let ((_tl5111551185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e5111351180_)))
                                                  (_hd5111451183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e5111351180_))))
                                              (if (gx#stx-null? _tl5111551185_)
                                                  (if (gx#stx-null?
                                                       _tl5110951169_)
                                                      (___kont5422254223_
                                                       _hd5111451183_
                                                       _hd5110551159_)
                                                      (___kont5422454225_))
                                                  (___kont5422454225_))))
                                          (___kont5422454225_))
                                      (___kont5422454225_))
                                  (___kont5422454225_))))
                          (___kont5422454225_))))
                  (___kont5422454225_))
              (___kont5422454225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5422454225_))
                                          (___kont5422454225_))
                                      (___kont5422454225_))))
                              (___kont5422454225_))))
                      (___kont5422454225_))
                  (___kont5422454225_))
              (___kont5422454225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5422454225_))))
                                      (if (or (eq? '##eq? _$e51084_)
                                              (eq? 'eq? _$e51084_)
                                              (eq? '##eqv? _$e51084_)
                                              (eq? 'eqv? _$e51084_)
                                              (eq? '##equal? _$e51084_)
                                              (eq? 'equal? _$e51084_)
                                              (eq? 'gx#free-identifier=?
                                                   _$e51084_)
                                              (eq? 'gx#stx-eq? _$e51084_))
                                          ((lambda (_sym51243_)
                                             (let* ((_sym51245_
                                                     (_eqf-symbol46399_
                                                      _sym51243_))
                                                    (___stx5428854289_
                                                     _L51058_)
                                                    (_g5124851261_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx5428854289_))))
                                               (let ((___kont5429054291_
                                                      (lambda (_L51289_)
                                                        (cons (cons _L51289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym51245_
                                  (cons (gx#stx-e _L51057_)
                                        (cons _val50347_ '()))))
                      _env50348_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5429254293_
                                                      (lambda () _env50348_)))
                                                 (if (gx#stx-pair?
                                                      ___stx5428854289_)
                                                     (let ((_e5125151273_
                                                            (gx#stx-e
                                                             ___stx5428854289_)))
                                                       (let ((_tl5125351278_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5125151273_)))
                     (_hd5125251276_
                      (let () (declare (not safe)) (##car _e5125151273_))))
                 (if (gx#identifier? _hd5125251276_)
                     (if (gx#stx-eq? '%#ref _hd5125251276_)
                         (if (gx#stx-pair? _tl5125351278_)
                             (let ((_e5125451281_ (gx#stx-e _tl5125351278_)))
                               (let ((_tl5125651286_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5125451281_)))
                                     (_hd5125551284_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5125451281_))))
                                 (if (gx#stx-null? _tl5125651286_)
                                     (___kont5429054291_ _hd5125551284_)
                                     (___kont5429254293_))))
                             (___kont5429254293_))
                         (___kont5429254293_))
                     (___kont5429254293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5429254293_)))))
                                           _$e51084_)
                                          _env50348_)))))
                             (___kont5432054321_
                              (lambda (_L50961_ _L50962_ _L50963_)
                                (_fold-assert-type46397_
                                 (cons (gx#datum->syntax__0 '#f '%#call)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    '%#ref)
                                                   (cons _L50963_ '()))
                                             (cons _L50961_
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#quote)
                                                               (cons _L50962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _val50347_
                                 _env50348_)))
                             (___kont5432254323_
                              (lambda (_L50851_ _L50852_ _L50853_)
                                (let ((_$e50882_
                                       (gxc#identifier-symbol _L50853_)))
                                  (if (or (eq? 'gx#free-identifier=? _$e50882_)
                                          (eq? 'gx#stx-eq? _$e50882_))
                                      ((lambda (_sym50888_)
                                         (let ((_sym50890_
                                                (_eqf-symbol46399_
                                                 _sym50888_)))
                                           (cons (cons _L50852_
                                                       (cons _sym50890_
                                                             (cons _L50851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _val50347_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _env50348_)))
                                       _$e50882_)
                                      _env50348_))))
                             (___kont5432454325_
                              (lambda (_L50735_ _L50736_ _L50737_)
                                (_fold-assert-type46397_
                                 (cons (gx#datum->syntax__0 '#f '%#call)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    '%#ref)
                                                   (cons _L50737_ '()))
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L50735_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#quote-syntax)
                                                               (cons _L50736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _val50347_
                                 _env50348_)))
                             (___kont5432654327_
                              (lambda (_L50619_ _L50620_ _L50621_)
                                (_fold-assert-type46397_
                                 (gxc#apply-expression-subst
                                  _L50620_
                                  _L50621_
                                  _L50619_)
                                 _val50347_
                                 _env50348_)))
                             (___kont5432854329_ (lambda () _env50348_)))
                         (if (gx#stx-pair? ___stx5431454315_)
                             (let ((_e5036051311_
                                    (gx#stx-e ___stx5431454315_)))
                               (let ((_tl5036251316_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5036051311_)))
                                     (_hd5036151314_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5036051311_))))
                                 (if (gx#identifier? _hd5036151314_)
                                     (if (gx#stx-eq? '%#call _hd5036151314_)
                                         (if (gx#stx-pair? _tl5036251316_)
                                             (let ((_e5036351319_
                                                    (gx#stx-e _tl5036251316_)))
                                               (let ((_tl5036551324_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5036351319_)))
                                                     (_hd5036451322_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5036351319_))))
                                                 (if (gx#stx-pair?
                                                      _hd5036451322_)
                                                     (let ((_e5036651327_
                                                            (gx#stx-e
                                                             _hd5036451322_)))
                                                       (let ((_tl5036851332_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5036651327_)))
                     (_hd5036751330_
                      (let () (declare (not safe)) (##car _e5036651327_))))
                 (if (gx#identifier? _hd5036751330_)
                     (if (gx#stx-eq? '%#ref _hd5036751330_)
                         (if (gx#stx-pair? _tl5036851332_)
                             (let ((_e5036951335_ (gx#stx-e _tl5036851332_)))
                               (let ((_tl5037151340_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5036951335_)))
                                     (_hd5037051338_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5036951335_))))
                                 (if (gx#stx-null? _tl5037151340_)
                                     (if (gx#stx-pair? _tl5036551324_)
                                         (let ((_e5037251343_
                                                (gx#stx-e _tl5036551324_)))
                                           (let ((_tl5037451348_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5037251343_)))
                                                 (_hd5037351346_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5037251343_))))
                                             (if (gx#stx-pair? _hd5037351346_)
                                                 (let ((_e5037551351_
                                                        (gx#stx-e
                                                         _hd5037351346_)))
                                                   (let ((_tl5037751356_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5037551351_)))
                                                         (_hd5037651354_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5037551351_))))
                                                     (if (gx#identifier?
                                                          _hd5037651354_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd5037651354_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl5037751356_)
                         (let ((_e5037851359_ (gx#stx-e _tl5037751356_)))
                           (let ((_tl5038051364_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5037851359_)))
                                 (_hd5037951362_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5037851359_))))
                             (if (gx#stx-null? _tl5038051364_)
                                 (if (gx#stx-null? _tl5037451348_)
                                     (___kont5431654317_
                                      _hd5037951362_
                                      _hd5037051338_)
                                     (if (gx#stx-pair? _tl5037451348_)
                                         (let ((_e5039951033_
                                                (gx#stx-e _tl5037451348_)))
                                           (let ((_tl5040151038_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5039951033_)))
                                                 (_hd5040051036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5039951033_))))
                                             (if (gx#stx-pair? _hd5040051036_)
                                                 (let ((_e5040251041_
                                                        (gx#stx-e
                                                         _hd5040051036_)))
                                                   (let ((_tl5040451046_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5040251041_)))
                                                         (_hd5040351044_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5040251041_))))
                                                     (if (gx#identifier?
                                                          _hd5040351044_)
                                                         (if (gx#stx-eq?
                                                              '%#quote
                                                              _hd5040351044_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl5040451046_)
                         (let ((_e5040551049_ (gx#stx-e _tl5040451046_)))
                           (let ((_tl5040751054_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5040551049_)))
                                 (_hd5040651052_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5040551049_))))
                             (if (gx#stx-null? _tl5040751054_)
                                 (if (gx#stx-null? _tl5040151038_)
                                     (___kont5431854319_
                                      _hd5040651052_
                                      _hd5037351346_
                                      _hd5037051338_)
                                     (___kont5432854329_))
                                 (___kont5432854329_))))
                         (___kont5432854329_))
                     (if (gx#stx-eq? '%#quote-syntax _hd5040351044_)
                         (if (gx#stx-pair? _tl5040451046_)
                             (let ((_e5046550843_ (gx#stx-e _tl5040451046_)))
                               (let ((_tl5046750848_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5046550843_)))
                                     (_hd5046650846_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5046550843_))))
                                 (if (gx#stx-null? _tl5046750848_)
                                     (if (gx#stx-null? _tl5040151038_)
                                         (___kont5432254323_
                                          _hd5046650846_
                                          _hd5037951362_
                                          _hd5037051338_)
                                         (___kont5432854329_))
                                     (___kont5432854329_))))
                             (___kont5432854329_))
                         (___kont5432854329_)))
                 (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5432854329_))))
                                         (___kont5432854329_)))
                                 (if (gx#stx-pair? _tl5037451348_)
                                     (let ((_e5039951033_
                                            (gx#stx-e _tl5037451348_)))
                                       (let ((_tl5040151038_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5039951033_)))
                                             (_hd5040051036_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5039951033_))))
                                         (if (gx#stx-pair? _hd5040051036_)
                                             (let ((_e5040251041_
                                                    (gx#stx-e _hd5040051036_)))
                                               (let ((_tl5040451046_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5040251041_)))
                                                     (_hd5040351044_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5040251041_))))
                                                 (if (gx#identifier?
                                                      _hd5040351044_)
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd5040351044_)
                                                         (if (gx#stx-pair?
                                                              _tl5040451046_)
                                                             (let ((_e5040551049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5040451046_)))
                       (let ((_tl5040751054_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5040551049_)))
                             (_hd5040651052_
                              (let ()
                                (declare (not safe))
                                (##car _e5040551049_))))
                         (if (gx#stx-null? _tl5040751054_)
                             (if (gx#stx-null? _tl5040151038_)
                                 (___kont5431854319_
                                  _hd5040651052_
                                  _hd5037351346_
                                  _hd5037051338_)
                                 (___kont5432854329_))
                             (___kont5432854329_))))
                     (___kont5432854329_))
                 (___kont5432854329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))))
                                             (___kont5432854329_))))
                                     (___kont5432854329_)))))
                         (if (gx#stx-pair? _tl5037451348_)
                             (let ((_e5039951033_ (gx#stx-e _tl5037451348_)))
                               (let ((_tl5040151038_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5039951033_)))
                                     (_hd5040051036_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5039951033_))))
                                 (if (gx#stx-pair? _hd5040051036_)
                                     (let ((_e5040251041_
                                            (gx#stx-e _hd5040051036_)))
                                       (let ((_tl5040451046_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5040251041_)))
                                             (_hd5040351044_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5040251041_))))
                                         (if (gx#identifier? _hd5040351044_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd5040351044_)
                                                 (if (gx#stx-pair?
                                                      _tl5040451046_)
                                                     (let ((_e5040551049_
                                                            (gx#stx-e
                                                             _tl5040451046_)))
                                                       (let ((_tl5040751054_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5040551049_)))
                     (_hd5040651052_
                      (let () (declare (not safe)) (##car _e5040551049_))))
                 (if (gx#stx-null? _tl5040751054_)
                     (if (gx#stx-null? _tl5040151038_)
                         (___kont5431854319_
                          _hd5040651052_
                          _hd5037351346_
                          _hd5037051338_)
                         (___kont5432854329_))
                     (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))
                                                 (___kont5432854329_))
                                             (___kont5432854329_))))
                                     (___kont5432854329_))))
                             (___kont5432854329_)))
                     (if (gx#stx-pair? _tl5037451348_)
                         (let ((_e5039951033_ (gx#stx-e _tl5037451348_)))
                           (let ((_tl5040151038_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5039951033_)))
                                 (_hd5040051036_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5039951033_))))
                             (if (gx#stx-pair? _hd5040051036_)
                                 (let ((_e5040251041_
                                        (gx#stx-e _hd5040051036_)))
                                   (let ((_tl5040451046_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5040251041_)))
                                         (_hd5040351044_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5040251041_))))
                                     (if (gx#identifier? _hd5040351044_)
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd5040351044_)
                                             (if (gx#stx-pair? _tl5040451046_)
                                                 (let ((_e5040551049_
                                                        (gx#stx-e
                                                         _tl5040451046_)))
                                                   (let ((_tl5040751054_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5040551049_)))
                                                         (_hd5040651052_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5040551049_))))
                                                     (if (gx#stx-null?
                                                          _tl5040751054_)
                                                         (if (gx#stx-null?
                                                              _tl5040151038_)
                                                             (___kont5431854319_
                                                              _hd5040651052_
                                                              _hd5037351346_
                                                              _hd5037051338_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#quote
                          _hd5037651354_)
                         (if (gx#stx-pair? _tl5037751356_)
                             (let ((_e5042950945_ (gx#stx-e _tl5037751356_)))
                               (let ((_tl5043150950_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5042950945_)))
                                     (_hd5043050948_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5042950945_))))
                                 (___kont5432854329_)))
                             (___kont5432854329_))
                         (if (gx#stx-eq? '%#quote-syntax _hd5037651354_)
                             (if (gx#stx-pair? _tl5037751356_)
                                 (let ((_e5048950703_
                                        (gx#stx-e _tl5037751356_)))
                                   (let ((_tl5049150708_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5048950703_)))
                                         (_hd5049050706_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5048950703_))))
                                     (___kont5432854329_)))
                                 (___kont5432854329_))
                             (___kont5432854329_))))
                 (if (gx#stx-eq? '%#quote _hd5037651354_)
                     (if (gx#stx-pair? _tl5037751356_)
                         (let ((_e5042950945_ (gx#stx-e _tl5037751356_)))
                           (let ((_tl5043150950_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5042950945_)))
                                 (_hd5043050948_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5042950945_))))
                             (if (gx#stx-null? _tl5043150950_)
                                 (if (gx#stx-null? _tl5040151038_)
                                     (___kont5432054321_
                                      _hd5040051036_
                                      _hd5043050948_
                                      _hd5037051338_)
                                     (___kont5432854329_))
                                 (___kont5432854329_))))
                         (___kont5432854329_))
                     (if (gx#stx-eq? '%#quote-syntax _hd5037651354_)
                         (if (gx#stx-pair? _tl5037751356_)
                             (let ((_e5048950703_ (gx#stx-e _tl5037751356_)))
                               (let ((_tl5049150708_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5048950703_)))
                                     (_hd5049050706_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5048950703_))))
                                 (___kont5432854329_)))
                             (___kont5432854329_))
                         (___kont5432854329_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd5037651354_)
                                                     (if (gx#stx-pair?
                                                          _tl5037751356_)
                                                         (let ((_e5042950945_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5037751356_)))
                   (let ((_tl5043150950_
                          (let () (declare (not safe)) (##cdr _e5042950945_)))
                         (_hd5043050948_
                          (let () (declare (not safe)) (##car _e5042950945_))))
                     (if (gx#stx-null? _tl5043150950_)
                         (if (gx#stx-null? _tl5040151038_)
                             (___kont5432054321_
                              _hd5040051036_
                              _hd5043050948_
                              _hd5037051338_)
                             (___kont5432854329_))
                         (___kont5432854329_))))
                 (___kont5432854329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote-syntax
                                                          _hd5037651354_)
                                                         (if (gx#stx-pair?
                                                              _tl5037751356_)
                                                             (let ((_e5048950703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl5037751356_)))
                       (let ((_tl5049150708_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5048950703_)))
                             (_hd5049050706_
                              (let ()
                                (declare (not safe))
                                (##car _e5048950703_))))
                         (___kont5432854329_)))
                     (___kont5432854329_))
                 (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd5037651354_)
                                                 (if (gx#stx-pair?
                                                      _tl5037751356_)
                                                     (let ((_e5042950945_
                                                            (gx#stx-e
                                                             _tl5037751356_)))
                                                       (let ((_tl5043150950_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5042950945_)))
                     (_hd5043050948_
                      (let () (declare (not safe)) (##car _e5042950945_))))
                 (if (gx#stx-null? _tl5043150950_)
                     (if (gx#stx-null? _tl5040151038_)
                         (___kont5432054321_
                          _hd5040051036_
                          _hd5043050948_
                          _hd5037051338_)
                         (___kont5432854329_))
                     (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))
                                                 (if (gx#stx-eq?
                                                      '%#quote-syntax
                                                      _hd5037651354_)
                                                     (if (gx#stx-pair?
                                                          _tl5037751356_)
                                                         (let ((_e5048950703_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl5037751356_)))
                   (let ((_tl5049150708_
                          (let () (declare (not safe)) (##cdr _e5048950703_)))
                         (_hd5049050706_
                          (let () (declare (not safe)) (##car _e5048950703_))))
                     (if (gx#stx-null? _tl5049150708_)
                         (if (gx#stx-eq? '%#ref _hd5040351044_)
                             (if (gx#stx-pair? _tl5040451046_)
                                 (let ((_e5049850727_
                                        (gx#stx-e _tl5040451046_)))
                                   (let ((_tl5050050732_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5049850727_)))
                                         (_hd5049950730_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5049850727_))))
                                     (if (gx#stx-null? _tl5050050732_)
                                         (if (gx#stx-null? _tl5040151038_)
                                             (___kont5432454325_
                                              _hd5049950730_
                                              _hd5049050706_
                                              _hd5037051338_)
                                             (___kont5432854329_))
                                         (___kont5432854329_))))
                                 (___kont5432854329_))
                             (___kont5432854329_))
                         (___kont5432854329_))))
                 (___kont5432854329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))))
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd5037651354_)
                                             (if (gx#stx-pair? _tl5037751356_)
                                                 (let ((_e5042950945_
                                                        (gx#stx-e
                                                         _tl5037751356_)))
                                                   (let ((_tl5043150950_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5042950945_)))
                                                         (_hd5043050948_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5042950945_))))
                                                     (if (gx#stx-null?
                                                          _tl5043150950_)
                                                         (if (gx#stx-null?
                                                              _tl5040151038_)
                                                             (___kont5432054321_
                                                              _hd5040051036_
                                                              _hd5043050948_
                                                              _hd5037051338_)
                                                             (___kont5432854329_))
                                                         (___kont5432854329_))))
                                                 (___kont5432854329_))
                                             (if (gx#stx-eq?
                                                  '%#quote-syntax
                                                  _hd5037651354_)
                                                 (if (gx#stx-pair?
                                                      _tl5037751356_)
                                                     (let ((_e5048950703_
                                                            (gx#stx-e
                                                             _tl5037751356_)))
                                                       (let ((_tl5049150708_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5048950703_)))
                     (_hd5049050706_
                      (let () (declare (not safe)) (##car _e5048950703_))))
                 (___kont5432854329_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))
                                                 (___kont5432854329_))))))
                                 (if (gx#stx-eq? '%#quote _hd5037651354_)
                                     (if (gx#stx-pair? _tl5037751356_)
                                         (let ((_e5042950945_
                                                (gx#stx-e _tl5037751356_)))
                                           (let ((_tl5043150950_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5042950945_)))
                                                 (_hd5043050948_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5042950945_))))
                                             (if (gx#stx-null? _tl5043150950_)
                                                 (if (gx#stx-null?
                                                      _tl5040151038_)
                                                     (___kont5432054321_
                                                      _hd5040051036_
                                                      _hd5043050948_
                                                      _hd5037051338_)
                                                     (___kont5432854329_))
                                                 (___kont5432854329_))))
                                         (___kont5432854329_))
                                     (if (gx#stx-eq?
                                          '%#quote-syntax
                                          _hd5037651354_)
                                         (if (gx#stx-pair? _tl5037751356_)
                                             (let ((_e5048950703_
                                                    (gx#stx-e _tl5037751356_)))
                                               (let ((_tl5049150708_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5048950703_)))
                                                     (_hd5049050706_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5048950703_))))
                                                 (___kont5432854329_)))
                                             (___kont5432854329_))
                                         (___kont5432854329_))))))
                         (if (gx#stx-eq? '%#quote _hd5037651354_)
                             (if (gx#stx-pair? _tl5037751356_)
                                 (let ((_e5042950945_
                                        (gx#stx-e _tl5037751356_)))
                                   (let ((_tl5043150950_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5042950945_)))
                                         (_hd5043050948_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5042950945_))))
                                     (___kont5432854329_)))
                                 (___kont5432854329_))
                             (if (gx#stx-eq? '%#quote-syntax _hd5037651354_)
                                 (if (gx#stx-pair? _tl5037751356_)
                                     (let ((_e5048950703_
                                            (gx#stx-e _tl5037751356_)))
                                       (let ((_tl5049150708_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5048950703_)))
                                             (_hd5049050706_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5048950703_))))
                                         (___kont5432854329_)))
                                     (___kont5432854329_))
                                 (___kont5432854329_)))))
                 (if (gx#stx-pair? _tl5037451348_)
                     (let ((_e5039951033_ (gx#stx-e _tl5037451348_)))
                       (let ((_tl5040151038_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5039951033_)))
                             (_hd5040051036_
                              (let ()
                                (declare (not safe))
                                (##car _e5039951033_))))
                         (if (gx#stx-pair? _hd5040051036_)
                             (let ((_e5040251041_ (gx#stx-e _hd5040051036_)))
                               (let ((_tl5040451046_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e5040251041_)))
                                     (_hd5040351044_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e5040251041_))))
                                 (if (gx#identifier? _hd5040351044_)
                                     (if (gx#stx-eq? '%#quote _hd5040351044_)
                                         (if (gx#stx-pair? _tl5040451046_)
                                             (let ((_e5040551049_
                                                    (gx#stx-e _tl5040451046_)))
                                               (let ((_tl5040751054_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e5040551049_)))
                                                     (_hd5040651052_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e5040551049_))))
                                                 (if (gx#stx-null?
                                                      _tl5040751054_)
                                                     (if (gx#stx-null?
                                                          _tl5040151038_)
                                                         (___kont5431854319_
                                                          _hd5040651052_
                                                          _hd5037351346_
                                                          _hd5037051338_)
                                                         (___kont5432854329_))
                                                     (___kont5432854329_))))
                                             (___kont5432854329_))
                                         (___kont5432854329_))
                                     (___kont5432854329_))))
                             (___kont5432854329_))))
                     (___kont5432854329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl5037451348_)
                                                     (let ((_e5039951033_
                                                            (gx#stx-e
                                                             _tl5037451348_)))
                                                       (let ((_tl5040151038_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5039951033_)))
                     (_hd5040051036_
                      (let () (declare (not safe)) (##car _e5039951033_))))
                 (if (gx#stx-pair? _hd5040051036_)
                     (let ((_e5040251041_ (gx#stx-e _hd5040051036_)))
                       (let ((_tl5040451046_
                              (let ()
                                (declare (not safe))
                                (##cdr _e5040251041_)))
                             (_hd5040351044_
                              (let ()
                                (declare (not safe))
                                (##car _e5040251041_))))
                         (if (gx#identifier? _hd5040351044_)
                             (if (gx#stx-eq? '%#quote _hd5040351044_)
                                 (if (gx#stx-pair? _tl5040451046_)
                                     (let ((_e5040551049_
                                            (gx#stx-e _tl5040451046_)))
                                       (let ((_tl5040751054_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e5040551049_)))
                                             (_hd5040651052_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e5040551049_))))
                                         (if (gx#stx-null? _tl5040751054_)
                                             (if (gx#stx-null? _tl5040151038_)
                                                 (___kont5431854319_
                                                  _hd5040651052_
                                                  _hd5037351346_
                                                  _hd5037051338_)
                                                 (___kont5432854329_))
                                             (___kont5432854329_))))
                                     (___kont5432854329_))
                                 (___kont5432854329_))
                             (___kont5432854329_))))
                     (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_)))))
                                         (___kont5432854329_))
                                     (___kont5432854329_))))
                             (___kont5432854329_))
                         (if (gx#stx-eq? '%#lambda _hd5036751330_)
                             (if (gx#stx-pair? _tl5036851332_)
                                 (let ((_e5051350571_
                                        (gx#stx-e _tl5036851332_)))
                                   (let ((_tl5051550576_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5051350571_)))
                                         (_hd5051450574_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5051350571_))))
                                     (if (gx#stx-pair? _hd5051450574_)
                                         (let ((_e5051650579_
                                                (gx#stx-e _hd5051450574_)))
                                           (let ((_tl5051850584_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e5051650579_)))
                                                 (_hd5051750582_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e5051650579_))))
                                             (if (gx#stx-null? _tl5051850584_)
                                                 (if (gx#stx-pair?
                                                      _tl5051550576_)
                                                     (let ((_e5051950587_
                                                            (gx#stx-e
                                                             _tl5051550576_)))
                                                       (let ((_tl5052150592_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e5051950587_)))
                     (_hd5052050590_
                      (let () (declare (not safe)) (##car _e5051950587_))))
                 (if (gx#stx-null? _tl5052150592_)
                     (if (gx#stx-pair? _tl5036551324_)
                         (let ((_e5052250595_ (gx#stx-e _tl5036551324_)))
                           (let ((_tl5052450600_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e5052250595_)))
                                 (_hd5052350598_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e5052250595_))))
                             (if (gx#stx-pair? _hd5052350598_)
                                 (let ((_e5052550603_
                                        (gx#stx-e _hd5052350598_)))
                                   (let ((_tl5052750608_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e5052550603_)))
                                         (_hd5052650606_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e5052550603_))))
                                     (if (gx#identifier? _hd5052650606_)
                                         (if (gx#stx-eq? '%#ref _hd5052650606_)
                                             (if (gx#stx-pair? _tl5052750608_)
                                                 (let ((_e5052850611_
                                                        (gx#stx-e
                                                         _tl5052750608_)))
                                                   (let ((_tl5053050616_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e5052850611_)))
                                                         (_hd5052950614_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e5052850611_))))
                                                     (if (gx#stx-null?
                                                          _tl5053050616_)
                                                         (if (gx#stx-null?
                                                              _tl5052450600_)
                                                             (___kont5432654327_
                                                              _hd5052950614_
                                                              _hd5052050590_
                                                              _hd5051750582_)
                                                             (___kont5432854329_))
                                                         (___kont5432854329_))))
                                                 (___kont5432854329_))
                                             (___kont5432854329_))
                                         (___kont5432854329_))))
                                 (___kont5432854329_))))
                         (___kont5432854329_))
                     (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))
                                                 (___kont5432854329_))))
                                         (___kont5432854329_))))
                                 (___kont5432854329_))
                             (___kont5432854329_)))
                     (___kont5432854329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5432854329_))))
                                             (___kont5432854329_))
                                         (___kont5432854329_))
                                     (___kont5432854329_))))
                             (___kont5432854329_))))))
                  (_countf-symbol46398_
                   (lambda (_id50338_)
                     (let ((_$e50340_ (gxc#identifier-symbol _id50338_)))
                       (if (or (eq? '##vector-length _$e50340_)
                               (eq? 'vector-length _$e50340_))
                           'vector-length
                           (if (eq? 'values-count _$e50340_)
                               'values-count
                               '#f)))))
                  (_eqf-symbol46399_
                   (lambda (_sym50324_)
                     (let ((_$e50326_ _sym50324_))
                       (if (or (eq? '##eq? _$e50326_) (eq? 'eq? _$e50326_))
                           'eq?
                           (if (or (eq? '##eqv? _$e50326_)
                                   (eq? 'eqv? _$e50326_))
                               'eqv?
                               (if (or (eq? '##equal? _$e50326_)
                                       (eq? 'equal? _$e50326_))
                                   'equal?
                                   (if (eq? 'gx#free-identifier=? _$e50326_)
                                       'free-identifier=?
                                       (if (eq? 'gx#stx-eq? _$e50326_)
                                           'stx-eq?
                                           '#f))))))))
                  (_eqf-symbol?46400_
                   (lambda (_sym50307_)
                     (let ((_$e50309_ _sym50307_))
                       (if (or (eq? 'eq? _$e50309_)
                               (eq? 'eqv? _$e50309_)
                               (eq? 'equal? _$e50309_)
                               (eq? 'free-identifier=? _$e50309_)
                               (eq? 'stx-eq? _$e50309_))
                           '#t
                           '#f))))
                  (_do-assert!46401_
                   (lambda (_assert50298_ _type50299_ _K50300_)
                     (let ((_unwind-assert50302_ _env-assert46391_)
                           (_unwind-type50303_ _env-type46392_))
                       (set! _env-assert46391_ _assert50298_)
                       (set! _env-type46392_ _type50299_)
                       (let ((_val50305_ (_K50300_)))
                         (set! _env-assert46391_ _unwind-assert50302_)
                         (set! _env-type46392_ _unwind-type50303_)
                         _val50305_))))
                  (_do-bind46402_
                   (lambda (_bind50295_ _K50296_)
                     (if (pair? _bind50295_)
                         (_do-bind!46404_
                          (_fold-bind-env46403_ _bind50295_ _env-bind46393_)
                          _K50296_)
                         (_K50296_))))
                  (_fold-bind-env46403_
                   (lambda (_bind50224_ _env50225_)
                     (let _lp50227_ ((_rest50229_ _bind50224_)
                                     (_env50230_ _env50225_))
                       (let* ((_rest5023150239_ _rest50229_)
                              (_else5023350247_ (lambda () _env50230_))
                              (_K5023550283_
                               (lambda (_rest50250_ _bind50251_)
                                 (let* ((_bind5025250259_ _bind50251_)
                                        (_E5025450263_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _bind5025250259_)))
                                        (_K5025550271_
                                         (lambda (_expr50266_ _id50267_)
                                           (let ((_sexpr50269_
                                                  (gxc#apply-generate-runtime-repr
                                                   _expr50266_)))
                                             (_lp50227_
                                              _rest50250_
                                              (cons (cons _sexpr50269_
                                                          _id50267_)
                                                    _env50230_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _bind5025250259_))
                                       (let ((_hd5025650274_
                                              (let ()
                                                (declare (not safe))
                                                (##car _bind5025250259_)))
                                             (_tl5025750276_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _bind5025250259_))))
                                         (let* ((_id50279_ _hd5025650274_)
                                                (_expr50281_ _tl5025750276_))
                                           (_K5025550271_
                                            _expr50281_
                                            _id50279_)))
                                       (_E5025450263_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest5023150239_))
                             (let ((_hd5023650286_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest5023150239_)))
                                   (_tl5023750288_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest5023150239_))))
                               (let* ((_bind50291_ _hd5023650286_)
                                      (_rest50293_ _tl5023750288_))
                                 (_K5023550283_ _rest50293_ _bind50291_)))
                             (_else5023350247_))))))
                  (_do-bind!46404_
                   (lambda (_env50217_ _K50218_)
                     (let ((_unwind50220_ _env-bind46393_))
                       (set! _env-bind46393_ _env50217_)
                       (let ((_val50222_ (_K50218_)))
                         (set! _env-bind46393_ _unwind50220_)
                         _val50222_))))
                  (_do-splice!46405_
                   (lambda (_K50211_)
                     (let ((_unwind50213_ _in-splice?46394_))
                       (set! _in-splice?46394_ '#t)
                       (let ((_val50215_ (_K50211_)))
                         (set! _in-splice?46394_ _unwind50213_)
                         _val50215_))))
                  (_optimize-e46406_
                   (lambda (_expr49408_)
                     (let* ((___stx5476654767_ _expr49408_)
                            (_g4941549588_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5476654767_))))
                       (let ((___kont5476854769_
                              (lambda (_L50183_ _L50184_ _L50185_)
                                (let ((_$e50202_ (_assert-e46409_ _L50185_)))
                                  (if (eq? '#t _$e50202_)
                                      (_optimize-e46406_ _L50184_)
                                      (if (eq? '#f _$e50202_)
                                          (_optimize-e46406_ _L50183_)
                                          (let ((_K50205_
                                                 (_optimize-t__0__5372953730_
                                                  _L50184_
                                                  _L50185_))
                                                (_E50206_
                                                 (_optimize-f__5373153732_
                                                  _L50183_
                                                  _L50185_)))
                                            (if (equal? (gxc#apply-generate-runtime-repr
                                                         _K50205_)
                                                        (gxc#apply-generate-runtime-repr
                                                         _E50206_))
                                                _K50205_
                                                (cons '%#if
                                                      (cons _L50185_
                                                            (cons _K50205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E50206_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (___kont5477054771_
                              (lambda (_L50113_ _L50114_)
                                (let ((_$e50134_
                                       (_lookup-block46414_ _L50114_)))
                                  (if _$e50134_
                                      ((lambda (_block50137_)
                                         (if (_nonlinear-block?46416_
                                              _block50137_)
                                             _expr49408_
                                             (_optimize-e46406_
                                              (_inline-block46415_
                                               _block50137_
                                               (foldr1 (lambda (_g5013850141_
                                                                _g5013950143_)
                                                         (cons _g5013850141_
                                                               _g5013950143_))
                                                       '()
                                                       _L50113_)))))
                                       _$e50134_)
                                      _expr49408_))))
                             (___kont5477454775_
                              (lambda (_L50003_ _L50004_ _L50005_)
                                (let ((_body50024_
                                       (_optimize-e46406_ _L50003_)))
                                  (cons '%#let-values
                                        (cons (begin
                                                (gx#syntax-check-splice-targets
                                                 _L50004_
                                                 _L50005_)
                                                (foldr2 (lambda (_g5002550029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g5002650031_
                         _g5002750033_)
                  (cons (cons (cons _g5002650031_ '())
                              (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _g5002550029_ '()))
                                    '()))
                        _g5002750033_))
                '()
                _L50004_
                _L50005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _body50024_ '()))))))
                             (___kont5477854779_
                              (lambda (_L49871_ _L49872_ _L49873_)
                                (_bind-e__0__5373753738_
                                 (map cons
                                      (foldr1 (lambda (_g4989149894_
                                                       _g4989249896_)
                                                (cons _g4989149894_
                                                      _g4989249896_))
                                              '()
                                              _L49873_)
                                      (foldr1 (lambda (_g4989849901_
                                                       _g4989949903_)
                                                (cons _g4989849901_
                                                      _g4989949903_))
                                              '()
                                              _L49872_))
                                 _L49871_)))
                             (___kont5478254783_
                              (lambda (_L49728_
                                       _L49729_
                                       _L49730_
                                       _L49731_
                                       _L49732_)
                                (_do-splice!46405_
                                 (lambda ()
                                   (let ((_expr49774_
                                          (_optimize-e46406_ _L49730_)))
                                     (cons '%#letrec-values
                                           (cons (cons (cons (cons _L49732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (cons '%#lambda
                                 (cons (foldr1 (lambda (_g4977549778_
                                                        _g4977649780_)
                                                 (cons _g4977549778_
                                                       _g4977649780_))
                                               '()
                                               _L49731_)
                                       (cons _expr49774_ '())))
                           '()))
               (foldr1 (lambda (_g4978249785_ _g4978349787_)
                         (cons _g4978249785_ _g4978349787_))
                       '()
                       _L49729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L49728_ '()))))))))
                             (___kont5478854789_ (lambda () _expr49408_)))
                         (let* ((___match5497554976_
                                 (lambda (_e4953649600_
                                          _hd4953749603_
                                          _tl4953849605_
                                          _e4953949608_
                                          _hd4954049611_
                                          _tl4954149613_
                                          _e4954249616_
                                          _hd4954349619_
                                          _tl4954449621_
                                          _e4954549624_
                                          _hd4954649627_
                                          _tl4954749629_
                                          _e4954849632_
                                          _hd4954949635_
                                          _tl4955049637_
                                          _e4955149640_
                                          _hd4955249643_
                                          _tl4955349645_
                                          _e4955449648_
                                          _hd4955549651_
                                          _tl4955649653_
                                          _e4955749656_
                                          _hd4955849659_
                                          _tl4955949661_
                                          ___splice5478454785_
                                          _target4956049664_
                                          _tl4956249666_)
                                   (letrec ((_loop4956349669_
                                             (lambda (_hd4956149672_
                                                      _id4956749674_)
                                               (if (gx#stx-pair?
                                                    _hd4956149672_)
                                                   (let ((_e4956449677_
                                                          (gx#stx-e
                                                           _hd4956149672_)))
                                                     (let ((_lp-tl4956649682_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4956449677_)))
                                                           (_lp-hd4956549680_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4956449677_))))
                                                       (_loop4956349669_
                                                        _lp-tl4956649682_
                                                        (cons _lp-hd4956549680_
                                                              _id4956749674_))))
                                                   (let ((_id4956849685_
                                                          (reverse _id4956749674_)))
                                                     (if (gx#stx-pair?
                                                          _tl4955949661_)
                                                         (let ((_e4956949688_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4955949661_)))
                   (let ((_tl4957149693_
                          (let () (declare (not safe)) (##cdr _e4956949688_)))
                         (_hd4957049691_
                          (let () (declare (not safe)) (##car _e4956949688_))))
                     (if (gx#stx-null? _tl4957149693_)
                         (if (gx#stx-null? _tl4955349645_)
                             (if (gx#stx-pair/null? _tl4954449621_)
                                 (let ((___splice5478654787_
                                        (gx#syntax-split-splice
                                         _tl4954449621_
                                         '0)))
                                   (let ((_tl4957449698_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             ___splice5478654787_
                                             '1)))
                                         (_target4957249696_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             ___splice5478654787_
                                             '0))))
                                     (if (gx#stx-null? _tl4957449698_)
                                         (letrec ((_loop4957549701_
                                                   (lambda (_hd4957349704_
                                                            _bind4957949706_)
                                                     (if (gx#stx-pair?
                                                          _hd4957349704_)
                                                         (let ((_e4957649709_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4957349704_)))
                   (let ((_lp-tl4957849714_
                          (let () (declare (not safe)) (##cdr _e4957649709_)))
                         (_lp-hd4957749712_
                          (let () (declare (not safe)) (##car _e4957649709_))))
                     (_loop4957549701_
                      _lp-tl4957849714_
                      (cons _lp-hd4957749712_ _bind4957949706_))))
                 (let ((_bind4958049717_ (reverse _bind4957949706_)))
                   (if (gx#stx-pair? _tl4954149613_)
                       (let ((_e4958149720_ (gx#stx-e _tl4954149613_)))
                         (let ((_tl4958349725_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4958149720_)))
                               (_hd4958249723_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4958149720_))))
                           (if (gx#stx-null? _tl4958349725_)
                               (___kont5478254783_
                                _hd4958249723_
                                _bind4958049717_
                                _hd4957049691_
                                _id4956849685_
                                _hd4954949635_)
                               (___kont5478854789_))))
                       (___kont5478854789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop4957549701_
                                            _target4957249696_
                                            '()))
                                         (___kont5478854789_))))
                                 (___kont5478854789_))
                             (___kont5478854789_))
                         (___kont5478854789_))))
                 (___kont5478854789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4956349669_
                                      _target4956049664_
                                      '()))))
                                (___match5490954910_
                                 (lambda (_e4950249795_
                                          _hd4950349798_
                                          _tl4950449800_
                                          _e4950549803_
                                          _hd4950649806_
                                          _tl4950749808_
                                          ___splice5478054781_
                                          _target4950849811_
                                          _tl4951049813_)
                                   (letrec ((_loop4951149816_
                                             (lambda (_hd4950949819_
                                                      _expr4951549821_
                                                      _id4951649823_)
                                               (if (gx#stx-pair?
                                                    _hd4950949819_)
                                                   (let ((_e4951249826_
                                                          (gx#stx-e
                                                           _hd4950949819_)))
                                                     (let ((_lp-tl4951449831_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4951249826_)))
                                                           (_lp-hd4951349829_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4951249826_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4951349829_)
                                                           (let ((_e4951949834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4951349829_)))
                     (let ((_tl4952149839_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4951949834_)))
                           (_hd4952049837_
                            (let ()
                              (declare (not safe))
                              (##car _e4951949834_))))
                       (if (gx#stx-pair? _hd4952049837_)
                           (let ((_e4952249842_ (gx#stx-e _hd4952049837_)))
                             (let ((_tl4952449847_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4952249842_)))
                                   (_hd4952349845_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4952249842_))))
                               (if (gx#stx-null? _tl4952449847_)
                                   (if (gx#stx-pair? _tl4952149839_)
                                       (let ((_e4952549850_
                                              (gx#stx-e _tl4952149839_)))
                                         (let ((_tl4952749855_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4952549850_)))
                                               (_hd4952649853_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4952549850_))))
                                           (if (gx#stx-null? _tl4952749855_)
                                               (_loop4951149816_
                                                _lp-tl4951449831_
                                                (cons _hd4952649853_
                                                      _expr4951549821_)
                                                (cons _hd4952349845_
                                                      _id4951649823_))
                                               (___kont5478854789_))))
                                       (___kont5478854789_))
                                   (___kont5478854789_))))
                           (___kont5478854789_))))
                   (___kont5478854789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4951849860_
                                                          (reverse _id4951649823_))
                                                         (_expr4951749858_
                                                          (reverse _expr4951549821_)))
                                                     (if (gx#stx-pair?
                                                          _tl4950749808_)
                                                         (let ((_e4952849863_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4950749808_)))
                   (let ((_tl4953049868_
                          (let () (declare (not safe)) (##cdr _e4952849863_)))
                         (_hd4952949866_
                          (let () (declare (not safe)) (##car _e4952849863_))))
                     (if (gx#stx-null? _tl4953049868_)
                         (___kont5477854779_
                          _hd4952949866_
                          _expr4951749858_
                          _id4951849860_)
                         (___kont5478854789_))))
                 (___kont5478854789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4951149816_
                                      _target4950849811_
                                      '()
                                      '()))))
                                (___match5488554886_
                                 (lambda (_e4946449911_
                                          _hd4946549914_
                                          _tl4946649916_
                                          _e4946749919_
                                          _hd4946849922_
                                          _tl4946949924_
                                          ___splice5477654777_
                                          _target4947049927_
                                          _tl4947249929_)
                                   (letrec ((_loop4947349932_
                                             (lambda (_hd4947149935_
                                                      _xid4947749937_
                                                      _id4947849939_)
                                               (if (gx#stx-pair?
                                                    _hd4947149935_)
                                                   (let ((_e4947449942_
                                                          (gx#stx-e
                                                           _hd4947149935_)))
                                                     (let ((_lp-tl4947649947_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4947449942_)))
                                                           (_lp-hd4947549945_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4947449942_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4947549945_)
                                                           (let ((_e4948149950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4947549945_)))
                     (let ((_tl4948349955_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4948149950_)))
                           (_hd4948249953_
                            (let ()
                              (declare (not safe))
                              (##car _e4948149950_))))
                       (if (gx#stx-pair? _hd4948249953_)
                           (let ((_e4948449958_ (gx#stx-e _hd4948249953_)))
                             (let ((_tl4948649963_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4948449958_)))
                                   (_hd4948549961_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4948449958_))))
                               (if (gx#stx-null? _tl4948649963_)
                                   (if (gx#stx-pair? _tl4948349955_)
                                       (let ((_e4948749966_
                                              (gx#stx-e _tl4948349955_)))
                                         (let ((_tl4948949971_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4948749966_)))
                                               (_hd4948849969_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4948749966_))))
                                           (if (gx#stx-pair? _hd4948849969_)
                                               (let ((_e4949049974_
                                                      (gx#stx-e
                                                       _hd4948849969_)))
                                                 (let ((_tl4949249979_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4949049974_)))
                                                       (_hd4949149977_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4949049974_))))
                                                   (if (gx#identifier?
                                                        _hd4949149977_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd4949149977_)
                                                           (if (gx#stx-pair?
                                                                _tl4949249979_)
                                                               (let ((_e4949349982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl4949249979_)))
                         (let ((_tl4949549987_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4949349982_)))
                               (_hd4949449985_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4949349982_))))
                           (if (gx#stx-null? _tl4949549987_)
                               (if (gx#stx-null? _tl4948949971_)
                                   (_loop4947349932_
                                    _lp-tl4947649947_
                                    (cons _hd4949449985_ _xid4947749937_)
                                    (cons _hd4948549961_ _id4947849939_))
                                   (___match5490954910_
                                    _e4946449911_
                                    _hd4946549914_
                                    _tl4946649916_
                                    _e4946749919_
                                    _hd4946849922_
                                    _tl4946949924_
                                    ___splice5477654777_
                                    _target4947049927_
                                    _tl4947249929_))
                               (___match5490954910_
                                _e4946449911_
                                _hd4946549914_
                                _tl4946649916_
                                _e4946749919_
                                _hd4946849922_
                                _tl4946949924_
                                ___splice5477654777_
                                _target4947049927_
                                _tl4947249929_))))
                       (___match5490954910_
                        _e4946449911_
                        _hd4946549914_
                        _tl4946649916_
                        _e4946749919_
                        _hd4946849922_
                        _tl4946949924_
                        ___splice5477654777_
                        _target4947049927_
                        _tl4947249929_))
                   (___match5490954910_
                    _e4946449911_
                    _hd4946549914_
                    _tl4946649916_
                    _e4946749919_
                    _hd4946849922_
                    _tl4946949924_
                    ___splice5477654777_
                    _target4947049927_
                    _tl4947249929_))
               (___match5490954910_
                _e4946449911_
                _hd4946549914_
                _tl4946649916_
                _e4946749919_
                _hd4946849922_
                _tl4946949924_
                ___splice5477654777_
                _target4947049927_
                _tl4947249929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___match5490954910_
                                                _e4946449911_
                                                _hd4946549914_
                                                _tl4946649916_
                                                _e4946749919_
                                                _hd4946849922_
                                                _tl4946949924_
                                                ___splice5477654777_
                                                _target4947049927_
                                                _tl4947249929_))))
                                       (___match5490954910_
                                        _e4946449911_
                                        _hd4946549914_
                                        _tl4946649916_
                                        _e4946749919_
                                        _hd4946849922_
                                        _tl4946949924_
                                        ___splice5477654777_
                                        _target4947049927_
                                        _tl4947249929_))
                                   (___match5490954910_
                                    _e4946449911_
                                    _hd4946549914_
                                    _tl4946649916_
                                    _e4946749919_
                                    _hd4946849922_
                                    _tl4946949924_
                                    ___splice5477654777_
                                    _target4947049927_
                                    _tl4947249929_))))
                           (___match5490954910_
                            _e4946449911_
                            _hd4946549914_
                            _tl4946649916_
                            _e4946749919_
                            _hd4946849922_
                            _tl4946949924_
                            ___splice5477654777_
                            _target4947049927_
                            _tl4947249929_))))
                   (___match5490954910_
                    _e4946449911_
                    _hd4946549914_
                    _tl4946649916_
                    _e4946749919_
                    _hd4946849922_
                    _tl4946949924_
                    ___splice5477654777_
                    _target4947049927_
                    _tl4947249929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4948049992_
                                                          (reverse _id4947849939_))
                                                         (_xid4947949990_
                                                          (reverse _xid4947749937_)))
                                                     (if (gx#stx-pair?
                                                          _tl4946949924_)
                                                         (let ((_e4949649995_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4946949924_)))
                   (let ((_tl4949850000_
                          (let () (declare (not safe)) (##cdr _e4949649995_)))
                         (_hd4949749998_
                          (let () (declare (not safe)) (##car _e4949649995_))))
                     (if (gx#stx-null? _tl4949850000_)
                         (___kont5477454775_
                          _hd4949749998_
                          _xid4947949990_
                          _id4948049992_)
                         (___match5490954910_
                          _e4946449911_
                          _hd4946549914_
                          _tl4946649916_
                          _e4946749919_
                          _hd4946849922_
                          _tl4946949924_
                          ___splice5477654777_
                          _target4947049927_
                          _tl4947249929_))))
                 (___match5490954910_
                  _e4946449911_
                  _hd4946549914_
                  _tl4946649916_
                  _e4946749919_
                  _hd4946849922_
                  _tl4946949924_
                  ___splice5477654777_
                  _target4947049927_
                  _tl4947249929_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop4947349932_
                                      _target4947049927_
                                      '()
                                      '()))))
                                (___match5486154862_
                                 (lambda (_e4943450041_
                                          _hd4943550044_
                                          _tl4943650046_
                                          _e4943750049_
                                          _hd4943850052_
                                          _tl4943950054_
                                          _e4944050057_
                                          _hd4944150060_
                                          _tl4944250062_
                                          _e4944350065_
                                          _hd4944450068_
                                          _tl4944550070_
                                          ___splice5477254773_
                                          _target4944650073_
                                          _tl4944850075_)
                                   (letrec ((_loop4944950078_
                                             (lambda (_hd4944750081_
                                                      _id4945350083_)
                                               (if (gx#stx-pair?
                                                    _hd4944750081_)
                                                   (let ((_e4945050086_
                                                          (gx#stx-e
                                                           _hd4944750081_)))
                                                     (let ((_lp-tl4945250091_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4945050086_)))
                                                           (_lp-hd4945150089_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4945050086_))))
                                                       (if (gx#stx-pair?
                                                            _lp-hd4945150089_)
                                                           (let ((_e4945550094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _lp-hd4945150089_)))
                     (let ((_tl4945750099_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4945550094_)))
                           (_hd4945650097_
                            (let ()
                              (declare (not safe))
                              (##car _e4945550094_))))
                       (if (gx#identifier? _hd4945650097_)
                           (if (gx#stx-eq? '%#ref _hd4945650097_)
                               (if (gx#stx-pair? _tl4945750099_)
                                   (let ((_e4945850102_
                                          (gx#stx-e _tl4945750099_)))
                                     (let ((_tl4946050107_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4945850102_)))
                                           (_hd4945950105_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4945850102_))))
                                       (if (gx#stx-null? _tl4946050107_)
                                           (_loop4944950078_
                                            _lp-tl4945250091_
                                            (cons _hd4945950105_
                                                  _id4945350083_))
                                           (___kont5478854789_))))
                                   (___kont5478854789_))
                               (___kont5478854789_))
                           (___kont5478854789_))))
                   (___kont5478854789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_id4945450110_
                                                          (reverse _id4945350083_)))
                                                     (___kont5477054771_
                                                      _id4945450110_
                                                      _hd4944450068_))))))
                                     (_loop4944950078_
                                      _target4944650073_
                                      '())))))
                           (if (gx#stx-pair? ___stx5476654767_)
                               (let ((_e4942050151_
                                      (gx#stx-e ___stx5476654767_)))
                                 (let ((_tl4942250156_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4942050151_)))
                                       (_hd4942150154_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4942050151_))))
                                   (if (gx#identifier? _hd4942150154_)
                                       (if (gx#stx-eq? '%#if _hd4942150154_)
                                           (if (gx#stx-pair? _tl4942250156_)
                                               (let ((_e4942350159_
                                                      (gx#stx-e
                                                       _tl4942250156_)))
                                                 (let ((_tl4942550164_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4942350159_)))
                                                       (_hd4942450162_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4942350159_))))
                                                   (if (gx#stx-pair?
                                                        _tl4942550164_)
                                                       (let ((_e4942650167_
                                                              (gx#stx-e
                                                               _tl4942550164_)))
                                                         (let ((_tl4942850172_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4942650167_)))
                       (_hd4942750170_
                        (let () (declare (not safe)) (##car _e4942650167_))))
                   (if (gx#stx-pair? _tl4942850172_)
                       (let ((_e4942950175_ (gx#stx-e _tl4942850172_)))
                         (let ((_tl4943150180_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4942950175_)))
                               (_hd4943050178_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4942950175_))))
                           (if (gx#stx-null? _tl4943150180_)
                               (___kont5476854769_
                                _hd4943050178_
                                _hd4942750170_
                                _hd4942450162_)
                               (___kont5478854789_))))
                       (___kont5478854789_))))
               (___kont5478854789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont5478854789_))
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd4942150154_)
                                               (if (gx#stx-pair?
                                                    _tl4942250156_)
                                                   (let ((_e4943750049_
                                                          (gx#stx-e
                                                           _tl4942250156_)))
                                                     (let ((_tl4943950054_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4943750049_)))
                                                           (_hd4943850052_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4943750049_))))
                                                       (if (gx#stx-pair?
                                                            _hd4943850052_)
                                                           (let ((_e4944050057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4943850052_)))
                     (let ((_tl4944250062_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4944050057_)))
                           (_hd4944150060_
                            (let ()
                              (declare (not safe))
                              (##car _e4944050057_))))
                       (if (gx#identifier? _hd4944150060_)
                           (if (gx#stx-eq? '%#ref _hd4944150060_)
                               (if (gx#stx-pair? _tl4944250062_)
                                   (let ((_e4944350065_
                                          (gx#stx-e _tl4944250062_)))
                                     (let ((_tl4944550070_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4944350065_)))
                                           (_hd4944450068_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4944350065_))))
                                       (if (gx#stx-null? _tl4944550070_)
                                           (if (gx#stx-pair/null?
                                                _tl4943950054_)
                                               (let ((___splice5477254773_
                                                      (gx#syntax-split-splice
                                                       _tl4943950054_
                                                       '0)))
                                                 (let ((_tl4944850075_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5477254773_
                                                           '1)))
                                                       (_target4944650073_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5477254773_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl4944850075_)
                                                       (___match5486154862_
                                                        _e4942050151_
                                                        _hd4942150154_
                                                        _tl4942250156_
                                                        _e4943750049_
                                                        _hd4943850052_
                                                        _tl4943950054_
                                                        _e4944050057_
                                                        _hd4944150060_
                                                        _tl4944250062_
                                                        _e4944350065_
                                                        _hd4944450068_
                                                        _tl4944550070_
                                                        ___splice5477254773_
                                                        _target4944650073_
                                                        _tl4944850075_)
                                                       (___kont5478854789_))))
                                               (___kont5478854789_))
                                           (___kont5478854789_))))
                                   (___kont5478854789_))
                               (___kont5478854789_))
                           (___kont5478854789_))))
                   (___kont5478854789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5478854789_))
                                               (if (gx#stx-eq?
                                                    '%#let-values
                                                    _hd4942150154_)
                                                   (if (gx#stx-pair?
                                                        _tl4942250156_)
                                                       (let ((_e4946749919_
                                                              (gx#stx-e
                                                               _tl4942250156_)))
                                                         (let ((_tl4946949924_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4946749919_)))
                       (_hd4946849922_
                        (let () (declare (not safe)) (##car _e4946749919_))))
                   (if (gx#stx-pair/null? _hd4946849922_)
                       (let ((___splice5477654777_
                              (gx#syntax-split-splice _hd4946849922_ '0)))
                         (let ((_tl4947249929_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5477654777_ '1)))
                               (_target4947049927_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice5477654777_ '0))))
                           (if (gx#stx-null? _tl4947249929_)
                               (___match5488554886_
                                _e4942050151_
                                _hd4942150154_
                                _tl4942250156_
                                _e4946749919_
                                _hd4946849922_
                                _tl4946949924_
                                ___splice5477654777_
                                _target4947049927_
                                _tl4947249929_)
                               (___kont5478854789_))))
                       (___kont5478854789_))))
               (___kont5478854789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#letrec-values
                                                        _hd4942150154_)
                                                       (if (gx#stx-pair?
                                                            _tl4942250156_)
                                                           (let ((_e4953949608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4942250156_)))
                     (let ((_tl4954149613_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4953949608_)))
                           (_hd4954049611_
                            (let ()
                              (declare (not safe))
                              (##car _e4953949608_))))
                       (if (gx#stx-pair? _hd4954049611_)
                           (let ((_e4954249616_ (gx#stx-e _hd4954049611_)))
                             (let ((_tl4954449621_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4954249616_)))
                                   (_hd4954349619_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4954249616_))))
                               (if (gx#stx-pair? _hd4954349619_)
                                   (let ((_e4954549624_
                                          (gx#stx-e _hd4954349619_)))
                                     (let ((_tl4954749629_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4954549624_)))
                                           (_hd4954649627_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4954549624_))))
                                       (if (gx#stx-pair? _hd4954649627_)
                                           (let ((_e4954849632_
                                                  (gx#stx-e _hd4954649627_)))
                                             (let ((_tl4955049637_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4954849632_)))
                                                   (_hd4954949635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4954849632_))))
                                               (if (gx#stx-null?
                                                    _tl4955049637_)
                                                   (if (gx#stx-pair?
                                                        _tl4954749629_)
                                                       (let ((_e4955149640_
                                                              (gx#stx-e
                                                               _tl4954749629_)))
                                                         (let ((_tl4955349645_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4955149640_)))
                       (_hd4955249643_
                        (let () (declare (not safe)) (##car _e4955149640_))))
                   (if (gx#stx-pair? _hd4955249643_)
                       (let ((_e4955449648_ (gx#stx-e _hd4955249643_)))
                         (let ((_tl4955649653_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4955449648_)))
                               (_hd4955549651_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4955449648_))))
                           (if (gx#identifier? _hd4955549651_)
                               (if (gx#stx-eq? '%#lambda _hd4955549651_)
                                   (if (gx#stx-pair? _tl4955649653_)
                                       (let ((_e4955749656_
                                              (gx#stx-e _tl4955649653_)))
                                         (let ((_tl4955949661_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4955749656_)))
                                               (_hd4955849659_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4955749656_))))
                                           (if (gx#stx-pair/null?
                                                _hd4955849659_)
                                               (let ((___splice5478454785_
                                                      (gx#syntax-split-splice
                                                       _hd4955849659_
                                                       '0)))
                                                 (let ((_tl4956249666_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5478454785_
                                                           '1)))
                                                       (_target4956049664_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice5478454785_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl4956249666_)
                                                       (___match5497554976_
                                                        _e4942050151_
                                                        _hd4942150154_
                                                        _tl4942250156_
                                                        _e4953949608_
                                                        _hd4954049611_
                                                        _tl4954149613_
                                                        _e4954249616_
                                                        _hd4954349619_
                                                        _tl4954449621_
                                                        _e4954549624_
                                                        _hd4954649627_
                                                        _tl4954749629_
                                                        _e4954849632_
                                                        _hd4954949635_
                                                        _tl4955049637_
                                                        _e4955149640_
                                                        _hd4955249643_
                                                        _tl4955349645_
                                                        _e4955449648_
                                                        _hd4955549651_
                                                        _tl4955649653_
                                                        _e4955749656_
                                                        _hd4955849659_
                                                        _tl4955949661_
                                                        ___splice5478454785_
                                                        _target4956049664_
                                                        _tl4956249666_)
                                                       (___kont5478854789_))))
                                               (___kont5478854789_))))
                                       (___kont5478854789_))
                                   (___kont5478854789_))
                               (___kont5478854789_))))
                       (___kont5478854789_))))
               (___kont5478854789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5478854789_))))
                                           (___kont5478854789_))))
                                   (___kont5478854789_))))
                           (___kont5478854789_))))
                   (___kont5478854789_))
               (___kont5478854789_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont5478854789_))))
                               (___kont5478854789_)))))))
                  (_optimize-t__5372753728_
                   (lambda (_expr49391_ _test49392_ _continue49393_)
                     (_do-assert46395_
                      (cons (cons _test49392_ '#t) '())
                      (lambda () (_continue49393_ _expr49391_)))))
                  (_optimize-t__0__5372953730_
                   (lambda (_expr49399_ _test49400_)
                     (let ((_continue49402_ _optimize-e46406_))
                       (_optimize-t__5372753728_
                        _expr49399_
                        _test49400_
                        _continue49402_))))
                  (_optimize-t46407_
                   (lambda _g56830_
                     (let ((_g56829_
                            (let () (declare (not safe)) (##length _g56830_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56829_ 2))
                              (apply _optimize-t__0__5372953730_ _g56830_))
                             ((let () (declare (not safe)) (##fx= _g56829_ 3))
                              (apply _optimize-t__5372753728_ _g56830_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56830_))))))
                  (_optimize-f__5373153732_
                   (lambda (_expr48476_ _test48477_)
                     (_do-assert46395_
                      (if _test48477_ (cons (cons _test48477_ '#f) '()) '())
                      (lambda ()
                        (let* ((___stx5501655017_ _expr48476_)
                               (_g4848548658_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx5501655017_))))
                          (let ((___kont5501855019_
                                 (lambda (_L49246_ _L49247_)
                                   (let ((_$e49267_
                                          (_lookup-block46414_ _L49247_)))
                                     (if _$e49267_
                                         ((lambda (_block49270_)
                                            (if (_nonlinear-block?46416_
                                                 _block49270_)
                                                _expr48476_
                                                (let* ((_inline49279_
                                                        (_inline-block46415_
                                                         _block49270_
                                                         (foldr1 (lambda (_g4927149274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g4927249276_)
                           (cons _g4927149274_ _g4927249276_))
                         '()
                         _L49246_)))
               (___stx5497854979_ _inline49279_)
               (_g4928249303_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx5497854979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((___kont5498054981_
                                                         (lambda (_L49347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L49348_
                          _L49349_)
                   (let ((_$e49371_ (_assert-e46409_ _L49349_)))
                     (if (eq? '#t _$e49371_)
                         (if _in-splice?46394_
                             (_optimize-f__0__5373353734_ _L49348_)
                             (_optimize-e46406_ _L49348_))
                         (if (eq? '#f _$e49371_)
                             (_optimize-f__0__5373353734_ _L49347_)
                             _expr48476_)))))
                (___kont5498254983_
                 (lambda () (_optimize-f__0__5373353734_ _inline49279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         ___stx5497854979_)
                                                        (let ((_e4928749315_
                                                               (gx#stx-e
                                                                ___stx5497854979_)))
                                                          (let ((_tl4928949320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4928749315_)))
                        (_hd4928849318_
                         (let () (declare (not safe)) (##car _e4928749315_))))
                    (if (gx#identifier? _hd4928849318_)
                        (if (gx#stx-eq? '%#if _hd4928849318_)
                            (if (gx#stx-pair? _tl4928949320_)
                                (let ((_e4929049323_
                                       (gx#stx-e _tl4928949320_)))
                                  (let ((_tl4929249328_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4929049323_)))
                                        (_hd4929149326_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4929049323_))))
                                    (if (gx#stx-pair? _tl4929249328_)
                                        (let ((_e4929349331_
                                               (gx#stx-e _tl4929249328_)))
                                          (let ((_tl4929549336_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4929349331_)))
                                                (_hd4929449334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4929349331_))))
                                            (if (gx#stx-pair? _tl4929549336_)
                                                (let ((_e4929649339_
                                                       (gx#stx-e
                                                        _tl4929549336_)))
                                                  (let ((_tl4929849344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4929649339_)))
                                                        (_hd4929749342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4929649339_))))
                                                    (if (gx#stx-null?
                                                         _tl4929849344_)
                                                        (___kont5498054981_
                                                         _hd4929749342_
                                                         _hd4929449334_
                                                         _hd4929149326_)
                                                        (___kont5498254983_))))
                                                (___kont5498254983_))))
                                        (___kont5498254983_))))
                                (___kont5498254983_))
                            (___kont5498254983_))
                        (___kont5498254983_))))
                (___kont5498254983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _$e49267_)
                                         _expr48476_))))
                                (___kont5502255023_
                                 (lambda (_L49144_ _L49145_ _L49146_)
                                   (let ((_$e49163_
                                          (_assert-e46409_ _L49146_)))
                                     (if (eq? '#t _$e49163_)
                                         (if _in-splice?46394_
                                             (_optimize-f__0__5373353734_
                                              _L49145_)
                                             (_optimize-e46406_ _L49145_))
                                         (if (eq? '#f _$e49163_)
                                             (_optimize-f__0__5373353734_
                                              _L49144_)
                                             (let ((_K49166_
                                                    (_optimize-t__5372753728_
                                                     _L49145_
                                                     _L49146_
                                                     _optimize-f46408_))
                                                   (_E49167_
                                                    (_optimize-f__5373153732_
                                                     _L49144_
                                                     _L49146_)))
                                               (if (equal? (gxc#apply-generate-runtime-repr
                                                            _K49166_)
                                                           (gxc#apply-generate-runtime-repr
                                                            _E49167_))
                                                   _K49166_
                                                   (cons '%#if
                                                         (cons _L49146_
                                                               (cons _K49166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _E49167_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (___kont5502455025_
                                 (lambda (_L49074_ _L49075_ _L49076_)
                                   (let ((_body49095_
                                          (_optimize-f__0__5373353734_
                                           _L49074_)))
                                     (cons '%#let-values
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L49075_
                                                    _L49076_)
                                                   (foldr2 (lambda (_g4909649100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4909749102_
                            _g4909849104_)
                     (cons (cons (cons _g4909749102_ '())
                                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                             (cons _g4909649100_ '()))
                                       '()))
                           _g4909849104_))
                   '()
                   _L49075_
                   _L49076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _body49095_ '()))))))
                                (___kont5502855029_
                                 (lambda (_L48942_ _L48943_ _L48944_)
                                   (_bind-e__5373553736_
                                    (map cons
                                         (foldr1 (lambda (_g4896248965_
                                                          _g4896348967_)
                                                   (cons _g4896248965_
                                                         _g4896348967_))
                                                 '()
                                                 _L48944_)
                                         (foldr1 (lambda (_g4896948972_
                                                          _g4897048974_)
                                                   (cons _g4896948972_
                                                         _g4897048974_))
                                                 '()
                                                 _L48943_))
                                    _L48942_
                                    _optimize-f46408_)))
                                (___kont5503255033_
                                 (lambda (_L48798_
                                          _L48799_
                                          _L48800_
                                          _L48801_
                                          _L48802_)
                                   (_do-splice!46405_
                                    (lambda ()
                                      (let ((_expr48845_
                                             (_optimize-f__0__5373353734_
                                              _L48800_)))
                                        (cons '%#letrec-values
                                              (cons (cons (cons (cons _L48802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (cons '%#lambda
                                    (cons (foldr1 (lambda (_g4884648849_
                                                           _g4884748851_)
                                                    (cons _g4884648849_
                                                          _g4884748851_))
                                                  '()
                                                  _L48801_)
                                          (cons _expr48845_ '())))
                              '()))
                  (foldr1 (lambda (_g4885348856_ _g4885448858_)
                            (cons _g4885348856_ _g4885448858_))
                          '()
                          _L48799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L48798_ '()))))))))
                                (___kont5503855039_ (lambda () _expr48476_)))
                            (let* ((___match5522555226_
                                    (lambda (_e4860648670_
                                             _hd4860748673_
                                             _tl4860848675_
                                             _e4860948678_
                                             _hd4861048681_
                                             _tl4861148683_
                                             _e4861248686_
                                             _hd4861348689_
                                             _tl4861448691_
                                             _e4861548694_
                                             _hd4861648697_
                                             _tl4861748699_
                                             _e4861848702_
                                             _hd4861948705_
                                             _tl4862048707_
                                             _e4862148710_
                                             _hd4862248713_
                                             _tl4862348715_
                                             _e4862448718_
                                             _hd4862548721_
                                             _tl4862648723_
                                             _e4862748726_
                                             _hd4862848729_
                                             _tl4862948731_
                                             ___splice5503455035_
                                             _target4863048734_
                                             _tl4863248736_)
                                      (letrec ((_loop4863348739_
                                                (lambda (_hd4863148742_
                                                         _id4863748744_)
                                                  (if (gx#stx-pair?
                                                       _hd4863148742_)
                                                      (let ((_e4863448747_
                                                             (gx#stx-e
                                                              _hd4863148742_)))
                                                        (let ((_lp-tl4863648752_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4863448747_)))
                      (_lp-hd4863548750_
                       (let () (declare (not safe)) (##car _e4863448747_))))
                  (_loop4863348739_
                   _lp-tl4863648752_
                   (cons _lp-hd4863548750_ _id4863748744_))))
              (let ((_id4863848755_ (reverse _id4863748744_)))
                (if (gx#stx-pair? _tl4862948731_)
                    (let ((_e4863948758_ (gx#stx-e _tl4862948731_)))
                      (let ((_tl4864148763_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4863948758_)))
                            (_hd4864048761_
                             (let ()
                               (declare (not safe))
                               (##car _e4863948758_))))
                        (if (gx#stx-null? _tl4864148763_)
                            (if (gx#stx-null? _tl4862348715_)
                                (if (gx#stx-pair/null? _tl4861448691_)
                                    (let ((___splice5503655037_
                                           (gx#syntax-split-splice
                                            _tl4861448691_
                                            '0)))
                                      (let ((_tl4864448768_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5503655037_
                                                '1)))
                                            (_target4864248766_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice5503655037_
                                                '0))))
                                        (if (gx#stx-null? _tl4864448768_)
                                            (letrec ((_loop4864548771_
                                                      (lambda (_hd4864348774_
                                                               _bind4864948776_)
                                                        (if (gx#stx-pair?
                                                             _hd4864348774_)
                                                            (let ((_e4864648779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4864348774_)))
                      (let ((_lp-tl4864848784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4864648779_)))
                            (_lp-hd4864748782_
                             (let ()
                               (declare (not safe))
                               (##car _e4864648779_))))
                        (_loop4864548771_
                         _lp-tl4864848784_
                         (cons _lp-hd4864748782_ _bind4864948776_))))
                    (let ((_bind4865048787_ (reverse _bind4864948776_)))
                      (if (gx#stx-pair? _tl4861148683_)
                          (let ((_e4865148790_ (gx#stx-e _tl4861148683_)))
                            (let ((_tl4865348795_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4865148790_)))
                                  (_hd4865248793_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4865148790_))))
                              (if (gx#stx-null? _tl4865348795_)
                                  (___kont5503255033_
                                   _hd4865248793_
                                   _bind4865048787_
                                   _hd4864048761_
                                   _id4863848755_
                                   _hd4861948705_)
                                  (___kont5503855039_))))
                          (___kont5503855039_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop4864548771_
                                               _target4864248766_
                                               '()))
                                            (___kont5503855039_))))
                                    (___kont5503855039_))
                                (___kont5503855039_))
                            (___kont5503855039_))))
                    (___kont5503855039_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4863348739_
                                         _target4863048734_
                                         '()))))
                                   (___match5515955160_
                                    (lambda (_e4857248866_
                                             _hd4857348869_
                                             _tl4857448871_
                                             _e4857548874_
                                             _hd4857648877_
                                             _tl4857748879_
                                             ___splice5503055031_
                                             _target4857848882_
                                             _tl4858048884_)
                                      (letrec ((_loop4858148887_
                                                (lambda (_hd4857948890_
                                                         _expr4858548892_
                                                         _id4858648894_)
                                                  (if (gx#stx-pair?
                                                       _hd4857948890_)
                                                      (let ((_e4858248897_
                                                             (gx#stx-e
                                                              _hd4857948890_)))
                                                        (let ((_lp-tl4858448902_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4858248897_)))
                      (_lp-hd4858348900_
                       (let () (declare (not safe)) (##car _e4858248897_))))
                  (if (gx#stx-pair? _lp-hd4858348900_)
                      (let ((_e4858948905_ (gx#stx-e _lp-hd4858348900_)))
                        (let ((_tl4859148910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4858948905_)))
                              (_hd4859048908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4858948905_))))
                          (if (gx#stx-pair? _hd4859048908_)
                              (let ((_e4859248913_ (gx#stx-e _hd4859048908_)))
                                (let ((_tl4859448918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4859248913_)))
                                      (_hd4859348916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4859248913_))))
                                  (if (gx#stx-null? _tl4859448918_)
                                      (if (gx#stx-pair? _tl4859148910_)
                                          (let ((_e4859548921_
                                                 (gx#stx-e _tl4859148910_)))
                                            (let ((_tl4859748926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4859548921_)))
                                                  (_hd4859648924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4859548921_))))
                                              (if (gx#stx-null? _tl4859748926_)
                                                  (_loop4858148887_
                                                   _lp-tl4858448902_
                                                   (cons _hd4859648924_
                                                         _expr4858548892_)
                                                   (cons _hd4859348916_
                                                         _id4858648894_))
                                                  (___kont5503855039_))))
                                          (___kont5503855039_))
                                      (___kont5503855039_))))
                              (___kont5503855039_))))
                      (___kont5503855039_))))
              (let ((_id4858848931_ (reverse _id4858648894_))
                    (_expr4858748929_ (reverse _expr4858548892_)))
                (if (gx#stx-pair? _tl4857748879_)
                    (let ((_e4859848934_ (gx#stx-e _tl4857748879_)))
                      (let ((_tl4860048939_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4859848934_)))
                            (_hd4859948937_
                             (let ()
                               (declare (not safe))
                               (##car _e4859848934_))))
                        (if (gx#stx-null? _tl4860048939_)
                            (___kont5502855029_
                             _hd4859948937_
                             _expr4858748929_
                             _id4858848931_)
                            (___kont5503855039_))))
                    (___kont5503855039_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4858148887_
                                         _target4857848882_
                                         '()
                                         '()))))
                                   (___match5513555136_
                                    (lambda (_e4853448982_
                                             _hd4853548985_
                                             _tl4853648987_
                                             _e4853748990_
                                             _hd4853848993_
                                             _tl4853948995_
                                             ___splice5502655027_
                                             _target4854048998_
                                             _tl4854249000_)
                                      (letrec ((_loop4854349003_
                                                (lambda (_hd4854149006_
                                                         _xid4854749008_
                                                         _id4854849010_)
                                                  (if (gx#stx-pair?
                                                       _hd4854149006_)
                                                      (let ((_e4854449013_
                                                             (gx#stx-e
                                                              _hd4854149006_)))
                                                        (let ((_lp-tl4854649018_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4854449013_)))
                      (_lp-hd4854549016_
                       (let () (declare (not safe)) (##car _e4854449013_))))
                  (if (gx#stx-pair? _lp-hd4854549016_)
                      (let ((_e4855149021_ (gx#stx-e _lp-hd4854549016_)))
                        (let ((_tl4855349026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4855149021_)))
                              (_hd4855249024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4855149021_))))
                          (if (gx#stx-pair? _hd4855249024_)
                              (let ((_e4855449029_ (gx#stx-e _hd4855249024_)))
                                (let ((_tl4855649034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4855449029_)))
                                      (_hd4855549032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4855449029_))))
                                  (if (gx#stx-null? _tl4855649034_)
                                      (if (gx#stx-pair? _tl4855349026_)
                                          (let ((_e4855749037_
                                                 (gx#stx-e _tl4855349026_)))
                                            (let ((_tl4855949042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4855749037_)))
                                                  (_hd4855849040_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4855749037_))))
                                              (if (gx#stx-pair? _hd4855849040_)
                                                  (let ((_e4856049045_
                                                         (gx#stx-e
                                                          _hd4855849040_)))
                                                    (let ((_tl4856249050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4856049045_)))
                                                          (_hd4856149048_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4856049045_))))
                                                      (if (gx#identifier?
                                                           _hd4856149048_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd4856149048_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4856249050_)
                          (let ((_e4856349053_ (gx#stx-e _tl4856249050_)))
                            (let ((_tl4856549058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4856349053_)))
                                  (_hd4856449056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4856349053_))))
                              (if (gx#stx-null? _tl4856549058_)
                                  (if (gx#stx-null? _tl4855949042_)
                                      (_loop4854349003_
                                       _lp-tl4854649018_
                                       (cons _hd4856449056_ _xid4854749008_)
                                       (cons _hd4855549032_ _id4854849010_))
                                      (___match5515955160_
                                       _e4853448982_
                                       _hd4853548985_
                                       _tl4853648987_
                                       _e4853748990_
                                       _hd4853848993_
                                       _tl4853948995_
                                       ___splice5502655027_
                                       _target4854048998_
                                       _tl4854249000_))
                                  (___match5515955160_
                                   _e4853448982_
                                   _hd4853548985_
                                   _tl4853648987_
                                   _e4853748990_
                                   _hd4853848993_
                                   _tl4853948995_
                                   ___splice5502655027_
                                   _target4854048998_
                                   _tl4854249000_))))
                          (___match5515955160_
                           _e4853448982_
                           _hd4853548985_
                           _tl4853648987_
                           _e4853748990_
                           _hd4853848993_
                           _tl4853948995_
                           ___splice5502655027_
                           _target4854048998_
                           _tl4854249000_))
                      (___match5515955160_
                       _e4853448982_
                       _hd4853548985_
                       _tl4853648987_
                       _e4853748990_
                       _hd4853848993_
                       _tl4853948995_
                       ___splice5502655027_
                       _target4854048998_
                       _tl4854249000_))
                  (___match5515955160_
                   _e4853448982_
                   _hd4853548985_
                   _tl4853648987_
                   _e4853748990_
                   _hd4853848993_
                   _tl4853948995_
                   ___splice5502655027_
                   _target4854048998_
                   _tl4854249000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match5515955160_
                                                   _e4853448982_
                                                   _hd4853548985_
                                                   _tl4853648987_
                                                   _e4853748990_
                                                   _hd4853848993_
                                                   _tl4853948995_
                                                   ___splice5502655027_
                                                   _target4854048998_
                                                   _tl4854249000_))))
                                          (___match5515955160_
                                           _e4853448982_
                                           _hd4853548985_
                                           _tl4853648987_
                                           _e4853748990_
                                           _hd4853848993_
                                           _tl4853948995_
                                           ___splice5502655027_
                                           _target4854048998_
                                           _tl4854249000_))
                                      (___match5515955160_
                                       _e4853448982_
                                       _hd4853548985_
                                       _tl4853648987_
                                       _e4853748990_
                                       _hd4853848993_
                                       _tl4853948995_
                                       ___splice5502655027_
                                       _target4854048998_
                                       _tl4854249000_))))
                              (___match5515955160_
                               _e4853448982_
                               _hd4853548985_
                               _tl4853648987_
                               _e4853748990_
                               _hd4853848993_
                               _tl4853948995_
                               ___splice5502655027_
                               _target4854048998_
                               _tl4854249000_))))
                      (___match5515955160_
                       _e4853448982_
                       _hd4853548985_
                       _tl4853648987_
                       _e4853748990_
                       _hd4853848993_
                       _tl4853948995_
                       ___splice5502655027_
                       _target4854048998_
                       _tl4854249000_))))
              (let ((_id4855049063_ (reverse _id4854849010_))
                    (_xid4854949061_ (reverse _xid4854749008_)))
                (if (gx#stx-pair? _tl4853948995_)
                    (let ((_e4856649066_ (gx#stx-e _tl4853948995_)))
                      (let ((_tl4856849071_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4856649066_)))
                            (_hd4856749069_
                             (let ()
                               (declare (not safe))
                               (##car _e4856649066_))))
                        (if (gx#stx-null? _tl4856849071_)
                            (___kont5502455025_
                             _hd4856749069_
                             _xid4854949061_
                             _id4855049063_)
                            (___match5515955160_
                             _e4853448982_
                             _hd4853548985_
                             _tl4853648987_
                             _e4853748990_
                             _hd4853848993_
                             _tl4853948995_
                             ___splice5502655027_
                             _target4854048998_
                             _tl4854249000_))))
                    (___match5515955160_
                     _e4853448982_
                     _hd4853548985_
                     _tl4853648987_
                     _e4853748990_
                     _hd4853848993_
                     _tl4853948995_
                     ___splice5502655027_
                     _target4854048998_
                     _tl4854249000_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4854349003_
                                         _target4854048998_
                                         '()
                                         '()))))
                                   (___match5508155082_
                                    (lambda (_e4848949174_
                                             _hd4849049177_
                                             _tl4849149179_
                                             _e4849249182_
                                             _hd4849349185_
                                             _tl4849449187_
                                             _e4849549190_
                                             _hd4849649193_
                                             _tl4849749195_
                                             _e4849849198_
                                             _hd4849949201_
                                             _tl4850049203_
                                             ___splice5502055021_
                                             _target4850149206_
                                             _tl4850349208_)
                                      (letrec ((_loop4850449211_
                                                (lambda (_hd4850249214_
                                                         _id4850849216_)
                                                  (if (gx#stx-pair?
                                                       _hd4850249214_)
                                                      (let ((_e4850549219_
                                                             (gx#stx-e
                                                              _hd4850249214_)))
                                                        (let ((_lp-tl4850749224_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4850549219_)))
                      (_lp-hd4850649222_
                       (let () (declare (not safe)) (##car _e4850549219_))))
                  (if (gx#stx-pair? _lp-hd4850649222_)
                      (let ((_e4851049227_ (gx#stx-e _lp-hd4850649222_)))
                        (let ((_tl4851249232_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4851049227_)))
                              (_hd4851149230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4851049227_))))
                          (if (gx#identifier? _hd4851149230_)
                              (if (gx#stx-eq? '%#ref _hd4851149230_)
                                  (if (gx#stx-pair? _tl4851249232_)
                                      (let ((_e4851349235_
                                             (gx#stx-e _tl4851249232_)))
                                        (let ((_tl4851549240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4851349235_)))
                                              (_hd4851449238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4851349235_))))
                                          (if (gx#stx-null? _tl4851549240_)
                                              (_loop4850449211_
                                               _lp-tl4850749224_
                                               (cons _hd4851449238_
                                                     _id4850849216_))
                                              (___kont5503855039_))))
                                      (___kont5503855039_))
                                  (___kont5503855039_))
                              (___kont5503855039_))))
                      (___kont5503855039_))))
              (let ((_id4850949243_ (reverse _id4850849216_)))
                (___kont5501855019_ _id4850949243_ _hd4849949201_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop4850449211_
                                         _target4850149206_
                                         '())))))
                              (if (gx#stx-pair? ___stx5501655017_)
                                  (let ((_e4848949174_
                                         (gx#stx-e ___stx5501655017_)))
                                    (let ((_tl4849149179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4848949174_)))
                                          (_hd4849049177_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4848949174_))))
                                      (if (gx#identifier? _hd4849049177_)
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd4849049177_)
                                              (if (gx#stx-pair? _tl4849149179_)
                                                  (let ((_e4849249182_
                                                         (gx#stx-e
                                                          _tl4849149179_)))
                                                    (let ((_tl4849449187_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4849249182_)))
                                                          (_hd4849349185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4849249182_))))
                                                      (if (gx#stx-pair?
                                                           _hd4849349185_)
                                                          (let ((_e4849549190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4849349185_)))
                    (let ((_tl4849749195_
                           (let () (declare (not safe)) (##cdr _e4849549190_)))
                          (_hd4849649193_
                           (let ()
                             (declare (not safe))
                             (##car _e4849549190_))))
                      (if (gx#identifier? _hd4849649193_)
                          (if (gx#stx-eq? '%#ref _hd4849649193_)
                              (if (gx#stx-pair? _tl4849749195_)
                                  (let ((_e4849849198_
                                         (gx#stx-e _tl4849749195_)))
                                    (let ((_tl4850049203_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4849849198_)))
                                          (_hd4849949201_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4849849198_))))
                                      (if (gx#stx-null? _tl4850049203_)
                                          (if (gx#stx-pair/null?
                                               _tl4849449187_)
                                              (let ((___splice5502055021_
                                                     (gx#syntax-split-splice
                                                      _tl4849449187_
                                                      '0)))
                                                (let ((_tl4850349208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5502055021_
                                                          '1)))
                                                      (_target4850149206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5502055021_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4850349208_)
                                                      (___match5508155082_
                                                       _e4848949174_
                                                       _hd4849049177_
                                                       _tl4849149179_
                                                       _e4849249182_
                                                       _hd4849349185_
                                                       _tl4849449187_
                                                       _e4849549190_
                                                       _hd4849649193_
                                                       _tl4849749195_
                                                       _e4849849198_
                                                       _hd4849949201_
                                                       _tl4850049203_
                                                       ___splice5502055021_
                                                       _target4850149206_
                                                       _tl4850349208_)
                                                      (___kont5503855039_))))
                                              (___kont5503855039_))
                                          (___kont5503855039_))))
                                  (___kont5503855039_))
                              (___kont5503855039_))
                          (___kont5503855039_))))
                  (___kont5503855039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5503855039_))
                                              (if (gx#stx-eq?
                                                   '%#if
                                                   _hd4849049177_)
                                                  (if (gx#stx-pair?
                                                       _tl4849149179_)
                                                      (let ((_e4852249120_
                                                             (gx#stx-e
                                                              _tl4849149179_)))
                                                        (let ((_tl4852449125_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4852249120_)))
                      (_hd4852349123_
                       (let () (declare (not safe)) (##car _e4852249120_))))
                  (if (gx#stx-pair? _tl4852449125_)
                      (let ((_e4852549128_ (gx#stx-e _tl4852449125_)))
                        (let ((_tl4852749133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4852549128_)))
                              (_hd4852649131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4852549128_))))
                          (if (gx#stx-pair? _tl4852749133_)
                              (let ((_e4852849136_ (gx#stx-e _tl4852749133_)))
                                (let ((_tl4853049141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4852849136_)))
                                      (_hd4852949139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4852849136_))))
                                  (if (gx#stx-null? _tl4853049141_)
                                      (___kont5502255023_
                                       _hd4852949139_
                                       _hd4852649131_
                                       _hd4852349123_)
                                      (___kont5503855039_))))
                              (___kont5503855039_))))
                      (___kont5503855039_))))
              (___kont5503855039_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4849049177_)
                                                      (if (gx#stx-pair?
                                                           _tl4849149179_)
                                                          (let ((_e4853748990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4849149179_)))
                    (let ((_tl4853948995_
                           (let () (declare (not safe)) (##cdr _e4853748990_)))
                          (_hd4853848993_
                           (let ()
                             (declare (not safe))
                             (##car _e4853748990_))))
                      (if (gx#stx-pair/null? _hd4853848993_)
                          (let ((___splice5502655027_
                                 (gx#syntax-split-splice _hd4853848993_ '0)))
                            (let ((_tl4854249000_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5502655027_ '1)))
                                  (_target4854048998_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5502655027_ '0))))
                              (if (gx#stx-null? _tl4854249000_)
                                  (___match5513555136_
                                   _e4848949174_
                                   _hd4849049177_
                                   _tl4849149179_
                                   _e4853748990_
                                   _hd4853848993_
                                   _tl4853948995_
                                   ___splice5502655027_
                                   _target4854048998_
                                   _tl4854249000_)
                                  (___kont5503855039_))))
                          (___kont5503855039_))))
                  (___kont5503855039_))
              (if (gx#stx-eq? '%#letrec-values _hd4849049177_)
                  (if (gx#stx-pair? _tl4849149179_)
                      (let ((_e4860948678_ (gx#stx-e _tl4849149179_)))
                        (let ((_tl4861148683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4860948678_)))
                              (_hd4861048681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4860948678_))))
                          (if (gx#stx-pair? _hd4861048681_)
                              (let ((_e4861248686_ (gx#stx-e _hd4861048681_)))
                                (let ((_tl4861448691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4861248686_)))
                                      (_hd4861348689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4861248686_))))
                                  (if (gx#stx-pair? _hd4861348689_)
                                      (let ((_e4861548694_
                                             (gx#stx-e _hd4861348689_)))
                                        (let ((_tl4861748699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4861548694_)))
                                              (_hd4861648697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4861548694_))))
                                          (if (gx#stx-pair? _hd4861648697_)
                                              (let ((_e4861848702_
                                                     (gx#stx-e
                                                      _hd4861648697_)))
                                                (let ((_tl4862048707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4861848702_)))
                                                      (_hd4861948705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4861848702_))))
                                                  (if (gx#stx-null?
                                                       _tl4862048707_)
                                                      (if (gx#stx-pair?
                                                           _tl4861748699_)
                                                          (let ((_e4862148710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4861748699_)))
                    (let ((_tl4862348715_
                           (let () (declare (not safe)) (##cdr _e4862148710_)))
                          (_hd4862248713_
                           (let ()
                             (declare (not safe))
                             (##car _e4862148710_))))
                      (if (gx#stx-pair? _hd4862248713_)
                          (let ((_e4862448718_ (gx#stx-e _hd4862248713_)))
                            (let ((_tl4862648723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4862448718_)))
                                  (_hd4862548721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4862448718_))))
                              (if (gx#identifier? _hd4862548721_)
                                  (if (gx#stx-eq? '%#lambda _hd4862548721_)
                                      (if (gx#stx-pair? _tl4862648723_)
                                          (let ((_e4862748726_
                                                 (gx#stx-e _tl4862648723_)))
                                            (let ((_tl4862948731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4862748726_)))
                                                  (_hd4862848729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4862748726_))))
                                              (if (gx#stx-pair/null?
                                                   _hd4862848729_)
                                                  (let ((___splice5503455035_
                                                         (gx#syntax-split-splice
                                                          _hd4862848729_
                                                          '0)))
                                                    (let ((_tl4863248736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5503455035_
                                                              '1)))
                                                          (_target4863048734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5503455035_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4863248736_)
                                                          (___match5522555226_
                                                           _e4848949174_
                                                           _hd4849049177_
                                                           _tl4849149179_
                                                           _e4860948678_
                                                           _hd4861048681_
                                                           _tl4861148683_
                                                           _e4861248686_
                                                           _hd4861348689_
                                                           _tl4861448691_
                                                           _e4861548694_
                                                           _hd4861648697_
                                                           _tl4861748699_
                                                           _e4861848702_
                                                           _hd4861948705_
                                                           _tl4862048707_
                                                           _e4862148710_
                                                           _hd4862248713_
                                                           _tl4862348715_
                                                           _e4862448718_
                                                           _hd4862548721_
                                                           _tl4862648723_
                                                           _e4862748726_
                                                           _hd4862848729_
                                                           _tl4862948731_
                                                           ___splice5503455035_
                                                           _target4863048734_
                                                           _tl4863248736_)
                                                          (___kont5503855039_))))
                                                  (___kont5503855039_))))
                                          (___kont5503855039_))
                                      (___kont5503855039_))
                                  (___kont5503855039_))))
                          (___kont5503855039_))))
                  (___kont5503855039_))
              (___kont5503855039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5503855039_))))
                                      (___kont5503855039_))))
                              (___kont5503855039_))))
                      (___kont5503855039_))
                  (___kont5503855039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (___kont5503855039_))))
                                  (___kont5503855039_)))))))))
                  (_optimize-f__0__5373353734_
                   (lambda (_expr49383_)
                     (let ((_test49385_ '#f))
                       (_optimize-f__5373153732_ _expr49383_ _test49385_))))
                  (_optimize-f46408_
                   (lambda _g56832_
                     (let ((_g56831_
                            (let () (declare (not safe)) (##length _g56832_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56831_ 1))
                              (apply _optimize-f__0__5373353734_ _g56832_))
                             ((let () (declare (not safe)) (##fx= _g56831_ 2))
                              (apply _optimize-f__5373153732_ _g56832_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56832_))))))
                  (_assert-e46409_
                   (lambda (_expr47417_)
                     (let* ((_sexpr47419_
                             (gxc#apply-generate-runtime-repr _expr47417_))
                            (_$e47421_ (assoc _sexpr47419_ _env-assert46391_)))
                       (if _$e47421_
                           (cdr _$e47421_)
                           (let _assert47424_ ((_expr47426_ _expr47417_))
                             (let* ((___stx5532255323_ _expr47426_)
                                    (_g4743447613_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx5532255323_))))
                               (let ((___kont5532455325_
                                      (lambda (_L48444_ _L48445_)
                                        (let ((_$e48467_
                                               (_predicate-type46396_
                                                _L48445_)))
                                          (if _$e48467_
                                              ((lambda (_t48470_)
                                                 (_assert-type46410_
                                                  _L48444_
                                                  _t48470_))
                                               _$e48467_)
                                              '#!void))))
                                     (___kont5532655327_
                                      (lambda (_L48137_ _L48138_ _L48139_)
                                        (let ((_$e48164_
                                               (gxc#identifier-symbol
                                                _L48139_)))
                                          (if (or (eq? '##fx= _$e48164_)
                                                  (eq? 'fx= _$e48164_))
                                              (let* ((___stx5522855229_
                                                      _L48138_)
                                                     (_g4817148200_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx5522855229_))))
                                                (let ((___kont5523055231_
                                                       (lambda (_L48268_
                                                                _L48269_)
                                                         (let ((_$e48294_
                                                                (_countf-symbol46398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L48269_)))
                   (if _$e48294_
                       ((lambda (_sym48297_)
                          (_assert-count46411_
                           _L48268_
                           _sym48297_
                           (gx#stx-e _L48137_)))
                        _$e48294_)
                       '#!void))))
              (___kont5523255233_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx5522855229_)
                                                      (let ((_e4817548212_
                                                             (gx#stx-e
                                                              ___stx5522855229_)))
                                                        (let ((_tl4817748217_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4817548212_)))
                      (_hd4817648215_
                       (let () (declare (not safe)) (##car _e4817548212_))))
                  (if (gx#identifier? _hd4817648215_)
                      (if (gx#stx-eq? '%#call _hd4817648215_)
                          (if (gx#stx-pair? _tl4817748217_)
                              (let ((_e4817848220_ (gx#stx-e _tl4817748217_)))
                                (let ((_tl4818048225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4817848220_)))
                                      (_hd4817948223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4817848220_))))
                                  (if (gx#stx-pair? _hd4817948223_)
                                      (let ((_e4818148228_
                                             (gx#stx-e _hd4817948223_)))
                                        (let ((_tl4818348233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4818148228_)))
                                              (_hd4818248231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4818148228_))))
                                          (if (gx#identifier? _hd4818248231_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd4818248231_)
                                                  (if (gx#stx-pair?
                                                       _tl4818348233_)
                                                      (let ((_e4818448236_
                                                             (gx#stx-e
                                                              _tl4818348233_)))
                                                        (let ((_tl4818648241_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4818448236_)))
                      (_hd4818548239_
                       (let () (declare (not safe)) (##car _e4818448236_))))
                  (if (gx#stx-null? _tl4818648241_)
                      (if (gx#stx-pair? _tl4818048225_)
                          (let ((_e4818748244_ (gx#stx-e _tl4818048225_)))
                            (let ((_tl4818948249_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4818748244_)))
                                  (_hd4818848247_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4818748244_))))
                              (if (gx#stx-pair? _hd4818848247_)
                                  (let ((_e4819048252_
                                         (gx#stx-e _hd4818848247_)))
                                    (let ((_tl4819248257_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4819048252_)))
                                          (_hd4819148255_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4819048252_))))
                                      (if (gx#identifier? _hd4819148255_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd4819148255_)
                                              (if (gx#stx-pair? _tl4819248257_)
                                                  (let ((_e4819348260_
                                                         (gx#stx-e
                                                          _tl4819248257_)))
                                                    (let ((_tl4819548265_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4819348260_)))
                                                          (_hd4819448263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4819348260_))))
                                                      (if (gx#stx-null?
                                                           _tl4819548265_)
                                                          (if (gx#stx-null?
                                                               _tl4818948249_)
                                                              (___kont5523055231_
                                                               _hd4819448263_
                                                               _hd4818548239_)
                                                              (___kont5523255233_))
                                                          (___kont5523255233_))))
                                                  (___kont5523255233_))
                                              (___kont5523255233_))
                                          (___kont5523255233_))))
                                  (___kont5523255233_))))
                          (___kont5523255233_))
                      (___kont5523255233_))))
              (___kont5523255233_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5523255233_))
                                              (___kont5523255233_))))
                                      (___kont5523255233_))))
                              (___kont5523255233_))
                          (___kont5523255233_))
                      (___kont5523255233_))))
              (___kont5523255233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (or (eq? '##eq? _$e48164_)
                                                      (eq? 'eq? _$e48164_)
                                                      (eq? '##eqv? _$e48164_)
                                                      (eq? 'eqv? _$e48164_)
                                                      (eq? '##equal? _$e48164_)
                                                      (eq? 'equal? _$e48164_)
                                                      (eq? 'gx#free-identifier=?
                                                           _$e48164_)
                                                      (eq? 'gx#stx-eq?
                                                           _$e48164_))
                                                  ((lambda (_sym48323_)
                                                     (let* ((___stx5529655297_
                                                             _L48138_)
                                                            (_g4832648339_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx5529655297_))))
                                                       (let ((___kont5529855299_
                                                              (lambda (_L48367_)
                                                                (_assert-eqf46412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L48367_
                         (_eqf-symbol46399_ _sym48323_)
                         (gx#stx-e _L48137_))))
                     (___kont5530055301_ (lambda () '#!void)))
                 (if (gx#stx-pair? ___stx5529655297_)
                     (let ((_e4832948351_ (gx#stx-e ___stx5529655297_)))
                       (let ((_tl4833148356_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4832948351_)))
                             (_hd4833048354_
                              (let ()
                                (declare (not safe))
                                (##car _e4832948351_))))
                         (if (gx#identifier? _hd4833048354_)
                             (if (gx#stx-eq? '%#ref _hd4833048354_)
                                 (if (gx#stx-pair? _tl4833148356_)
                                     (let ((_e4833248359_
                                            (gx#stx-e _tl4833148356_)))
                                       (let ((_tl4833448364_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4833248359_)))
                                             (_hd4833348362_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4833248359_))))
                                         (if (gx#stx-null? _tl4833448364_)
                                             (___kont5529855299_
                                              _hd4833348362_)
                                             (___kont5530055301_))))
                                     (___kont5530055301_))
                                 (___kont5530055301_))
                             (___kont5530055301_))))
                     (___kont5530055301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _$e48164_)
                                                  '#!void)))))
                                     (___kont5532855329_
                                      (lambda (_L48041_ _L48042_ _L48043_)
                                        (_assert47424_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#call)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            '%#ref)
                                                           (cons _L48043_ '()))
                                                     (cons _L48041_
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '%#quote)
                               (cons _L48042_ '()))
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont5533055331_
                                      (lambda (_L47933_ _L47934_ _L47935_)
                                        (let ((_$e47964_
                                               (gxc#identifier-symbol
                                                _L47935_)))
                                          (if (or (eq? 'gx#free-identifier=?
                                                       _$e47964_)
                                                  (eq? 'gx#stx-eq? _$e47964_))
                                              ((lambda (_sym47970_)
                                                 (_assert-eqf46412_
                                                  _L47934_
                                                  (_eqf-symbol46399_
                                                   _sym47970_)
                                                  _L47933_))
                                               _$e47964_)
                                              '#!void))))
                                     (___kont5533255333_
                                      (lambda (_L47817_ _L47818_ _L47819_)
                                        (_assert47424_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#call)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            '%#ref)
                                                           (cons _L47819_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%#ref)
                         (cons _L47817_ '()))
                   (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                               (cons _L47818_ '()))
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont5533455335_
                                      (lambda (_L47697_ _L47698_ _L47699_)
                                        (_assert47424_
                                         (gxc#apply-expression-subst
                                          _L47698_
                                          _L47699_
                                          _L47697_))))
                                     (___kont5533655337_ (lambda () '#!void)))
                                 (if (gx#stx-pair? ___stx5532255323_)
                                     (let ((_e4743848388_
                                            (gx#stx-e ___stx5532255323_)))
                                       (let ((_tl4744048393_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4743848388_)))
                                             (_hd4743948391_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4743848388_))))
                                         (if (gx#identifier? _hd4743948391_)
                                             (if (gx#stx-eq?
                                                  '%#call
                                                  _hd4743948391_)
                                                 (if (gx#stx-pair?
                                                      _tl4744048393_)
                                                     (let ((_e4744148396_
                                                            (gx#stx-e
                                                             _tl4744048393_)))
                                                       (let ((_tl4744348401_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4744148396_)))
                     (_hd4744248399_
                      (let () (declare (not safe)) (##car _e4744148396_))))
                 (if (gx#stx-pair? _hd4744248399_)
                     (let ((_e4744448404_ (gx#stx-e _hd4744248399_)))
                       (let ((_tl4744648409_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4744448404_)))
                             (_hd4744548407_
                              (let ()
                                (declare (not safe))
                                (##car _e4744448404_))))
                         (if (gx#identifier? _hd4744548407_)
                             (if (gx#stx-eq? '%#ref _hd4744548407_)
                                 (if (gx#stx-pair? _tl4744648409_)
                                     (let ((_e4744748412_
                                            (gx#stx-e _tl4744648409_)))
                                       (let ((_tl4744948417_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4744748412_)))
                                             (_hd4744848415_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4744748412_))))
                                         (if (gx#stx-null? _tl4744948417_)
                                             (if (gx#stx-pair? _tl4744348401_)
                                                 (let ((_e4745048420_
                                                        (gx#stx-e
                                                         _tl4744348401_)))
                                                   (let ((_tl4745248425_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4745048420_)))
                                                         (_hd4745148423_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4745048420_))))
                                                     (if (gx#stx-pair?
                                                          _hd4745148423_)
                                                         (let ((_e4745348428_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4745148423_)))
                   (let ((_tl4745548433_
                          (let () (declare (not safe)) (##cdr _e4745348428_)))
                         (_hd4745448431_
                          (let () (declare (not safe)) (##car _e4745348428_))))
                     (if (gx#identifier? _hd4745448431_)
                         (if (gx#stx-eq? '%#ref _hd4745448431_)
                             (if (gx#stx-pair? _tl4745548433_)
                                 (let ((_e4745648436_
                                        (gx#stx-e _tl4745548433_)))
                                   (let ((_tl4745848441_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4745648436_)))
                                         (_hd4745748439_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4745648436_))))
                                     (if (gx#stx-null? _tl4745848441_)
                                         (if (gx#stx-null? _tl4745248425_)
                                             (___kont5532455325_
                                              _hd4745748439_
                                              _hd4744848415_)
                                             (if (gx#stx-pair? _tl4745248425_)
                                                 (let ((_e4747748113_
                                                        (gx#stx-e
                                                         _tl4745248425_)))
                                                   (let ((_tl4747948118_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4747748113_)))
                                                         (_hd4747848116_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4747748113_))))
                                                     (if (gx#stx-pair?
                                                          _hd4747848116_)
                                                         (let ((_e4748048121_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4747848116_)))
                   (let ((_tl4748248126_
                          (let () (declare (not safe)) (##cdr _e4748048121_)))
                         (_hd4748148124_
                          (let () (declare (not safe)) (##car _e4748048121_))))
                     (if (gx#identifier? _hd4748148124_)
                         (if (gx#stx-eq? '%#quote _hd4748148124_)
                             (if (gx#stx-pair? _tl4748248126_)
                                 (let ((_e4748348129_
                                        (gx#stx-e _tl4748248126_)))
                                   (let ((_tl4748548134_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4748348129_)))
                                         (_hd4748448132_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4748348129_))))
                                     (if (gx#stx-null? _tl4748548134_)
                                         (if (gx#stx-null? _tl4747948118_)
                                             (___kont5532655327_
                                              _hd4748448132_
                                              _hd4745148423_
                                              _hd4744848415_)
                                             (___kont5533655337_))
                                         (___kont5533655337_))))
                                 (___kont5533655337_))
                             (if (gx#stx-eq? '%#quote-syntax _hd4748148124_)
                                 (if (gx#stx-pair? _tl4748248126_)
                                     (let ((_e4754347925_
                                            (gx#stx-e _tl4748248126_)))
                                       (let ((_tl4754547930_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4754347925_)))
                                             (_hd4754447928_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4754347925_))))
                                         (if (gx#stx-null? _tl4754547930_)
                                             (if (gx#stx-null? _tl4747948118_)
                                                 (___kont5533055331_
                                                  _hd4754447928_
                                                  _hd4745748439_
                                                  _hd4744848415_)
                                                 (___kont5533655337_))
                                             (___kont5533655337_))))
                                     (___kont5533655337_))
                                 (___kont5533655337_)))
                         (___kont5533655337_))))
                 (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5533655337_)))
                                         (if (gx#stx-pair? _tl4745248425_)
                                             (let ((_e4747748113_
                                                    (gx#stx-e _tl4745248425_)))
                                               (let ((_tl4747948118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4747748113_)))
                                                     (_hd4747848116_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4747748113_))))
                                                 (if (gx#stx-pair?
                                                      _hd4747848116_)
                                                     (let ((_e4748048121_
                                                            (gx#stx-e
                                                             _hd4747848116_)))
                                                       (let ((_tl4748248126_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4748048121_)))
                     (_hd4748148124_
                      (let () (declare (not safe)) (##car _e4748048121_))))
                 (if (gx#identifier? _hd4748148124_)
                     (if (gx#stx-eq? '%#quote _hd4748148124_)
                         (if (gx#stx-pair? _tl4748248126_)
                             (let ((_e4748348129_ (gx#stx-e _tl4748248126_)))
                               (let ((_tl4748548134_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4748348129_)))
                                     (_hd4748448132_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4748348129_))))
                                 (if (gx#stx-null? _tl4748548134_)
                                     (if (gx#stx-null? _tl4747948118_)
                                         (___kont5532655327_
                                          _hd4748448132_
                                          _hd4745148423_
                                          _hd4744848415_)
                                         (___kont5533655337_))
                                     (___kont5533655337_))))
                             (___kont5533655337_))
                         (___kont5533655337_))
                     (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))))
                                             (___kont5533655337_)))))
                                 (if (gx#stx-pair? _tl4745248425_)
                                     (let ((_e4747748113_
                                            (gx#stx-e _tl4745248425_)))
                                       (let ((_tl4747948118_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4747748113_)))
                                             (_hd4747848116_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4747748113_))))
                                         (if (gx#stx-pair? _hd4747848116_)
                                             (let ((_e4748048121_
                                                    (gx#stx-e _hd4747848116_)))
                                               (let ((_tl4748248126_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4748048121_)))
                                                     (_hd4748148124_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4748048121_))))
                                                 (if (gx#identifier?
                                                      _hd4748148124_)
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd4748148124_)
                                                         (if (gx#stx-pair?
                                                              _tl4748248126_)
                                                             (let ((_e4748348129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4748248126_)))
                       (let ((_tl4748548134_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4748348129_)))
                             (_hd4748448132_
                              (let ()
                                (declare (not safe))
                                (##car _e4748348129_))))
                         (if (gx#stx-null? _tl4748548134_)
                             (if (gx#stx-null? _tl4747948118_)
                                 (___kont5532655327_
                                  _hd4748448132_
                                  _hd4745148423_
                                  _hd4744848415_)
                                 (___kont5533655337_))
                             (___kont5533655337_))))
                     (___kont5533655337_))
                 (___kont5533655337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))))
                                             (___kont5533655337_))))
                                     (___kont5533655337_)))
                             (if (gx#stx-pair? _tl4745248425_)
                                 (let ((_e4747748113_
                                        (gx#stx-e _tl4745248425_)))
                                   (let ((_tl4747948118_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4747748113_)))
                                         (_hd4747848116_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4747748113_))))
                                     (if (gx#stx-pair? _hd4747848116_)
                                         (let ((_e4748048121_
                                                (gx#stx-e _hd4747848116_)))
                                           (let ((_tl4748248126_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4748048121_)))
                                                 (_hd4748148124_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4748048121_))))
                                             (if (gx#identifier?
                                                  _hd4748148124_)
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd4748148124_)
                                                     (if (gx#stx-pair?
                                                          _tl4748248126_)
                                                         (let ((_e4748348129_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4748248126_)))
                   (let ((_tl4748548134_
                          (let () (declare (not safe)) (##cdr _e4748348129_)))
                         (_hd4748448132_
                          (let () (declare (not safe)) (##car _e4748348129_))))
                     (if (gx#stx-null? _tl4748548134_)
                         (if (gx#stx-null? _tl4747948118_)
                             (___kont5532655327_
                              _hd4748448132_
                              _hd4745148423_
                              _hd4744848415_)
                             (if (gx#stx-eq? '%#quote _hd4745448431_)
                                 (if (gx#stx-pair? _tl4745548433_)
                                     (let ((_e4750748025_
                                            (gx#stx-e _tl4745548433_)))
                                       (let ((_tl4750948030_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4750748025_)))
                                             (_hd4750848028_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4750748025_))))
                                         (___kont5533655337_)))
                                     (___kont5533655337_))
                                 (if (gx#stx-eq?
                                      '%#quote-syntax
                                      _hd4745448431_)
                                     (if (gx#stx-pair? _tl4745548433_)
                                         (let ((_e4756747785_
                                                (gx#stx-e _tl4745548433_)))
                                           (let ((_tl4756947790_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4756747785_)))
                                                 (_hd4756847788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4756747785_))))
                                             (___kont5533655337_)))
                                         (___kont5533655337_))
                                     (___kont5533655337_))))
                         (if (gx#stx-eq? '%#quote _hd4745448431_)
                             (if (gx#stx-pair? _tl4745548433_)
                                 (let ((_e4750748025_
                                        (gx#stx-e _tl4745548433_)))
                                   (let ((_tl4750948030_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4750748025_)))
                                         (_hd4750848028_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4750748025_))))
                                     (if (gx#stx-null? _tl4750948030_)
                                         (if (gx#stx-null? _tl4747948118_)
                                             (___kont5532855329_
                                              _hd4747848116_
                                              _hd4750848028_
                                              _hd4744848415_)
                                             (___kont5533655337_))
                                         (___kont5533655337_))))
                                 (___kont5533655337_))
                             (if (gx#stx-eq? '%#quote-syntax _hd4745448431_)
                                 (if (gx#stx-pair? _tl4745548433_)
                                     (let ((_e4756747785_
                                            (gx#stx-e _tl4745548433_)))
                                       (let ((_tl4756947790_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4756747785_)))
                                             (_hd4756847788_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4756747785_))))
                                         (___kont5533655337_)))
                                     (___kont5533655337_))
                                 (___kont5533655337_))))))
                 (if (gx#stx-eq? '%#quote _hd4745448431_)
                     (if (gx#stx-pair? _tl4745548433_)
                         (let ((_e4750748025_ (gx#stx-e _tl4745548433_)))
                           (let ((_tl4750948030_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4750748025_)))
                                 (_hd4750848028_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4750748025_))))
                             (if (gx#stx-null? _tl4750948030_)
                                 (if (gx#stx-null? _tl4747948118_)
                                     (___kont5532855329_
                                      _hd4747848116_
                                      _hd4750848028_
                                      _hd4744848415_)
                                     (___kont5533655337_))
                                 (___kont5533655337_))))
                         (___kont5533655337_))
                     (if (gx#stx-eq? '%#quote-syntax _hd4745448431_)
                         (if (gx#stx-pair? _tl4745548433_)
                             (let ((_e4756747785_ (gx#stx-e _tl4745548433_)))
                               (let ((_tl4756947790_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4756747785_)))
                                     (_hd4756847788_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4756747785_))))
                                 (___kont5533655337_)))
                             (___kont5533655337_))
                         (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd4745448431_)
                                                         (if (gx#stx-pair?
                                                              _tl4745548433_)
                                                             (let ((_e4750748025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4745548433_)))
                       (let ((_tl4750948030_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4750748025_)))
                             (_hd4750848028_
                              (let ()
                                (declare (not safe))
                                (##car _e4750748025_))))
                         (if (gx#stx-null? _tl4750948030_)
                             (if (gx#stx-null? _tl4747948118_)
                                 (___kont5532855329_
                                  _hd4747848116_
                                  _hd4750848028_
                                  _hd4744848415_)
                                 (___kont5533655337_))
                             (___kont5533655337_))))
                     (___kont5533655337_))
                 (if (gx#stx-eq? '%#quote-syntax _hd4745448431_)
                     (if (gx#stx-pair? _tl4745548433_)
                         (let ((_e4756747785_ (gx#stx-e _tl4745548433_)))
                           (let ((_tl4756947790_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4756747785_)))
                                 (_hd4756847788_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4756747785_))))
                             (if (gx#stx-null? _tl4756947790_)
                                 (if (gx#stx-eq? '%#ref _hd4748148124_)
                                     (if (gx#stx-pair? _tl4748248126_)
                                         (let ((_e4757647809_
                                                (gx#stx-e _tl4748248126_)))
                                           (let ((_tl4757847814_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4757647809_)))
                                                 (_hd4757747812_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4757647809_))))
                                             (if (gx#stx-null? _tl4757847814_)
                                                 (if (gx#stx-null?
                                                      _tl4747948118_)
                                                     (___kont5533255333_
                                                      _hd4757747812_
                                                      _hd4756847788_
                                                      _hd4744848415_)
                                                     (___kont5533655337_))
                                                 (___kont5533655337_))))
                                         (___kont5533655337_))
                                     (___kont5533655337_))
                                 (___kont5533655337_))))
                         (___kont5533655337_))
                     (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-eq?
                                                      '%#quote
                                                      _hd4745448431_)
                                                     (if (gx#stx-pair?
                                                          _tl4745548433_)
                                                         (let ((_e4750748025_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4745548433_)))
                   (let ((_tl4750948030_
                          (let () (declare (not safe)) (##cdr _e4750748025_)))
                         (_hd4750848028_
                          (let () (declare (not safe)) (##car _e4750748025_))))
                     (if (gx#stx-null? _tl4750948030_)
                         (if (gx#stx-null? _tl4747948118_)
                             (___kont5532855329_
                              _hd4747848116_
                              _hd4750848028_
                              _hd4744848415_)
                             (___kont5533655337_))
                         (___kont5533655337_))))
                 (___kont5533655337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote-syntax
                                                          _hd4745448431_)
                                                         (if (gx#stx-pair?
                                                              _tl4745548433_)
                                                             (let ((_e4756747785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4745548433_)))
                       (let ((_tl4756947790_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4756747785_)))
                             (_hd4756847788_
                              (let ()
                                (declare (not safe))
                                (##car _e4756747785_))))
                         (___kont5533655337_)))
                     (___kont5533655337_))
                 (___kont5533655337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#stx-eq?
                                              '%#quote
                                              _hd4745448431_)
                                             (if (gx#stx-pair? _tl4745548433_)
                                                 (let ((_e4750748025_
                                                        (gx#stx-e
                                                         _tl4745548433_)))
                                                   (let ((_tl4750948030_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4750748025_)))
                                                         (_hd4750848028_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4750748025_))))
                                                     (if (gx#stx-null?
                                                          _tl4750948030_)
                                                         (if (gx#stx-null?
                                                              _tl4747948118_)
                                                             (___kont5532855329_
                                                              _hd4747848116_
                                                              _hd4750848028_
                                                              _hd4744848415_)
                                                             (___kont5533655337_))
                                                         (___kont5533655337_))))
                                                 (___kont5533655337_))
                                             (if (gx#stx-eq?
                                                  '%#quote-syntax
                                                  _hd4745448431_)
                                                 (if (gx#stx-pair?
                                                      _tl4745548433_)
                                                     (let ((_e4756747785_
                                                            (gx#stx-e
                                                             _tl4745548433_)))
                                                       (let ((_tl4756947790_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4756747785_)))
                     (_hd4756847788_
                      (let () (declare (not safe)) (##car _e4756747785_))))
                 (___kont5533655337_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))
                                                 (___kont5533655337_))))))
                                 (if (gx#stx-eq? '%#quote _hd4745448431_)
                                     (if (gx#stx-pair? _tl4745548433_)
                                         (let ((_e4750748025_
                                                (gx#stx-e _tl4745548433_)))
                                           (let ((_tl4750948030_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4750748025_)))
                                                 (_hd4750848028_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4750748025_))))
                                             (___kont5533655337_)))
                                         (___kont5533655337_))
                                     (if (gx#stx-eq?
                                          '%#quote-syntax
                                          _hd4745448431_)
                                         (if (gx#stx-pair? _tl4745548433_)
                                             (let ((_e4756747785_
                                                    (gx#stx-e _tl4745548433_)))
                                               (let ((_tl4756947790_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4756747785_)))
                                                     (_hd4756847788_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4756747785_))))
                                                 (___kont5533655337_)))
                                             (___kont5533655337_))
                                         (___kont5533655337_)))))
                         (if (gx#stx-pair? _tl4745248425_)
                             (let ((_e4747748113_ (gx#stx-e _tl4745248425_)))
                               (let ((_tl4747948118_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4747748113_)))
                                     (_hd4747848116_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4747748113_))))
                                 (if (gx#stx-pair? _hd4747848116_)
                                     (let ((_e4748048121_
                                            (gx#stx-e _hd4747848116_)))
                                       (let ((_tl4748248126_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4748048121_)))
                                             (_hd4748148124_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4748048121_))))
                                         (if (gx#identifier? _hd4748148124_)
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd4748148124_)
                                                 (if (gx#stx-pair?
                                                      _tl4748248126_)
                                                     (let ((_e4748348129_
                                                            (gx#stx-e
                                                             _tl4748248126_)))
                                                       (let ((_tl4748548134_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4748348129_)))
                     (_hd4748448132_
                      (let () (declare (not safe)) (##car _e4748348129_))))
                 (if (gx#stx-null? _tl4748548134_)
                     (if (gx#stx-null? _tl4747948118_)
                         (___kont5532655327_
                          _hd4748448132_
                          _hd4745148423_
                          _hd4744848415_)
                         (___kont5533655337_))
                     (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))
                                                 (___kont5533655337_))
                                             (___kont5533655337_))))
                                     (___kont5533655337_))))
                             (___kont5533655337_)))))
                 (if (gx#stx-pair? _tl4745248425_)
                     (let ((_e4747748113_ (gx#stx-e _tl4745248425_)))
                       (let ((_tl4747948118_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4747748113_)))
                             (_hd4747848116_
                              (let ()
                                (declare (not safe))
                                (##car _e4747748113_))))
                         (if (gx#stx-pair? _hd4747848116_)
                             (let ((_e4748048121_ (gx#stx-e _hd4747848116_)))
                               (let ((_tl4748248126_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4748048121_)))
                                     (_hd4748148124_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4748048121_))))
                                 (if (gx#identifier? _hd4748148124_)
                                     (if (gx#stx-eq? '%#quote _hd4748148124_)
                                         (if (gx#stx-pair? _tl4748248126_)
                                             (let ((_e4748348129_
                                                    (gx#stx-e _tl4748248126_)))
                                               (let ((_tl4748548134_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4748348129_)))
                                                     (_hd4748448132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4748348129_))))
                                                 (if (gx#stx-null?
                                                      _tl4748548134_)
                                                     (if (gx#stx-null?
                                                          _tl4747948118_)
                                                         (___kont5532655327_
                                                          _hd4748448132_
                                                          _hd4745148423_
                                                          _hd4744848415_)
                                                         (___kont5533655337_))
                                                     (___kont5533655337_))))
                                             (___kont5533655337_))
                                         (___kont5533655337_))
                                     (___kont5533655337_))))
                             (___kont5533655337_))))
                     (___kont5533655337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5533655337_))
                                             (___kont5533655337_))))
                                     (___kont5533655337_))
                                 (if (gx#stx-eq? '%#lambda _hd4744548407_)
                                     (if (gx#stx-pair? _tl4744648409_)
                                         (let ((_e4759147649_
                                                (gx#stx-e _tl4744648409_)))
                                           (let ((_tl4759347654_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4759147649_)))
                                                 (_hd4759247652_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4759147649_))))
                                             (if (gx#stx-pair? _hd4759247652_)
                                                 (let ((_e4759447657_
                                                        (gx#stx-e
                                                         _hd4759247652_)))
                                                   (let ((_tl4759647662_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4759447657_)))
                                                         (_hd4759547660_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4759447657_))))
                                                     (if (gx#stx-null?
                                                          _tl4759647662_)
                                                         (if (gx#stx-pair?
                                                              _tl4759347654_)
                                                             (let ((_e4759747665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4759347654_)))
                       (let ((_tl4759947670_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4759747665_)))
                             (_hd4759847668_
                              (let ()
                                (declare (not safe))
                                (##car _e4759747665_))))
                         (if (gx#stx-null? _tl4759947670_)
                             (if (gx#stx-pair? _tl4744348401_)
                                 (let ((_e4760047673_
                                        (gx#stx-e _tl4744348401_)))
                                   (let ((_tl4760247678_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4760047673_)))
                                         (_hd4760147676_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4760047673_))))
                                     (if (gx#stx-pair? _hd4760147676_)
                                         (let ((_e4760347681_
                                                (gx#stx-e _hd4760147676_)))
                                           (let ((_tl4760547686_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4760347681_)))
                                                 (_hd4760447684_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4760347681_))))
                                             (if (gx#identifier?
                                                  _hd4760447684_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd4760447684_)
                                                     (if (gx#stx-pair?
                                                          _tl4760547686_)
                                                         (let ((_e4760647689_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4760547686_)))
                   (let ((_tl4760847694_
                          (let () (declare (not safe)) (##cdr _e4760647689_)))
                         (_hd4760747692_
                          (let () (declare (not safe)) (##car _e4760647689_))))
                     (if (gx#stx-null? _tl4760847694_)
                         (if (gx#stx-null? _tl4760247678_)
                             (___kont5533455335_
                              _hd4760747692_
                              _hd4759847668_
                              _hd4759547660_)
                             (___kont5533655337_))
                         (___kont5533655337_))))
                 (___kont5533655337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))
                                                 (___kont5533655337_))))
                                         (___kont5533655337_))))
                                 (___kont5533655337_))
                             (___kont5533655337_))))
                     (___kont5533655337_))
                 (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5533655337_))))
                                         (___kont5533655337_))
                                     (___kont5533655337_)))
                             (___kont5533655337_))))
                     (___kont5533655337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5533655337_))
                                                 (___kont5533655337_))
                                             (___kont5533655337_))))
                                     (___kont5533655337_)))))))))
                  (_assert-type46410_
                   (lambda (_id47309_ _t47310_)
                     (letrec ((_super-e47312_
                               (lambda (_t47409_)
                                 (let ((_tid4741047412_
                                        (##structure-ref
                                         _t47409_
                                         '2
                                         gxc#!struct-type::t
                                         '#f)))
                                   (if _tid4741047412_
                                       (let ((_tid47415_ _tid4741047412_))
                                         (gxc#optimizer-resolve-type
                                          _tid47415_))
                                       '#f)))))
                       (let _lp47314_ ((_rest47316_ _env-type46392_))
                         (let* ((_rest4731747325_ _rest47316_)
                                (_else4731947333_ (lambda () '#!void))
                                (_K4732147397_
                                 (lambda (_rest47336_ _type-info47337_)
                                   (let* ((_type-info4733847350_
                                           _type-info47337_)
                                          (_else4734047358_
                                           (lambda () (_lp47314_ _rest47336_)))
                                          (_K4734247373_
                                           (lambda (_val47361_
                                                    _xt47362_
                                                    _xid47363_)
                                             (if (gx#free-identifier=?
                                                  _id47309_
                                                  _xid47363_)
                                                 (if (eq? _t47310_ _xt47362_)
                                                     _val47361_
                                                     (if _val47361_
                                                         (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##structure-instance-of?
                             _t47310_
                             'gxc#!struct-type::t))
                          (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _xt47362_
                             'gxc#!struct-type::t)))
                     (let _subtype?47365_ ((_xt47367_
                                            (_super-e47312_ _xt47362_)))
                       (if (not _xt47367_)
                           '#f
                           (if (eq? _xt47367_ _t47310_)
                               '#t
                               (_subtype?47365_ (_super-e47312_ _xt47367_)))))
                     '#f)
                 (if (and (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _t47310_
                             'gxc#!struct-type::t))
                          (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _xt47362_
                             'gxc#!struct-type::t)))
                     (let _supertype?47369_ ((_t47371_
                                              (_super-e47312_ _t47310_)))
                       (if (not _t47371_)
                           (_lp47314_ _rest47336_)
                           (if (eq? _t47371_ _xt47362_)
                               '#f
                               (_supertype?47369_ (_super-e47312_ _t47371_)))))
                     (_lp47314_ _rest47336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_lp47314_ _rest47336_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _type-info4733847350_))
                                         (let ((_hd4734347376_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _type-info4733847350_)))
                                               (_tl4734447378_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _type-info4733847350_))))
                                           (let ((_xid47381_ _hd4734347376_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _tl4734447378_))
                                                 (let ((_hd4734547383_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _tl4734447378_)))
                                                       (_tl4734647385_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _tl4734447378_))))
                                                   (let ((_xt47388_
                                                          _hd4734547383_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _tl4734647385_))
                                                         (let ((_hd4734747390_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _tl4734647385_)))
                       (_tl4734847392_
                        (let () (declare (not safe)) (##cdr _tl4734647385_))))
                   (let ((_val47395_ _hd4734747390_))
                     (if (let () (declare (not safe)) (##null? _tl4734847392_))
                         (_K4734247373_ _val47395_ _xt47388_ _xid47381_)
                         (_else4734047358_))))
                 (_else4734047358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else4734047358_))))
                                         (_else4734047358_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest4731747325_))
                               (let ((_hd4732247400_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest4731747325_)))
                                     (_tl4732347402_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest4731747325_))))
                                 (let* ((_type-info47405_ _hd4732247400_)
                                        (_rest47407_ _tl4732347402_))
                                   (_K4732147397_
                                    _rest47407_
                                    _type-info47405_)))
                               (_else4731947333_)))))))
                  (_assert-count46411_
                   (lambda (_id47208_ _sym47209_ _count47210_)
                     (let _lp47212_ ((_rest47214_ _env-type46392_))
                       (let* ((_rest4721547223_ _rest47214_)
                              (_else4721747231_ (lambda () '#!void))
                              (_K4721947297_
                               (lambda (_rest47234_ _type-info47235_)
                                 (let* ((_type-info4723647250_
                                         _type-info47235_)
                                        (_else4723847258_
                                         (lambda () (_lp47212_ _rest47234_)))
                                        (_K4724047266_
                                         (lambda (_val47261_
                                                  _xcount47262_
                                                  _xsym47263_
                                                  _xid47264_)
                                           (if (and (eq? _sym47209_
                                                         _xsym47263_)
                                                    (gx#free-identifier=?
                                                     _id47208_
                                                     _xid47264_))
                                               (if _val47261_
                                                   (fx= _count47210_
                                                        _xcount47262_)
                                                   (if (fx= _count47210_
                                                            _xcount47262_)
                                                       '#f
                                                       (_lp47212_
                                                        _rest47234_)))
                                               (_lp47212_ _rest47234_)))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _type-info4723647250_))
                                       (let ((_hd4724147269_
                                              (let ()
                                                (declare (not safe))
                                                (##car _type-info4723647250_)))
                                             (_tl4724247271_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _type-info4723647250_))))
                                         (let ((_xid47274_ _hd4724147269_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##pair? _tl4724247271_))
                                               (let ((_hd4724347276_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _tl4724247271_)))
                                                     (_tl4724447278_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl4724247271_))))
                                                 (let ((_xsym47281_
                                                        _hd4724347276_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##pair? _tl4724447278_))
                                                       (let ((_hd4724547283_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _tl4724447278_)))
                     (_tl4724647285_
                      (let () (declare (not safe)) (##cdr _tl4724447278_))))
                 (let ((_xcount47288_ _hd4724547283_))
                   (if (let () (declare (not safe)) (##pair? _tl4724647285_))
                       (let ((_hd4724747290_
                              (let ()
                                (declare (not safe))
                                (##car _tl4724647285_)))
                             (_tl4724847292_
                              (let ()
                                (declare (not safe))
                                (##cdr _tl4724647285_))))
                         (let ((_val47295_ _hd4724747290_))
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _tl4724847292_))
                               (_K4724047266_
                                _val47295_
                                _xcount47288_
                                _xsym47281_
                                _xid47274_)
                               (_else4723847258_))))
                       (_else4723847258_))))
               (_else4723847258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else4723847258_))))
                                       (_else4723847258_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest4721547223_))
                             (let ((_hd4722047300_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest4721547223_)))
                                   (_tl4722147302_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest4721547223_))))
                               (let* ((_type-info47305_ _hd4722047300_)
                                      (_rest47307_ _tl4722147302_))
                                 (_K4721947297_ _rest47307_ _type-info47305_)))
                             (_else4721747231_))))))
                  (_assert-eqf46412_
                   (lambda (_id47098_ _sym47099_ _datum47100_)
                     (letrec ((_eqf47102_
                               (lambda (_sym47203_)
                                 (let ((_$e47205_ _sym47203_))
                                   (if (eq? 'eq? _$e47205_)
                                       eq?
                                       (if (eq? 'eqv? _$e47205_)
                                           eqv?
                                           (if (eq? 'equal? _$e47205_)
                                               equal?
                                               (if (eq? 'free-identifier=?
                                                        _$e47205_)
                                                   gx#free-identifier=?
                                                   (if (eq? 'stx-eq? _$e47205_)
                                                       gx#stx-eq?
                                                       (gxc#raise-compile-error
                                                        '"Unexpected eqf symbol"
                                                        _body46153_
                                                        _sym47203_))))))))))
                       (let _lp47104_ ((_rest47106_ _env-type46392_))
                         (let* ((_rest4710747115_ _rest47106_)
                                (_else4710947123_ (lambda () '#!void))
                                (_K4711147191_
                                 (lambda (_rest47126_ _type-info47127_)
                                   (let* ((_type-info4712847142_
                                           _type-info47127_)
                                          (_else4713047150_
                                           (lambda () (_lp47104_ _rest47126_)))
                                          (_K4713247160_
                                           (lambda (_val47153_
                                                    _xdatum47154_
                                                    _xsym47155_
                                                    _xid47156_)
                                             (if (and (eq? _sym47099_
                                                           _xsym47155_)
                                                      (gx#free-identifier=?
                                                       _id47098_
                                                       _xid47156_))
                                                 (let ((_=?47158_
                                                        (_eqf47102_
                                                         _sym47099_)))
                                                   (if _val47153_
                                                       (_=?47158_
                                                        _datum47100_
                                                        _xdatum47154_)
                                                       (if (_=?47158_
                                                            _datum47100_
                                                            _xdatum47154_)
                                                           '#f
                                                           (_lp47104_
                                                            _rest47126_))))
                                                 (_lp47104_ _rest47126_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _type-info4712847142_))
                                         (let ((_hd4713347163_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _type-info4712847142_)))
                                               (_tl4713447165_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _type-info4712847142_))))
                                           (let ((_xid47168_ _hd4713347163_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _tl4713447165_))
                                                 (let ((_hd4713547170_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _tl4713447165_)))
                                                       (_tl4713647172_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _tl4713447165_))))
                                                   (let ((_xsym47175_
                                                          _hd4713547170_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _tl4713647172_))
                                                         (let ((_hd4713747177_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _tl4713647172_)))
                       (_tl4713847179_
                        (let () (declare (not safe)) (##cdr _tl4713647172_))))
                   (let ((_xdatum47182_ _hd4713747177_))
                     (if (let () (declare (not safe)) (##pair? _tl4713847179_))
                         (let ((_hd4713947184_
                                (let ()
                                  (declare (not safe))
                                  (##car _tl4713847179_)))
                               (_tl4714047186_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _tl4713847179_))))
                           (let ((_val47189_ _hd4713947184_))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl4714047186_))
                                 (_K4713247160_
                                  _val47189_
                                  _xdatum47182_
                                  _xsym47175_
                                  _xid47168_)
                                 (_else4713047150_))))
                         (_else4713047150_))))
                 (_else4713047150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else4713047150_))))
                                         (_else4713047150_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest4710747115_))
                               (let ((_hd4711247194_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest4710747115_)))
                                     (_tl4711347196_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest4710747115_))))
                                 (let* ((_type-info47199_ _hd4711247194_)
                                        (_rest47201_ _tl4711347196_))
                                   (_K4711147191_
                                    _rest47201_
                                    _type-info47199_)))
                               (_else4710947123_)))))))
                  (_bind-e__5373553736_
                   (lambda (_bind47001_ _body47002_ _continue47003_)
                     (let _lp47005_ ((_rest47007_ _bind47001_)
                                     (_subst47008_ '())
                                     (_locals47009_ '())
                                     (_env47010_ _env-bind46393_))
                       (let* ((_rest4701147019_ _rest47007_)
                              (_else4701347033_
                               (lambda ()
                                 (let* ((_body47027_
                                         (if (null? _subst47008_)
                                             _body47002_
                                             (gxc#apply-expression-subst*
                                              _body47002_
                                              _subst47008_)))
                                        (_body47030_
                                         (_do-bind!46404_
                                          _env47010_
                                          (lambda ()
                                            (_continue47003_ _body47027_)))))
                                   (if (null? _locals47009_)
                                       _body47030_
                                       (cons '%#let-values
                                             (cons _locals47009_
                                                   (cons _body47030_ '())))))))
                              (_K4701547074_
                               (lambda (_rest47036_ _bind47037_)
                                 (let* ((_bind4703847045_ _bind47037_)
                                        (_E4704047049_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _bind4703847045_)))
                                        (_K4704147062_
                                         (lambda (_expr47052_ _id47053_)
                                           (let* ((_sexpr47055_
                                                   (gxc#apply-generate-runtime-repr
                                                    _expr47052_))
                                                  (_$e47057_
                                                   (assget _sexpr47055_
                                                           _env-bind46393_)))
                                             (if _$e47057_
                                                 ((lambda (_xid47060_)
                                                    (_lp47005_
                                                     _rest47036_
                                                     (cons (cons _id47053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xid47060_)
                   _subst47008_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _locals47009_
                                                     _env47010_))
                                                  _$e47057_)
                                                 (_lp47005_
                                                  _rest47036_
                                                  _subst47008_
                                                  (cons (cons (cons _id47053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons _expr47052_ '()))
                _locals47009_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _sexpr47055_
                                                              _id47053_)
                                                        _env47010_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _bind4703847045_))
                                       (let ((_hd4704247065_
                                              (let ()
                                                (declare (not safe))
                                                (##car _bind4703847045_)))
                                             (_tl4704347067_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _bind4703847045_))))
                                         (let* ((_id47070_ _hd4704247065_)
                                                (_expr47072_ _tl4704347067_))
                                           (_K4704147062_
                                            _expr47072_
                                            _id47070_)))
                                       (_E4704047049_))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest4701147019_))
                             (let ((_hd4701647077_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest4701147019_)))
                                   (_tl4701747079_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest4701147019_))))
                               (let* ((_bind47082_ _hd4701647077_)
                                      (_rest47084_ _tl4701747079_))
                                 (_K4701547074_ _rest47084_ _bind47082_)))
                             (_else4701347033_))))))
                  (_bind-e__0__5373753738_
                   (lambda (_bind47089_ _body47090_)
                     (let ((_continue47092_ _optimize-e46406_))
                       (_bind-e__5373553736_
                        _bind47089_
                        _body47090_
                        _continue47092_))))
                  (_bind-e46413_
                   (lambda _g56834_
                     (let ((_g56833_
                            (let () (declare (not safe)) (##length _g56834_))))
                       (cond ((let () (declare (not safe)) (##fx= _g56833_ 2))
                              (apply _bind-e__0__5373753738_ _g56834_))
                             ((let () (declare (not safe)) (##fx= _g56833_ 3))
                              (apply _bind-e__5373553736_ _g56834_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g56834_))))))
                  (_lookup-block46414_
                   (lambda (_id46996_)
                     (find (lambda (_block46998_)
                             (gx#free-identifier=?
                              (car _block46998_)
                              _id46996_))
                           _blocks46156_)))
                  (_inline-block46415_
                   (lambda (_block46872_ _args46873_)
                     (let* ((_kont46875_ (caddr _block46872_))
                            (_g4687746903_
                             (lambda (_g4687846900_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g4687846900_)))
                            (_g4687646993_
                             (lambda (_g4687846906_)
                               (if (gx#stx-pair? _g4687846906_)
                                   (let ((_e4688146908_
                                          (gx#stx-e _g4687846906_)))
                                     (let ((_hd4688246911_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4688146908_)))
                                           (_tl4688346913_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4688146908_))))
                                       (if (gx#identifier? _hd4688246911_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd4688246911_)
                                               (if (gx#stx-pair?
                                                    _tl4688346913_)
                                                   (let ((_e4688446916_
                                                          (gx#stx-e
                                                           _tl4688346913_)))
                                                     (let ((_hd4688546919_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4688446916_)))
                                                           (_tl4688646921_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4688446916_))))
                                                       (if (gx#stx-pair/null?
                                                            _hd4688546919_)
                                                           (let ((_g56835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd4688546919_ '0)))
                     (begin
                       (let ((_g56836_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g56835_)
                                    (##vector-length _g56835_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g56836_ 2)))
                             (error "Context expects 2 values" _g56836_)))
                       (let ((_target4688746924_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g56835_ 0)))
                             (_tl4688946926_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g56835_ 1))))
                         (if (gx#stx-null? _tl4688946926_)
                             (letrec ((_loop4689046929_
                                       (lambda (_hd4688846932_ _id4689446934_)
                                         (if (gx#stx-pair? _hd4688846932_)
                                             (let ((_e4689146937_
                                                    (gx#stx-e _hd4688846932_)))
                                               (let ((_lp-hd4689246940_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4689146937_)))
                                                     (_lp-tl4689346942_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4689146937_))))
                                                 (_loop4689046929_
                                                  _lp-tl4689346942_
                                                  (cons _lp-hd4689246940_
                                                        _id4689446934_))))
                                             (let ((_id4689546945_
                                                    (reverse _id4689446934_)))
                                               (if (gx#stx-pair?
                                                    _tl4688646921_)
                                                   (let ((_e4689646948_
                                                          (gx#stx-e
                                                           _tl4688646921_)))
                                                     (let ((_hd4689746951_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4689646948_)))
                                                           (_tl4689846953_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4689646948_))))
                                                       (if (gx#stx-null?
                                                            _tl4689846953_)
                                                           ((lambda (_L46956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L46957_)
                      (if (null? (foldr1 (lambda (_g4697646979_ _g4697746981_)
                                           (cons _g4697646979_ _g4697746981_))
                                         '()
                                         _L46957_))
                          _L46956_
                          (let ((_subst46991_
                                 (map cons
                                      (foldr1 (lambda (_g4698346986_
                                                       _g4698446988_)
                                                (cons _g4698346986_
                                                      _g4698446988_))
                                              '()
                                              _L46957_)
                                      _args46873_)))
                            (gxc#apply-expression-subst*
                             _L46956_
                             _subst46991_))))
                    _hd4689746951_
                    _id4689546945_)
                   (_g4687746903_ _g4687846906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4687746903_
                                                    _g4687846906_)))))))
                               (_loop4689046929_ _target4688746924_ '()))
                             (_g4687746903_ _g4687846906_)))))
                   (_g4687746903_ _g4687846906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4687746903_
                                                    _g4687846906_))
                                               (_g4687746903_ _g4687846906_))
                                           (_g4687746903_ _g4687846906_))))
                                   (_g4687746903_ _g4687846906_)))))
                       (_g4687646993_ _kont46875_))))
                  (_nonlinear-block?46416_
                   (lambda (_block46421_)
                     (letrec ((_nonlinear-expr?46423_
                               (lambda (_expr46531_)
                                 (let* ((___stx5579255793_ _expr46531_)
                                        (_g4653746603_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx5579255793_))))
                                   (let ((___kont5579455795_ (lambda () '#t))
                                         (___kont5579655797_
                                          (lambda (_L46802_)
                                            (let* ((___stx5577455775_ _L46802_)
                                                   (_g4682046829_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx5577455775_))))
                                              (let ((___kont5577655777_
                                                     (lambda () '#f))
                                                    (___kont5577855779_
                                                     (lambda () '#t)))
                                                (if (gx#stx-pair?
                                                     ___stx5577455775_)
                                                    (let ((_e4682246841_
                                                           (gx#stx-e
                                                            ___stx5577455775_)))
                                                      (let ((_tl4682446846_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4682246841_)))
                    (_hd4682346844_
                     (let () (declare (not safe)) (##car _e4682246841_))))
                (if (gx#identifier? _hd4682346844_)
                    (if (gx#stx-eq? '%#call _hd4682346844_)
                        (___kont5577655777_)
                        (___kont5577855779_))
                    (___kont5577855779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont5577855779_))))))
                                         (___kont5580055801_
                                          (lambda (_L46700_)
                                            (_nonlinear-expr?46423_ _L46700_)))
                                         (___kont5580255803_
                                          (lambda (_L46647_ _L46648_ _L46649_)
                                            (let ((_$e46668_
                                                   (_nonlinear-expr?46423_
                                                    _L46648_)))
                                              (if _$e46668_
                                                  _$e46668_
                                                  (_nonlinear-expr?46423_
                                                   _L46647_)))))
                                         (___kont5580455805_ (lambda () '#f)))
                                     (let* ((___match5585555856_
                                             (lambda (_e4657546676_
                                                      _hd4657646679_
                                                      _tl4657746681_
                                                      _e4657846684_
                                                      _hd4657946687_
                                                      _tl4658046689_)
                                               (if (gx#stx-pair?
                                                    _tl4658046689_)
                                                   (let ((_e4658146692_
                                                          (gx#stx-e
                                                           _tl4658046689_)))
                                                     (let ((_tl4658346697_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4658146692_)))
                                                           (_hd4658246695_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4658146692_))))
                                                       (if (gx#stx-null?
                                                            _tl4658346697_)
                                                           (___kont5580055801_
                                                            _hd4658246695_)
                                                           (___kont5580455805_))))
                                                   (___kont5580455805_))))
                                            (___match5583955840_
                                             (lambda (_e4654346718_
                                                      _hd4654446721_
                                                      _tl4654546723_
                                                      _e4654646726_
                                                      _hd4654746729_
                                                      _tl4654846731_
                                                      ___splice5579855799_
                                                      _target4654946734_
                                                      _tl4655146736_)
                                               (letrec ((_loop4655246739_
                                                         (lambda (_hd4655046742_)
                                                           (if (gx#stx-pair?
                                                                _hd4655046742_)
                                                               (let ((_e4655346745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd4655046742_)))
                         (let ((_lp-tl4655546750_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4655346745_)))
                               (_lp-hd4655446748_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4655346745_))))
                           (if (gx#stx-pair? _lp-hd4655446748_)
                               (let ((_e4655646753_
                                      (gx#stx-e _lp-hd4655446748_)))
                                 (let ((_tl4655846758_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4655646753_)))
                                       (_hd4655746756_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4655646753_))))
                                   (if (gx#stx-pair? _hd4655746756_)
                                       (let ((_e4655946761_
                                              (gx#stx-e _hd4655746756_)))
                                         (let ((_tl4656146766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4655946761_)))
                                               (_hd4656046764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4655946761_))))
                                           (if (gx#stx-null? _tl4656146766_)
                                               (if (gx#stx-pair?
                                                    _tl4655846758_)
                                                   (let ((_e4656246769_
                                                          (gx#stx-e
                                                           _tl4655846758_)))
                                                     (let ((_tl4656446774_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4656246769_)))
                                                           (_hd4656346772_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4656246769_))))
                                                       (if (gx#stx-pair?
                                                            _hd4656346772_)
                                                           (let ((_e4656546777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4656346772_)))
                     (let ((_tl4656746782_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4656546777_)))
                           (_hd4656646780_
                            (let ()
                              (declare (not safe))
                              (##car _e4656546777_))))
                       (if (gx#identifier? _hd4656646780_)
                           (if (gx#stx-eq? '%#ref _hd4656646780_)
                               (if (gx#stx-pair? _tl4656746782_)
                                   (let ((_e4656846785_
                                          (gx#stx-e _tl4656746782_)))
                                     (let ((_tl4657046790_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4656846785_)))
                                           (_hd4656946788_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4656846785_))))
                                       (if (gx#stx-null? _tl4657046790_)
                                           (if (gx#stx-null? _tl4656446774_)
                                               (_loop4655246739_
                                                _lp-tl4655546750_)
                                               (___match5585555856_
                                                _e4654346718_
                                                _hd4654446721_
                                                _tl4654546723_
                                                _e4654646726_
                                                _hd4654746729_
                                                _tl4654846731_))
                                           (___match5585555856_
                                            _e4654346718_
                                            _hd4654446721_
                                            _tl4654546723_
                                            _e4654646726_
                                            _hd4654746729_
                                            _tl4654846731_))))
                                   (___match5585555856_
                                    _e4654346718_
                                    _hd4654446721_
                                    _tl4654546723_
                                    _e4654646726_
                                    _hd4654746729_
                                    _tl4654846731_))
                               (___match5585555856_
                                _e4654346718_
                                _hd4654446721_
                                _tl4654546723_
                                _e4654646726_
                                _hd4654746729_
                                _tl4654846731_))
                           (___match5585555856_
                            _e4654346718_
                            _hd4654446721_
                            _tl4654546723_
                            _e4654646726_
                            _hd4654746729_
                            _tl4654846731_))))
                   (___match5585555856_
                    _e4654346718_
                    _hd4654446721_
                    _tl4654546723_
                    _e4654646726_
                    _hd4654746729_
                    _tl4654846731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___match5585555856_
                                                    _e4654346718_
                                                    _hd4654446721_
                                                    _tl4654546723_
                                                    _e4654646726_
                                                    _hd4654746729_
                                                    _tl4654846731_))
                                               (___match5585555856_
                                                _e4654346718_
                                                _hd4654446721_
                                                _tl4654546723_
                                                _e4654646726_
                                                _hd4654746729_
                                                _tl4654846731_))))
                                       (___match5585555856_
                                        _e4654346718_
                                        _hd4654446721_
                                        _tl4654546723_
                                        _e4654646726_
                                        _hd4654746729_
                                        _tl4654846731_))))
                               (___match5585555856_
                                _e4654346718_
                                _hd4654446721_
                                _tl4654546723_
                                _e4654646726_
                                _hd4654746729_
                                _tl4654846731_))))
                       (let ()
                         (if (gx#stx-pair? _tl4654846731_)
                             (let ((_e4657146794_ (gx#stx-e _tl4654846731_)))
                               (let ((_tl4657346799_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4657146794_)))
                                     (_hd4657246797_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4657146794_))))
                                 (if (gx#stx-null? _tl4657346799_)
                                     (___kont5579655797_ _hd4657246797_)
                                     (___kont5580455805_))))
                             (___kont5580455805_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop4655246739_
                                                  _target4654946734_)))))
                                       (if (gx#stx-pair? ___stx5579255793_)
                                           (let ((_e4653946859_
                                                  (gx#stx-e
                                                   ___stx5579255793_)))
                                             (let ((_tl4654146864_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4653946859_)))
                                                   (_hd4654046862_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4653946859_))))
                                               (if (gx#identifier?
                                                    _hd4654046862_)
                                                   (if (gx#stx-eq?
                                                        '%#letrec-values
                                                        _hd4654046862_)
                                                       (___kont5579455795_)
                                                       (if (gx#stx-eq?
                                                            '%#let-values
                                                            _hd4654046862_)
                                                           (if (gx#stx-pair?
                                                                _tl4654146864_)
                                                               (let ((_e4654646726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl4654146864_)))
                         (let ((_tl4654846731_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4654646726_)))
                               (_hd4654746729_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4654646726_))))
                           (if (gx#stx-pair/null? _hd4654746729_)
                               (let ((___splice5579855799_
                                      (gx#syntax-split-splice
                                       _hd4654746729_
                                       '0)))
                                 (let ((_tl4655146736_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5579855799_
                                           '1)))
                                       (_target4654946734_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5579855799_
                                           '0))))
                                   (if (gx#stx-null? _tl4655146736_)
                                       (___match5583955840_
                                        _e4653946859_
                                        _hd4654046862_
                                        _tl4654146864_
                                        _e4654646726_
                                        _hd4654746729_
                                        _tl4654846731_
                                        ___splice5579855799_
                                        _target4654946734_
                                        _tl4655146736_)
                                       (if (gx#stx-pair? _tl4654846731_)
                                           (let ((_e4658146692_
                                                  (gx#stx-e _tl4654846731_)))
                                             (let ((_tl4658346697_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4658146692_)))
                                                   (_hd4658246695_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4658146692_))))
                                               (if (gx#stx-null?
                                                    _tl4658346697_)
                                                   (___kont5580055801_
                                                    _hd4658246695_)
                                                   (___kont5580455805_))))
                                           (___kont5580455805_)))))
                               (if (gx#stx-pair? _tl4654846731_)
                                   (let ((_e4658146692_
                                          (gx#stx-e _tl4654846731_)))
                                     (let ((_tl4658346697_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4658146692_)))
                                           (_hd4658246695_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4658146692_))))
                                       (if (gx#stx-null? _tl4658346697_)
                                           (___kont5580055801_ _hd4658246695_)
                                           (___kont5580455805_))))
                                   (___kont5580455805_)))))
                       (___kont5580455805_))
                   (if (gx#stx-eq? '%#if _hd4654046862_)
                       (if (gx#stx-pair? _tl4654146864_)
                           (let ((_e4659046623_ (gx#stx-e _tl4654146864_)))
                             (let ((_tl4659246628_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4659046623_)))
                                   (_hd4659146626_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4659046623_))))
                               (if (gx#stx-pair? _tl4659246628_)
                                   (let ((_e4659346631_
                                          (gx#stx-e _tl4659246628_)))
                                     (let ((_tl4659546636_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4659346631_)))
                                           (_hd4659446634_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4659346631_))))
                                       (if (gx#stx-pair? _tl4659546636_)
                                           (let ((_e4659646639_
                                                  (gx#stx-e _tl4659546636_)))
                                             (let ((_tl4659846644_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4659646639_)))
                                                   (_hd4659746642_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4659646639_))))
                                               (if (gx#stx-null?
                                                    _tl4659846644_)
                                                   (___kont5580255803_
                                                    _hd4659746642_
                                                    _hd4659446634_
                                                    _hd4659146626_)
                                                   (___kont5580455805_))))
                                           (___kont5580455805_))))
                                   (___kont5580455805_))))
                           (___kont5580455805_))
                       (___kont5580455805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont5580455805_))))
                                           (___kont5580455805_))))))))
                       (let* ((_kont46425_ (caddr _block46421_))
                              (_g4642746453_
                               (lambda (_g4642846450_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g4642846450_)))
                              (_g4642646528_
                               (lambda (_g4642846456_)
                                 (if (gx#stx-pair? _g4642846456_)
                                     (let ((_e4643146458_
                                            (gx#stx-e _g4642846456_)))
                                       (let ((_hd4643246461_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4643146458_)))
                                             (_tl4643346463_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4643146458_))))
                                         (if (gx#identifier? _hd4643246461_)
                                             (if (gx#stx-eq?
                                                  '%#lambda
                                                  _hd4643246461_)
                                                 (if (gx#stx-pair?
                                                      _tl4643346463_)
                                                     (let ((_e4643446466_
                                                            (gx#stx-e
                                                             _tl4643346463_)))
                                                       (let ((_hd4643546469_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e4643446466_)))
                     (_tl4643646471_
                      (let () (declare (not safe)) (##cdr _e4643446466_))))
                 (if (gx#stx-pair/null? _hd4643546469_)
                     (let ((_g56837_
                            (gx#syntax-split-splice _hd4643546469_ '0)))
                       (begin
                         (let ((_g56838_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g56837_)
                                      (##vector-length _g56837_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g56838_ 2)))
                               (error "Context expects 2 values" _g56838_)))
                         (let ((_target4643746474_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g56837_ 0)))
                               (_tl4643946476_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g56837_ 1))))
                           (if (gx#stx-null? _tl4643946476_)
                               (letrec ((_loop4644046479_
                                         (lambda (_hd4643846482_
                                                  _id4644446484_)
                                           (if (gx#stx-pair? _hd4643846482_)
                                               (let ((_e4644146487_
                                                      (gx#stx-e
                                                       _hd4643846482_)))
                                                 (let ((_lp-hd4644246490_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4644146487_)))
                                                       (_lp-tl4644346492_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4644146487_))))
                                                   (_loop4644046479_
                                                    _lp-tl4644346492_
                                                    (cons _lp-hd4644246490_
                                                          _id4644446484_))))
                                               (let ((_id4644546495_
                                                      (reverse _id4644446484_)))
                                                 (if (gx#stx-pair?
                                                      _tl4643646471_)
                                                     (let ((_e4644646498_
                                                            (gx#stx-e
                                                             _tl4643646471_)))
                                                       (let ((_hd4644746501_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e4644646498_)))
                     (_tl4644846503_
                      (let () (declare (not safe)) (##cdr _e4644646498_))))
                 (if (gx#stx-null? _tl4644846503_)
                     ((lambda (_L46506_ _L46507_)
                        (_nonlinear-expr?46423_ _L46506_))
                      _hd4644746501_
                      _id4644546495_)
                     (_g4642746453_ _g4642846456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4642746453_
                                                      _g4642846456_)))))))
                                 (_loop4644046479_ _target4643746474_ '()))
                               (_g4642746453_ _g4642846456_)))))
                     (_g4642746453_ _g4642846456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4642746453_
                                                      _g4642846456_))
                                                 (_g4642746453_ _g4642846456_))
                                             (_g4642746453_ _g4642846456_))))
                                     (_g4642746453_ _g4642846456_)))))
                         (_g4642646528_ _kont46425_))))))
          (_do-assert46395_
           _assert46154_
           (lambda ()
             (_do-bind46402_
              _bind46155_
              (lambda ()
                (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                    (_do-splice!46405_
                     (lambda () (_optimize-e46406_ _body46153_)))
                    (_optimize-e46406_ _body46153_)))))))))
    (define gxc#optimize-match-prune-blocks
      (lambda (_blocks46065_ _konts46066_)
        (letrec* ((_rtab46068_ (make-table 'test: eq?)))
          (for-each
           (lambda (_block46070_)
             (gxc#apply-collect-runtime-refs (caddr _block46070_) _rtab46068_))
           _konts46066_)
          (let _lp46072_ ((_rest46074_ _blocks46065_) (_r46075_ '()))
            (let* ((_rest4607646084_ _rest46074_)
                   (_else4607846092_ (lambda () (reverse _r46075_)))
                   (_K4608046141_
                    (lambda (_rest46095_ _block46096_)
                      (let* ((_block4609746108_ _block46096_)
                             (_E4609946112_
                              (lambda ()
                                (error '"No clause matching"
                                       _block4609746108_)))
                             (_K4610046119_
                              (lambda (_kont46115_ _type46116_ _name46117_)
                                (if (table-ref
                                     _rtab46068_
                                     (gxc#identifier-symbol _name46117_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont46115_
                                       _rtab46068_)
                                      (_lp46072_
                                       _rest46095_
                                       (cons _block46096_ _r46075_)))
                                    (_lp46072_ _rest46095_ _r46075_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _block4609746108_))
                            (let ((_hd4610146122_
                                   (let ()
                                     (declare (not safe))
                                     (##car _block4609746108_)))
                                  (_tl4610246124_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _block4609746108_))))
                              (let ((_name46127_ _hd4610146122_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl4610246124_))
                                    (let ((_hd4610346129_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl4610246124_)))
                                          (_tl4610446131_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl4610246124_))))
                                      (let ((_type46134_ _hd4610346129_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl4610446131_))
                                            (let* ((_hd4610546136_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _tl4610446131_)))
                                                   (_kont46139_
                                                    _hd4610546136_))
                                              (_K4610046119_
                                               _kont46139_
                                               _type46134_
                                               _name46127_))
                                            (_E4609946112_))))
                                    (_E4609946112_))))
                            (_E4609946112_))))))
              (if (let () (declare (not safe)) (##pair? _rest4607646084_))
                  (let ((_hd4608146144_
                         (let ()
                           (declare (not safe))
                           (##car _rest4607646084_)))
                        (_tl4608246146_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest4607646084_))))
                    (let* ((_block46149_ _hd4608146144_)
                           (_rest46151_ _tl4608246146_))
                      (_K4608046141_ _rest46151_ _block46149_)))
                  (_else4607846092_)))))))
    (define gxc#optimize-match-fuse-restart-blocks
      (lambda (_blocks45989_ _konts45990_)
        (let* ((_blocks4599146007_ _blocks45989_)
               (_else4599346015_ (lambda () _blocks45989_))
               (_K4599546033_
                (lambda (_rest46018_ _kont46019_ _name46020_)
                  (letrec* ((_rtab46022_ (make-table 'test: eq?)))
                    (for-each
                     (lambda (_block46024_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block46024_)
                        _rtab46022_))
                     _konts45990_)
                    (if (fx= (table-ref
                              _rtab46022_
                              (gxc#identifier-symbol _name46020_))
                             '1)
                        (let* ((_rblock46028_
                                (find (lambda (_block46026_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block46026_)
                                         (cons _name46020_ '())))
                                      _konts45990_))
                               (_assert46030_
                                (gxc#optimize-match-assert-restart
                                 _rblock46028_
                                 _name46020_)))
                          (cons (cons _name46020_
                                      (cons 'restart:
                                            (cons _kont46019_
                                                  (cons _assert46030_ '()))))
                                _rest46018_))
                        _blocks45989_)))))
          (if (let () (declare (not safe)) (##pair? _blocks4599146007_))
              (let ((_hd4599646036_
                     (let () (declare (not safe)) (##car _blocks4599146007_)))
                    (_tl4599746038_
                     (let () (declare (not safe)) (##cdr _blocks4599146007_))))
                (if (let () (declare (not safe)) (##pair? _hd4599646036_))
                    (let ((_hd4599846041_
                           (let ()
                             (declare (not safe))
                             (##car _hd4599646036_)))
                          (_tl4599946043_
                           (let ()
                             (declare (not safe))
                             (##cdr _hd4599646036_))))
                      (let ((_name46046_ _hd4599846041_))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl4599946043_))
                            (let ((_hd4600046048_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl4599946043_)))
                                  (_tl4600146050_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl4599946043_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd4600046048_ 'restart:))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl4600146050_))
                                      (let ((_hd4600246053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl4600146050_)))
                                            (_tl4600346055_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl4600146050_))))
                                        (let ((_kont46058_ _hd4600246053_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl4600346055_))
                                              (let ((_tl4600546060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl4600346055_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl4600546060_))
                                                    (let ((_rest46063_
                                                           _tl4599746038_))
                                                      (_K4599546033_
                                                       _rest46063_
                                                       _kont46058_
                                                       _name46046_))
                                                    (_else4599346015_)))
                                              (_else4599346015_))))
                                      (_else4599346015_))
                                  (_else4599346015_)))
                            (_else4599346015_))))
                    (_else4599346015_)))
              (_else4599346015_)))))
    (define gxc#optimize-match-assert-restart
      (lambda (_block45385_ _name45386_)
        (letrec ((_assert-restart45388_
                  (lambda (_expr45544_ _assert45545_)
                    (let* ((___stx5589655897_ _expr45544_)
                           (_g4555145648_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5589655897_))))
                      (let ((___kont5589855899_
                             (lambda (_L45964_ _L45965_ _L45966_)
                               (let ((_$e45983_
                                      (_assert-restart45388_
                                       _L45965_
                                       (cons (cons _L45966_ '#t)
                                             _assert45545_))))
                                 (if _$e45983_
                                     _$e45983_
                                     (_assert-restart45388_
                                      _L45964_
                                      (cons (cons _L45966_ '#f)
                                            _assert45545_))))))
                            (___kont5590055901_
                             (lambda (_L45912_)
                               (if (gx#free-identifier=? _L45912_ _name45386_)
                                   _assert45545_
                                   '#f)))
                            (___kont5590255903_
                             (lambda (_L45862_)
                               (_assert-restart45388_ _L45862_ _assert45545_)))
                            (___kont5590455905_
                             (lambda (_L45788_
                                      _L45789_
                                      _L45790_
                                      _L45791_
                                      _L45792_)
                               (_assert-restart45388_ _L45790_ _assert45545_)))
                            (___kont5591055911_ (lambda () '#f)))
                        (let ((___match5606556066_
                               (lambda (_e4559645660_
                                        _hd4559745663_
                                        _tl4559845665_
                                        _e4559945668_
                                        _hd4560045671_
                                        _tl4560145673_
                                        _e4560245676_
                                        _hd4560345679_
                                        _tl4560445681_
                                        _e4560545684_
                                        _hd4560645687_
                                        _tl4560745689_
                                        _e4560845692_
                                        _hd4560945695_
                                        _tl4561045697_
                                        _e4561145700_
                                        _hd4561245703_
                                        _tl4561345705_
                                        _e4561445708_
                                        _hd4561545711_
                                        _tl4561645713_
                                        _e4561745716_
                                        _hd4561845719_
                                        _tl4561945721_
                                        ___splice5590655907_
                                        _target4562045724_
                                        _tl4562245726_)
                                 (letrec ((_loop4562345729_
                                           (lambda (_hd4562145732_
                                                    _id4562745734_)
                                             (if (gx#stx-pair? _hd4562145732_)
                                                 (let ((_e4562445737_
                                                        (gx#stx-e
                                                         _hd4562145732_)))
                                                   (let ((_lp-tl4562645742_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4562445737_)))
                                                         (_lp-hd4562545740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4562445737_))))
                                                     (_loop4562345729_
                                                      _lp-tl4562645742_
                                                      (cons _lp-hd4562545740_
                                                            _id4562745734_))))
                                                 (let ((_id4562845745_
                                                        (reverse _id4562745734_)))
                                                   (if (gx#stx-pair?
                                                        _tl4561945721_)
                                                       (let ((_e4562945748_
                                                              (gx#stx-e
                                                               _tl4561945721_)))
                                                         (let ((_tl4563145753_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4562945748_)))
                       (_hd4563045751_
                        (let () (declare (not safe)) (##car _e4562945748_))))
                   (if (gx#stx-null? _tl4563145753_)
                       (if (gx#stx-null? _tl4561345705_)
                           (if (gx#stx-pair/null? _tl4560445681_)
                               (let ((___splice5590855909_
                                      (gx#syntax-split-splice
                                       _tl4560445681_
                                       '0)))
                                 (let ((_tl4563445758_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5590855909_
                                           '1)))
                                       (_target4563245756_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice5590855909_
                                           '0))))
                                   (if (gx#stx-null? _tl4563445758_)
                                       (letrec ((_loop4563545761_
                                                 (lambda (_hd4563345764_
                                                          _bind4563945766_)
                                                   (if (gx#stx-pair?
                                                        _hd4563345764_)
                                                       (let ((_e4563645769_
                                                              (gx#stx-e
                                                               _hd4563345764_)))
                                                         (let ((_lp-tl4563845774_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4563645769_)))
                       (_lp-hd4563745772_
                        (let () (declare (not safe)) (##car _e4563645769_))))
                   (_loop4563545761_
                    _lp-tl4563845774_
                    (cons _lp-hd4563745772_ _bind4563945766_))))
               (let ((_bind4564045777_ (reverse _bind4563945766_)))
                 (if (gx#stx-pair? _tl4560145673_)
                     (let ((_e4564145780_ (gx#stx-e _tl4560145673_)))
                       (let ((_tl4564345785_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4564145780_)))
                             (_hd4564245783_
                              (let ()
                                (declare (not safe))
                                (##car _e4564145780_))))
                         (if (gx#stx-null? _tl4564345785_)
                             (___kont5590455905_
                              _hd4564245783_
                              _bind4564045777_
                              _hd4563045751_
                              _id4562845745_
                              _hd4560945695_)
                             (___kont5591055911_))))
                     (___kont5591055911_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop4563545761_
                                          _target4563245756_
                                          '()))
                                       (___kont5591055911_))))
                               (___kont5591055911_))
                           (___kont5591055911_))
                       (___kont5591055911_))))
               (___kont5591055911_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop4562345729_
                                    _target4562045724_
                                    '())))))
                          (if (gx#stx-pair? ___stx5589655897_)
                              (let ((_e4555645932_
                                     (gx#stx-e ___stx5589655897_)))
                                (let ((_tl4555845937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4555645932_)))
                                      (_hd4555745935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4555645932_))))
                                  (if (gx#identifier? _hd4555745935_)
                                      (if (gx#stx-eq? '%#if _hd4555745935_)
                                          (if (gx#stx-pair? _tl4555845937_)
                                              (let ((_e4555945940_
                                                     (gx#stx-e
                                                      _tl4555845937_)))
                                                (let ((_tl4556145945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4555945940_)))
                                                      (_hd4556045943_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4555945940_))))
                                                  (if (gx#stx-pair?
                                                       _tl4556145945_)
                                                      (let ((_e4556245948_
                                                             (gx#stx-e
                                                              _tl4556145945_)))
                                                        (let ((_tl4556445953_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4556245948_)))
                      (_hd4556345951_
                       (let () (declare (not safe)) (##car _e4556245948_))))
                  (if (gx#stx-pair? _tl4556445953_)
                      (let ((_e4556545956_ (gx#stx-e _tl4556445953_)))
                        (let ((_tl4556745961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4556545956_)))
                              (_hd4556645959_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4556545956_))))
                          (if (gx#stx-null? _tl4556745961_)
                              (___kont5589855899_
                               _hd4556645959_
                               _hd4556345951_
                               _hd4556045943_)
                              (___kont5591055911_))))
                      (___kont5591055911_))))
              (___kont5591055911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont5591055911_))
                                          (if (gx#stx-eq?
                                               '%#call
                                               _hd4555745935_)
                                              (if (gx#stx-pair? _tl4555845937_)
                                                  (let ((_e4557245888_
                                                         (gx#stx-e
                                                          _tl4555845937_)))
                                                    (let ((_tl4557445893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4557245888_)))
                                                          (_hd4557345891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4557245888_))))
                                                      (if (gx#stx-pair?
                                                           _hd4557345891_)
                                                          (let ((_e4557545896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4557345891_)))
                    (let ((_tl4557745901_
                           (let () (declare (not safe)) (##cdr _e4557545896_)))
                          (_hd4557645899_
                           (let ()
                             (declare (not safe))
                             (##car _e4557545896_))))
                      (if (gx#identifier? _hd4557645899_)
                          (if (gx#stx-eq? '%#ref _hd4557645899_)
                              (if (gx#stx-pair? _tl4557745901_)
                                  (let ((_e4557845904_
                                         (gx#stx-e _tl4557745901_)))
                                    (let ((_tl4558045909_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4557845904_)))
                                          (_hd4557945907_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4557845904_))))
                                      (if (gx#stx-null? _tl4558045909_)
                                          (___kont5590055901_ _hd4557945907_)
                                          (___kont5591055911_))))
                                  (___kont5591055911_))
                              (___kont5591055911_))
                          (___kont5591055911_))))
                  (___kont5591055911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5591055911_))
                                              (if (gx#stx-eq?
                                                   '%#let-values
                                                   _hd4555745935_)
                                                  (if (gx#stx-pair?
                                                       _tl4555845937_)
                                                      (let ((_e4558545846_
                                                             (gx#stx-e
                                                              _tl4555845937_)))
                                                        (let ((_tl4558745851_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4558545846_)))
                      (_hd4558645849_
                       (let () (declare (not safe)) (##car _e4558545846_))))
                  (if (gx#stx-pair? _tl4558745851_)
                      (let ((_e4558845854_ (gx#stx-e _tl4558745851_)))
                        (let ((_tl4559045859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4558845854_)))
                              (_hd4558945857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4558845854_))))
                          (if (gx#stx-null? _tl4559045859_)
                              (___kont5590255903_ _hd4558945857_)
                              (___kont5591055911_))))
                      (___kont5591055911_))))
              (___kont5591055911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#letrec-values
                                                       _hd4555745935_)
                                                      (if (gx#stx-pair?
                                                           _tl4555845937_)
                                                          (let ((_e4559945668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4555845937_)))
                    (let ((_tl4560145673_
                           (let () (declare (not safe)) (##cdr _e4559945668_)))
                          (_hd4560045671_
                           (let ()
                             (declare (not safe))
                             (##car _e4559945668_))))
                      (if (gx#stx-pair? _hd4560045671_)
                          (let ((_e4560245676_ (gx#stx-e _hd4560045671_)))
                            (let ((_tl4560445681_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4560245676_)))
                                  (_hd4560345679_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4560245676_))))
                              (if (gx#stx-pair? _hd4560345679_)
                                  (let ((_e4560545684_
                                         (gx#stx-e _hd4560345679_)))
                                    (let ((_tl4560745689_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4560545684_)))
                                          (_hd4560645687_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4560545684_))))
                                      (if (gx#stx-pair? _hd4560645687_)
                                          (let ((_e4560845692_
                                                 (gx#stx-e _hd4560645687_)))
                                            (let ((_tl4561045697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4560845692_)))
                                                  (_hd4560945695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4560845692_))))
                                              (if (gx#stx-null? _tl4561045697_)
                                                  (if (gx#stx-pair?
                                                       _tl4560745689_)
                                                      (let ((_e4561145700_
                                                             (gx#stx-e
                                                              _tl4560745689_)))
                                                        (let ((_tl4561345705_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4561145700_)))
                      (_hd4561245703_
                       (let () (declare (not safe)) (##car _e4561145700_))))
                  (if (gx#stx-pair? _hd4561245703_)
                      (let ((_e4561445708_ (gx#stx-e _hd4561245703_)))
                        (let ((_tl4561645713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4561445708_)))
                              (_hd4561545711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4561445708_))))
                          (if (gx#identifier? _hd4561545711_)
                              (if (gx#stx-eq? '%#lambda _hd4561545711_)
                                  (if (gx#stx-pair? _tl4561645713_)
                                      (let ((_e4561745716_
                                             (gx#stx-e _tl4561645713_)))
                                        (let ((_tl4561945721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4561745716_)))
                                              (_hd4561845719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4561745716_))))
                                          (if (gx#stx-pair/null?
                                               _hd4561845719_)
                                              (let ((___splice5590655907_
                                                     (gx#syntax-split-splice
                                                      _hd4561845719_
                                                      '0)))
                                                (let ((_tl4562245726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5590655907_
                                                          '1)))
                                                      (_target4562045724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice5590655907_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl4562245726_)
                                                      (___match5606556066_
                                                       _e4555645932_
                                                       _hd4555745935_
                                                       _tl4555845937_
                                                       _e4559945668_
                                                       _hd4560045671_
                                                       _tl4560145673_
                                                       _e4560245676_
                                                       _hd4560345679_
                                                       _tl4560445681_
                                                       _e4560545684_
                                                       _hd4560645687_
                                                       _tl4560745689_
                                                       _e4560845692_
                                                       _hd4560945695_
                                                       _tl4561045697_
                                                       _e4561145700_
                                                       _hd4561245703_
                                                       _tl4561345705_
                                                       _e4561445708_
                                                       _hd4561545711_
                                                       _tl4561645713_
                                                       _e4561745716_
                                                       _hd4561845719_
                                                       _tl4561945721_
                                                       ___splice5590655907_
                                                       _target4562045724_
                                                       _tl4562245726_)
                                                      (___kont5591055911_))))
                                              (___kont5591055911_))))
                                      (___kont5591055911_))
                                  (___kont5591055911_))
                              (___kont5591055911_))))
                      (___kont5591055911_))))
              (___kont5591055911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont5591055911_))))
                                          (___kont5591055911_))))
                                  (___kont5591055911_))))
                          (___kont5591055911_))))
                  (___kont5591055911_))
              (___kont5591055911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___kont5591055911_))))
                              (___kont5591055911_))))))))
          (let* ((_block4538945402_ _block45385_)
                 (_E4539145406_
                  (lambda () (error '"No clause matching" _block4538945402_)))
                 (_K4539245519_
                  (lambda (_maybe-bind45409_ _assert45410_ _kont45411_)
                    (let* ((_g4541345439_
                            (lambda (_g4541445436_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4541445436_)))
                           (_g4541245516_
                            (lambda (_g4541445442_)
                              (if (gx#stx-pair? _g4541445442_)
                                  (let ((_e4541745444_
                                         (gx#stx-e _g4541445442_)))
                                    (let ((_hd4541845447_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4541745444_)))
                                          (_tl4541945449_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4541745444_))))
                                      (if (gx#identifier? _hd4541845447_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4541845447_)
                                              (if (gx#stx-pair? _tl4541945449_)
                                                  (let ((_e4542045452_
                                                         (gx#stx-e
                                                          _tl4541945449_)))
                                                    (let ((_hd4542145455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4542045452_)))
                                                          (_tl4542245457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4542045452_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd4542145455_)
                                                          (let ((_g56839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4542145455_ '0)))
                    (begin
                      (let ((_g56840_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g56839_)
                                   (##vector-length _g56839_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g56840_ 2)))
                            (error "Context expects 2 values" _g56840_)))
                      (let ((_target4542345460_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56839_ 0)))
                            (_tl4542545462_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56839_ 1))))
                        (if (gx#stx-null? _tl4542545462_)
                            (letrec ((_loop4542645465_
                                      (lambda (_hd4542445468_ _id4543045470_)
                                        (if (gx#stx-pair? _hd4542445468_)
                                            (let ((_e4542745473_
                                                   (gx#stx-e _hd4542445468_)))
                                              (let ((_lp-hd4542845476_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4542745473_)))
                                                    (_lp-tl4542945478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4542745473_))))
                                                (_loop4542645465_
                                                 _lp-tl4542945478_
                                                 (cons _lp-hd4542845476_
                                                       _id4543045470_))))
                                            (let ((_id4543145481_
                                                   (reverse _id4543045470_)))
                                              (if (gx#stx-pair? _tl4542245457_)
                                                  (let ((_e4543245484_
                                                         (gx#stx-e
                                                          _tl4542245457_)))
                                                    (let ((_hd4543345487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4543245484_)))
                                                          (_tl4543445489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4543245484_))))
                                                      (if (gx#stx-null?
                                                           _tl4543445489_)
                                                          ((lambda (_L45492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L45493_)
                     (_assert-restart45388_ _L45492_ _assert45410_))
                   _hd4543345487_
                   _id4543145481_)
                  (_g4541345439_ _g4541445442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4541345439_
                                                   _g4541445442_)))))))
                              (_loop4542645465_ _target4542345460_ '()))
                            (_g4541345439_ _g4541445442_)))))
                  (_g4541345439_ _g4541445442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4541345439_
                                                   _g4541445442_))
                                              (_g4541345439_ _g4541445442_))
                                          (_g4541345439_ _g4541445442_))))
                                  (_g4541345439_ _g4541445442_)))))
                      (_g4541245516_ _kont45411_)))))
            (if (let () (declare (not safe)) (##pair? _block4538945402_))
                (let ((_tl4539445522_
                       (let ()
                         (declare (not safe))
                         (##cdr _block4538945402_))))
                  (if (let () (declare (not safe)) (##pair? _tl4539445522_))
                      (let ((_tl4539645525_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl4539445522_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl4539645525_))
                            (let ((_hd4539745528_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl4539645525_)))
                                  (_tl4539845530_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl4539645525_))))
                              (let ((_kont45533_ _hd4539745528_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl4539845530_))
                                    (let ((_hd4539945535_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl4539845530_)))
                                          (_tl4540045537_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl4539845530_))))
                                      (let* ((_assert45540_ _hd4539945535_)
                                             (_maybe-bind45542_
                                              _tl4540045537_))
                                        (_K4539245519_
                                         _maybe-bind45542_
                                         _assert45540_
                                         _kont45533_)))
                                    (_E4539145406_))))
                            (_E4539145406_)))
                      (_E4539145406_)))
                (_E4539145406_))))))
    (define gxc#optimize-syntax-case
      (lambda (_stx45016_)
        (let* ((_g4501845048_
                (lambda (_g4501945045_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4501945045_)))
               (_g4501745382_
                (lambda (_g4501945051_)
                  (if (gx#stx-pair? _g4501945051_)
                      (let ((_e4502345053_ (gx#stx-e _g4501945051_)))
                        (let ((_hd4502445056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4502345053_)))
                              (_tl4502545058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4502345053_))))
                          (if (gx#identifier? _hd4502445056_)
                              (if (gx#stx-eq? '%#let-values _hd4502445056_)
                                  (if (gx#stx-pair? _tl4502545058_)
                                      (let ((_e4502645061_
                                             (gx#stx-e _tl4502545058_)))
                                        (let ((_hd4502745064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4502645061_)))
                                              (_tl4502845066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4502645061_))))
                                          (if (gx#stx-pair? _hd4502745064_)
                                              (let ((_e4502945069_
                                                     (gx#stx-e
                                                      _hd4502745064_)))
                                                (let ((_hd4503045072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4502945069_)))
                                                      (_tl4503145074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4502945069_))))
                                                  (if (gx#stx-pair?
                                                       _hd4503045072_)
                                                      (let ((_e4503245077_
                                                             (gx#stx-e
                                                              _hd4503045072_)))
                                                        (let ((_hd4503345080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4503245077_)))
                      (_tl4503445082_
                       (let () (declare (not safe)) (##cdr _e4503245077_))))
                  (if (gx#stx-pair? _hd4503345080_)
                      (let ((_e4503545085_ (gx#stx-e _hd4503345080_)))
                        (let ((_hd4503645088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4503545085_)))
                              (_tl4503745090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4503545085_))))
                          (if (gx#stx-null? _tl4503745090_)
                              (if (gx#stx-pair? _tl4503445082_)
                                  (let ((_e4503845093_
                                         (gx#stx-e _tl4503445082_)))
                                    (let ((_hd4503945096_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4503845093_)))
                                          (_tl4504045098_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4503845093_))))
                                      (if (gx#stx-null? _tl4504045098_)
                                          (if (gx#stx-null? _tl4503145074_)
                                              (if (gx#stx-pair? _tl4502845066_)
                                                  (let ((_e4504145101_
                                                         (gx#stx-e
                                                          _tl4502845066_)))
                                                    (let ((_hd4504245104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4504145101_)))
                                                          (_tl4504345106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4504145101_))))
                                                      (if (gx#stx-null?
                                                           _tl4504345106_)
                                                          ((lambda (_L45109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L45110_
                            _L45111_)
                     (let _lp45135_ ((_body45137_ _L45109_)
                                     (_clauses45138_ '()))
                       (let* ((___stx5606856069_ _body45137_)
                              (_g4514145188_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  ___stx5606856069_))))
                         (let ((___kont5607056071_
                                (lambda (_L45354_ _L45355_ _L45356_)
                                  (_lp45135_
                                   _L45354_
                                   (cons (cons _L45356_
                                               (gxc#compile-e _L45355_))
                                         _clauses45138_))))
                               (___kont5607256073_
                                (lambda (_L45233_ _L45234_)
                                  (let ((_$e45255_ (length _clauses45138_)))
                                    (if (eq? '0 _$e45255_)
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons (cons (cons (cons _L45111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L45110_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gxc#compile-e
                                                            _body45137_)
                                                           '())))
                                         _stx45016_)
                                        (if (eq? '1 _$e45255_)
                                            (let* ((_clauses4525745266_
                                                    _clauses45138_)
                                                   (_E4525945270_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _clauses4525745266_)))
                                                   (_K4526045276_
                                                    (lambda (_clause-lambda45273_
                                                             _clause45274_)
                                                      (gxc#xform-wrap-source
                                                       (cons '%#let-values
                                                             (cons (cons (cons (cons _L45111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons _L45110_ '()))
                                 '())
                           (cons (cons '%#let-values
                                       (cons (cons (cons (cons _clause45274_
                                                               '())
                                                         (cons _clause-lambda45273_
                                                               '()))
                                                   '())
                                             (cons (gxc#compile-e _body45137_)
                                                   '())))
                                 '())))
               _stx45016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _clauses4525745266_))
                                                  (let ((_hd4526145279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _clauses4525745266_)))
                                                        (_tl4526245281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _clauses4525745266_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd4526145279_))
                                                        (let ((_hd4526345284_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _hd4526145279_)))
                      (_tl4526445286_
                       (let () (declare (not safe)) (##cdr _hd4526145279_))))
                  (let* ((_clause45289_ _hd4526345284_)
                         (_clause-lambda45291_ _tl4526445286_))
                    (if (let () (declare (not safe)) (##null? _tl4526245281_))
                        (_K4526045276_ _clause-lambda45291_ _clause45289_)
                        (_E4525945270_))))
                (_E4525945270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E4525945270_)))
                                            (gxc#optimize-syntax-case-body
                                             _stx45016_
                                             (gxc#compile-e _L45233_)
                                             (cons _L45111_ _L45110_)
                                             _clauses45138_)))))))
                           (if (gx#stx-pair? ___stx5606856069_)
                               (let ((_e4514645298_
                                      (gx#stx-e ___stx5606856069_)))
                                 (let ((_tl4514845303_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4514645298_)))
                                       (_hd4514745301_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4514645298_))))
                                   (if (gx#identifier? _hd4514745301_)
                                       (if (gx#stx-eq?
                                            '%#let-values
                                            _hd4514745301_)
                                           (if (gx#stx-pair? _tl4514845303_)
                                               (let ((_e4514945306_
                                                      (gx#stx-e
                                                       _tl4514845303_)))
                                                 (let ((_tl4515145311_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4514945306_)))
                                                       (_hd4515045309_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4514945306_))))
                                                   (if (gx#stx-pair?
                                                        _hd4515045309_)
                                                       (let ((_e4515245314_
                                                              (gx#stx-e
                                                               _hd4515045309_)))
                                                         (let ((_tl4515445319_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e4515245314_)))
                       (_hd4515345317_
                        (let () (declare (not safe)) (##car _e4515245314_))))
                   (if (gx#stx-pair? _hd4515345317_)
                       (let ((_e4515545322_ (gx#stx-e _hd4515345317_)))
                         (let ((_tl4515745327_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4515545322_)))
                               (_hd4515645325_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4515545322_))))
                           (if (gx#stx-pair? _hd4515645325_)
                               (let ((_e4515845330_ (gx#stx-e _hd4515645325_)))
                                 (let ((_tl4516045335_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4515845330_)))
                                       (_hd4515945333_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4515845330_))))
                                   (if (gx#stx-null? _tl4516045335_)
                                       (if (gx#stx-pair? _tl4515745327_)
                                           (let ((_e4516145338_
                                                  (gx#stx-e _tl4515745327_)))
                                             (let ((_tl4516345343_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4516145338_)))
                                                   (_hd4516245341_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4516145338_))))
                                               (if (gx#stx-null?
                                                    _tl4516345343_)
                                                   (if (gx#stx-null?
                                                        _tl4515445319_)
                                                       (if (gx#stx-pair?
                                                            _tl4515145311_)
                                                           (let ((_e4516445346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl4515145311_)))
                     (let ((_tl4516645351_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4516445346_)))
                           (_hd4516545349_
                            (let ()
                              (declare (not safe))
                              (##car _e4516445346_))))
                       (if (gx#stx-null? _tl4516645351_)
                           (___kont5607056071_
                            _hd4516545349_
                            _hd4516245341_
                            _hd4515945333_)
                           (_g4514145188_))))
                   (_g4514145188_))
               (_g4514145188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4514145188_))))
                                           (_g4514145188_))
                                       (_g4514145188_))))
                               (_g4514145188_))))
                       (_g4514145188_))))
               (_g4514145188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4514145188_))
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd4514745301_)
                                               (if (gx#stx-pair?
                                                    _tl4514845303_)
                                                   (let ((_e4517245201_
                                                          (gx#stx-e
                                                           _tl4514845303_)))
                                                     (let ((_tl4517445206_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4517245201_)))
                                                           (_hd4517345204_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4517245201_))))
                                                       (if (gx#stx-pair?
                                                            _hd4517345204_)
                                                           (let ((_e4517545209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd4517345204_)))
                     (let ((_tl4517745214_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4517545209_)))
                           (_hd4517645212_
                            (let ()
                              (declare (not safe))
                              (##car _e4517545209_))))
                       (if (gx#identifier? _hd4517645212_)
                           (if (gx#stx-eq? '%#ref _hd4517645212_)
                               (if (gx#stx-pair? _tl4517745214_)
                                   (let ((_e4517845217_
                                          (gx#stx-e _tl4517745214_)))
                                     (let ((_tl4518045222_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4517845217_)))
                                           (_hd4517945220_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4517845217_))))
                                       (if (gx#stx-null? _tl4518045222_)
                                           (if (gx#stx-pair? _tl4517445206_)
                                               (let ((_e4518145225_
                                                      (gx#stx-e
                                                       _tl4517445206_)))
                                                 (let ((_tl4518345230_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4518145225_)))
                                                       (_hd4518245228_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4518145225_))))
                                                   (if (gx#stx-null?
                                                        _tl4518345230_)
                                                       (___kont5607256073_
                                                        _hd4518245228_
                                                        _hd4517945220_)
                                                       (_g4514145188_))))
                                               (_g4514145188_))
                                           (_g4514145188_))))
                                   (_g4514145188_))
                               (_g4514145188_))
                           (_g4514145188_))))
                   (_g4514145188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g4514145188_))
                                               (_g4514145188_)))
                                       (_g4514145188_))))
                               (_g4514145188_))))))
                   _hd4504245104_
                   _hd4503945096_
                   _hd4503645088_)
                  (_g4501845048_ _g4501945051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4501845048_
                                                   _g4501945051_))
                                              (_g4501845048_ _g4501945051_))
                                          (_g4501845048_ _g4501945051_))))
                                  (_g4501845048_ _g4501945051_))
                              (_g4501845048_ _g4501945051_))))
                      (_g4501845048_ _g4501945051_))))
              (_g4501845048_ _g4501945051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4501845048_ _g4501945051_))))
                                      (_g4501845048_ _g4501945051_))
                                  (_g4501845048_ _g4501945051_))
                              (_g4501845048_ _g4501945051_))))
                      (_g4501845048_ _g4501945051_)))))
          (_g4501745382_ _stx45016_))))
    (define gxc#optimize-syntax-case-body
      (lambda (_stx44944_ _expr44945_ _negation44946_ _clauses44947_)
        (letrec ((_normalize44949_
                  (lambda (_clauses44976_)
                    (let* ((_clauses4497744986_ _clauses44976_)
                           (_E4497944990_
                            (lambda ()
                              (error '"No clause matching"
                                     _clauses4497744986_)))
                           (_K4498044997_
                            (lambda (_rest44993_ _kont44994_ _id44995_)
                              (cons (cons '#f _kont44994_) _rest44993_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _clauses4497744986_))
                          (let ((_hd4498145000_
                                 (let ()
                                   (declare (not safe))
                                   (##car _clauses4497744986_)))
                                (_tl4498245002_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _clauses4497744986_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd4498145000_))
                                (let ((_hd4498345005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd4498145000_)))
                                      (_tl4498445007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd4498145000_))))
                                  (let* ((_id45010_ _hd4498345005_)
                                         (_kont45012_ _tl4498445007_)
                                         (_rest45014_ _tl4498245002_))
                                    (_K4498044997_
                                     _rest45014_
                                     _kont45012_
                                     _id45010_)))
                                (_E4497944990_)))
                          (_E4497944990_))))))
          (call-with-parameters
           (lambda ()
             (let* ((_id44952_ (make-symbol (gensym '__stx)))
                    (_id44954_ (gx#core-quote-syntax__0 _id44952_))
                    (_g56841_ (gx#core-bind-runtime!__0 _id44954_))
                    (_g56842_
                     (gxc#optimize-syntax-case-clauses
                      _clauses44947_
                      (car _negation44946_))))
               (begin
                 (let ((_g56843_
                        (let ()
                          (declare (not safe))
                          (if (##values? _g56842_)
                              (##vector-length _g56842_)
                              1))))
                   (if (not (let () (declare (not safe)) (##fx= _g56843_ 2)))
                       (error "Context expects 2 values" _g56843_)))
                 (let ((_clauses44957_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _g56842_ 0)))
                       (_konts44958_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _g56842_ 1))))
                   (let* ((_clauses44967_
                           (map (lambda (_g4495944962_ _g4496044964_)
                                  (gxc#optimize-syntax-case-closure
                                   _g4495944962_
                                   _g4496044964_
                                   _id44954_))
                                _clauses44957_
                                (foldr1 cons
                                        (cons (car _negation44946_) '())
                                        (map car (cdr _clauses44957_)))))
                          (_clauses44969_ (_normalize44949_ _clauses44967_))
                          (_negation44971_
                           (gxc#optimize-syntax-case-closure
                            _negation44946_
                            '#f
                            _id44954_))
                          (_body44973_
                           (gxc#optimize-match-body
                            _stx44944_
                            _negation44971_
                            _clauses44969_
                            _konts44958_)))
                     (gxc#xform-wrap-source
                      (cons '%#let-values
                            (cons (cons (cons (cons _id44954_ '())
                                              (cons _expr44945_ '()))
                                        '())
                                  (cons _body44973_ '())))
                      _stx44944_))))))
           gx#current-expander-context
           (let ((__obj56814 (make-object gx#local-context::t '5)))
             (gx#local-context:::init!__0 __obj56814)
             __obj56814)))))
    (define gxc#optimize-syntax-case-clauses
      (lambda (_clauses43702_ _negation-id43703_)
        (letrec ((_xform-e43705_
                  (lambda (_expr44089_
                           _kont-id44090_
                           _kont-box44091_
                           _negation-id44092_)
                    (let* ((___stx5627056271_ _expr44089_)
                           (_g4409844231_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5627056271_))))
                      (let ((___kont5627256273_
                             (lambda (_L44920_ _L44921_ _L44922_)
                               (let ((_K44939_
                                      (_xform-e43705_
                                       _L44921_
                                       _kont-id44090_
                                       _kont-box44091_
                                       _negation-id44092_)))
                                 (cons '%#if
                                       (cons _L44922_
                                             (cons _K44939_
                                                   (cons _L44920_ '())))))))
                            (___kont5627456275_
                             (lambda (_L44836_
                                      _L44837_
                                      _L44838_
                                      _L44839_
                                      _L44840_)
                               (let* ((_id44875_
                                       (make-symbol (gensym '__splice)))
                                      (_id44877_
                                       (gx#core-quote-syntax__0 _id44875_))
                                      (_g56844_
                                       (gx#core-bind-runtime!__0 _id44877_))
                                      (_body44880_
                                       (_xform-e43705_
                                        _L44836_
                                        _kont-id44090_
                                        _kont-box44091_
                                        _negation-id44092_)))
                                 (cons '%#let-values
                                       (cons (cons (cons (cons _id44877_ '())
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#call)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _L44838_ '()))
                                   _L44837_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (cons '%#let-values
                                                         (cons (cons (cons (cons _L44840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons (cons '%#call
                                               (cons '(%#ref ##vector-ref)
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id44877_ '()))
                   (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             (cons (cons (cons _L44839_ '())
                                         (cons (cons '%#call
                                                     (cons '(%#ref ##vector-ref)
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _id44877_ '()))
                         (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))
                       (cons _body44880_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                            (___kont5627656277_
                             (lambda (_L44718_ _L44719_)
                               (let ((_body44733_
                                      (_xform-e43705_
                                       _L44718_
                                       _kont-id44090_
                                       _kont-box44091_
                                       _negation-id44092_)))
                                 (cons '%#let-values
                                       (cons _L44719_
                                             (cons _body44733_ '()))))))
                            (___kont5627856279_
                             (lambda (_L44662_ _L44663_ _L44664_)
                               (let ((_lambda-expr44687_
                                      (_xform-loop-e43706_
                                       _L44663_
                                       _kont-id44090_
                                       _kont-box44091_
                                       _negation-id44092_)))
                                 (cons '%#letrec-values
                                       (cons (cons (cons (cons _L44664_ '())
                                                         (cons _lambda-expr44687_
                                                               '()))
                                                   '())
                                             (cons _L44662_ '()))))))
                            (___kont5628056281_
                             (lambda (_L44324_ _L44325_ _L44326_)
                               (let* ((___stx5617256173_ _L44325_)
                                      (_g4435544398_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx5617256173_))))
                                 (let ((___kont5617456175_
                                        (lambda (_L44514_
                                                 _L44515_
                                                 _L44516_
                                                 _L44517_)
                                          (let ((_kont44558_
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#lambda)
                                                       (cons (foldr1 (lambda (_g4455044553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4455144555_)
                               (cons _g4455044553_ _g4455144555_))
                             '()
                             _L44326_)
                     (cons _L44516_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (set-box!
                                             _kont-box44091_
                                             _kont44558_)
                                            (let* ((_kont-args44569_
                                                    (map (lambda (_id44560_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id44560_ '())))
                 (foldr1 (lambda (_g4456144564_ _g4456244566_)
                           (cons _g4456144564_ _g4456244566_))
                         '()
                         _L44326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body44571_
                                                    (cons '%#if
                                                          (cons _L44517_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id44090_ '()))
                                          _kont-args44569_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L44515_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L44514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (foldr1 (lambda (_g4457344576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g4457444578_)
                           (cons _g4457344576_ _g4457444578_))
                         '()
                         _L44326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body44571_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id44581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg44582_)
                             (cons (cons _id44581_ '()) (cons _arg44582_ '())))
                           (foldr1 (lambda (_g4458344586_ _g4458444588_)
                                     (cons _g4458344586_ _g4458444588_))
                                   '()
                                   _L44326_)
                           (foldr1 (lambda (_g4459044593_ _g4459144595_)
                                     (cons _g4459044593_ _g4459144595_))
                                   '()
                                   _L44324_))
                      (cons _body44571_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont5617656177_
                                        (lambda ()
                                          (let ((_kont44412_
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#lambda)
                                                       (cons (foldr1 (lambda (_g4440444407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g4440544409_)
                               (cons _g4440444407_ _g4440544409_))
                             '()
                             _L44326_)
                     (cons _L44325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (set-box!
                                             _kont-box44091_
                                             _kont44412_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id44090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (foldr1 (lambda (_g4441344416_ _g4441444418_)
                          (cons _g4441344416_ _g4441444418_))
                        '()
                        _L44324_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let ((___match5626756268_
                                          (lambda (_e4436144426_
                                                   _hd4436244429_
                                                   _tl4436344431_
                                                   _e4436444434_
                                                   _hd4436544437_
                                                   _tl4436644439_
                                                   _e4436744442_
                                                   _hd4436844445_
                                                   _tl4436944447_
                                                   _e4437044450_
                                                   _hd4437144453_
                                                   _tl4437244455_
                                                   _e4437344458_
                                                   _hd4437444461_
                                                   _tl4437544463_
                                                   _e4437644466_
                                                   _hd4437744469_
                                                   _tl4437844471_
                                                   _e4437944474_
                                                   _hd4438044477_
                                                   _tl4438144479_
                                                   _e4438244482_
                                                   _hd4438344485_
                                                   _tl4438444487_
                                                   _e4438544490_
                                                   _hd4438644493_
                                                   _tl4438744495_
                                                   _e4438844498_
                                                   _hd4438944501_
                                                   _tl4439044503_
                                                   _e4439144506_
                                                   _hd4439244509_
                                                   _tl4439344511_)
                                            (let ((_L44514_ _hd4439244509_)
                                                  (_L44515_ _hd4438344485_)
                                                  (_L44516_ _hd4436844445_)
                                                  (_L44517_ _hd4436544437_))
                                              (if (gx#free-identifier=?
                                                   _L44515_
                                                   _negation-id44092_)
                                                  (___kont5617456175_
                                                   _L44514_
                                                   _L44515_
                                                   _L44516_
                                                   _L44517_)
                                                  (___kont5617656177_))))))
                                     (if (gx#stx-pair? ___stx5617256173_)
                                         (let ((_e4436144426_
                                                (gx#stx-e ___stx5617256173_)))
                                           (let ((_tl4436344431_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4436144426_)))
                                                 (_hd4436244429_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4436144426_))))
                                             (if (gx#identifier?
                                                  _hd4436244429_)
                                                 (if (gx#stx-eq?
                                                      '%#if
                                                      _hd4436244429_)
                                                     (if (gx#stx-pair?
                                                          _tl4436344431_)
                                                         (let ((_e4436444434_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4436344431_)))
                   (let ((_tl4436644439_
                          (let () (declare (not safe)) (##cdr _e4436444434_)))
                         (_hd4436544437_
                          (let () (declare (not safe)) (##car _e4436444434_))))
                     (if (gx#stx-pair? _tl4436644439_)
                         (let ((_e4436744442_ (gx#stx-e _tl4436644439_)))
                           (let ((_tl4436944447_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4436744442_)))
                                 (_hd4436844445_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4436744442_))))
                             (if (gx#stx-pair? _tl4436944447_)
                                 (let ((_e4437044450_
                                        (gx#stx-e _tl4436944447_)))
                                   (let ((_tl4437244455_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4437044450_)))
                                         (_hd4437144453_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4437044450_))))
                                     (if (gx#stx-pair? _hd4437144453_)
                                         (let ((_e4437344458_
                                                (gx#stx-e _hd4437144453_)))
                                           (let ((_tl4437544463_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4437344458_)))
                                                 (_hd4437444461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4437344458_))))
                                             (if (gx#identifier?
                                                  _hd4437444461_)
                                                 (if (gx#stx-eq?
                                                      '%#call
                                                      _hd4437444461_)
                                                     (if (gx#stx-pair?
                                                          _tl4437544463_)
                                                         (let ((_e4437644466_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4437544463_)))
                   (let ((_tl4437844471_
                          (let () (declare (not safe)) (##cdr _e4437644466_)))
                         (_hd4437744469_
                          (let () (declare (not safe)) (##car _e4437644466_))))
                     (if (gx#stx-pair? _hd4437744469_)
                         (let ((_e4437944474_ (gx#stx-e _hd4437744469_)))
                           (let ((_tl4438144479_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4437944474_)))
                                 (_hd4438044477_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4437944474_))))
                             (if (gx#identifier? _hd4438044477_)
                                 (if (gx#stx-eq? '%#ref _hd4438044477_)
                                     (if (gx#stx-pair? _tl4438144479_)
                                         (let ((_e4438244482_
                                                (gx#stx-e _tl4438144479_)))
                                           (let ((_tl4438444487_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4438244482_)))
                                                 (_hd4438344485_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4438244482_))))
                                             (if (gx#stx-null? _tl4438444487_)
                                                 (if (gx#stx-pair?
                                                      _tl4437844471_)
                                                     (let ((_e4438544490_
                                                            (gx#stx-e
                                                             _tl4437844471_)))
                                                       (let ((_tl4438744495_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4438544490_)))
                     (_hd4438644493_
                      (let () (declare (not safe)) (##car _e4438544490_))))
                 (if (gx#stx-pair? _hd4438644493_)
                     (let ((_e4438844498_ (gx#stx-e _hd4438644493_)))
                       (let ((_tl4439044503_
                              (let ()
                                (declare (not safe))
                                (##cdr _e4438844498_)))
                             (_hd4438944501_
                              (let ()
                                (declare (not safe))
                                (##car _e4438844498_))))
                         (if (gx#identifier? _hd4438944501_)
                             (if (gx#stx-eq? '%#ref _hd4438944501_)
                                 (if (gx#stx-pair? _tl4439044503_)
                                     (let ((_e4439144506_
                                            (gx#stx-e _tl4439044503_)))
                                       (let ((_tl4439344511_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4439144506_)))
                                             (_hd4439244509_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4439144506_))))
                                         (if (gx#stx-null? _tl4439344511_)
                                             (if (gx#stx-null? _tl4438744495_)
                                                 (if (gx#stx-null?
                                                      _tl4437244455_)
                                                     (___match5626756268_
                                                      _e4436144426_
                                                      _hd4436244429_
                                                      _tl4436344431_
                                                      _e4436444434_
                                                      _hd4436544437_
                                                      _tl4436644439_
                                                      _e4436744442_
                                                      _hd4436844445_
                                                      _tl4436944447_
                                                      _e4437044450_
                                                      _hd4437144453_
                                                      _tl4437244455_
                                                      _e4437344458_
                                                      _hd4437444461_
                                                      _tl4437544463_
                                                      _e4437644466_
                                                      _hd4437744469_
                                                      _tl4437844471_
                                                      _e4437944474_
                                                      _hd4438044477_
                                                      _tl4438144479_
                                                      _e4438244482_
                                                      _hd4438344485_
                                                      _tl4438444487_
                                                      _e4438544490_
                                                      _hd4438644493_
                                                      _tl4438744495_
                                                      _e4438844498_
                                                      _hd4438944501_
                                                      _tl4439044503_
                                                      _e4439144506_
                                                      _hd4439244509_
                                                      _tl4439344511_)
                                                     (___kont5617656177_))
                                                 (___kont5617656177_))
                                             (___kont5617656177_))))
                                     (___kont5617656177_))
                                 (___kont5617656177_))
                             (___kont5617656177_))))
                     (___kont5617656177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5617656177_))
                                                 (___kont5617656177_))))
                                         (___kont5617656177_))
                                     (___kont5617656177_))
                                 (___kont5617656177_))))
                         (___kont5617656177_))))
                 (___kont5617656177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5617656177_))
                                                 (___kont5617656177_))))
                                         (___kont5617656177_))))
                                 (___kont5617656177_))))
                         (___kont5617656177_))))
                 (___kont5617656177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont5617656177_))
                                                 (___kont5617656177_))))
                                         (___kont5617656177_))))))))
                        (let* ((___match5652756528_
                                (lambda (_e4419444236_
                                         _hd4419544239_
                                         _tl4419644241_
                                         _e4419744244_
                                         _hd4419844247_
                                         _tl4419944249_
                                         _e4420044252_
                                         _hd4420144255_
                                         _tl4420244257_
                                         _e4420344260_
                                         _hd4420444263_
                                         _tl4420544265_
                                         ___splice5628256283_
                                         _target4420644268_
                                         _tl4420844270_)
                                  (letrec ((_loop4420944273_
                                            (lambda (_hd4420744276_
                                                     _id4421344278_)
                                              (if (gx#stx-pair? _hd4420744276_)
                                                  (let ((_e4421044281_
                                                         (gx#stx-e
                                                          _hd4420744276_)))
                                                    (let ((_lp-tl4421244286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4421044281_)))
                                                          (_lp-hd4421144284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4421044281_))))
                                                      (_loop4420944273_
                                                       _lp-tl4421244286_
                                                       (cons _lp-hd4421144284_
                                                             _id4421344278_))))
                                                  (let ((_id4421444289_
                                                         (reverse _id4421344278_)))
                                                    (if (gx#stx-pair?
                                                         _tl4420544265_)
                                                        (let ((_e4421544292_
                                                               (gx#stx-e
                                                                _tl4420544265_)))
                                                          (let ((_tl4421744297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4421544292_)))
                        (_hd4421644295_
                         (let () (declare (not safe)) (##car _e4421544292_))))
                    (if (gx#stx-null? _tl4421744297_)
                        (if (gx#stx-pair/null? _tl4419944249_)
                            (let ((___splice5628456285_
                                   (gx#syntax-split-splice _tl4419944249_ '0)))
                              (let ((_tl4422044302_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice5628456285_ '1)))
                                    (_target4421844300_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice5628456285_
                                        '0))))
                                (if (gx#stx-null? _tl4422044302_)
                                    (letrec ((_loop4422144305_
                                              (lambda (_hd4421944308_
                                                       _arg4422544310_)
                                                (if (gx#stx-pair?
                                                     _hd4421944308_)
                                                    (let ((_e4422244313_
                                                           (gx#stx-e
                                                            _hd4421944308_)))
                                                      (let ((_lp-tl4422444318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4422244313_)))
                    (_lp-hd4422344316_
                     (let () (declare (not safe)) (##car _e4422244313_))))
                (_loop4422144305_
                 _lp-tl4422444318_
                 (cons _lp-hd4422344316_ _arg4422544310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_arg4422644321_
                                                           (reverse _arg4422544310_)))
                                                      (___kont5628056281_
                                                       _arg4422644321_
                                                       _hd4421644295_
                                                       _id4421444289_))))))
                                      (_loop4422144305_
                                       _target4421844300_
                                       '()))
                                    (_g4409844231_))))
                            (_g4409844231_))
                        (_g4409844231_))))
                (_g4409844231_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop4420944273_
                                     _target4420644268_
                                     '()))))
                               (___match5640956410_
                                (lambda (_e4412044740_
                                         _hd4412144743_
                                         _tl4412244745_
                                         _e4412344748_
                                         _hd4412444751_
                                         _tl4412544753_
                                         _e4412644756_
                                         _hd4412744759_
                                         _tl4412844761_
                                         _e4412944764_
                                         _hd4413044767_
                                         _tl4413144769_
                                         _e4413244772_
                                         _hd4413344775_
                                         _tl4413444777_
                                         _e4413544780_
                                         _hd4413644783_
                                         _tl4413744785_
                                         _e4413844788_
                                         _hd4413944791_
                                         _tl4414044793_
                                         _e4414144796_
                                         _hd4414244799_
                                         _tl4414344801_
                                         _e4414444804_
                                         _hd4414544807_
                                         _tl4414644809_
                                         _e4414744812_
                                         _hd4414844815_
                                         _tl4414944817_
                                         _e4415044820_
                                         _hd4415144823_
                                         _tl4415244825_
                                         _e4415344828_
                                         _hd4415444831_
                                         _tl4415544833_)
                                  (let ((_L44836_ _hd4415444831_)
                                        (_L44837_ _tl4414644809_)
                                        (_L44838_ _hd4415144823_)
                                        (_L44839_ _hd4413644783_)
                                        (_L44840_ _hd4413344775_))
                                    (if (gxc#runtime-identifier=?
                                         _L44838_
                                         'gx#syntax-split-splice)
                                        (___kont5627456275_
                                         _L44836_
                                         _L44837_
                                         _L44838_
                                         _L44839_
                                         _L44840_)
                                        (___kont5627656277_
                                         _hd4415444831_
                                         _hd4412444751_))))))
                          (if (gx#stx-pair? ___stx5627056271_)
                              (let ((_e4410344888_
                                     (gx#stx-e ___stx5627056271_)))
                                (let ((_tl4410544893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4410344888_)))
                                      (_hd4410444891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4410344888_))))
                                  (if (gx#identifier? _hd4410444891_)
                                      (if (gx#stx-eq? '%#if _hd4410444891_)
                                          (if (gx#stx-pair? _tl4410544893_)
                                              (let ((_e4410644896_
                                                     (gx#stx-e
                                                      _tl4410544893_)))
                                                (let ((_tl4410844901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4410644896_)))
                                                      (_hd4410744899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4410644896_))))
                                                  (if (gx#stx-pair?
                                                       _tl4410844901_)
                                                      (let ((_e4410944904_
                                                             (gx#stx-e
                                                              _tl4410844901_)))
                                                        (let ((_tl4411144909_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4410944904_)))
                      (_hd4411044907_
                       (let () (declare (not safe)) (##car _e4410944904_))))
                  (if (gx#stx-pair? _tl4411144909_)
                      (let ((_e4411244912_ (gx#stx-e _tl4411144909_)))
                        (let ((_tl4411444917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4411244912_)))
                              (_hd4411344915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4411244912_))))
                          (if (gx#stx-null? _tl4411444917_)
                              (___kont5627256273_
                               _hd4411344915_
                               _hd4411044907_
                               _hd4410744899_)
                              (_g4409844231_))))
                      (_g4409844231_))))
              (_g4409844231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4409844231_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd4410444891_)
                                              (if (gx#stx-pair? _tl4410544893_)
                                                  (let ((_e4412344748_
                                                         (gx#stx-e
                                                          _tl4410544893_)))
                                                    (let ((_tl4412544753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4412344748_)))
                                                          (_hd4412444751_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4412344748_))))
                                                      (if (gx#stx-pair?
                                                           _hd4412444751_)
                                                          (let ((_e4412644756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4412444751_)))
                    (let ((_tl4412844761_
                           (let () (declare (not safe)) (##cdr _e4412644756_)))
                          (_hd4412744759_
                           (let ()
                             (declare (not safe))
                             (##car _e4412644756_))))
                      (if (gx#stx-pair? _hd4412744759_)
                          (let ((_e4412944764_ (gx#stx-e _hd4412744759_)))
                            (let ((_tl4413144769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4412944764_)))
                                  (_hd4413044767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4412944764_))))
                              (if (gx#stx-pair? _hd4413044767_)
                                  (let ((_e4413244772_
                                         (gx#stx-e _hd4413044767_)))
                                    (let ((_tl4413444777_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4413244772_)))
                                          (_hd4413344775_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4413244772_))))
                                      (if (gx#stx-pair? _tl4413444777_)
                                          (let ((_e4413544780_
                                                 (gx#stx-e _tl4413444777_)))
                                            (let ((_tl4413744785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4413544780_)))
                                                  (_hd4413644783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4413544780_))))
                                              (if (gx#stx-null? _tl4413744785_)
                                                  (if (gx#stx-pair?
                                                       _tl4413144769_)
                                                      (let ((_e4413844788_
                                                             (gx#stx-e
                                                              _tl4413144769_)))
                                                        (let ((_tl4414044793_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4413844788_)))
                      (_hd4413944791_
                       (let () (declare (not safe)) (##car _e4413844788_))))
                  (if (gx#stx-pair? _hd4413944791_)
                      (let ((_e4414144796_ (gx#stx-e _hd4413944791_)))
                        (let ((_tl4414344801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4414144796_)))
                              (_hd4414244799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4414144796_))))
                          (if (gx#identifier? _hd4414244799_)
                              (if (gx#stx-eq? '%#call _hd4414244799_)
                                  (if (gx#stx-pair? _tl4414344801_)
                                      (let ((_e4414444804_
                                             (gx#stx-e _tl4414344801_)))
                                        (let ((_tl4414644809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4414444804_)))
                                              (_hd4414544807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4414444804_))))
                                          (if (gx#stx-pair? _hd4414544807_)
                                              (let ((_e4414744812_
                                                     (gx#stx-e
                                                      _hd4414544807_)))
                                                (let ((_tl4414944817_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4414744812_)))
                                                      (_hd4414844815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4414744812_))))
                                                  (if (gx#identifier?
                                                       _hd4414844815_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd4414844815_)
                                                          (if (gx#stx-pair?
                                                               _tl4414944817_)
                                                              (let ((_e4415044820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl4414944817_)))
                        (let ((_tl4415244825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4415044820_)))
                              (_hd4415144823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4415044820_))))
                          (if (gx#stx-null? _tl4415244825_)
                              (if (gx#stx-null? _tl4414044793_)
                                  (if (gx#stx-null? _tl4412844761_)
                                      (if (gx#stx-pair? _tl4412544753_)
                                          (let ((_e4415344828_
                                                 (gx#stx-e _tl4412544753_)))
                                            (let ((_tl4415544833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4415344828_)))
                                                  (_hd4415444831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4415344828_))))
                                              (if (gx#stx-null? _tl4415544833_)
                                                  (___match5640956410_
                                                   _e4410344888_
                                                   _hd4410444891_
                                                   _tl4410544893_
                                                   _e4412344748_
                                                   _hd4412444751_
                                                   _tl4412544753_
                                                   _e4412644756_
                                                   _hd4412744759_
                                                   _tl4412844761_
                                                   _e4412944764_
                                                   _hd4413044767_
                                                   _tl4413144769_
                                                   _e4413244772_
                                                   _hd4413344775_
                                                   _tl4413444777_
                                                   _e4413544780_
                                                   _hd4413644783_
                                                   _tl4413744785_
                                                   _e4413844788_
                                                   _hd4413944791_
                                                   _tl4414044793_
                                                   _e4414144796_
                                                   _hd4414244799_
                                                   _tl4414344801_
                                                   _e4414444804_
                                                   _hd4414544807_
                                                   _tl4414644809_
                                                   _e4414744812_
                                                   _hd4414844815_
                                                   _tl4414944817_
                                                   _e4415044820_
                                                   _hd4415144823_
                                                   _tl4415244825_
                                                   _e4415344828_
                                                   _hd4415444831_
                                                   _tl4415544833_)
                                                  (_g4409844231_))))
                                          (_g4409844231_))
                                      (if (gx#stx-pair? _tl4412544753_)
                                          (let ((_e4416444710_
                                                 (gx#stx-e _tl4412544753_)))
                                            (let ((_tl4416644715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4416444710_)))
                                                  (_hd4416544713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4416444710_))))
                                              (if (gx#stx-null? _tl4416644715_)
                                                  (___kont5627656277_
                                                   _hd4416544713_
                                                   _hd4412444751_)
                                                  (_g4409844231_))))
                                          (_g4409844231_)))
                                  (if (gx#stx-pair? _tl4412544753_)
                                      (let ((_e4416444710_
                                             (gx#stx-e _tl4412544753_)))
                                        (let ((_tl4416644715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4416444710_)))
                                              (_hd4416544713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4416444710_))))
                                          (if (gx#stx-null? _tl4416644715_)
                                              (___kont5627656277_
                                               _hd4416544713_
                                               _hd4412444751_)
                                              (_g4409844231_))))
                                      (_g4409844231_)))
                              (if (gx#stx-pair? _tl4412544753_)
                                  (let ((_e4416444710_
                                         (gx#stx-e _tl4412544753_)))
                                    (let ((_tl4416644715_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4416444710_)))
                                          (_hd4416544713_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4416444710_))))
                                      (if (gx#stx-null? _tl4416644715_)
                                          (___kont5627656277_
                                           _hd4416544713_
                                           _hd4412444751_)
                                          (_g4409844231_))))
                                  (_g4409844231_)))))
                      (if (gx#stx-pair? _tl4412544753_)
                          (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                            (let ((_tl4416644715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4416444710_)))
                                  (_hd4416544713_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4416444710_))))
                              (if (gx#stx-null? _tl4416644715_)
                                  (___kont5627656277_
                                   _hd4416544713_
                                   _hd4412444751_)
                                  (_g4409844231_))))
                          (_g4409844231_)))
                  (if (gx#stx-pair? _tl4412544753_)
                      (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                        (let ((_tl4416644715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4416444710_)))
                              (_hd4416544713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4416444710_))))
                          (if (gx#stx-null? _tl4416644715_)
                              (___kont5627656277_
                               _hd4416544713_
                               _hd4412444751_)
                              (_g4409844231_))))
                      (_g4409844231_)))
              (if (gx#stx-pair? _tl4412544753_)
                  (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                    (let ((_tl4416644715_
                           (let () (declare (not safe)) (##cdr _e4416444710_)))
                          (_hd4416544713_
                           (let ()
                             (declare (not safe))
                             (##car _e4416444710_))))
                      (if (gx#stx-null? _tl4416644715_)
                          (___kont5627656277_ _hd4416544713_ _hd4412444751_)
                          (_g4409844231_))))
                  (_g4409844231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl4412544753_)
                                                  (let ((_e4416444710_
                                                         (gx#stx-e
                                                          _tl4412544753_)))
                                                    (let ((_tl4416644715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4416444710_)))
                                                          (_hd4416544713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4416444710_))))
                                                      (if (gx#stx-null?
                                                           _tl4416644715_)
                                                          (___kont5627656277_
                                                           _hd4416544713_
                                                           _hd4412444751_)
                                                          (_g4409844231_))))
                                                  (_g4409844231_)))))
                                      (if (gx#stx-pair? _tl4412544753_)
                                          (let ((_e4416444710_
                                                 (gx#stx-e _tl4412544753_)))
                                            (let ((_tl4416644715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4416444710_)))
                                                  (_hd4416544713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4416444710_))))
                                              (if (gx#stx-null? _tl4416644715_)
                                                  (___kont5627656277_
                                                   _hd4416544713_
                                                   _hd4412444751_)
                                                  (_g4409844231_))))
                                          (_g4409844231_)))
                                  (if (gx#stx-pair? _tl4412544753_)
                                      (let ((_e4416444710_
                                             (gx#stx-e _tl4412544753_)))
                                        (let ((_tl4416644715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4416444710_)))
                                              (_hd4416544713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4416444710_))))
                                          (if (gx#stx-null? _tl4416644715_)
                                              (___kont5627656277_
                                               _hd4416544713_
                                               _hd4412444751_)
                                              (_g4409844231_))))
                                      (_g4409844231_)))
                              (if (gx#stx-pair? _tl4412544753_)
                                  (let ((_e4416444710_
                                         (gx#stx-e _tl4412544753_)))
                                    (let ((_tl4416644715_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4416444710_)))
                                          (_hd4416544713_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4416444710_))))
                                      (if (gx#stx-null? _tl4416644715_)
                                          (___kont5627656277_
                                           _hd4416544713_
                                           _hd4412444751_)
                                          (_g4409844231_))))
                                  (_g4409844231_)))))
                      (if (gx#stx-pair? _tl4412544753_)
                          (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                            (let ((_tl4416644715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4416444710_)))
                                  (_hd4416544713_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4416444710_))))
                              (if (gx#stx-null? _tl4416644715_)
                                  (___kont5627656277_
                                   _hd4416544713_
                                   _hd4412444751_)
                                  (_g4409844231_))))
                          (_g4409844231_)))))
              (if (gx#stx-pair? _tl4412544753_)
                  (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                    (let ((_tl4416644715_
                           (let () (declare (not safe)) (##cdr _e4416444710_)))
                          (_hd4416544713_
                           (let ()
                             (declare (not safe))
                             (##car _e4416444710_))))
                      (if (gx#stx-null? _tl4416644715_)
                          (___kont5627656277_ _hd4416544713_ _hd4412444751_)
                          (_g4409844231_))))
                  (_g4409844231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4412544753_)
                                                      (let ((_e4416444710_
                                                             (gx#stx-e
                                                              _tl4412544753_)))
                                                        (let ((_tl4416644715_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4416444710_)))
                      (_hd4416544713_
                       (let () (declare (not safe)) (##car _e4416444710_))))
                  (if (gx#stx-null? _tl4416644715_)
                      (___kont5627656277_ _hd4416544713_ _hd4412444751_)
                      (_g4409844231_))))
              (_g4409844231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4412544753_)
                                              (let ((_e4416444710_
                                                     (gx#stx-e
                                                      _tl4412544753_)))
                                                (let ((_tl4416644715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4416444710_)))
                                                      (_hd4416544713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4416444710_))))
                                                  (if (gx#stx-null?
                                                       _tl4416644715_)
                                                      (___kont5627656277_
                                                       _hd4416544713_
                                                       _hd4412444751_)
                                                      (_g4409844231_))))
                                              (_g4409844231_)))))
                                  (if (gx#stx-pair? _tl4412544753_)
                                      (let ((_e4416444710_
                                             (gx#stx-e _tl4412544753_)))
                                        (let ((_tl4416644715_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4416444710_)))
                                              (_hd4416544713_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4416444710_))))
                                          (if (gx#stx-null? _tl4416644715_)
                                              (___kont5627656277_
                                               _hd4416544713_
                                               _hd4412444751_)
                                              (_g4409844231_))))
                                      (_g4409844231_)))))
                          (if (gx#stx-pair? _tl4412544753_)
                              (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                                (let ((_tl4416644715_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4416444710_)))
                                      (_hd4416544713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4416444710_))))
                                  (if (gx#stx-null? _tl4416644715_)
                                      (___kont5627656277_
                                       _hd4416544713_
                                       _hd4412444751_)
                                      (_g4409844231_))))
                              (_g4409844231_)))))
                  (if (gx#stx-pair? _tl4412544753_)
                      (let ((_e4416444710_ (gx#stx-e _tl4412544753_)))
                        (let ((_tl4416644715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4416444710_)))
                              (_hd4416544713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4416444710_))))
                          (if (gx#stx-null? _tl4416644715_)
                              (___kont5627656277_
                               _hd4416544713_
                               _hd4412444751_)
                              (_g4409844231_))))
                      (_g4409844231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4409844231_))
                                              (if (gx#stx-eq?
                                                   '%#letrec-values
                                                   _hd4410444891_)
                                                  (if (gx#stx-pair?
                                                       _tl4410544893_)
                                                      (let ((_e4417344614_
                                                             (gx#stx-e
                                                              _tl4410544893_)))
                                                        (let ((_tl4417544619_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4417344614_)))
                      (_hd4417444617_
                       (let () (declare (not safe)) (##car _e4417344614_))))
                  (if (gx#stx-pair? _hd4417444617_)
                      (let ((_e4417644622_ (gx#stx-e _hd4417444617_)))
                        (let ((_tl4417844627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4417644622_)))
                              (_hd4417744625_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4417644622_))))
                          (if (gx#stx-pair? _hd4417744625_)
                              (let ((_e4417944630_ (gx#stx-e _hd4417744625_)))
                                (let ((_tl4418144635_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4417944630_)))
                                      (_hd4418044633_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4417944630_))))
                                  (if (gx#stx-pair? _hd4418044633_)
                                      (let ((_e4418244638_
                                             (gx#stx-e _hd4418044633_)))
                                        (let ((_tl4418444643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4418244638_)))
                                              (_hd4418344641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4418244638_))))
                                          (if (gx#stx-null? _tl4418444643_)
                                              (if (gx#stx-pair? _tl4418144635_)
                                                  (let ((_e4418544646_
                                                         (gx#stx-e
                                                          _tl4418144635_)))
                                                    (let ((_tl4418744651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4418544646_)))
                                                          (_hd4418644649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4418544646_))))
                                                      (if (gx#stx-null?
                                                           _tl4418744651_)
                                                          (if (gx#stx-null?
                                                               _tl4417844627_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4417544619_)
                          (let ((_e4418844654_ (gx#stx-e _tl4417544619_)))
                            (let ((_tl4419044659_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4418844654_)))
                                  (_hd4418944657_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4418844654_))))
                              (if (gx#stx-null? _tl4419044659_)
                                  (___kont5627856279_
                                   _hd4418944657_
                                   _hd4418644649_
                                   _hd4418344641_)
                                  (_g4409844231_))))
                          (_g4409844231_))
                      (_g4409844231_))
                  (_g4409844231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4409844231_))
                                              (_g4409844231_))))
                                      (_g4409844231_))))
                              (_g4409844231_))))
                      (_g4409844231_))))
              (_g4409844231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _hd4410444891_)
                                                      (if (gx#stx-pair?
                                                           _tl4410544893_)
                                                          (let ((_e4419744244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4410544893_)))
                    (let ((_tl4419944249_
                           (let () (declare (not safe)) (##cdr _e4419744244_)))
                          (_hd4419844247_
                           (let ()
                             (declare (not safe))
                             (##car _e4419744244_))))
                      (if (gx#stx-pair? _hd4419844247_)
                          (let ((_e4420044252_ (gx#stx-e _hd4419844247_)))
                            (let ((_tl4420244257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4420044252_)))
                                  (_hd4420144255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4420044252_))))
                              (if (gx#identifier? _hd4420144255_)
                                  (if (gx#stx-eq? '%#lambda _hd4420144255_)
                                      (if (gx#stx-pair? _tl4420244257_)
                                          (let ((_e4420344260_
                                                 (gx#stx-e _tl4420244257_)))
                                            (let ((_tl4420544265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4420344260_)))
                                                  (_hd4420444263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4420344260_))))
                                              (if (gx#stx-pair/null?
                                                   _hd4420444263_)
                                                  (let ((___splice5628256283_
                                                         (gx#syntax-split-splice
                                                          _hd4420444263_
                                                          '0)))
                                                    (let ((_tl4420844270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5628256283_
                                                              '1)))
                                                          (_target4420644268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice5628256283_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4420844270_)
                                                          (___match5652756528_
                                                           _e4410344888_
                                                           _hd4410444891_
                                                           _tl4410544893_
                                                           _e4419744244_
                                                           _hd4419844247_
                                                           _tl4419944249_
                                                           _e4420044252_
                                                           _hd4420144255_
                                                           _tl4420244257_
                                                           _e4420344260_
                                                           _hd4420444263_
                                                           _tl4420544265_
                                                           ___splice5628256283_
                                                           _target4420644268_
                                                           _tl4420844270_)
                                                          (_g4409844231_))))
                                                  (_g4409844231_))))
                                          (_g4409844231_))
                                      (_g4409844231_))
                                  (_g4409844231_))))
                          (_g4409844231_))))
                  (_g4409844231_))
              (_g4409844231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g4409844231_))))
                              (_g4409844231_)))))))
                 (_xform-loop-e43706_
                  (lambda (_expr43915_
                           _kont-id43916_
                           _kont-box43917_
                           _negation-id43918_)
                    (let* ((_g4392043960_
                            (lambda (_g4392143957_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4392143957_)))
                           (_g4391944086_
                            (lambda (_g4392143963_)
                              (if (gx#stx-pair? _g4392143963_)
                                  (let ((_e4392643965_
                                         (gx#stx-e _g4392143963_)))
                                    (let ((_hd4392743968_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4392643965_)))
                                          (_tl4392843970_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4392643965_))))
                                      (if (gx#identifier? _hd4392743968_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4392743968_)
                                              (if (gx#stx-pair? _tl4392843970_)
                                                  (let ((_e4392943973_
                                                         (gx#stx-e
                                                          _tl4392843970_)))
                                                    (let ((_hd4393043976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4392943973_)))
                                                          (_tl4393143978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4392943973_))))
                                                      (if (gx#stx-pair/null?
                                                           _hd4393043976_)
                                                          (let ((_g56845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4393043976_ '0)))
                    (begin
                      (let ((_g56846_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g56845_)
                                   (##vector-length _g56845_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g56846_ 2)))
                            (error "Context expects 2 values" _g56846_)))
                      (let ((_target4393243981_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56845_ 0)))
                            (_tl4393443983_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g56845_ 1))))
                        (if (gx#stx-null? _tl4393443983_)
                            (letrec ((_loop4393543986_
                                      (lambda (_hd4393343989_ _id4393943991_)
                                        (if (gx#stx-pair? _hd4393343989_)
                                            (let ((_e4393643994_
                                                   (gx#stx-e _hd4393343989_)))
                                              (let ((_lp-hd4393743997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4393643994_)))
                                                    (_lp-tl4393843999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4393643994_))))
                                                (_loop4393543986_
                                                 _lp-tl4393843999_
                                                 (cons _lp-hd4393743997_
                                                       _id4393943991_))))
                                            (let ((_id4394044002_
                                                   (reverse _id4393943991_)))
                                              (if (gx#stx-pair? _tl4393143978_)
                                                  (let ((_e4394144005_
                                                         (gx#stx-e
                                                          _tl4393143978_)))
                                                    (let ((_hd4394244008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4394144005_)))
                                                          (_tl4394344010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4394144005_))))
                                                      (if (gx#stx-pair?
                                                           _hd4394244008_)
                                                          (let ((_e4394444013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4394244008_)))
                    (let ((_hd4394544016_
                           (let () (declare (not safe)) (##car _e4394444013_)))
                          (_tl4394644018_
                           (let ()
                             (declare (not safe))
                             (##cdr _e4394444013_))))
                      (if (gx#identifier? _hd4394544016_)
                          (if (gx#stx-eq? '%#if _hd4394544016_)
                              (if (gx#stx-pair? _tl4394644018_)
                                  (let ((_e4394744021_
                                         (gx#stx-e _tl4394644018_)))
                                    (let ((_hd4394844024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4394744021_)))
                                          (_tl4394944026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4394744021_))))
                                      (if (gx#stx-pair? _tl4394944026_)
                                          (let ((_e4395044029_
                                                 (gx#stx-e _tl4394944026_)))
                                            (let ((_hd4395144032_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4395044029_)))
                                                  (_tl4395244034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4395044029_))))
                                              (if (gx#stx-pair? _tl4395244034_)
                                                  (let ((_e4395344037_
                                                         (gx#stx-e
                                                          _tl4395244034_)))
                                                    (let ((_hd4395444040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4395344037_)))
                                                          (_tl4395544042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4395344037_))))
                                                      (if (gx#stx-null?
                                                           _tl4395544042_)
                                                          (if (gx#stx-null?
                                                               _tl4394344010_)
                                                              ((lambda (_L44045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L44046_
                                _L44047_
                                _L44048_)
                         (let ((_E44077_
                                (_xform-e43705_
                                 _L44045_
                                 _kont-id43916_
                                 _kont-box43917_
                                 _negation-id43918_)))
                           (cons '%#lambda
                                 (cons (foldr1 (lambda (_g4407844081_
                                                        _g4407944083_)
                                                 (cons _g4407844081_
                                                       _g4407944083_))
                                               '()
                                               _L44048_)
                                       (cons (cons '%#if
                                                   (cons _L44047_
                                                         (cons _L44046_
                                                               (cons _E44077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _hd4395444040_
                       _hd4395144032_
                       _hd4394844024_
                       _id4394044002_)
                      (_g4392043960_ _g4392143963_))
                  (_g4392043960_ _g4392143963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4392043960_
                                                   _g4392143963_))))
                                          (_g4392043960_ _g4392143963_))))
                                  (_g4392043960_ _g4392143963_))
                              (_g4392043960_ _g4392143963_))
                          (_g4392043960_ _g4392143963_))))
                  (_g4392043960_ _g4392143963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4392043960_
                                                   _g4392143963_)))))))
                              (_loop4393543986_ _target4393243981_ '()))
                            (_g4392043960_ _g4392143963_)))))
                  (_g4392043960_ _g4392143963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4392043960_
                                                   _g4392143963_))
                                              (_g4392043960_ _g4392143963_))
                                          (_g4392043960_ _g4392143963_))))
                                  (_g4392043960_ _g4392143963_)))))
                      (_g4391944086_ _expr43915_))))
                 (_clause-e43707_
                  (lambda (_clause-lambda43785_ _kont-id43786_ _rest43787_)
                    (letrec* ((_kont-box43789_ (box '#f)))
                      (let* ((_negation-id43829_
                              (let* ((_rest4379043800_ _rest43787_)
                                     (_else4379243808_
                                      (lambda () _negation-id43703_))
                                     (_K4379443814_
                                      (lambda (_clause43811_ _clause-id43812_)
                                        _clause-id43812_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _rest4379043800_))
                                    (let ((_hd4379543817_
                                           (let ()
                                             (declare (not safe))
                                             (##car _rest4379043800_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd4379543817_))
                                          (let ((_hd4379743820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd4379543817_)))
                                                (_tl4379843822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd4379543817_))))
                                            (let* ((_clause-id43825_
                                                    _hd4379743820_)
                                                   (_clause43827_
                                                    _tl4379843822_))
                                              (_K4379443814_
                                               _clause43827_
                                               _clause-id43825_)))
                                          (_else4379243808_)))
                                    (_else4379243808_))))
                             (_g4383143851_
                              (lambda (_g4383243848_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4383243848_)))
                             (_g4383043912_
                              (lambda (_g4383243854_)
                                (if (gx#stx-pair? _g4383243854_)
                                    (let ((_e4383543856_
                                           (gx#stx-e _g4383243854_)))
                                      (let ((_hd4383643859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4383543856_)))
                                            (_tl4383743861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4383543856_))))
                                        (if (gx#identifier? _hd4383643859_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd4383643859_)
                                                (if (gx#stx-pair?
                                                     _tl4383743861_)
                                                    (let ((_e4383843864_
                                                           (gx#stx-e
                                                            _tl4383743861_)))
                                                      (let ((_hd4383943867_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4383843864_)))
                    (_tl4384043869_
                     (let () (declare (not safe)) (##cdr _e4383843864_))))
                (if (gx#stx-pair? _hd4383943867_)
                    (let ((_e4384143872_ (gx#stx-e _hd4383943867_)))
                      (let ((_hd4384243875_
                             (let ()
                               (declare (not safe))
                               (##car _e4384143872_)))
                            (_tl4384343877_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4384143872_))))
                        (if (gx#stx-null? _tl4384343877_)
                            (if (gx#stx-pair? _tl4384043869_)
                                (let ((_e4384443880_
                                       (gx#stx-e _tl4384043869_)))
                                  (let ((_hd4384543883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4384443880_)))
                                        (_tl4384643885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4384443880_))))
                                    (if (gx#stx-null? _tl4384643885_)
                                        ((lambda (_L43888_ _L43889_)
                                           (let ((_body43910_
                                                  (_xform-e43705_
                                                   _L43888_
                                                   _kont-id43786_
                                                   _kont-box43789_
                                                   _negation-id43829_)))
                                             (values (cons '%#lambda
                                                           (cons (cons _L43889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _body43910_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox _kont-box43789_))))
                                         _hd4384543883_
                                         _hd4384243875_)
                                        (_g4383143851_ _g4383243854_))))
                                (_g4383143851_ _g4383243854_))
                            (_g4383143851_ _g4383243854_))))
                    (_g4383143851_ _g4383243854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4383143851_
                                                     _g4383243854_))
                                                (_g4383143851_ _g4383243854_))
                                            (_g4383143851_ _g4383243854_))))
                                    (_g4383143851_ _g4383243854_)))))
                        (_g4383043912_ _clause-lambda43785_))))))
          (let _lp43709_ ((_rest43711_ _clauses43702_)
                          (_clauses43712_ '())
                          (_konts43713_ '()))
            (let* ((_rest4371443722_ _rest43711_)
                   (_else4371643730_
                    (lambda ()
                      (values (reverse _clauses43712_)
                              (reverse _konts43713_))))
                   (_K4371843773_
                    (lambda (_rest43733_ _clause43734_)
                      (let* ((_clause4373543742_ _clause43734_)
                             (_E4373743746_
                              (lambda ()
                                (error '"No clause matching"
                                       _clause4373543742_)))
                             (_K4373843761_
                              (lambda (_clause-lambda43749_ _clause-id43750_)
                                (let* ((_id43752_
                                        (make-symbol (gensym '__kont)))
                                       (_id43754_
                                        (gx#core-quote-syntax__0 _id43752_))
                                       (_g56847_
                                        (gx#core-bind-runtime!__0 _id43754_))
                                       (_g56848_
                                        (_clause-e43707_
                                         _clause-lambda43749_
                                         _id43754_
                                         _rest43733_)))
                                  (begin
                                    (let ((_g56849_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g56848_)
                                                 (##vector-length _g56848_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g56849_ 2)))
                                          (error "Context expects 2 values"
                                                 _g56849_)))
                                    (let ((_clause-lambda43757_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g56848_ 0)))
                                          (_kont43758_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g56848_ 1))))
                                      (let ()
                                        (_lp43709_
                                         _rest43733_
                                         (cons (cons _clause-id43750_
                                                     _clause-lambda43757_)
                                               _clauses43712_)
                                         (cons (cons _id43754_ _kont43758_)
                                               _konts43713_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _clause4373543742_))
                            (let ((_hd4373943764_
                                   (let ()
                                     (declare (not safe))
                                     (##car _clause4373543742_)))
                                  (_tl4374043766_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _clause4373543742_))))
                              (let* ((_clause-id43769_ _hd4373943764_)
                                     (_clause-lambda43771_ _tl4374043766_))
                                (_K4373843761_
                                 _clause-lambda43771_
                                 _clause-id43769_)))
                            (_E4373743746_))))))
              (if (let () (declare (not safe)) (##pair? _rest4371443722_))
                  (let ((_hd4371943776_
                         (let ()
                           (declare (not safe))
                           (##car _rest4371443722_)))
                        (_tl4372043778_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest4371443722_))))
                    (let* ((_clause43781_ _hd4371943776_)
                           (_rest43783_ _tl4372043778_))
                      (_K4371843773_ _rest43783_ _clause43781_)))
                  (_else4371643730_)))))))
    (define gxc#optimize-syntax-case-closure
      (lambda (_clause43046_ _negation43047_ _target43048_)
        (letrec ((_closure-e43050_
                  (lambda (_expr43167_)
                    (let* ((___stx5653056531_ _expr43167_)
                           (_g4317443289_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx5653056531_))))
                      (let ((___kont5653256533_
                             (lambda (_L43680_ _L43681_ _L43682_)
                               (cons '%#if
                                     (cons _L43682_
                                           (cons (_closure-e43050_ _L43681_)
                                                 (cons (_closure-e43050_
                                                        _L43680_)
                                                       '()))))))
                            (___kont5653456535_
                             (lambda (_L43628_ _L43629_)
                               (cons '%#let-values
                                     (cons _L43629_
                                           (cons (_closure-e43050_ _L43628_)
                                                 '())))))
                            (___kont5653656537_
                             (lambda (_L43574_ _L43575_ _L43576_)
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L43576_ '())
                                                       (cons (_closure-e43050_
                                                              _L43575_)
                                                             '()))
                                                 '())
                                           (cons _L43574_ '())))))
                            (___kont5653856539_
                             (lambda (_L43487_ _L43488_)
                               (cons '%#lambda
                                     (cons (foldr1 (lambda (_g4350543508_
                                                            _g4350643510_)
                                                     (cons _g4350543508_
                                                           _g4350643510_))
                                                   '()
                                                   _L43488_)
                                           (cons (_closure-e43050_ _L43487_)
                                                 '())))))
                            (___kont5654256543_
                             (lambda (_L43417_)
                               (cons '%#call
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L43417_ '()))
                                           '()))))
                            (___kont5654456545_
                             (lambda (_L43350_ _L43351_) _expr43167_)))
                        (let* ((___match5676356764_
                                (lambda (_e4326443294_
                                         _hd4326543297_
                                         _tl4326643299_
                                         _e4326743302_
                                         _hd4326843305_
                                         _tl4326943307_
                                         _e4327043310_
                                         _hd4327143313_
                                         _tl4327243315_
                                         _e4327343318_
                                         _hd4327443321_
                                         _tl4327543323_
                                         ___splice5654656547_
                                         _target4327643326_
                                         _tl4327843328_)
                                  (letrec ((_loop4327943331_
                                            (lambda (_hd4327743334_
                                                     _arg4328343336_)
                                              (if (gx#stx-pair? _hd4327743334_)
                                                  (let ((_e4328043339_
                                                         (gx#stx-e
                                                          _hd4327743334_)))
                                                    (let ((_lp-tl4328243344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4328043339_)))
                                                          (_lp-hd4328143342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4328043339_))))
                                                      (_loop4327943331_
                                                       _lp-tl4328243344_
                                                       (cons _lp-hd4328143342_
                                                             _arg4328343336_))))
                                                  (let ((_arg4328443347_
                                                         (reverse _arg4328343336_)))
                                                    (___kont5654456545_
                                                     _arg4328443347_
                                                     _hd4327443321_))))))
                                    (_loop4327943331_
                                     _target4327643326_
                                     '()))))
                               (___match5672156722_
                                (lambda (_e4324743377_
                                         _hd4324843380_
                                         _tl4324943382_
                                         _e4325043385_
                                         _hd4325143388_
                                         _tl4325243390_
                                         _e4325343393_
                                         _hd4325443396_
                                         _tl4325543398_
                                         _e4325643401_
                                         _hd4325743404_
                                         _tl4325843406_
                                         _e4325943409_
                                         _hd4326043412_
                                         _tl4326143414_)
                                  (let ((_L43417_ _hd4325743404_))
                                    (if (gx#free-identifier=?
                                         _L43417_
                                         _negation43047_)
                                        (___kont5654256543_ _L43417_)
                                        (if (gx#stx-pair/null? _tl4325243390_)
                                            (let ((___splice5654656547_
                                                   (gx#syntax-split-splice
                                                    _tl4325243390_
                                                    '0)))
                                              (let ((_tl4327843328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5654656547_
                                                        '1)))
                                                    (_target4327643326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice5654656547_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4327843328_)
                                                    (___match5676356764_
                                                     _e4324743377_
                                                     _hd4324843380_
                                                     _tl4324943382_
                                                     _e4325043385_
                                                     _hd4325143388_
                                                     _tl4325243390_
                                                     _e4325343393_
                                                     _hd4325443396_
                                                     _tl4325543398_
                                                     _e4325643401_
                                                     _hd4325743404_
                                                     _tl4325843406_
                                                     ___splice5654656547_
                                                     _target4327643326_
                                                     _tl4327843328_)
                                                    (_g4317443289_))))
                                            (_g4317443289_))))))
                               (___match5667956680_
                                (lambda (_e4322843439_
                                         _hd4322943442_
                                         _tl4323043444_
                                         _e4323143447_
                                         _hd4323243450_
                                         _tl4323343452_
                                         ___splice5654056541_
                                         _target4323443455_
                                         _tl4323643457_)
                                  (letrec ((_loop4323743460_
                                            (lambda (_hd4323543463_
                                                     _id4324143465_)
                                              (if (gx#stx-pair? _hd4323543463_)
                                                  (let ((_e4323843468_
                                                         (gx#stx-e
                                                          _hd4323543463_)))
                                                    (let ((_lp-tl4324043473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4323843468_)))
                                                          (_lp-hd4323943471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4323843468_))))
                                                      (_loop4323743460_
                                                       _lp-tl4324043473_
                                                       (cons _lp-hd4323943471_
                                                             _id4324143465_))))
                                                  (let ((_id4324243476_
                                                         (reverse _id4324143465_)))
                                                    (if (gx#stx-pair?
                                                         _tl4323343452_)
                                                        (let ((_e4324343479_
                                                               (gx#stx-e
                                                                _tl4323343452_)))
                                                          (let ((_tl4324543484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4324343479_)))
                        (_hd4324443482_
                         (let () (declare (not safe)) (##car _e4324343479_))))
                    (if (gx#stx-null? _tl4324543484_)
                        (___kont5653856539_ _hd4324443482_ _id4324243476_)
                        (_g4317443289_))))
                (_g4317443289_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop4323743460_
                                     _target4323443455_
                                     '())))))
                          (if (gx#stx-pair? ___stx5653056531_)
                              (let ((_e4317943648_
                                     (gx#stx-e ___stx5653056531_)))
                                (let ((_tl4318143653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4317943648_)))
                                      (_hd4318043651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4317943648_))))
                                  (if (gx#identifier? _hd4318043651_)
                                      (if (gx#stx-eq? '%#if _hd4318043651_)
                                          (if (gx#stx-pair? _tl4318143653_)
                                              (let ((_e4318243656_
                                                     (gx#stx-e
                                                      _tl4318143653_)))
                                                (let ((_tl4318443661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4318243656_)))
                                                      (_hd4318343659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4318243656_))))
                                                  (if (gx#stx-pair?
                                                       _tl4318443661_)
                                                      (let ((_e4318543664_
                                                             (gx#stx-e
                                                              _tl4318443661_)))
                                                        (let ((_tl4318743669_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4318543664_)))
                      (_hd4318643667_
                       (let () (declare (not safe)) (##car _e4318543664_))))
                  (if (gx#stx-pair? _tl4318743669_)
                      (let ((_e4318843672_ (gx#stx-e _tl4318743669_)))
                        (let ((_tl4319043677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4318843672_)))
                              (_hd4318943675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4318843672_))))
                          (if (gx#stx-null? _tl4319043677_)
                              (___kont5653256533_
                               _hd4318943675_
                               _hd4318643667_
                               _hd4318343659_)
                              (_g4317443289_))))
                      (_g4317443289_))))
              (_g4317443289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4317443289_))
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd4318043651_)
                                              (if (gx#stx-pair? _tl4318143653_)
                                                  (let ((_e4319643612_
                                                         (gx#stx-e
                                                          _tl4318143653_)))
                                                    (let ((_tl4319843617_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4319643612_)))
                                                          (_hd4319743615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4319643612_))))
                                                      (if (gx#stx-pair?
                                                           _tl4319843617_)
                                                          (let ((_e4319943620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4319843617_)))
                    (let ((_tl4320143625_
                           (let () (declare (not safe)) (##cdr _e4319943620_)))
                          (_hd4320043623_
                           (let ()
                             (declare (not safe))
                             (##car _e4319943620_))))
                      (if (gx#stx-null? _tl4320143625_)
                          (___kont5653456535_ _hd4320043623_ _hd4319743615_)
                          (_g4317443289_))))
                  (_g4317443289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4317443289_))
                                              (if (gx#stx-eq?
                                                   '%#letrec-values
                                                   _hd4318043651_)
                                                  (if (gx#stx-pair?
                                                       _tl4318143653_)
                                                      (let ((_e4320843526_
                                                             (gx#stx-e
                                                              _tl4318143653_)))
                                                        (let ((_tl4321043531_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4320843526_)))
                      (_hd4320943529_
                       (let () (declare (not safe)) (##car _e4320843526_))))
                  (if (gx#stx-pair? _hd4320943529_)
                      (let ((_e4321143534_ (gx#stx-e _hd4320943529_)))
                        (let ((_tl4321343539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4321143534_)))
                              (_hd4321243537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4321143534_))))
                          (if (gx#stx-pair? _hd4321243537_)
                              (let ((_e4321443542_ (gx#stx-e _hd4321243537_)))
                                (let ((_tl4321643547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4321443542_)))
                                      (_hd4321543545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4321443542_))))
                                  (if (gx#stx-pair? _hd4321543545_)
                                      (let ((_e4321743550_
                                             (gx#stx-e _hd4321543545_)))
                                        (let ((_tl4321943555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4321743550_)))
                                              (_hd4321843553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4321743550_))))
                                          (if (gx#stx-null? _tl4321943555_)
                                              (if (gx#stx-pair? _tl4321643547_)
                                                  (let ((_e4322043558_
                                                         (gx#stx-e
                                                          _tl4321643547_)))
                                                    (let ((_tl4322243563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4322043558_)))
                                                          (_hd4322143561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4322043558_))))
                                                      (if (gx#stx-null?
                                                           _tl4322243563_)
                                                          (if (gx#stx-null?
                                                               _tl4321343539_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4321043531_)
                          (let ((_e4322343566_ (gx#stx-e _tl4321043531_)))
                            (let ((_tl4322543571_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4322343566_)))
                                  (_hd4322443569_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4322343566_))))
                              (if (gx#stx-null? _tl4322543571_)
                                  (___kont5653656537_
                                   _hd4322443569_
                                   _hd4322143561_
                                   _hd4321843553_)
                                  (_g4317443289_))))
                          (_g4317443289_))
                      (_g4317443289_))
                  (_g4317443289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4317443289_))
                                              (_g4317443289_))))
                                      (_g4317443289_))))
                              (_g4317443289_))))
                      (_g4317443289_))))
              (_g4317443289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-eq?
                                                       '%#lambda
                                                       _hd4318043651_)
                                                      (if (gx#stx-pair?
                                                           _tl4318143653_)
                                                          (let ((_e4323143447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4318143653_)))
                    (let ((_tl4323343452_
                           (let () (declare (not safe)) (##cdr _e4323143447_)))
                          (_hd4323243450_
                           (let ()
                             (declare (not safe))
                             (##car _e4323143447_))))
                      (if (gx#stx-pair/null? _hd4323243450_)
                          (let ((___splice5654056541_
                                 (gx#syntax-split-splice _hd4323243450_ '0)))
                            (let ((_tl4323643457_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5654056541_ '1)))
                                  (_target4323443455_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice5654056541_ '0))))
                              (if (gx#stx-null? _tl4323643457_)
                                  (___match5667956680_
                                   _e4317943648_
                                   _hd4318043651_
                                   _tl4318143653_
                                   _e4323143447_
                                   _hd4323243450_
                                   _tl4323343452_
                                   ___splice5654056541_
                                   _target4323443455_
                                   _tl4323643457_)
                                  (_g4317443289_))))
                          (_g4317443289_))))
                  (_g4317443289_))
              (if (gx#stx-eq? '%#call _hd4318043651_)
                  (if (gx#stx-pair? _tl4318143653_)
                      (let ((_e4325043385_ (gx#stx-e _tl4318143653_)))
                        (let ((_tl4325243390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4325043385_)))
                              (_hd4325143388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4325043385_))))
                          (if (gx#stx-pair? _hd4325143388_)
                              (let ((_e4325343393_ (gx#stx-e _hd4325143388_)))
                                (let ((_tl4325543398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4325343393_)))
                                      (_hd4325443396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4325343393_))))
                                  (if (gx#identifier? _hd4325443396_)
                                      (if (gx#stx-eq? '%#ref _hd4325443396_)
                                          (if (gx#stx-pair? _tl4325543398_)
                                              (let ((_e4325643401_
                                                     (gx#stx-e
                                                      _tl4325543398_)))
                                                (let ((_tl4325843406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4325643401_)))
                                                      (_hd4325743404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4325643401_))))
                                                  (if (gx#stx-null?
                                                       _tl4325843406_)
                                                      (if (gx#stx-pair?
                                                           _tl4325243390_)
                                                          (let ((_e4325943409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4325243390_)))
                    (let ((_tl4326143414_
                           (let () (declare (not safe)) (##cdr _e4325943409_)))
                          (_hd4326043412_
                           (let ()
                             (declare (not safe))
                             (##car _e4325943409_))))
                      (if (gx#stx-null? _tl4326143414_)
                          (___match5672156722_
                           _e4317943648_
                           _hd4318043651_
                           _tl4318143653_
                           _e4325043385_
                           _hd4325143388_
                           _tl4325243390_
                           _e4325343393_
                           _hd4325443396_
                           _tl4325543398_
                           _e4325643401_
                           _hd4325743404_
                           _tl4325843406_
                           _e4325943409_
                           _hd4326043412_
                           _tl4326143414_)
                          (if (gx#stx-pair/null? _tl4325243390_)
                              (let ((___splice5654656547_
                                     (gx#syntax-split-splice
                                      _tl4325243390_
                                      '0)))
                                (let ((_tl4327843328_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5654656547_
                                          '1)))
                                      (_target4327643326_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice5654656547_
                                          '0))))
                                  (if (gx#stx-null? _tl4327843328_)
                                      (___match5676356764_
                                       _e4317943648_
                                       _hd4318043651_
                                       _tl4318143653_
                                       _e4325043385_
                                       _hd4325143388_
                                       _tl4325243390_
                                       _e4325343393_
                                       _hd4325443396_
                                       _tl4325543398_
                                       _e4325643401_
                                       _hd4325743404_
                                       _tl4325843406_
                                       ___splice5654656547_
                                       _target4327643326_
                                       _tl4327843328_)
                                      (_g4317443289_))))
                              (_g4317443289_)))))
                  (if (gx#stx-pair/null? _tl4325243390_)
                      (let ((___splice5654656547_
                             (gx#syntax-split-splice _tl4325243390_ '0)))
                        (let ((_tl4327843328_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5654656547_ '1)))
                              (_target4327643326_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice5654656547_ '0))))
                          (if (gx#stx-null? _tl4327843328_)
                              (___match5676356764_
                               _e4317943648_
                               _hd4318043651_
                               _tl4318143653_
                               _e4325043385_
                               _hd4325143388_
                               _tl4325243390_
                               _e4325343393_
                               _hd4325443396_
                               _tl4325543398_
                               _e4325643401_
                               _hd4325743404_
                               _tl4325843406_
                               ___splice5654656547_
                               _target4327643326_
                               _tl4327843328_)
                              (_g4317443289_))))
                      (_g4317443289_)))
              (_g4317443289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4317443289_))
                                          (_g4317443289_))
                                      (_g4317443289_))))
                              (_g4317443289_))))
                      (_g4317443289_))
                  (_g4317443289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_g4317443289_))))
                              (_g4317443289_))))))))
          (let* ((_clause4305143058_ _clause43046_)
                 (_E4305343062_
                  (lambda () (error '"No clause matching" _clause4305143058_)))
                 (_K4305443155_
                  (lambda (_kont43065_ _id43066_)
                    (let* ((_g4306843088_
                            (lambda (_g4306943085_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4306943085_)))
                           (_g4306743152_
                            (lambda (_g4306943091_)
                              (if (gx#stx-pair? _g4306943091_)
                                  (let ((_e4307243093_
                                         (gx#stx-e _g4306943091_)))
                                    (let ((_hd4307343096_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4307243093_)))
                                          (_tl4307443098_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4307243093_))))
                                      (if (gx#identifier? _hd4307343096_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd4307343096_)
                                              (if (gx#stx-pair? _tl4307443098_)
                                                  (let ((_e4307543101_
                                                         (gx#stx-e
                                                          _tl4307443098_)))
                                                    (let ((_hd4307643104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4307543101_)))
                                                          (_tl4307743106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4307543101_))))
                                                      (if (gx#stx-pair?
                                                           _hd4307643104_)
                                                          (let ((_e4307843109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd4307643104_)))
                    (let ((_hd4307943112_
                           (let () (declare (not safe)) (##car _e4307843109_)))
                          (_tl4308043114_
                           (let ()
                             (declare (not safe))
                             (##cdr _e4307843109_))))
                      (if (gx#stx-null? _tl4308043114_)
                          (if (gx#stx-pair? _tl4307743106_)
                              (let ((_e4308143117_ (gx#stx-e _tl4307743106_)))
                                (let ((_hd4308243120_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4308143117_)))
                                      (_tl4308343122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4308143117_))))
                                  (if (gx#stx-null? _tl4308343122_)
                                      ((lambda (_L43125_ _L43126_)
                                         (let* ((_body43147_
                                                 (gxc#apply-expression-subst
                                                  _L43125_
                                                  _L43126_
                                                  _target43048_))
                                                (_body43149_
                                                 (if _negation43047_
                                                     (_closure-e43050_
                                                      _body43147_)
                                                     _body43147_)))
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id43066_)
                                            (let ((__obj56815
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (gxc#!lambda:::init!__0
                                               __obj56815
                                               'lambda
                                               '0
                                               '#f)
                                              __obj56815)
                                            '#t)
                                           (cons _id43066_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body43149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd4308243120_
                                       _hd4307943112_)
                                      (_g4306843088_ _g4306943091_))))
                              (_g4306843088_ _g4306943091_))
                          (_g4306843088_ _g4306943091_))))
                  (_g4306843088_ _g4306943091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4306843088_
                                                   _g4306943091_))
                                              (_g4306843088_ _g4306943091_))
                                          (_g4306843088_ _g4306943091_))))
                                  (_g4306843088_ _g4306943091_)))))
                      (_g4306743152_ _kont43065_)))))
            (if (let () (declare (not safe)) (##pair? _clause4305143058_))
                (let ((_hd4305543158_
                       (let ()
                         (declare (not safe))
                         (##car _clause4305143058_)))
                      (_tl4305643160_
                       (let ()
                         (declare (not safe))
                         (##cdr _clause4305143058_))))
                  (let* ((_id43163_ _hd4305543158_)
                         (_kont43165_ _tl4305643160_))
                    (_K4305443155_ _kont43165_ _id43163_)))
                (_E4305343062_))))))
    (define gxc#push-match-vars-let-values%
      (lambda (_stx42832_ _vars42833_ _K42834_)
        (let* ((_g4283642853_
                (lambda (_g4283742850_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4283742850_)))
               (_g4283543043_
                (lambda (_g4283742856_)
                  (if (gx#stx-pair? _g4283742856_)
                      (let ((_e4284042858_ (gx#stx-e _g4283742856_)))
                        (let ((_hd4284142861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4284042858_)))
                              (_tl4284242863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4284042858_))))
                          (if (gx#stx-pair? _tl4284242863_)
                              (let ((_e4284342866_ (gx#stx-e _tl4284242863_)))
                                (let ((_hd4284442869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4284342866_)))
                                      (_tl4284542871_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4284342866_))))
                                  (if (gx#stx-pair? _tl4284542871_)
                                      (let ((_e4284642874_
                                             (gx#stx-e _tl4284542871_)))
                                        (let ((_hd4284742877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4284642874_)))
                                              (_tl4284842879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4284642874_))))
                                          (if (gx#stx-null? _tl4284842879_)
                                              ((lambda (_L42882_ _L42883_)
                                                 (let _lp42898_ ((_rest42900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L42883_)
                         (_rebind42901_ '())
                         (_vars42902_ _vars42833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_rest4290342911_
                                                           _rest42900_)
                                                          (_else4290542919_
                                                           (lambda ()
                                                             (if (null? _rebind42901_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#compile-e _L42882_ _vars42902_ _K42834_)
                         (gxc#xform-wrap-source
                          (cons '%#let-values
                                (cons (reverse _rebind42901_)
                                      (cons (gxc#compile-e
                                             _L42882_
                                             _vars42902_
                                             _K42834_)
                                            '())))
                          _stx42832_))))
                  (_K4290743031_
                   (lambda (_rest42922_ _bind42923_)
                     (let* ((___stx5676656767_ _bind42923_)
                            (_g4292642949_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx5676656767_))))
                       (let ((___kont5676856769_
                              (lambda (_L43001_ _L43002_)
                                (_lp42898_
                                 _rest42922_
                                 _rebind42901_
                                 (cons _bind42923_ _vars42902_))))
                             (___kont5677056771_
                              (lambda ()
                                (_lp42898_
                                 _rest42922_
                                 (cons _bind42923_ _rebind42901_)
                                 _vars42902_))))
                         (if (gx#stx-pair? ___stx5676656767_)
                             (let ((_e4293042961_
                                    (gx#stx-e ___stx5676656767_)))
                               (let ((_tl4293242966_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e4293042961_)))
                                     (_hd4293142964_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e4293042961_))))
                                 (if (gx#stx-pair? _hd4293142964_)
                                     (let ((_e4293342969_
                                            (gx#stx-e _hd4293142964_)))
                                       (let ((_tl4293542974_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4293342969_)))
                                             (_hd4293442972_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4293342969_))))
                                         (if (gx#stx-null? _tl4293542974_)
                                             (if (gx#stx-pair? _tl4293242966_)
                                                 (let ((_e4293642977_
                                                        (gx#stx-e
                                                         _tl4293242966_)))
                                                   (let ((_tl4293842982_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e4293642977_)))
                                                         (_hd4293742980_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e4293642977_))))
                                                     (if (gx#stx-pair?
                                                          _hd4293742980_)
                                                         (let ((_e4293942985_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4293742980_)))
                   (let ((_tl4294142990_
                          (let () (declare (not safe)) (##cdr _e4293942985_)))
                         (_hd4294042988_
                          (let () (declare (not safe)) (##car _e4293942985_))))
                     (if (gx#identifier? _hd4294042988_)
                         (if (gx#stx-eq? '%#ref _hd4294042988_)
                             (if (gx#stx-pair? _tl4294142990_)
                                 (let ((_e4294242993_
                                        (gx#stx-e _tl4294142990_)))
                                   (let ((_tl4294442998_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4294242993_)))
                                         (_hd4294342996_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4294242993_))))
                                     (if (gx#stx-null? _tl4294442998_)
                                         (if (gx#stx-null? _tl4293842982_)
                                             (___kont5676856769_
                                              _hd4294342996_
                                              _hd4293442972_)
                                             (___kont5677056771_))
                                         (___kont5677056771_))))
                                 (___kont5677056771_))
                             (___kont5677056771_))
                         (___kont5677056771_))))
                 (___kont5677056771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont5677056771_))
                                             (___kont5677056771_))))
                                     (___kont5677056771_))))
                             (___kont5677056771_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##pair? _rest4290342911_))
                                                         (let ((_hd4290843034_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _rest4290342911_)))
                       (_tl4290943036_
                        (let ()
                          (declare (not safe))
                          (##cdr _rest4290342911_))))
                   (let* ((_bind43039_ _hd4290843034_)
                          (_rest43041_ _tl4290943036_))
                     (_K4290743031_ _rest43041_ _bind43039_)))
                 (_else4290542919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd4284742877_
                                               _hd4284442869_)
                                              (_g4283642853_ _g4283742856_))))
                                      (_g4283642853_ _g4283742856_))))
                              (_g4283642853_ _g4283742856_))))
                      (_g4283642853_ _g4283742856_)))))
          (_g4283543043_ _stx42832_))))
    (define gxc#push-match-vars-if%
      (lambda (_stx42747_ _vars42748_ _K42749_)
        (let* ((_g4275142772_
                (lambda (_g4275242769_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4275242769_)))
               (_g4275042829_
                (lambda (_g4275242775_)
                  (if (gx#stx-pair? _g4275242775_)
                      (let ((_e4275642777_ (gx#stx-e _g4275242775_)))
                        (let ((_hd4275742780_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4275642777_)))
                              (_tl4275842782_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4275642777_))))
                          (if (gx#stx-pair? _tl4275842782_)
                              (let ((_e4275942785_ (gx#stx-e _tl4275842782_)))
                                (let ((_hd4276042788_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4275942785_)))
                                      (_tl4276142790_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4275942785_))))
                                  (if (gx#stx-pair? _tl4276142790_)
                                      (let ((_e4276242793_
                                             (gx#stx-e _tl4276142790_)))
                                        (let ((_hd4276342796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4276242793_)))
                                              (_tl4276442798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4276242793_))))
                                          (if (gx#stx-pair? _tl4276442798_)
                                              (let ((_e4276542801_
                                                     (gx#stx-e
                                                      _tl4276442798_)))
                                                (let ((_hd4276642804_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4276542801_)))
                                                      (_tl4276742806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4276542801_))))
                                                  (if (gx#stx-null?
                                                       _tl4276742806_)
                                                      ((lambda (_L42809_
                                                                _L42810_
                                                                _L42811_)
                                                         (if (gxc#apply-find-var-refs
                                                              _L42811_
                                                              (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _vars42748_))
                     (gxc#push-match-vars-stop _stx42747_ _vars42748_ _K42749_)
                     (gxc#xform-wrap-source
                      (cons '%#if
                            (cons _L42811_
                                  (cons (gxc#compile-e
                                         _L42810_
                                         _vars42748_
                                         _K42749_)
                                        (cons (gxc#compile-e
                                               _L42809_
                                               _vars42748_
                                               _K42749_)
                                              '()))))
                      _stx42747_)))
               _hd4276642804_
               _hd4276342796_
               _hd4276042788_)
              (_g4275142772_ _g4275242775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4275142772_ _g4275242775_))))
                                      (_g4275142772_ _g4275242775_))))
                              (_g4275142772_ _g4275242775_))))
                      (_g4275142772_ _g4275242775_)))))
          (_g4275042829_ _stx42747_))))
    (define gxc#push-match-vars-call%
      (lambda (_stx42667_ _vars42668_ _K42669_)
        (let* ((_g4267142690_
                (lambda (_g4267242687_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g4267242687_)))
               (_g4267042744_
                (lambda (_g4267242693_)
                  (if (gx#stx-pair? _g4267242693_)
                      (let ((_e4267442695_ (gx#stx-e _g4267242693_)))
                        (let ((_hd4267542698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4267442695_)))
                              (_tl4267642700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4267442695_))))
                          (if (gx#stx-pair? _tl4267642700_)
                              (let ((_e4267742703_ (gx#stx-e _tl4267642700_)))
                                (let ((_hd4267842706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4267742703_)))
                                      (_tl4267942708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4267742703_))))
                                  (if (gx#stx-pair? _hd4267842706_)
                                      (let ((_e4268042711_
                                             (gx#stx-e _hd4267842706_)))
                                        (let ((_hd4268142714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4268042711_)))
                                              (_tl4268242716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4268042711_))))
                                          (if (gx#identifier? _hd4268142714_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd4268142714_)
                                                  (if (gx#stx-pair?
                                                       _tl4268242716_)
                                                      (let ((_e4268342719_
                                                             (gx#stx-e
                                                              _tl4268242716_)))
                                                        (let ((_hd4268442722_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e4268342719_)))
                      (_tl4268542724_
                       (let () (declare (not safe)) (##cdr _e4268342719_))))
                  (if (gx#stx-null? _tl4268542724_)
                      ((lambda (_L42727_)
                         (if (and (gx#free-identifier=? _L42727_ _K42669_)
                                  (pair? _vars42668_))
                             (gxc#xform-wrap-source
                              (cons '%#let-values
                                    (cons (reverse _vars42668_)
                                          (cons _stx42667_ '())))
                              _stx42667_)
                             _stx42667_))
                       _hd4268442722_)
                      (_g4267142690_ _g4267242693_))))
              (_g4267142690_ _g4267242693_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4267142690_
                                                   _g4267242693_))
                                              (_g4267142690_ _g4267242693_))))
                                      (_g4267142690_ _g4267242693_))))
                              (_g4267142690_ _g4267242693_))))
                      (_g4267142690_ _g4267242693_)))))
          (_g4267042744_ _stx42667_))))
    (define gxc#push-match-vars-stop
      (lambda (_stx42663_ _vars42664_ _K42665_)
        (if (null? _vars42664_)
            _stx42663_
            (gxc#xform-wrap-source
             (cons '%#let-values
                   (cons (reverse _vars42664_) (cons _stx42663_ '())))
             _stx42663_))))))
