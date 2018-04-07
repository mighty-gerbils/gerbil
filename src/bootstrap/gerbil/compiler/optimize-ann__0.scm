(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 200))
  (define gxc#&optmize-annotated
    (##make-promise
     (lambda ()
       (let ((_tbl41162_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41162_ (force gxc#&basic-xform))
           (table-set! _tbl41162_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl41162_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx41155_ . _args41157_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41155_ _args41157_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&generate-runtime-repr
    (##make-promise
     (lambda ()
       (let ((_tbl41152_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl41152_ (force gxc#&generate-runtime))
           (table-set! _tbl41152_ '%#quote-syntax identity)
           _tbl41152_)))))
  (define gxc#apply-generate-runtime-repr
    (lambda (_stx41145_ . _args41147_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41145_ _args41147_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-repr))))
  (define gxc#&push-match-vars
    (##make-promise
     (lambda ()
       (let ((_tbl41142_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl41142_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl41142_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl41142_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl41142_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl41142_ '%#call gxc#push-match-vars-call%)
           _tbl41142_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx41135_ . _args41137_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx41135_ _args41137_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#current-annotation-optimizer (make-parameter '()))
  (define gxc#optimize-annotation%
    (lambda (_stx41053_)
      (let* ((___stx4117841179_ _stx41053_)
             (_g4105641073_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4117841179_))))
        (let ((___kont4118041181_
               (lambda (_L41109_ _L41110_)
                 (let ((_ann41126_ (gx#stx-e _L41110_)))
                   (call-with-parameters
                    (lambda ()
                      (let ((_$e41129_ _ann41126_))
                        (if (eq? '@match _$e41129_)
                            (begin
                              (gxc#verbose '"Optimizing match expansion")
                              (gxc#optimize-match _L41109_))
                            (if (eq? '@syntax-case _$e41129_)
                                (begin
                                  (gxc#verbose
                                   '"Optimizing syntax-case expansion")
                                  (gxc#optimize-syntax-case _L41109_))
                                (gxc#compile-e _L41109_)))))
                    gxc#current-annotation-optimizer
                    (cons _ann41126_ (gxc#current-annotation-optimizer))))))
              (___kont4118241183_
               (lambda () (gxc#xform-begin-annotation% _stx41053_))))
          (let ((___match4120341204_
                 (lambda (_e4106041085_
                          _hd4106141088_
                          _tl4106241090_
                          _e4106341093_
                          _hd4106441096_
                          _tl4106541098_
                          _e4106641101_
                          _hd4106741104_
                          _tl4106841106_)
                   (let ((_L41109_ _hd4106741104_) (_L41110_ _hd4106441096_))
                     (if (gx#identifier? _L41110_)
                         (___kont4118041181_ _L41109_ _L41110_)
                         (___kont4118241183_))))))
            (if (gx#stx-pair? ___stx4117841179_)
                (let ((_e4106041085_ (gx#stx-e ___stx4117841179_)))
                  (let ((_tl4106241090_ (##cdr _e4106041085_))
                        (_hd4106141088_ (##car _e4106041085_)))
                    (if (gx#stx-pair? _tl4106241090_)
                        (let ((_e4106341093_ (gx#stx-e _tl4106241090_)))
                          (let ((_tl4106541098_ (##cdr _e4106341093_))
                                (_hd4106441096_ (##car _e4106341093_)))
                            (if (gx#stx-pair? _tl4106541098_)
                                (let ((_e4106641101_
                                       (gx#stx-e _tl4106541098_)))
                                  (let ((_tl4106841106_ (##cdr _e4106641101_))
                                        (_hd4106741104_ (##car _e4106641101_)))
                                    (if (gx#stx-null? _tl4106841106_)
                                        (___match4120341204_
                                         _e4106041085_
                                         _hd4106141088_
                                         _tl4106241090_
                                         _e4106341093_
                                         _hd4106441096_
                                         _tl4106541098_
                                         _e4106641101_
                                         _hd4106741104_
                                         _tl4106841106_)
                                        (___kont4118241183_))))
                                (___kont4118241183_))))
                        (___kont4118241183_))))
                (___kont4118241183_)))))))
  (define gxc#optimize-match
    (lambda (_stx40352_)
      (let* ((_g4035440384_
              (lambda (_g4035540381_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4035540381_)))
             (_g4035341050_
              (lambda (_g4035540387_)
                (if (gx#stx-pair? _g4035540387_)
                    (let ((_e4035940389_ (gx#stx-e _g4035540387_)))
                      (let ((_hd4036040392_ (##car _e4035940389_))
                            (_tl4036140394_ (##cdr _e4035940389_)))
                        (if (gx#identifier? _hd4036040392_)
                            (if (gx#stx-eq? '%#let-values _hd4036040392_)
                                (if (gx#stx-pair? _tl4036140394_)
                                    (let ((_e4036240397_
                                           (gx#stx-e _tl4036140394_)))
                                      (let ((_hd4036340400_
                                             (##car _e4036240397_))
                                            (_tl4036440402_
                                             (##cdr _e4036240397_)))
                                        (if (gx#stx-pair? _hd4036340400_)
                                            (let ((_e4036540405_
                                                   (gx#stx-e _hd4036340400_)))
                                              (let ((_hd4036640408_
                                                     (##car _e4036540405_))
                                                    (_tl4036740410_
                                                     (##cdr _e4036540405_)))
                                                (if (gx#stx-pair?
                                                     _hd4036640408_)
                                                    (let ((_e4036840413_
                                                           (gx#stx-e
                                                            _hd4036640408_)))
                                                      (let ((_hd4036940416_
                                                             (##car _e4036840413_))
                                                            (_tl4037040418_
                                                             (##cdr _e4036840413_)))
                                                        (if (gx#stx-pair?
                                                             _hd4036940416_)
                                                            (let ((_e4037140421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4036940416_)))
                      (let ((_hd4037240424_ (##car _e4037140421_))
                            (_tl4037340426_ (##cdr _e4037140421_)))
                        (if (gx#stx-null? _tl4037340426_)
                            (if (gx#stx-pair? _tl4037040418_)
                                (let ((_e4037440429_
                                       (gx#stx-e _tl4037040418_)))
                                  (let ((_hd4037540432_ (##car _e4037440429_))
                                        (_tl4037640434_ (##cdr _e4037440429_)))
                                    (if (gx#stx-null? _tl4037640434_)
                                        (if (gx#stx-null? _tl4036740410_)
                                            (if (gx#stx-pair? _tl4036440402_)
                                                (let ((_e4037740437_
                                                       (gx#stx-e
                                                        _tl4036440402_)))
                                                  (let ((_hd4037840440_
                                                         (##car _e4037740437_))
                                                        (_tl4037940442_
                                                         (##cdr _e4037740437_)))
                                                    (if (gx#stx-null?
                                                         _tl4037940442_)
                                                        ((lambda (_L40445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L40446_
                          _L40447_)
                   (let _lp40471_ ((_body40473_ _L40445_)
                                   (_negation40474_ (cons _L40447_ _L40446_))
                                   (_clauses40475_ '())
                                   (_konts40476_ '()))
                     (let* ((___stx4138641387_ _body40473_)
                            (_g4047940519_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4138641387_))))
                       (let ((___kont4138841389_
                              (lambda (_L40849_)
                                (let* ((___stx4132241323_ _L40849_)
                                       (_g4086340893_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4132241323_))))
                                  (let ((___kont4132441325_
                                         (lambda (_L40989_ _L40990_ _L40991_)
                                           (if (null? _clauses40475_)
                                               (let* ((_negation4101541022_
                                                       _negation40474_)
                                                      (_E4101741026_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _negation4101541022_)))
                                                      (_K4101841032_
                                                       (lambda (_negate41029_
                                                                _E41030_)
                                                         (gxc#xform-wrap-source
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _E41030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _negate41029_ '()))
                                    '())
                              (cons (cons '%#let-values
                                          (cons (cons (cons (cons _L40991_ '())
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L40990_)
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L40989_ '())))
                                    '())))
                  _stx40352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _negation4101541022_)
                                                     (let ((_hd4101941035_
                                                            (##car _negation4101541022_))
                                                           (_tl4102041037_
                                                            (##cdr _negation4101541022_)))
                                                       (let* ((_E41040_
                                                               _hd4101941035_)
                                                              (_negate41042_
                                                               _tl4102041037_))
                                                         (_K4101841032_
                                                          _negate41042_
                                                          _E41040_)))
                                                     (_E4101741026_)))
                                               (gxc#optimize-match-body
                                                _stx40352_
                                                _negation40474_
                                                (cons (cons '#f
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L40989_ '()))))
              _clauses40475_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L40991_
                                                            (gxc#compile-e
                                                             _L40990_))
                                                      _konts40476_)))))
                                        (___kont4132641327_
                                         (lambda ()
                                           (let* ((_negation4089940906_
                                                   _negation40474_)
                                                  (_E4090140910_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _negation4089940906_)))
                                                  (_K4090240916_
                                                   (lambda (_negate40913_
                                                            _E40914_)
                                                     (gxc#xform-wrap-source
                                                      (cons '%#let-values
                                                            (cons (cons (cons (cons _E40914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                            '())
                                      (cons _negate40913_ '()))
                                '())
                          (cons _L40849_ '())))
              _stx40352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _negation4089940906_)
                                                 (let ((_hd4090340919_
                                                        (##car _negation4089940906_))
                                                       (_tl4090440921_
                                                        (##cdr _negation4089940906_)))
                                                   (let* ((_E40924_
                                                           _hd4090340919_)
                                                          (_negate40926_
                                                           _tl4090440921_))
                                                     (_K4090240916_
                                                      _negate40926_
                                                      _E40924_)))
                                                 (_E4090140910_))))))
                                    (let ((_g4086240928_
                                           (lambda ()
                                             (if (null? _clauses40475_)
                                                 (___kont4132641327_)
                                                 (_g4086340893_)))))
                                      (if (gx#stx-pair? ___stx4132241323_)
                                          (let ((_e4086840933_
                                                 (gx#stx-e ___stx4132241323_)))
                                            (let ((_tl4087040938_
                                                   (##cdr _e4086840933_))
                                                  (_hd4086940936_
                                                   (##car _e4086840933_)))
                                              (if (gx#identifier?
                                                   _hd4086940936_)
                                                  (if (gx#stx-eq?
                                                       '%#let-values
                                                       _hd4086940936_)
                                                      (if (gx#stx-pair?
                                                           _tl4087040938_)
                                                          (let ((_e4087140941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl4087040938_)))
                    (let ((_tl4087340946_ (##cdr _e4087140941_))
                          (_hd4087240944_ (##car _e4087140941_)))
                      (if (gx#stx-pair? _hd4087240944_)
                          (let ((_e4087440949_ (gx#stx-e _hd4087240944_)))
                            (let ((_tl4087640954_ (##cdr _e4087440949_))
                                  (_hd4087540952_ (##car _e4087440949_)))
                              (if (gx#stx-pair? _hd4087540952_)
                                  (let ((_e4087740957_
                                         (gx#stx-e _hd4087540952_)))
                                    (let ((_tl4087940962_
                                           (##cdr _e4087740957_))
                                          (_hd4087840960_
                                           (##car _e4087740957_)))
                                      (if (gx#stx-pair? _hd4087840960_)
                                          (let ((_e4088040965_
                                                 (gx#stx-e _hd4087840960_)))
                                            (let ((_tl4088240970_
                                                   (##cdr _e4088040965_))
                                                  (_hd4088140968_
                                                   (##car _e4088040965_)))
                                              (if (gx#stx-null? _tl4088240970_)
                                                  (if (gx#stx-pair?
                                                       _tl4087940962_)
                                                      (let ((_e4088340973_
                                                             (gx#stx-e
                                                              _tl4087940962_)))
                                                        (let ((_tl4088540978_
                                                               (##cdr _e4088340973_))
                                                              (_hd4088440976_
                                                               (##car _e4088340973_)))
                                                          (if (gx#stx-null?
                                                               _tl4088540978_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4087640954_)
                          (if (gx#stx-pair? _tl4087340946_)
                              (let ((_e4088640981_ (gx#stx-e _tl4087340946_)))
                                (let ((_tl4088840986_ (##cdr _e4088640981_))
                                      (_hd4088740984_ (##car _e4088640981_)))
                                  (if (gx#stx-null? _tl4088840986_)
                                      (___kont4132441325_
                                       _hd4088740984_
                                       _hd4088440976_
                                       _hd4088140968_)
                                      (_g4086240928_))))
                              (_g4086240928_))
                          (_g4086240928_))
                      (_g4086240928_))))
              (_g4086240928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4086240928_))))
                                          (_g4086240928_))))
                                  (_g4086240928_))))
                          (_g4086240928_))))
                  (_g4086240928_))
              (_g4086240928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g4086240928_))))
                                          (_g4086240928_)))))))
                             (___kont4139041391_
                              (lambda (_L40580_ _L40581_ _L40582_)
                                (let* ((___stx4120641207_ _L40581_)
                                       (_g4060940658_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx4120641207_))))
                                  (let ((___kont4120841209_
                                         (lambda (_L40786_ _L40787_ _L40788_)
                                           (_lp40471_
                                            _L40580_
                                            _negation40474_
                                            (cons (cons _L40582_
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#lambda)
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L40786_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _clauses40475_)
                                            (cons (cons _L40788_
                                                        (gxc#compile-e
                                                         _L40787_))
                                                  _konts40476_))))
                                        (___kont4121041211_
                                         (lambda (_L40687_)
                                           (_lp40471_
                                            _L40580_
                                            (cons _L40582_
                                                  (gxc#compile-e _L40687_))
                                            _clauses40475_
                                            _konts40476_))))
                                    (if (gx#stx-pair? ___stx4120641207_)
                                        (let ((_e4061440706_
                                               (gx#stx-e ___stx4120641207_)))
                                          (let ((_tl4061640711_
                                                 (##cdr _e4061440706_))
                                                (_hd4061540709_
                                                 (##car _e4061440706_)))
                                            (if (gx#identifier? _hd4061540709_)
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd4061540709_)
                                                    (if (gx#stx-pair?
                                                         _tl4061640711_)
                                                        (let ((_e4061740714_
                                                               (gx#stx-e
                                                                _tl4061640711_)))
                                                          (let ((_tl4061940719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4061740714_))
                        (_hd4061840717_ (##car _e4061740714_)))
                    (if (gx#stx-null? _hd4061840717_)
                        (if (gx#stx-pair? _tl4061940719_)
                            (let ((_e4062040722_ (gx#stx-e _tl4061940719_)))
                              (let ((_tl4062240727_ (##cdr _e4062040722_))
                                    (_hd4062140725_ (##car _e4062040722_)))
                                (if (gx#stx-pair? _hd4062140725_)
                                    (let ((_e4062340730_
                                           (gx#stx-e _hd4062140725_)))
                                      (let ((_tl4062540735_
                                             (##cdr _e4062340730_))
                                            (_hd4062440733_
                                             (##car _e4062340730_)))
                                        (if (gx#identifier? _hd4062440733_)
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd4062440733_)
                                                (if (gx#stx-pair?
                                                     _tl4062540735_)
                                                    (let ((_e4062640738_
                                                           (gx#stx-e
                                                            _tl4062540735_)))
                                                      (let ((_tl4062840743_
                                                             (##cdr _e4062640738_))
                                                            (_hd4062740741_
                                                             (##car _e4062640738_)))
                                                        (if (gx#stx-pair?
                                                             _hd4062740741_)
                                                            (let ((_e4062940746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4062740741_)))
                      (let ((_tl4063140751_ (##cdr _e4062940746_))
                            (_hd4063040749_ (##car _e4062940746_)))
                        (if (gx#stx-pair? _hd4063040749_)
                            (let ((_e4063240754_ (gx#stx-e _hd4063040749_)))
                              (let ((_tl4063440759_ (##cdr _e4063240754_))
                                    (_hd4063340757_ (##car _e4063240754_)))
                                (if (gx#stx-pair? _hd4063340757_)
                                    (let ((_e4063540762_
                                           (gx#stx-e _hd4063340757_)))
                                      (let ((_tl4063740767_
                                             (##cdr _e4063540762_))
                                            (_hd4063640765_
                                             (##car _e4063540762_)))
                                        (if (gx#stx-null? _tl4063740767_)
                                            (if (gx#stx-pair? _tl4063440759_)
                                                (let ((_e4063840770_
                                                       (gx#stx-e
                                                        _tl4063440759_)))
                                                  (let ((_tl4064040775_
                                                         (##cdr _e4063840770_))
                                                        (_hd4063940773_
                                                         (##car _e4063840770_)))
                                                    (if (gx#stx-null?
                                                         _tl4064040775_)
                                                        (if (gx#stx-null?
                                                             _tl4063140751_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl4062840743_)
                        (let ((_e4064140778_ (gx#stx-e _tl4062840743_)))
                          (let ((_tl4064340783_ (##cdr _e4064140778_))
                                (_hd4064240781_ (##car _e4064140778_)))
                            (if (gx#stx-null? _tl4064340783_)
                                (if (gx#stx-null? _tl4062240727_)
                                    (___kont4120841209_
                                     _hd4064240781_
                                     _hd4063940773_
                                     _hd4063640765_)
                                    (_g4060940658_))
                                (_g4060940658_))))
                        (_g4060940658_))
                    (_g4060940658_))
                (_g4060940658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060940658_))
                                            (_g4060940658_))))
                                    (_g4060940658_))))
                            (_g4060940658_))))
                    (_g4060940658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4060940658_))
                                                (_g4060940658_))
                                            (_g4060940658_))))
                                    (_g4060940658_))))
                            (_g4060940658_))
                        (_g4060940658_))))
                (_g4060940658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#begin-annotation
                                                         _hd4061540709_)
                                                        (if (gx#stx-pair?
                                                             _tl4061640711_)
                                                            (let ((_e4064840671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4061640711_)))
                      (let ((_tl4065040676_ (##cdr _e4064840671_))
                            (_hd4064940674_ (##car _e4064840671_)))
                        (if (gx#identifier? _hd4064940674_)
                            (if (gx#stx-eq? '@match-else _hd4064940674_)
                                (if (gx#stx-pair? _tl4065040676_)
                                    (let ((_e4065140679_
                                           (gx#stx-e _tl4065040676_)))
                                      (let ((_tl4065340684_
                                             (##cdr _e4065140679_))
                                            (_hd4065240682_
                                             (##car _e4065140679_)))
                                        (if (gx#stx-null? _tl4065340684_)
                                            (___kont4121041211_ _hd4065240682_)
                                            (_g4060940658_))))
                                    (_g4060940658_))
                                (_g4060940658_))
                            (_g4060940658_))))
                    (_g4060940658_))
                (_g4060940658_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4060940658_))))
                                        (_g4060940658_)))))))
                         (if (gx#stx-pair? ___stx4138641387_)
                             (let ((_e4048240825_
                                    (gx#stx-e ___stx4138641387_)))
                               (let ((_tl4048440830_ (##cdr _e4048240825_))
                                     (_hd4048340828_ (##car _e4048240825_)))
                                 (if (gx#identifier? _hd4048340828_)
                                     (if (gx#stx-eq?
                                          '%#begin-annotation
                                          _hd4048340828_)
                                         (if (gx#stx-pair? _tl4048440830_)
                                             (let ((_e4048540833_
                                                    (gx#stx-e _tl4048440830_)))
                                               (let ((_tl4048740838_
                                                      (##cdr _e4048540833_))
                                                     (_hd4048640836_
                                                      (##car _e4048540833_)))
                                                 (if (gx#identifier?
                                                      _hd4048640836_)
                                                     (if (gx#stx-eq?
                                                          '@match-body
                                                          _hd4048640836_)
                                                         (if (gx#stx-pair?
                                                              _tl4048740838_)
                                                             (let ((_e4048840841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4048740838_)))
                       (let ((_tl4049040846_ (##cdr _e4048840841_))
                             (_hd4048940844_ (##car _e4048840841_)))
                         (if (gx#stx-null? _tl4049040846_)
                             (___kont4138841389_ _hd4048940844_)
                             (_g4047940519_))))
                     (_g4047940519_))
                 (_g4047940519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047940519_))))
                                             (_g4047940519_))
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd4048340828_)
                                             (if (gx#stx-pair? _tl4048440830_)
                                                 (let ((_e4049740532_
                                                        (gx#stx-e
                                                         _tl4048440830_)))
                                                   (let ((_tl4049940537_
                                                          (##cdr _e4049740532_))
                                                         (_hd4049840535_
                                                          (##car _e4049740532_)))
                                                     (if (gx#stx-pair?
                                                          _hd4049840535_)
                                                         (let ((_e4050040540_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd4049840535_)))
                   (let ((_tl4050240545_ (##cdr _e4050040540_))
                         (_hd4050140543_ (##car _e4050040540_)))
                     (if (gx#stx-pair? _hd4050140543_)
                         (let ((_e4050340548_ (gx#stx-e _hd4050140543_)))
                           (let ((_tl4050540553_ (##cdr _e4050340548_))
                                 (_hd4050440551_ (##car _e4050340548_)))
                             (if (gx#stx-pair? _hd4050440551_)
                                 (let ((_e4050640556_
                                        (gx#stx-e _hd4050440551_)))
                                   (let ((_tl4050840561_ (##cdr _e4050640556_))
                                         (_hd4050740559_
                                          (##car _e4050640556_)))
                                     (if (gx#stx-null? _tl4050840561_)
                                         (if (gx#stx-pair? _tl4050540553_)
                                             (let ((_e4050940564_
                                                    (gx#stx-e _tl4050540553_)))
                                               (let ((_tl4051140569_
                                                      (##cdr _e4050940564_))
                                                     (_hd4051040567_
                                                      (##car _e4050940564_)))
                                                 (if (gx#stx-null?
                                                      _tl4051140569_)
                                                     (if (gx#stx-null?
                                                          _tl4050240545_)
                                                         (if (gx#stx-pair?
                                                              _tl4049940537_)
                                                             (let ((_e4051240572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl4049940537_)))
                       (let ((_tl4051440577_ (##cdr _e4051240572_))
                             (_hd4051340575_ (##car _e4051240572_)))
                         (if (gx#stx-null? _tl4051440577_)
                             (___kont4139041391_
                              _hd4051340575_
                              _hd4051040567_
                              _hd4050740559_)
                             (_g4047940519_))))
                     (_g4047940519_))
                 (_g4047940519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g4047940519_))))
                                             (_g4047940519_))
                                         (_g4047940519_))))
                                 (_g4047940519_))))
                         (_g4047940519_))))
                 (_g4047940519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4047940519_))
                                             (_g4047940519_)))
                                     (_g4047940519_))))
                             (_g4047940519_))))))
                 _hd4037840440_
                 _hd4037540432_
                 _hd4037240424_)
                (_g4035440384_ _g4035540387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4035440384_ _g4035540387_))
                                            (_g4035440384_ _g4035540387_))
                                        (_g4035440384_ _g4035540387_))))
                                (_g4035440384_ _g4035540387_))
                            (_g4035440384_ _g4035540387_))))
                    (_g4035440384_ _g4035540387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4035440384_
                                                     _g4035540387_))))
                                            (_g4035440384_ _g4035540387_))))
                                    (_g4035440384_ _g4035540387_))
                                (_g4035440384_ _g4035540387_))
                            (_g4035440384_ _g4035540387_))))
                    (_g4035440384_ _g4035540387_)))))
        (_g4035341050_ _stx40352_))))
  (define gxc#optimize-match-body
    (lambda (_stx40058_ _negation40059_ _clauses40060_ _konts40061_)
      (letrec ((_push-variables40063_
                (lambda (_clause40310_ _kont40311_)
                  (let ((_clause4031240322_ _clause40310_)
                        (_kont4031340324_ _kont40311_))
                    (let* ((_E4031540328_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause4031240322_
                                     _kont4031340324_)))
                           (_K4031640335_
                            (lambda (_clause-lambda40331_
                                     _clause-name40332_
                                     _K40333_)
                              (cons _clause-name40332_
                                    (gxc#apply-push-match-vars
                                     _clause-lambda40331_
                                     '()
                                     _K40333_)))))
                      (if (##pair? _clause4031240322_)
                          (let ((_hd4031940338_ (##car _clause4031240322_))
                                (_tl4032040340_ (##cdr _clause4031240322_)))
                            (let* ((_clause-name40343_ _hd4031940338_)
                                   (_clause-lambda40345_ _tl4032040340_))
                              (if (##pair? _kont4031340324_)
                                  (let* ((_hd4031740347_
                                          (##car _kont4031340324_))
                                         (_K40350_ _hd4031740347_))
                                    (_K4031640335_
                                     _clause-lambda40345_
                                     _clause-name40343_
                                     _K40350_))
                                  (_E4031540328_))))
                          (_E4031540328_))))))
               (_start-match40064_
                (lambda (_kont40244_)
                  (let* ((_g4024640262_
                          (lambda (_g4024740259_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4024740259_)))
                         (_g4024540307_
                          (lambda (_g4024740265_)
                            (if (gx#stx-pair? _g4024740265_)
                                (let ((_e4024940267_ (gx#stx-e _g4024740265_)))
                                  (let ((_hd4025040270_ (##car _e4024940267_))
                                        (_tl4025140272_ (##cdr _e4024940267_)))
                                    (if (gx#identifier? _hd4025040270_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd4025040270_)
                                            (if (gx#stx-pair? _tl4025140272_)
                                                (let ((_e4025240275_
                                                       (gx#stx-e
                                                        _tl4025140272_)))
                                                  (let ((_hd4025340278_
                                                         (##car _e4025240275_))
                                                        (_tl4025440280_
                                                         (##cdr _e4025240275_)))
                                                    (if (gx#stx-null?
                                                         _hd4025340278_)
                                                        (if (gx#stx-pair?
                                                             _tl4025440280_)
                                                            (let ((_e4025540283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4025440280_)))
                      (let ((_hd4025640286_ (##car _e4025540283_))
                            (_tl4025740288_ (##cdr _e4025540283_)))
                        (if (gx#stx-null? _tl4025740288_)
                            ((lambda (_L40291_) _L40291_) _hd4025640286_)
                            (_g4024640262_ _g4024740265_))))
                    (_g4024640262_ _g4024740265_))
                (_g4024640262_ _g4024740265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4024640262_ _g4024740265_))
                                            (_g4024640262_ _g4024740265_))
                                        (_g4024640262_ _g4024740265_))))
                                (_g4024640262_ _g4024740265_)))))
                    (_g4024540307_ _kont40244_))))
               (_match-body40065_
                (lambda (_blocks40141_)
                  (let* ((_blocks4014240151_ _blocks40141_)
                         (_E4014440155_
                          (lambda ()
                            (error '"No clause matching" _blocks4014240151_)))
                         (_K4014540227_
                          (lambda (_rest40158_ _start40159_)
                            (let _lp40161_ ((_rest40163_ _rest40158_)
                                            (_body40164_
                                             (_start-match40064_
                                              _start40159_)))
                              (let* ((_rest4016540173_ _rest40163_)
                                     (_else4016740181_ (lambda () _body40164_))
                                     (_K4016940215_
                                      (lambda (_rest40184_ _block40185_)
                                        (let* ((_block4018640193_ _block40185_)
                                               (_E4018840197_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block4018640193_)))
                                               (_K4018940203_
                                                (lambda (_kont40200_ _K40201_)
                                                  (_lp40161_
                                                   _rest40184_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K40201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont40200_ '()))
                             '())
                       (cons _body40164_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block4018640193_)
                                              (let ((_hd4019040206_
                                                     (##car _block4018640193_))
                                                    (_tl4019140208_
                                                     (##cdr _block4018640193_)))
                                                (let* ((_K40211_
                                                        _hd4019040206_)
                                                       (_kont40213_
                                                        _tl4019140208_))
                                                  (_K4018940203_
                                                   _kont40213_
                                                   _K40211_)))
                                              (_E4018840197_))))))
                                (if (##pair? _rest4016540173_)
                                    (let ((_hd4017040218_
                                           (##car _rest4016540173_))
                                          (_tl4017140220_
                                           (##cdr _rest4016540173_)))
                                      (let* ((_block40223_ _hd4017040218_)
                                             (_rest40225_ _tl4017140220_))
                                        (_K4016940215_
                                         _rest40225_
                                         _block40223_)))
                                    (_else4016740181_)))))))
                    (if (##pair? _blocks4014240151_)
                        (let ((_hd4014640230_ (##car _blocks4014240151_))
                              (_tl4014740232_ (##cdr _blocks4014240151_)))
                          (if (##pair? _hd4014640230_)
                              (let ((_hd4014840235_ (##car _hd4014640230_))
                                    (_tl4014940237_ (##cdr _hd4014640230_)))
                                (if (##eq? _hd4014840235_ '#f)
                                    (let* ((_start40240_ _tl4014940237_)
                                           (_rest40242_ _tl4014740232_))
                                      (_K4014540227_ _rest40242_ _start40240_))
                                    (_E4014440155_)))
                              (_E4014440155_)))
                        (_E4014440155_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses40068_
                   (map _push-variables40063_ _clauses40060_ _konts40061_))
                  (_blocks40070_
                   (gxc#optimize-match-basic-blocks _clauses40068_))
                  (_blocks40072_
                   (gxc#optimize-match-fold-basic-blocks _blocks40070_))
                  (_body40074_ (_match-body40065_ _blocks40072_))
                  (_bind40108_
                   (map (lambda (_e4007540077_)
                          (let* ((_g4007940086_ _e4007540077_)
                                 (_E4008140090_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g4007940086_)))
                                 (_K4008240096_
                                  (lambda (_kont40093_ _K40094_)
                                    (cons (cons _K40094_ '())
                                          (cons _kont40093_ '())))))
                            (if (##pair? _g4007940086_)
                                (let ((_hd4008340099_ (##car _g4007940086_))
                                      (_tl4008440101_ (##cdr _g4007940086_)))
                                  (let* ((_K40104_ _hd4008340099_)
                                         (_kont40106_ _tl4008440101_))
                                    (_K4008240096_ _kont40106_ _K40104_)))
                                (_E4008140090_))))
                        _konts40061_))
                  (_negate40138_
                   (let* ((_negation4010940116_ _negation40059_)
                          (_E4011140120_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation4010940116_)))
                          (_K4011240126_
                           (lambda (_kont40123_ _K40124_)
                             (cons (cons _K40124_ '())
                                   (cons _kont40123_ '())))))
                     (if (##pair? _negation4010940116_)
                         (let ((_hd4011340129_ (##car _negation4010940116_))
                               (_tl4011440131_ (##cdr _negation4010940116_)))
                           (let* ((_K40134_ _hd4011340129_)
                                  (_kont40136_ _tl4011440131_))
                             (_K4011240126_ _kont40136_ _K40134_)))
                         (_E4011140120_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate40138_ '())
                          (cons (cons '%#let-values
                                      (cons _bind40108_
                                            (cons _body40074_ '())))
                                '())))
              _stx40058_)))
         gx#current-expander-context
         (let ((__obj44251 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44251) __obj44251))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses40018_)
      (let _lp40020_ ((_rest40022_ _clauses40018_) (_blocks40023_ '()))
        (let* ((_rest4002440032_ _rest40022_)
               (_else4002640040_ (lambda () (reverse _blocks40023_)))
               (_K4002840046_
                (lambda (_rest40043_ _clause40044_)
                  (_lp40020_
                   _rest40043_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause40044_
                    _blocks40023_)))))
          (if (##pair? _rest4002440032_)
              (let ((_hd4002940049_ (##car _rest4002440032_))
                    (_tl4003040051_ (##cdr _rest4002440032_)))
                (let* ((_clause40054_ _hd4002940049_)
                       (_rest40056_ _tl4003040051_))
                  (_K4002840046_ _rest40056_ _clause40054_)))
              (_else4002640040_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause39362_ _blocks39363_)
      (letrec ((_bind->args39365_
                (lambda (_bind40013_)
                  (foldl1 (lambda (_b40015_ _r40016_)
                            (cons (cons '%#ref (cons (car _b40015_) '()))
                                  _r40016_))
                          '()
                          _bind40013_)))
               (_create-block39366_
                (lambda (_body39962_ _let-bind39963_ _bind39964_ _assert39965_)
                  (let* ((_id39967_ (make-symbol (gensym '__match)))
                         (_id39969_ (gx#core-quote-syntax__0 _id39967_))
                         (_g44254_ (gx#core-bind-runtime!__0 _id39969_))
                         (_block39972_
                          (cons _id39969_
                                (cons _body39962_
                                      (cons _bind39964_
                                            (cons _assert39965_ '())))))
                         (_continue39974_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id39969_ '()))
                                      (_bind->args39365_ _bind39964_))))
                         (_continue40010_
                          (if (null? _let-bind39963_)
                              _continue39974_
                              (let ((_locals40008_
                                     (map (lambda (_e3997539977_)
                                            (let* ((_g3997939986_
                                                    _e3997539977_)
                                                   (_E3998139990_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g3997939986_)))
                                                   (_K3998239996_
                                                    (lambda (_expr39993_
                                                             _id39994_)
                                                      (cons (cons _id39994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr39993_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g3997939986_)
                                                  (let ((_hd3998339999_
                                                         (##car _g3997939986_))
                                                        (_tl3998440001_
                                                         (##cdr _g3997939986_)))
                                                    (let* ((_id40004_
                                                            _hd3998339999_)
                                                           (_expr40006_
                                                            _tl3998440001_))
                                                      (_K3998239996_
                                                       _expr40006_
                                                       _id40004_)))
                                                  (_E3998139990_))))
                                          _let-bind39963_)))
                                (cons '%#let-values
                                      (cons _locals40008_
                                            (cons _continue39974_ '())))))))
                    (values _continue40010_ _block39972_))))
               (_basic-block39367_
                (lambda (_body39548_ _bind39549_ _assert39550_)
                  (let* ((___stx4149441495_ _body39548_)
                         (_g3955539639_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4149441495_))))
                    (let ((___kont4149641497_
                           (lambda (_L39898_ _L39899_ _L39900_)
                             (let ((_g44255_
                                    (_create-block39366_
                                     _L39899_
                                     '()
                                     _bind39549_
                                     (cons (cons _L39900_ '#t)
                                           _assert39550_))))
                               (begin
                                 (let ((_g44256_
                                        (if (##values? _g44255_)
                                            (##vector-length _g44255_)
                                            1)))
                                   (if (not (##fx= _g44256_ 2))
                                       (error "Context expects 2 values"
                                              _g44256_)))
                                 (let ((_k-continue39918_
                                        (##vector-ref _g44255_ 0))
                                       (_k-block39919_
                                        (##vector-ref _g44255_ 1)))
                                   (let* ((___stx4147641477_ _L39898_)
                                          (_g3992239931_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4147641477_))))
                                     (let ((___kont4147841479_
                                            (lambda ()
                                              (values (cons '%#if
                                                            (cons _L39900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _k-continue39918_ (cons _L39898_ '()))))
              (cons _k-block39919_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4148041481_
                                            (lambda ()
                                              (let ((_g44257_
                                                     (_create-block39366_
                                                      _L39898_
                                                      '()
                                                      _bind39549_
                                                      (cons (cons _L39900_ '#f)
                                                            _assert39550_))))
                                                (begin
                                                  (let ((_g44258_
                                                         (if (##values?
                                                              _g44257_)
                                                             (##vector-length
                                                              _g44257_)
                                                             1)))
                                                    (if (not (##fx= _g44258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g44258_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_e-continue39938_
                                                         (##vector-ref
                                                          _g44257_
                                                          0))
                                                        (_e-block39939_
                                                         (##vector-ref
                                                          _g44257_
                                                          1)))
                                                    (values (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L39900_
                                (cons _k-continue39918_
                                      (cons _e-continue39938_ '()))))
                    (cons _k-block39919_ (cons _e-block39939_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? ___stx4147641477_)
                                           (let ((_e3992439946_
                                                  (gx#stx-e
                                                   ___stx4147641477_)))
                                             (let ((_tl3992639951_
                                                    (##cdr _e3992439946_))
                                                   (_hd3992539949_
                                                    (##car _e3992439946_)))
                                               (if (gx#identifier?
                                                    _hd3992539949_)
                                                   (if (gx#stx-eq?
                                                        '%#call
                                                        _hd3992539949_)
                                                       (___kont4147841479_)
                                                       (___kont4148041481_))
                                                   (___kont4148041481_))))
                                           (___kont4148041481_)))))))))
                          (___kont4149841499_
                           (lambda () (values _body39548_ '())))
                          (___kont4150241503_
                           (lambda (_L39727_ _L39728_ _L39729_)
                             (let* ((_let-bind39764_
                                     (map cons
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3974939752_
                                                             _g3975039754_)
                                                      (cons _g3974939752_
                                                            _g3975039754_))
                                                    '()
                                                    _L39729_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g3975639759_
                                                             _g3975739761_)
                                                      (cons _g3975639759_
                                                            _g3975739761_))
                                                    '()
                                                    _L39728_))))
                                    (_g44259_
                                     (_create-block39366_
                                      _L39727_
                                      _let-bind39764_
                                      (foldl1 cons _bind39549_ _let-bind39764_)
                                      _assert39550_)))
                               (begin
                                 (let ((_g44260_
                                        (if (##values? _g44259_)
                                            (##vector-length _g44259_)
                                            1)))
                                   (if (not (##fx= _g44260_ 2))
                                       (error "Context expects 2 values"
                                              _g44260_)))
                                 (let ((_continue39766_
                                        (##vector-ref _g44259_ 0))
                                       (_block39767_
                                        (##vector-ref _g44259_ 1)))
                                   (let ()
                                     (values _continue39766_
                                             (cons _block39767_ '()))))))))
                          (___kont4150641507_
                           (lambda () (values _body39548_ '()))))
                      (let* ((___match4158541586_
                              (lambda (_e3960639651_
                                       _hd3960739654_
                                       _tl3960839656_
                                       _e3960939659_
                                       _hd3961039662_
                                       _tl3961139664_
                                       ___splice4150441505_
                                       _target3961239667_
                                       _tl3961439669_)
                                (letrec ((_loop3961539672_
                                          (lambda (_hd3961339675_
                                                   _expr3961939677_
                                                   _id3962039679_)
                                            (if (gx#stx-pair? _hd3961339675_)
                                                (let ((_e3961639682_
                                                       (gx#stx-e
                                                        _hd3961339675_)))
                                                  (let ((_lp-tl3961839687_
                                                         (##cdr _e3961639682_))
                                                        (_lp-hd3961739685_
                                                         (##car _e3961639682_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3961739685_)
                                                        (let ((_e3962339690_
                                                               (gx#stx-e
                                                                _lp-hd3961739685_)))
                                                          (let ((_tl3962539695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3962339690_))
                        (_hd3962439693_ (##car _e3962339690_)))
                    (if (gx#stx-pair? _hd3962439693_)
                        (let ((_e3962639698_ (gx#stx-e _hd3962439693_)))
                          (let ((_tl3962839703_ (##cdr _e3962639698_))
                                (_hd3962739701_ (##car _e3962639698_)))
                            (if (gx#stx-null? _tl3962839703_)
                                (if (gx#stx-pair? _tl3962539695_)
                                    (let ((_e3962939706_
                                           (gx#stx-e _tl3962539695_)))
                                      (let ((_tl3963139711_
                                             (##cdr _e3962939706_))
                                            (_hd3963039709_
                                             (##car _e3962939706_)))
                                        (if (gx#stx-null? _tl3963139711_)
                                            (_loop3961539672_
                                             _lp-tl3961839687_
                                             (cons _hd3963039709_
                                                   _expr3961939677_)
                                             (cons _hd3962739701_
                                                   _id3962039679_))
                                            (___kont4150641507_))))
                                    (___kont4150641507_))
                                (___kont4150641507_))))
                        (___kont4150641507_))))
                (___kont4150641507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_id3962239716_
                                                       (reverse _id3962039679_))
                                                      (_expr3962139714_
                                                       (reverse _expr3961939677_)))
                                                  (if (gx#stx-pair?
                                                       _tl3961139664_)
                                                      (let ((_e3963239719_
                                                             (gx#stx-e
                                                              _tl3961139664_)))
                                                        (let ((_tl3963439724_
                                                               (##cdr _e3963239719_))
                                                              (_hd3963339722_
                                                               (##car _e3963239719_)))
                                                          (if (gx#stx-null?
                                                               _tl3963439724_)
                                                              (___kont4150241503_
                                                               _hd3963339722_
                                                               _expr3962139714_
                                                               _id3962239716_)
                                                              (___kont4150641507_))))
                                                      (___kont4150641507_)))))))
                                  (_loop3961539672_
                                   _target3961239667_
                                   '()
                                   '()))))
                             (___match4156141562_
                              (lambda (_e3957239775_
                                       _hd3957339778_
                                       _tl3957439780_
                                       _e3957539783_
                                       _hd3957639786_
                                       _tl3957739788_
                                       ___splice4150041501_
                                       _target3957839791_
                                       _tl3958039793_)
                                (letrec ((_loop3958139796_
                                          (lambda (_hd3957939799_)
                                            (if (gx#stx-pair? _hd3957939799_)
                                                (let ((_e3958239802_
                                                       (gx#stx-e
                                                        _hd3957939799_)))
                                                  (let ((_lp-tl3958439807_
                                                         (##cdr _e3958239802_))
                                                        (_lp-hd3958339805_
                                                         (##car _e3958239802_)))
                                                    (if (gx#stx-pair?
                                                         _lp-hd3958339805_)
                                                        (let ((_e3958539810_
                                                               (gx#stx-e
                                                                _lp-hd3958339805_)))
                                                          (let ((_tl3958739815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3958539810_))
                        (_hd3958639813_ (##car _e3958539810_)))
                    (if (gx#stx-pair? _hd3958639813_)
                        (let ((_e3958839818_ (gx#stx-e _hd3958639813_)))
                          (let ((_tl3959039823_ (##cdr _e3958839818_))
                                (_hd3958939821_ (##car _e3958839818_)))
                            (if (gx#stx-null? _tl3959039823_)
                                (if (gx#stx-pair? _tl3958739815_)
                                    (let ((_e3959139826_
                                           (gx#stx-e _tl3958739815_)))
                                      (let ((_tl3959339831_
                                             (##cdr _e3959139826_))
                                            (_hd3959239829_
                                             (##car _e3959139826_)))
                                        (if (gx#stx-pair? _hd3959239829_)
                                            (let ((_e3959439834_
                                                   (gx#stx-e _hd3959239829_)))
                                              (let ((_tl3959639839_
                                                     (##cdr _e3959439834_))
                                                    (_hd3959539837_
                                                     (##car _e3959439834_)))
                                                (if (gx#identifier?
                                                     _hd3959539837_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3959539837_)
                                                        (if (gx#stx-pair?
                                                             _tl3959639839_)
                                                            (let ((_e3959739842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3959639839_)))
                      (let ((_tl3959939847_ (##cdr _e3959739842_))
                            (_hd3959839845_ (##car _e3959739842_)))
                        (if (gx#stx-null? _tl3959939847_)
                            (if (gx#stx-null? _tl3959339831_)
                                (_loop3958139796_ _lp-tl3958439807_)
                                (___match4158541586_
                                 _e3957239775_
                                 _hd3957339778_
                                 _tl3957439780_
                                 _e3957539783_
                                 _hd3957639786_
                                 _tl3957739788_
                                 ___splice4150041501_
                                 _target3957839791_
                                 _tl3958039793_))
                            (___match4158541586_
                             _e3957239775_
                             _hd3957339778_
                             _tl3957439780_
                             _e3957539783_
                             _hd3957639786_
                             _tl3957739788_
                             ___splice4150041501_
                             _target3957839791_
                             _tl3958039793_))))
                    (___match4158541586_
                     _e3957239775_
                     _hd3957339778_
                     _tl3957439780_
                     _e3957539783_
                     _hd3957639786_
                     _tl3957739788_
                     ___splice4150041501_
                     _target3957839791_
                     _tl3958039793_))
                (___match4158541586_
                 _e3957239775_
                 _hd3957339778_
                 _tl3957439780_
                 _e3957539783_
                 _hd3957639786_
                 _tl3957739788_
                 ___splice4150041501_
                 _target3957839791_
                 _tl3958039793_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4158541586_
                                                     _e3957239775_
                                                     _hd3957339778_
                                                     _tl3957439780_
                                                     _e3957539783_
                                                     _hd3957639786_
                                                     _tl3957739788_
                                                     ___splice4150041501_
                                                     _target3957839791_
                                                     _tl3958039793_))))
                                            (___match4158541586_
                                             _e3957239775_
                                             _hd3957339778_
                                             _tl3957439780_
                                             _e3957539783_
                                             _hd3957639786_
                                             _tl3957739788_
                                             ___splice4150041501_
                                             _target3957839791_
                                             _tl3958039793_))))
                                    (___match4158541586_
                                     _e3957239775_
                                     _hd3957339778_
                                     _tl3957439780_
                                     _e3957539783_
                                     _hd3957639786_
                                     _tl3957739788_
                                     ___splice4150041501_
                                     _target3957839791_
                                     _tl3958039793_))
                                (___match4158541586_
                                 _e3957239775_
                                 _hd3957339778_
                                 _tl3957439780_
                                 _e3957539783_
                                 _hd3957639786_
                                 _tl3957739788_
                                 ___splice4150041501_
                                 _target3957839791_
                                 _tl3958039793_))))
                        (___match4158541586_
                         _e3957239775_
                         _hd3957339778_
                         _tl3957439780_
                         _e3957539783_
                         _hd3957639786_
                         _tl3957739788_
                         ___splice4150041501_
                         _target3957839791_
                         _tl3958039793_))))
                (___match4158541586_
                 _e3957239775_
                 _hd3957339778_
                 _tl3957439780_
                 _e3957539783_
                 _hd3957639786_
                 _tl3957739788_
                 ___splice4150041501_
                 _target3957839791_
                 _tl3958039793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (if (gx#stx-pair?
                                                       _tl3957739788_)
                                                      (let ((_e3960039851_
                                                             (gx#stx-e
                                                              _tl3957739788_)))
                                                        (let ((_tl3960239856_
                                                               (##cdr _e3960039851_))
                                                              (_hd3960139854_
                                                               (##car _e3960039851_)))
                                                          (if (gx#stx-null?
                                                               _tl3960239856_)
                                                              (___kont4149841499_)
                                                              (___match4158541586_
                                                               _e3957239775_
                                                               _hd3957339778_
                                                               _tl3957439780_
                                                               _e3957539783_
                                                               _hd3957639786_
                                                               _tl3957739788_
                                                               ___splice4150041501_
                                                               _target3957839791_
                                                               _tl3958039793_))))
                                                      (___match4158541586_
                                                       _e3957239775_
                                                       _hd3957339778_
                                                       _tl3957439780_
                                                       _e3957539783_
                                                       _hd3957639786_
                                                       _tl3957739788_
                                                       ___splice4150041501_
                                                       _target3957839791_
                                                       _tl3958039793_)))))))
                                  (_loop3958139796_ _target3957839791_)))))
                        (if (gx#stx-pair? ___stx4149441495_)
                            (let ((_e3956039866_ (gx#stx-e ___stx4149441495_)))
                              (let ((_tl3956239871_ (##cdr _e3956039866_))
                                    (_hd3956139869_ (##car _e3956039866_)))
                                (if (gx#identifier? _hd3956139869_)
                                    (if (gx#stx-eq? '%#if _hd3956139869_)
                                        (if (gx#stx-pair? _tl3956239871_)
                                            (let ((_e3956339874_
                                                   (gx#stx-e _tl3956239871_)))
                                              (let ((_tl3956539879_
                                                     (##cdr _e3956339874_))
                                                    (_hd3956439877_
                                                     (##car _e3956339874_)))
                                                (if (gx#stx-pair?
                                                     _tl3956539879_)
                                                    (let ((_e3956639882_
                                                           (gx#stx-e
                                                            _tl3956539879_)))
                                                      (let ((_tl3956839887_
                                                             (##cdr _e3956639882_))
                                                            (_hd3956739885_
                                                             (##car _e3956639882_)))
                                                        (if (gx#stx-pair?
                                                             _tl3956839887_)
                                                            (let ((_e3956939890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3956839887_)))
                      (let ((_tl3957139895_ (##cdr _e3956939890_))
                            (_hd3957039893_ (##car _e3956939890_)))
                        (if (gx#stx-null? _tl3957139895_)
                            (___kont4149641497_
                             _hd3957039893_
                             _hd3956739885_
                             _hd3956439877_)
                            (___kont4150641507_))))
                    (___kont4150641507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4150641507_))))
                                            (___kont4150641507_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3956139869_)
                                            (if (gx#stx-pair? _tl3956239871_)
                                                (let ((_e3957539783_
                                                       (gx#stx-e
                                                        _tl3956239871_)))
                                                  (let ((_tl3957739788_
                                                         (##cdr _e3957539783_))
                                                        (_hd3957639786_
                                                         (##car _e3957539783_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3957639786_)
                                                        (let ((___splice4150041501_
                                                               (gx#syntax-split-splice
                                                                _hd3957639786_
                                                                '0)))
                                                          (let ((_tl3958039793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice4150041501_ '1))
                        (_target3957839791_
                         (##vector-ref ___splice4150041501_ '0)))
                    (if (gx#stx-null? _tl3958039793_)
                        (___match4156141562_
                         _e3956039866_
                         _hd3956139869_
                         _tl3956239871_
                         _e3957539783_
                         _hd3957639786_
                         _tl3957739788_
                         ___splice4150041501_
                         _target3957839791_
                         _tl3958039793_)
                        (___kont4150641507_))))
                (___kont4150641507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4150641507_))
                                            (___kont4150641507_)))
                                    (___kont4150641507_))))
                            (___kont4150641507_)))))))
               (_fold-blocks39368_
                (lambda (_rest39467_ _blocks39468_)
                  (let* ((_rest3946939486_ _rest39467_)
                         (_E3947239490_
                          (lambda ()
                            (error '"No clause matching" _rest3946939486_))))
                    (let ((_K3947439510_
                           (lambda (_rest39501_
                                    _assert39502_
                                    _bind39503_
                                    _body39504_
                                    _name39505_)
                             (let ((_g44261_
                                    (_basic-block39367_
                                     _body39504_
                                     _bind39503_
                                     _assert39502_)))
                               (begin
                                 (let ((_g44262_
                                        (if (##values? _g44261_)
                                            (##vector-length _g44261_)
                                            1)))
                                   (if (not (##fx= _g44262_ 2))
                                       (error "Context expects 2 values"
                                              _g44262_)))
                                 (let ((_body39507_ (##vector-ref _g44261_ 0))
                                       (_body-blocks39508_
                                        (##vector-ref _g44261_ 1)))
                                   (_fold-blocks39368_
                                    (foldl1 cons
                                            _rest39501_
                                            _body-blocks39508_)
                                    (cons (cons _name39505_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind39503_))
                                (cons _body39507_ '())))
                    (cons _assert39502_ (cons _bind39503_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks39468_)))))))
                          (_K3947339495_ (lambda () _blocks39468_)))
                      (let ((_try-match3947139498_
                             (lambda ()
                               (if (##null? _rest3946939486_)
                                   (_K3947339495_)
                                   (_E3947239490_)))))
                        (if (##pair? _rest3946939486_)
                            (let ((_tl3947639515_ (##cdr _rest3946939486_))
                                  (_hd3947539513_ (##car _rest3946939486_)))
                              (if (##pair? _hd3947539513_)
                                  (let ((_tl3947839520_ (##cdr _hd3947539513_))
                                        (_hd3947739518_
                                         (##car _hd3947539513_)))
                                    (if (##pair? _tl3947839520_)
                                        (let ((_tl3948039527_
                                               (##cdr _tl3947839520_))
                                              (_hd3947939525_
                                               (##car _tl3947839520_)))
                                          (if (##pair? _tl3948039527_)
                                              (let ((_tl3948239534_
                                                     (##cdr _tl3948039527_))
                                                    (_hd3948139532_
                                                     (##car _tl3948039527_)))
                                                (if (##pair? _tl3948239534_)
                                                    (let ((_tl3948439541_
                                                           (##cdr _tl3948239534_))
                                                          (_hd3948339539_
                                                           (##car _tl3948239534_)))
                                                      (if (##null? _tl3948439541_)
                                                          (let ((_name39523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3947739518_)
                        (_body39530_ _hd3947939525_)
                        (_bind39537_ _hd3948139532_)
                        (_assert39544_ _hd3948339539_)
                        (_rest39546_ _tl3947639515_))
                    (_K3947439510_
                     _rest39546_
                     _assert39544_
                     _bind39537_
                     _body39530_
                     _name39523_))
                  (_E3947239490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3947239490_)))
                                              (_E3947239490_)))
                                        (_E3947239490_)))
                                  (_E3947239490_)))
                            (_try-match3947139498_))))))))
        (let* ((_clause3936939376_ _clause39362_)
               (_E3937139380_
                (lambda () (error '"No clause matching" _clause3936939376_)))
               (_K3937239455_
                (lambda (_body39383_ _name39384_)
                  (let* ((_g3938639402_
                          (lambda (_g3938739399_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3938739399_)))
                         (_g3938539452_
                          (lambda (_g3938739405_)
                            (if (gx#stx-pair? _g3938739405_)
                                (let ((_e3938939407_ (gx#stx-e _g3938739405_)))
                                  (let ((_hd3939039410_ (##car _e3938939407_))
                                        (_tl3939139412_ (##cdr _e3938939407_)))
                                    (if (gx#identifier? _hd3939039410_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3939039410_)
                                            (if (gx#stx-pair? _tl3939139412_)
                                                (let ((_e3939239415_
                                                       (gx#stx-e
                                                        _tl3939139412_)))
                                                  (let ((_hd3939339418_
                                                         (##car _e3939239415_))
                                                        (_tl3939439420_
                                                         (##cdr _e3939239415_)))
                                                    (if (gx#stx-null?
                                                         _hd3939339418_)
                                                        (if (gx#stx-pair?
                                                             _tl3939439420_)
                                                            (let ((_e3939539423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3939439420_)))
                      (let ((_hd3939639426_ (##car _e3939539423_))
                            (_tl3939739428_ (##cdr _e3939539423_)))
                        (if (gx#stx-null? _tl3939739428_)
                            ((lambda (_L39431_)
                               (let ((_g44263_
                                      (_basic-block39367_ _L39431_ '() '())))
                                 (begin
                                   (let ((_g44264_
                                          (if (##values? _g44263_)
                                              (##vector-length _g44263_)
                                              1)))
                                     (if (not (##fx= _g44264_ 2))
                                         (error "Context expects 2 values"
                                                _g44264_)))
                                   (let ((_body39449_
                                          (##vector-ref _g44263_ 0))
                                         (_body-blocks39450_
                                          (##vector-ref _g44263_ 1)))
                                     (_fold-blocks39368_
                                      _body-blocks39450_
                                      (cons (cons _name39384_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body39449_ '())))
                      (cons '() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks39363_))))))
                             _hd3939639426_)
                            (_g3938639402_ _g3938739405_))))
                    (_g3938639402_ _g3938739405_))
                (_g3938639402_ _g3938739405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3938639402_ _g3938739405_))
                                            (_g3938639402_ _g3938739405_))
                                        (_g3938639402_ _g3938739405_))))
                                (_g3938639402_ _g3938739405_)))))
                    (_g3938539452_ _body39383_)))))
          (if (##pair? _clause3936939376_)
              (let ((_hd3937339458_ (##car _clause3936939376_))
                    (_tl3937439460_ (##cdr _clause3936939376_)))
                (let* ((_name39463_ _hd3937339458_)
                       (_body39465_ _tl3937439460_))
                  (_K3937239455_ _body39465_ _name39463_)))
              (_E3937139380_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks38968_)
      (let _lp38970_ ((_rest38972_ _blocks38968_) (_blocks38973_ '()))
        (let* ((_rest3897438982_ _rest38972_)
               (_else3897639031_
                (lambda ()
                  (foldl1 (lambda (_block38990_ _r38991_)
                            (let* ((_block3899239003_ _block38990_)
                                   (_E3899439007_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _block3899239003_)))
                                   (_K3899539013_
                                    (lambda (_kont39010_ _name39011_)
                                      (cons (cons _name39011_ _kont39010_)
                                            _r38991_))))
                              (if (##pair? _block3899239003_)
                                  (let ((_hd3899639016_
                                         (##car _block3899239003_))
                                        (_tl3899739018_
                                         (##cdr _block3899239003_)))
                                    (let ((_name39021_ _hd3899639016_))
                                      (if (##pair? _tl3899739018_)
                                          (let ((_tl3899939023_
                                                 (##cdr _tl3899739018_)))
                                            (if (##pair? _tl3899939023_)
                                                (let* ((_hd3900039026_
                                                        (##car _tl3899939023_))
                                                       (_kont39029_
                                                        _hd3900039026_))
                                                  (_K3899539013_
                                                   _kont39029_
                                                   _name39021_))
                                                (_E3899439007_)))
                                          (_E3899439007_))))
                                  (_E3899439007_))))
                          '()
                          _blocks38973_)))
               (_K3897839350_
                (lambda (_rest39034_ _block39035_)
                  (let* ((_block3903639061_ _block39035_)
                         (_E3903939065_
                          (lambda ()
                            (error '"No clause matching" _block3903639061_))))
                    (let ((_K3905139321_
                           (lambda (_assert39243_ _kont39244_ _name39245_)
                             (let* ((_g3924739263_
                                     (lambda (_g3924839260_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3924839260_)))
                                    (_g3924639318_
                                     (lambda (_g3924839266_)
                                       (if (gx#stx-pair? _g3924839266_)
                                           (let ((_e3925039268_
                                                  (gx#stx-e _g3924839266_)))
                                             (let ((_hd3925139271_
                                                    (##car _e3925039268_))
                                                   (_tl3925239273_
                                                    (##cdr _e3925039268_)))
                                               (if (gx#identifier?
                                                    _hd3925139271_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3925139271_)
                                                       (if (gx#stx-pair?
                                                            _tl3925239273_)
                                                           (let ((_e3925339276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3925239273_)))
                     (let ((_hd3925439279_ (##car _e3925339276_))
                           (_tl3925539281_ (##cdr _e3925339276_)))
                       (if (gx#stx-null? _hd3925439279_)
                           (if (gx#stx-pair? _tl3925539281_)
                               (let ((_e3925639284_ (gx#stx-e _tl3925539281_)))
                                 (let ((_hd3925739287_ (##car _e3925639284_))
                                       (_tl3925839289_ (##cdr _e3925639284_)))
                                   (if (gx#stx-null? _tl3925839289_)
                                       ((lambda (_L39292_)
                                          (let* ((_body39307_
                                                  (gxc#optimize-match-block
                                                   _L39292_
                                                   _assert39243_
                                                   '()
                                                   _rest39034_))
                                                 (_block39309_
                                                  (cons _name39245_
                                                        (cons 'restart:
                                                              (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '() (cons _body39307_ '())))
                            (cons _assert39243_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks39311_
                                                  (cons _block39309_
                                                        _blocks38973_))
                                                 (_rest39313_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest39034_
                                                   _blocks39311_))
                                                 (_rest39315_
                                                  (gxc#optimize-match-fuse-restart-blocks
                                                   _rest39313_
                                                   _blocks39311_)))
                                            (_lp38970_
                                             _rest39315_
                                             _blocks39311_)))
                                        _hd3925739287_)
                                       (_g3924739263_ _g3924839266_))))
                               (_g3924739263_ _g3924839266_))
                           (_g3924739263_ _g3924839266_))))
                   (_g3924739263_ _g3924839266_))
               (_g3924739263_ _g3924839266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3924739263_
                                                    _g3924839266_))))
                                           (_g3924739263_ _g3924839266_)))))
                               (_g3924639318_ _kont39244_))))
                          (_K3904039204_
                           (lambda (_bind39069_
                                    _assert39070_
                                    _kont39071_
                                    _name39072_)
                             (let* ((_g3907439100_
                                     (lambda (_g3907539097_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g3907539097_)))
                                    (_g3907339201_
                                     (lambda (_g3907539103_)
                                       (if (gx#stx-pair? _g3907539103_)
                                           (let ((_e3907839105_
                                                  (gx#stx-e _g3907539103_)))
                                             (let ((_hd3907939108_
                                                    (##car _e3907839105_))
                                                   (_tl3908039110_
                                                    (##cdr _e3907839105_)))
                                               (if (gx#identifier?
                                                    _hd3907939108_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd3907939108_)
                                                       (if (gx#stx-pair?
                                                            _tl3908039110_)
                                                           (let ((_e3908139113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3908039110_)))
                     (let ((_hd3908239116_ (##car _e3908139113_))
                           (_tl3908339118_ (##cdr _e3908139113_)))
                       (if (gx#stx-pair/null? _hd3908239116_)
                           (let ((_g44265_
                                  (gx#syntax-split-splice _hd3908239116_ '0)))
                             (begin
                               (let ((_g44266_
                                      (if (##values? _g44265_)
                                          (##vector-length _g44265_)
                                          1)))
                                 (if (not (##fx= _g44266_ 2))
                                     (error "Context expects 2 values"
                                            _g44266_)))
                               (let ((_target3908439121_
                                      (##vector-ref _g44265_ 0))
                                     (_tl3908639123_
                                      (##vector-ref _g44265_ 1)))
                                 (if (gx#stx-null? _tl3908639123_)
                                     (letrec ((_loop3908739126_
                                               (lambda (_hd3908539129_
                                                        _id3909139131_)
                                                 (if (gx#stx-pair?
                                                      _hd3908539129_)
                                                     (let ((_e3908839134_
                                                            (gx#stx-e
                                                             _hd3908539129_)))
                                                       (let ((_lp-hd3908939137_
                                                              (##car _e3908839134_))
                                                             (_lp-tl3909039139_
                                                              (##cdr _e3908839134_)))
                                                         (_loop3908739126_
                                                          _lp-tl3909039139_
                                                          (cons _lp-hd3908939137_
                                                                _id3909139131_))))
                                                     (let ((_id3909239142_
                                                            (reverse _id3909139131_)))
                                                       (if (gx#stx-pair?
                                                            _tl3908339118_)
                                                           (let ((_e3909339145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3908339118_)))
                     (let ((_hd3909439148_ (##car _e3909339145_))
                           (_tl3909539150_ (##cdr _e3909339145_)))
                       (if (gx#stx-null? _tl3909539150_)
                           ((lambda (_L39153_ _L39154_)
                              (let* ((_body39183_
                                      (gxc#optimize-match-block
                                       _L39153_
                                       _assert39070_
                                       _bind39069_
                                       _rest39034_))
                                     (_block39192_
                                      (cons _name39072_
                                            (cons 'continue:
                                                  (cons (cons '%#lambda
                                                              (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3918439187_ _g3918539189_)
                                        (cons _g3918439187_ _g3918539189_))
                                      '()
                                      _L39154_))
                            (cons _body39183_ '())))
                (cons _assert39070_ (cons _bind39069_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_blocks39194_
                                      (cons _block39192_ _blocks38973_))
                                     (_rest39196_
                                      (gxc#optimize-match-prune-blocks
                                       _rest39034_
                                       _blocks39194_))
                                     (_rest39198_
                                      (gxc#optimize-match-fuse-restart-blocks
                                       _rest39196_
                                       _blocks39194_)))
                                (_lp38970_ _rest39198_ _blocks39194_)))
                            _hd3909439148_
                            _id3909239142_)
                           (_g3907439100_ _g3907539103_))))
                   (_g3907439100_ _g3907539103_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3908739126_
                                        _target3908439121_
                                        '()))
                                     (_g3907439100_ _g3907539103_)))))
                           (_g3907439100_ _g3907539103_))))
                   (_g3907439100_ _g3907539103_))
               (_g3907439100_ _g3907539103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3907439100_
                                                    _g3907539103_))))
                                           (_g3907439100_ _g3907539103_)))))
                               (_g3907339201_ _kont39071_)))))
                      (if (##pair? _block3903639061_)
                          (let ((_tl3905339326_ (##cdr _block3903639061_))
                                (_hd3905239324_ (##car _block3903639061_)))
                            (if (##pair? _tl3905339326_)
                                (let ((_tl3905539333_ (##cdr _tl3905339326_))
                                      (_hd3905439331_ (##car _tl3905339326_)))
                                  (if (##eq? _hd3905439331_ 'restart:)
                                      (if (##pair? _tl3905539333_)
                                          (let ((_tl3905739338_
                                                 (##cdr _tl3905539333_))
                                                (_hd3905639336_
                                                 (##car _tl3905539333_)))
                                            (if (##pair? _tl3905739338_)
                                                (let ((_tl3905939345_
                                                       (##cdr _tl3905739338_))
                                                      (_hd3905839343_
                                                       (##car _tl3905739338_)))
                                                  (if (##null? _tl3905939345_)
                                                      (let ((_name39329_
                                                             _hd3905239324_)
                                                            (_kont39341_
                                                             _hd3905639336_)
                                                            (_assert39348_
                                                             _hd3905839343_))
                                                        (_K3905139321_
                                                         _assert39348_
                                                         _kont39341_
                                                         _name39329_))
                                                      (_E3903939065_)))
                                                (_E3903939065_)))
                                          (_E3903939065_))
                                      (if (##eq? _hd3905439331_ 'continue:)
                                          (if (##pair? _tl3905539333_)
                                              (let ((_tl3904639221_
                                                     (##cdr _tl3905539333_))
                                                    (_hd3904539219_
                                                     (##car _tl3905539333_)))
                                                (if (##pair? _tl3904639221_)
                                                    (let ((_tl3904839228_
                                                           (##cdr _tl3904639221_))
                                                          (_hd3904739226_
                                                           (##car _tl3904639221_)))
                                                      (if (##pair? _tl3904839228_)
                                                          (let ((_tl3905039235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl3904839228_))
                        (_hd3904939233_ (##car _tl3904839228_)))
                    (if (##null? _tl3905039235_)
                        (let ((_name39212_ _hd3905239324_)
                              (_kont39224_ _hd3904539219_)
                              (_assert39231_ _hd3904739226_)
                              (_bind39238_ _hd3904939233_))
                          (_K3904039204_
                           _bind39238_
                           _assert39231_
                           _kont39224_
                           _name39212_))
                        (_E3903939065_)))
                  (_E3903939065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E3903939065_)))
                                              (_E3903939065_))
                                          (_E3903939065_))))
                                (_E3903939065_)))
                          (_E3903939065_)))))))
          (if (##pair? _rest3897438982_)
              (let ((_hd3897939353_ (##car _rest3897438982_))
                    (_tl3898039355_ (##cdr _rest3897438982_)))
                (let* ((_block39358_ _hd3897939353_)
                       (_rest39360_ _tl3898039355_))
                  (_K3897839350_ _rest39360_ _block39358_)))
              (_else3897639031_))))))
  (define gxc#optimize-match-block
    (lambda (_body33591_ _assert33592_ _bind33593_ _blocks33594_)
      (letrec* ((_env-assert33829_ '())
                (_env-type33830_ '())
                (_env-bind33831_ '())
                (_in-splice?33832_ '#f)
                (_do-assert33833_
                 (lambda (_assert38891_ _K38892_)
                   (if (pair? _assert38891_)
                       (let _lp38894_ ((_rest38896_ _assert38891_)
                                       (_env-assert38897_ _env-assert33829_)
                                       (_env-type38898_ _env-type33830_))
                         (let* ((_rest3889938907_ _rest38896_)
                                (_else3890138915_
                                 (lambda ()
                                   (_do-assert!33839_
                                    _env-assert38897_
                                    _env-type38898_
                                    _K38892_)))
                                (_K3890338956_
                                 (lambda (_rest38918_ _assert38919_)
                                   (let* ((_assert3892038927_ _assert38919_)
                                          (_E3892238931_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert3892038927_)))
                                          (_K3892338944_
                                           (lambda (_val38934_ _expr38935_)
                                             (let* ((_sexpr38937_
                                                     (gxc#apply-generate-runtime-repr
                                                      _expr38935_))
                                                    (_env-assert38939_
                                                     (cons (cons _sexpr38937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val38934_)
                   _env-assert38897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type38941_
                                                     (_fold-assert-type33835_
                                                      _expr38935_
                                                      _val38934_
                                                      _env-type38898_)))
                                               (_lp38894_
                                                _rest38918_
                                                _env-assert38939_
                                                _env-type38941_)))))
                                     (if (##pair? _assert3892038927_)
                                         (let ((_hd3892438947_
                                                (##car _assert3892038927_))
                                               (_tl3892538949_
                                                (##cdr _assert3892038927_)))
                                           (let* ((_expr38952_ _hd3892438947_)
                                                  (_val38954_ _tl3892538949_))
                                             (_K3892338944_
                                              _val38954_
                                              _expr38952_)))
                                         (_E3892238931_))))))
                           (if (##pair? _rest3889938907_)
                               (let ((_hd3890438959_ (##car _rest3889938907_))
                                     (_tl3890538961_ (##cdr _rest3889938907_)))
                                 (let* ((_assert38964_ _hd3890438959_)
                                        (_rest38966_ _tl3890538961_))
                                   (_K3890338956_ _rest38966_ _assert38964_)))
                               (_else3890138915_))))
                       (_K38892_))))
                (_predicate-type33834_
                 (lambda (_id38836_)
                   (let* ((_sym38838_ (gxc#identifier-symbol _id38836_))
                          (_$e38840_ _sym38838_))
                     (let ((_default3884238873_
                            (lambda ()
                              (let* ((_g3884538852_
                                      (gxc#optimizer-resolve-type _sym38838_))
                                     (_else3884738860_ (lambda () '#f))
                                     (_K3884938865_
                                      (lambda (_struct-t38863_)
                                        (gxc#optimizer-resolve-type
                                         _struct-t38863_))))
                                (if (##structure-instance-of?
                                     _g3884538852_
                                     'gxc#!struct-pred::t)
                                    (let* ((_e3885038868_
                                            (##vector-ref _g3884538852_ '1))
                                           (_struct-t38871_ _e3885038868_))
                                      (gxc#optimizer-resolve-type
                                       _struct-t38871_))
                                    (_else3884738860_)))))
                           (_table3884338875_
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
                       (if (symbol? _$e38840_)
                           (let* ((_h38878_ (##symbol-hash _$e38840_))
                                  (_ix38881_ (##fxmodulo _h38878_ '63))
                                  (_q38884_
                                   (##vector-ref _table3884338875_ _ix38881_)))
                             (if _q38884_
                                 (if (eq? (##car _q38884_) _$e38840_)
                                     (let ((_x38888_ (##cdr _q38884_)))
                                       (if (##fx< _x38888_ '5)
                                           (if (##fx< _x38888_ '2)
                                               (if (##fx= _x38888_ '0)
                                                   'pair
                                                   'null)
                                               (if (##fx= _x38888_ '2)
                                                   'vector
                                                   (if (##fx= _x38888_ '3)
                                                       'box
                                                       'identifier)))
                                           (if (##fx< _x38888_ '7)
                                               (if (##fx= _x38888_ '5)
                                                   'stx-pair
                                                   'stx-null)
                                               (if (##fx= _x38888_ '7)
                                                   'stx-vector
                                                   (if (##fx= _x38888_ '8)
                                                       'stx-box
                                                       'stx-datum)))))
                                     (_default3884238873_))
                                 (_default3884238873_)))
                           (_default3884238873_))))))
                (_fold-assert-type33835_
                 (lambda (_expr37784_ _val37785_ _env37786_)
                   (let* ((___stx4175241753_ _expr37784_)
                          (_g3779437973_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4175241753_))))
                     (let ((___kont4175441755_
                            (lambda (_L38805_ _L38806_)
                              (let ((_$e38828_
                                     (_predicate-type33834_ _L38806_)))
                                (if _$e38828_
                                    ((lambda (_t38831_)
                                       (cons (cons _L38805_
                                                   (cons _t38831_
                                                         (cons _val37785_
                                                               '())))
                                             _env37786_))
                                     _$e38828_)
                                    _env37786_))))
                           (___kont4175641757_
                            (lambda (_L38495_ _L38496_ _L38497_)
                              (let ((_$e38522_
                                     (gxc#identifier-symbol _L38497_)))
                                (if (let ((_$e38525_ (eq? '##fx= _$e38522_)))
                                      (if _$e38525_
                                          _$e38525_
                                          (eq? 'fx= _$e38522_)))
                                    (let* ((___stx4165841659_ _L38496_)
                                           (_g3852938558_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               ___stx4165841659_))))
                                      (let ((___kont4166041661_
                                             (lambda (_L38626_ _L38627_)
                                               (let ((_$e38652_
                                                      (_countf-symbol33836_
                                                       _L38627_)))
                                                 (if _$e38652_
                                                     ((lambda (_sym38655_)
                                                        (cons (cons _L38626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _sym38655_
                                  (cons (gx#stx-e _L38495_)
                                        (cons _val37785_ '()))))
                      _env37786_))
              _$e38652_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _env37786_))))
                                            (___kont4166241663_
                                             (lambda () _env37786_)))
                                        (if (gx#stx-pair? ___stx4165841659_)
                                            (let ((_e3853338570_
                                                   (gx#stx-e
                                                    ___stx4165841659_)))
                                              (let ((_tl3853538575_
                                                     (##cdr _e3853338570_))
                                                    (_hd3853438573_
                                                     (##car _e3853338570_)))
                                                (if (gx#identifier?
                                                     _hd3853438573_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3853438573_)
                                                        (if (gx#stx-pair?
                                                             _tl3853538575_)
                                                            (let ((_e3853638578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3853538575_)))
                      (let ((_tl3853838583_ (##cdr _e3853638578_))
                            (_hd3853738581_ (##car _e3853638578_)))
                        (if (gx#stx-pair? _hd3853738581_)
                            (let ((_e3853938586_ (gx#stx-e _hd3853738581_)))
                              (let ((_tl3854138591_ (##cdr _e3853938586_))
                                    (_hd3854038589_ (##car _e3853938586_)))
                                (if (gx#identifier? _hd3854038589_)
                                    (if (gx#stx-eq? '%#ref _hd3854038589_)
                                        (if (gx#stx-pair? _tl3854138591_)
                                            (let ((_e3854238594_
                                                   (gx#stx-e _tl3854138591_)))
                                              (let ((_tl3854438599_
                                                     (##cdr _e3854238594_))
                                                    (_hd3854338597_
                                                     (##car _e3854238594_)))
                                                (if (gx#stx-null?
                                                     _tl3854438599_)
                                                    (if (gx#stx-pair?
                                                         _tl3853838583_)
                                                        (let ((_e3854538602_
                                                               (gx#stx-e
                                                                _tl3853838583_)))
                                                          (let ((_tl3854738607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3854538602_))
                        (_hd3854638605_ (##car _e3854538602_)))
                    (if (gx#stx-pair? _hd3854638605_)
                        (let ((_e3854838610_ (gx#stx-e _hd3854638605_)))
                          (let ((_tl3855038615_ (##cdr _e3854838610_))
                                (_hd3854938613_ (##car _e3854838610_)))
                            (if (gx#identifier? _hd3854938613_)
                                (if (gx#stx-eq? '%#ref _hd3854938613_)
                                    (if (gx#stx-pair? _tl3855038615_)
                                        (let ((_e3855138618_
                                               (gx#stx-e _tl3855038615_)))
                                          (let ((_tl3855338623_
                                                 (##cdr _e3855138618_))
                                                (_hd3855238621_
                                                 (##car _e3855138618_)))
                                            (if (gx#stx-null? _tl3855338623_)
                                                (if (gx#stx-null?
                                                     _tl3854738607_)
                                                    (___kont4166041661_
                                                     _hd3855238621_
                                                     _hd3854338597_)
                                                    (___kont4166241663_))
                                                (___kont4166241663_))))
                                        (___kont4166241663_))
                                    (___kont4166241663_))
                                (___kont4166241663_))))
                        (___kont4166241663_))))
                (___kont4166241663_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4166241663_))))
                                            (___kont4166241663_))
                                        (___kont4166241663_))
                                    (___kont4166241663_))))
                            (___kont4166241663_))))
                    (___kont4166241663_))
                (___kont4166241663_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4166241663_))))
                                            (___kont4166241663_))))
                                    (if (let ((_$e38660_
                                               (eq? '##eq? _$e38522_)))
                                          (if _$e38660_
                                              _$e38660_
                                              (let ((_$e38663_
                                                     (eq? 'eq? _$e38522_)))
                                                (if _$e38663_
                                                    _$e38663_
                                                    (let ((_$e38666_
                                                           (eq? '##eqv?
                                                                _$e38522_)))
                                                      (if _$e38666_
                                                          _$e38666_
                                                          (let ((_$e38669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? 'eqv? _$e38522_)))
                    (if _$e38669_
                        _$e38669_
                        (let ((_$e38672_ (eq? '##equal? _$e38522_)))
                          (if _$e38672_
                              _$e38672_
                              (let ((_$e38675_ (eq? 'equal? _$e38522_)))
                                (if _$e38675_
                                    _$e38675_
                                    (let ((_$e38678_
                                           (eq? 'gx#free-identifier=?
                                                _$e38522_)))
                                      (if _$e38678_
                                          _$e38678_
                                          (eq? 'gx#stx-eq?
                                               _$e38522_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        ((lambda (_sym38681_)
                                           (let* ((_sym38683_
                                                   (_eqf-symbol33837_
                                                    _sym38681_))
                                                  (___stx4172641727_ _L38496_)
                                                  (_g3868638699_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx4172641727_))))
                                             (let ((___kont4172841729_
                                                    (lambda (_L38727_)
                                                      (cons (cons _L38727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _sym38683_
                                (cons (gx#stx-e _L38495_)
                                      (cons _val37785_ '()))))
                    _env37786_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4173041731_
                                                    (lambda () _env37786_)))
                                               (if (gx#stx-pair?
                                                    ___stx4172641727_)
                                                   (let ((_e3868938711_
                                                          (gx#stx-e
                                                           ___stx4172641727_)))
                                                     (let ((_tl3869138716_
                                                            (##cdr _e3868938711_))
                                                           (_hd3869038714_
                                                            (##car _e3868938711_)))
                                                       (if (gx#identifier?
                                                            _hd3869038714_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3869038714_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3869138716_)
                           (let ((_e3869238719_ (gx#stx-e _tl3869138716_)))
                             (let ((_tl3869438724_ (##cdr _e3869238719_))
                                   (_hd3869338722_ (##car _e3869238719_)))
                               (if (gx#stx-null? _tl3869438724_)
                                   (___kont4172841729_ _hd3869338722_)
                                   (___kont4173041731_))))
                           (___kont4173041731_))
                       (___kont4173041731_))
                   (___kont4173041731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4173041731_)))))
                                         _$e38522_)
                                        _env37786_)))))
                           (___kont4175841759_
                            (lambda (_L38399_ _L38400_ _L38401_)
                              (_fold-assert-type33835_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38401_ '()))
                                           (cons _L38399_
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote)
                                                             (cons _L38400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37785_
                               _env37786_)))
                           (___kont4176041761_
                            (lambda (_L38289_ _L38290_ _L38291_)
                              (let ((_$e38320_
                                     (gxc#identifier-symbol _L38291_)))
                                (if (let ((_$e38323_
                                           (eq? 'gx#free-identifier=?
                                                _$e38320_)))
                                      (if _$e38323_
                                          _$e38323_
                                          (eq? 'gx#stx-eq? _$e38320_)))
                                    ((lambda (_sym38326_)
                                       (let ((_sym38328_
                                              (_eqf-symbol33837_ _sym38326_)))
                                         (cons (cons _L38290_
                                                     (cons _sym38328_
                                                           (cons _L38289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _val37785_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _env37786_)))
                                     _$e38320_)
                                    _env37786_))))
                           (___kont4176241763_
                            (lambda (_L38173_ _L38174_ _L38175_)
                              (_fold-assert-type33835_
                               (cons (gx#datum->syntax__0 '#f '%#call)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)
                                                 (cons _L38175_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#ref)
                                                       (cons _L38173_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#quote-syntax)
                                                             (cons _L38174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _val37785_
                               _env37786_)))
                           (___kont4176441765_
                            (lambda (_L38057_ _L38058_ _L38059_)
                              (_fold-assert-type33835_
                               (gxc#apply-expression-subst
                                _L38058_
                                _L38059_
                                _L38057_)
                               _val37785_
                               _env37786_)))
                           (___kont4176641767_ (lambda () _env37786_)))
                       (if (gx#stx-pair? ___stx4175241753_)
                           (let ((_e3779838749_ (gx#stx-e ___stx4175241753_)))
                             (let ((_tl3780038754_ (##cdr _e3779838749_))
                                   (_hd3779938752_ (##car _e3779838749_)))
                               (if (gx#identifier? _hd3779938752_)
                                   (if (gx#stx-eq? '%#call _hd3779938752_)
                                       (if (gx#stx-pair? _tl3780038754_)
                                           (let ((_e3780138757_
                                                  (gx#stx-e _tl3780038754_)))
                                             (let ((_tl3780338762_
                                                    (##cdr _e3780138757_))
                                                   (_hd3780238760_
                                                    (##car _e3780138757_)))
                                               (if (gx#stx-pair?
                                                    _hd3780238760_)
                                                   (let ((_e3780438765_
                                                          (gx#stx-e
                                                           _hd3780238760_)))
                                                     (let ((_tl3780638770_
                                                            (##cdr _e3780438765_))
                                                           (_hd3780538768_
                                                            (##car _e3780438765_)))
                                                       (if (gx#identifier?
                                                            _hd3780538768_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd3780538768_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3780638770_)
                           (let ((_e3780738773_ (gx#stx-e _tl3780638770_)))
                             (let ((_tl3780938778_ (##cdr _e3780738773_))
                                   (_hd3780838776_ (##car _e3780738773_)))
                               (if (gx#stx-null? _tl3780938778_)
                                   (if (gx#stx-pair? _tl3780338762_)
                                       (let ((_e3781038781_
                                              (gx#stx-e _tl3780338762_)))
                                         (let ((_tl3781238786_
                                                (##cdr _e3781038781_))
                                               (_hd3781138784_
                                                (##car _e3781038781_)))
                                           (if (gx#stx-pair? _hd3781138784_)
                                               (let ((_e3781338789_
                                                      (gx#stx-e
                                                       _hd3781138784_)))
                                                 (let ((_tl3781538794_
                                                        (##cdr _e3781338789_))
                                                       (_hd3781438792_
                                                        (##car _e3781338789_)))
                                                   (if (gx#identifier?
                                                        _hd3781438792_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _hd3781438792_)
                                                           (if (gx#stx-pair?
                                                                _tl3781538794_)
                                                               (let ((_e3781638797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3781538794_)))
                         (let ((_tl3781838802_ (##cdr _e3781638797_))
                               (_hd3781738800_ (##car _e3781638797_)))
                           (if (gx#stx-null? _tl3781838802_)
                               (if (gx#stx-null? _tl3781238786_)
                                   (___kont4175441755_
                                    _hd3781738800_
                                    _hd3780838776_)
                                   (if (gx#stx-pair? _tl3781238786_)
                                       (let ((_e3783738471_
                                              (gx#stx-e _tl3781238786_)))
                                         (let ((_tl3783938476_
                                                (##cdr _e3783738471_))
                                               (_hd3783838474_
                                                (##car _e3783738471_)))
                                           (if (gx#stx-pair? _hd3783838474_)
                                               (let ((_e3784038479_
                                                      (gx#stx-e
                                                       _hd3783838474_)))
                                                 (let ((_tl3784238484_
                                                        (##cdr _e3784038479_))
                                                       (_hd3784138482_
                                                        (##car _e3784038479_)))
                                                   (if (gx#identifier?
                                                        _hd3784138482_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _hd3784138482_)
                                                           (if (gx#stx-pair?
                                                                _tl3784238484_)
                                                               (let ((_e3784338487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3784238484_)))
                         (let ((_tl3784538492_ (##cdr _e3784338487_))
                               (_hd3784438490_ (##car _e3784338487_)))
                           (if (gx#stx-null? _tl3784538492_)
                               (if (gx#stx-null? _tl3783938476_)
                                   (___kont4175641757_
                                    _hd3784438490_
                                    _hd3781138784_
                                    _hd3780838776_)
                                   (___kont4176641767_))
                               (___kont4176641767_))))
                       (___kont4176641767_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3784138482_)
                       (if (gx#stx-pair? _tl3784238484_)
                           (let ((_e3790338281_ (gx#stx-e _tl3784238484_)))
                             (let ((_tl3790538286_ (##cdr _e3790338281_))
                                   (_hd3790438284_ (##car _e3790338281_)))
                               (if (gx#stx-null? _tl3790538286_)
                                   (if (gx#stx-null? _tl3783938476_)
                                       (___kont4176041761_
                                        _hd3790438284_
                                        _hd3781738800_
                                        _hd3780838776_)
                                       (___kont4176641767_))
                                   (___kont4176641767_))))
                           (___kont4176641767_))
                       (___kont4176641767_)))
               (___kont4176641767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4176641767_))))
                                       (___kont4176641767_)))
                               (if (gx#stx-pair? _tl3781238786_)
                                   (let ((_e3783738471_
                                          (gx#stx-e _tl3781238786_)))
                                     (let ((_tl3783938476_
                                            (##cdr _e3783738471_))
                                           (_hd3783838474_
                                            (##car _e3783738471_)))
                                       (if (gx#stx-pair? _hd3783838474_)
                                           (let ((_e3784038479_
                                                  (gx#stx-e _hd3783838474_)))
                                             (let ((_tl3784238484_
                                                    (##cdr _e3784038479_))
                                                   (_hd3784138482_
                                                    (##car _e3784038479_)))
                                               (if (gx#identifier?
                                                    _hd3784138482_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3784138482_)
                                                       (if (gx#stx-pair?
                                                            _tl3784238484_)
                                                           (let ((_e3784338487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3784238484_)))
                     (let ((_tl3784538492_ (##cdr _e3784338487_))
                           (_hd3784438490_ (##car _e3784338487_)))
                       (if (gx#stx-null? _tl3784538492_)
                           (if (gx#stx-null? _tl3783938476_)
                               (___kont4175641757_
                                _hd3784438490_
                                _hd3781138784_
                                _hd3780838776_)
                               (___kont4176641767_))
                           (___kont4176641767_))))
                   (___kont4176641767_))
               (___kont4176641767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176641767_))))
                                           (___kont4176641767_))))
                                   (___kont4176641767_)))))
                       (if (gx#stx-pair? _tl3781238786_)
                           (let ((_e3783738471_ (gx#stx-e _tl3781238786_)))
                             (let ((_tl3783938476_ (##cdr _e3783738471_))
                                   (_hd3783838474_ (##car _e3783738471_)))
                               (if (gx#stx-pair? _hd3783838474_)
                                   (let ((_e3784038479_
                                          (gx#stx-e _hd3783838474_)))
                                     (let ((_tl3784238484_
                                            (##cdr _e3784038479_))
                                           (_hd3784138482_
                                            (##car _e3784038479_)))
                                       (if (gx#identifier? _hd3784138482_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3784138482_)
                                               (if (gx#stx-pair?
                                                    _tl3784238484_)
                                                   (let ((_e3784338487_
                                                          (gx#stx-e
                                                           _tl3784238484_)))
                                                     (let ((_tl3784538492_
                                                            (##cdr _e3784338487_))
                                                           (_hd3784438490_
                                                            (##car _e3784338487_)))
                                                       (if (gx#stx-null?
                                                            _tl3784538492_)
                                                           (if (gx#stx-null?
                                                                _tl3783938476_)
                                                               (___kont4175641757_
                                                                _hd3784438490_
                                                                _hd3781138784_
                                                                _hd3780838776_)
                                                               (___kont4176641767_))
                                                           (___kont4176641767_))))
                                                   (___kont4176641767_))
                                               (___kont4176641767_))
                                           (___kont4176641767_))))
                                   (___kont4176641767_))))
                           (___kont4176641767_)))
                   (if (gx#stx-pair? _tl3781238786_)
                       (let ((_e3783738471_ (gx#stx-e _tl3781238786_)))
                         (let ((_tl3783938476_ (##cdr _e3783738471_))
                               (_hd3783838474_ (##car _e3783738471_)))
                           (if (gx#stx-pair? _hd3783838474_)
                               (let ((_e3784038479_ (gx#stx-e _hd3783838474_)))
                                 (let ((_tl3784238484_ (##cdr _e3784038479_))
                                       (_hd3784138482_ (##car _e3784038479_)))
                                   (if (gx#identifier? _hd3784138482_)
                                       (if (gx#stx-eq? '%#quote _hd3784138482_)
                                           (if (gx#stx-pair? _tl3784238484_)
                                               (let ((_e3784338487_
                                                      (gx#stx-e
                                                       _tl3784238484_)))
                                                 (let ((_tl3784538492_
                                                        (##cdr _e3784338487_))
                                                       (_hd3784438490_
                                                        (##car _e3784338487_)))
                                                   (if (gx#stx-null?
                                                        _tl3784538492_)
                                                       (if (gx#stx-null?
                                                            _tl3783938476_)
                                                           (___kont4175641757_
                                                            _hd3784438490_
                                                            _hd3781138784_
                                                            _hd3780838776_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3781438792_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3781538794_)
                           (let ((_e3786738383_ (gx#stx-e _tl3781538794_)))
                             (let ((_tl3786938388_ (##cdr _e3786738383_))
                                   (_hd3786838386_ (##car _e3786738383_)))
                               (___kont4176641767_)))
                           (___kont4176641767_))
                       (if (gx#stx-eq? '%#quote-syntax _hd3781438792_)
                           (if (gx#stx-pair? _tl3781538794_)
                               (let ((_e3792738141_ (gx#stx-e _tl3781538794_)))
                                 (let ((_tl3792938146_ (##cdr _e3792738141_))
                                       (_hd3792838144_ (##car _e3792738141_)))
                                   (___kont4176641767_)))
                               (___kont4176641767_))
                           (___kont4176641767_))))
               (if (gx#stx-eq? '%#quote _hd3781438792_)
                   (if (gx#stx-pair? _tl3781538794_)
                       (let ((_e3786738383_ (gx#stx-e _tl3781538794_)))
                         (let ((_tl3786938388_ (##cdr _e3786738383_))
                               (_hd3786838386_ (##car _e3786738383_)))
                           (if (gx#stx-null? _tl3786938388_)
                               (if (gx#stx-null? _tl3783938476_)
                                   (___kont4175841759_
                                    _hd3783838474_
                                    _hd3786838386_
                                    _hd3780838776_)
                                   (___kont4176641767_))
                               (___kont4176641767_))))
                       (___kont4176641767_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3781438792_)
                       (if (gx#stx-pair? _tl3781538794_)
                           (let ((_e3792738141_ (gx#stx-e _tl3781538794_)))
                             (let ((_tl3792938146_ (##cdr _e3792738141_))
                                   (_hd3792838144_ (##car _e3792738141_)))
                               (___kont4176641767_)))
                           (___kont4176641767_))
                       (___kont4176641767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3781438792_)
                                                   (if (gx#stx-pair?
                                                        _tl3781538794_)
                                                       (let ((_e3786738383_
                                                              (gx#stx-e
                                                               _tl3781538794_)))
                                                         (let ((_tl3786938388_
                                                                (##cdr _e3786738383_))
                                                               (_hd3786838386_
                                                                (##car _e3786738383_)))
                                                           (if (gx#stx-null?
                                                                _tl3786938388_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3783938476_)
                           (___kont4175841759_
                            _hd3783838474_
                            _hd3786838386_
                            _hd3780838776_)
                           (___kont4176641767_))
                       (___kont4176641767_))))
               (___kont4176641767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3781438792_)
                                                       (if (gx#stx-pair?
                                                            _tl3781538794_)
                                                           (let ((_e3792738141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3781538794_)))
                     (let ((_tl3792938146_ (##cdr _e3792738141_))
                           (_hd3792838144_ (##car _e3792738141_)))
                       (___kont4176641767_)))
                   (___kont4176641767_))
               (___kont4176641767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3781438792_)
                                               (if (gx#stx-pair?
                                                    _tl3781538794_)
                                                   (let ((_e3786738383_
                                                          (gx#stx-e
                                                           _tl3781538794_)))
                                                     (let ((_tl3786938388_
                                                            (##cdr _e3786738383_))
                                                           (_hd3786838386_
                                                            (##car _e3786738383_)))
                                                       (if (gx#stx-null?
                                                            _tl3786938388_)
                                                           (if (gx#stx-null?
                                                                _tl3783938476_)
                                                               (___kont4175841759_
                                                                _hd3783838474_
                                                                _hd3786838386_
                                                                _hd3780838776_)
                                                               (___kont4176641767_))
                                                           (___kont4176641767_))))
                                                   (___kont4176641767_))
                                               (if (gx#stx-eq?
                                                    '%#quote-syntax
                                                    _hd3781438792_)
                                                   (if (gx#stx-pair?
                                                        _tl3781538794_)
                                                       (let ((_e3792738141_
                                                              (gx#stx-e
                                                               _tl3781538794_)))
                                                         (let ((_tl3792938146_
                                                                (##cdr _e3792738141_))
                                                               (_hd3792838144_
                                                                (##car _e3792738141_)))
                                                           (if (gx#stx-null?
                                                                _tl3792938146_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3784138482_)
                           (if (gx#stx-pair? _tl3784238484_)
                               (let ((_e3793638165_ (gx#stx-e _tl3784238484_)))
                                 (let ((_tl3793838170_ (##cdr _e3793638165_))
                                       (_hd3793738168_ (##car _e3793638165_)))
                                   (if (gx#stx-null? _tl3793838170_)
                                       (if (gx#stx-null? _tl3783938476_)
                                           (___kont4176241763_
                                            _hd3793738168_
                                            _hd3792838144_
                                            _hd3780838776_)
                                           (___kont4176641767_))
                                       (___kont4176641767_))))
                               (___kont4176641767_))
                           (___kont4176641767_))
                       (___kont4176641767_))))
               (___kont4176641767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176641767_))))
                                       (if (gx#stx-eq? '%#quote _hd3781438792_)
                                           (if (gx#stx-pair? _tl3781538794_)
                                               (let ((_e3786738383_
                                                      (gx#stx-e
                                                       _tl3781538794_)))
                                                 (let ((_tl3786938388_
                                                        (##cdr _e3786738383_))
                                                       (_hd3786838386_
                                                        (##car _e3786738383_)))
                                                   (if (gx#stx-null?
                                                        _tl3786938388_)
                                                       (if (gx#stx-null?
                                                            _tl3783938476_)
                                                           (___kont4175841759_
                                                            _hd3783838474_
                                                            _hd3786838386_
                                                            _hd3780838776_)
                                                           (___kont4176641767_))
                                                       (___kont4176641767_))))
                                               (___kont4176641767_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3781438792_)
                                               (if (gx#stx-pair?
                                                    _tl3781538794_)
                                                   (let ((_e3792738141_
                                                          (gx#stx-e
                                                           _tl3781538794_)))
                                                     (let ((_tl3792938146_
                                                            (##cdr _e3792738141_))
                                                           (_hd3792838144_
                                                            (##car _e3792738141_)))
                                                       (___kont4176641767_)))
                                                   (___kont4176641767_))
                                               (___kont4176641767_))))))
                               (if (gx#stx-eq? '%#quote _hd3781438792_)
                                   (if (gx#stx-pair? _tl3781538794_)
                                       (let ((_e3786738383_
                                              (gx#stx-e _tl3781538794_)))
                                         (let ((_tl3786938388_
                                                (##cdr _e3786738383_))
                                               (_hd3786838386_
                                                (##car _e3786738383_)))
                                           (if (gx#stx-null? _tl3786938388_)
                                               (if (gx#stx-null?
                                                    _tl3783938476_)
                                                   (___kont4175841759_
                                                    _hd3783838474_
                                                    _hd3786838386_
                                                    _hd3780838776_)
                                                   (___kont4176641767_))
                                               (___kont4176641767_))))
                                       (___kont4176641767_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3781438792_)
                                       (if (gx#stx-pair? _tl3781538794_)
                                           (let ((_e3792738141_
                                                  (gx#stx-e _tl3781538794_)))
                                             (let ((_tl3792938146_
                                                    (##cdr _e3792738141_))
                                                   (_hd3792838144_
                                                    (##car _e3792738141_)))
                                               (___kont4176641767_)))
                                           (___kont4176641767_))
                                       (___kont4176641767_))))))
                       (if (gx#stx-eq? '%#quote _hd3781438792_)
                           (if (gx#stx-pair? _tl3781538794_)
                               (let ((_e3786738383_ (gx#stx-e _tl3781538794_)))
                                 (let ((_tl3786938388_ (##cdr _e3786738383_))
                                       (_hd3786838386_ (##car _e3786738383_)))
                                   (___kont4176641767_)))
                               (___kont4176641767_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3781438792_)
                               (if (gx#stx-pair? _tl3781538794_)
                                   (let ((_e3792738141_
                                          (gx#stx-e _tl3781538794_)))
                                     (let ((_tl3792938146_
                                            (##cdr _e3792738141_))
                                           (_hd3792838144_
                                            (##car _e3792738141_)))
                                       (___kont4176641767_)))
                                   (___kont4176641767_))
                               (___kont4176641767_)))))
               (if (gx#stx-pair? _tl3781238786_)
                   (let ((_e3783738471_ (gx#stx-e _tl3781238786_)))
                     (let ((_tl3783938476_ (##cdr _e3783738471_))
                           (_hd3783838474_ (##car _e3783738471_)))
                       (if (gx#stx-pair? _hd3783838474_)
                           (let ((_e3784038479_ (gx#stx-e _hd3783838474_)))
                             (let ((_tl3784238484_ (##cdr _e3784038479_))
                                   (_hd3784138482_ (##car _e3784038479_)))
                               (if (gx#identifier? _hd3784138482_)
                                   (if (gx#stx-eq? '%#quote _hd3784138482_)
                                       (if (gx#stx-pair? _tl3784238484_)
                                           (let ((_e3784338487_
                                                  (gx#stx-e _tl3784238484_)))
                                             (let ((_tl3784538492_
                                                    (##cdr _e3784338487_))
                                                   (_hd3784438490_
                                                    (##car _e3784338487_)))
                                               (if (gx#stx-null?
                                                    _tl3784538492_)
                                                   (if (gx#stx-null?
                                                        _tl3783938476_)
                                                       (___kont4175641757_
                                                        _hd3784438490_
                                                        _hd3781138784_
                                                        _hd3780838776_)
                                                       (___kont4176641767_))
                                                   (___kont4176641767_))))
                                           (___kont4176641767_))
                                       (___kont4176641767_))
                                   (___kont4176641767_))))
                           (___kont4176641767_))))
                   (___kont4176641767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair?
                                                    _tl3781238786_)
                                                   (let ((_e3783738471_
                                                          (gx#stx-e
                                                           _tl3781238786_)))
                                                     (let ((_tl3783938476_
                                                            (##cdr _e3783738471_))
                                                           (_hd3783838474_
                                                            (##car _e3783738471_)))
                                                       (if (gx#stx-pair?
                                                            _hd3783838474_)
                                                           (let ((_e3784038479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3783838474_)))
                     (let ((_tl3784238484_ (##cdr _e3784038479_))
                           (_hd3784138482_ (##car _e3784038479_)))
                       (if (gx#identifier? _hd3784138482_)
                           (if (gx#stx-eq? '%#quote _hd3784138482_)
                               (if (gx#stx-pair? _tl3784238484_)
                                   (let ((_e3784338487_
                                          (gx#stx-e _tl3784238484_)))
                                     (let ((_tl3784538492_
                                            (##cdr _e3784338487_))
                                           (_hd3784438490_
                                            (##car _e3784338487_)))
                                       (if (gx#stx-null? _tl3784538492_)
                                           (if (gx#stx-null? _tl3783938476_)
                                               (___kont4175641757_
                                                _hd3784438490_
                                                _hd3781138784_
                                                _hd3780838776_)
                                               (___kont4176641767_))
                                           (___kont4176641767_))))
                                   (___kont4176641767_))
                               (___kont4176641767_))
                           (___kont4176641767_))))
                   (___kont4176641767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176641767_)))))
                                       (___kont4176641767_))
                                   (___kont4176641767_))))
                           (___kont4176641767_))
                       (if (gx#stx-eq? '%#lambda _hd3780538768_)
                           (if (gx#stx-pair? _tl3780638770_)
                               (let ((_e3795138009_ (gx#stx-e _tl3780638770_)))
                                 (let ((_tl3795338014_ (##cdr _e3795138009_))
                                       (_hd3795238012_ (##car _e3795138009_)))
                                   (if (gx#stx-pair? _hd3795238012_)
                                       (let ((_e3795438017_
                                              (gx#stx-e _hd3795238012_)))
                                         (let ((_tl3795638022_
                                                (##cdr _e3795438017_))
                                               (_hd3795538020_
                                                (##car _e3795438017_)))
                                           (if (gx#stx-null? _tl3795638022_)
                                               (if (gx#stx-pair?
                                                    _tl3795338014_)
                                                   (let ((_e3795738025_
                                                          (gx#stx-e
                                                           _tl3795338014_)))
                                                     (let ((_tl3795938030_
                                                            (##cdr _e3795738025_))
                                                           (_hd3795838028_
                                                            (##car _e3795738025_)))
                                                       (if (gx#stx-null?
                                                            _tl3795938030_)
                                                           (if (gx#stx-pair?
                                                                _tl3780338762_)
                                                               (let ((_e3796038033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3780338762_)))
                         (let ((_tl3796238038_ (##cdr _e3796038033_))
                               (_hd3796138036_ (##car _e3796038033_)))
                           (if (gx#stx-pair? _hd3796138036_)
                               (let ((_e3796338041_ (gx#stx-e _hd3796138036_)))
                                 (let ((_tl3796538046_ (##cdr _e3796338041_))
                                       (_hd3796438044_ (##car _e3796338041_)))
                                   (if (gx#identifier? _hd3796438044_)
                                       (if (gx#stx-eq? '%#ref _hd3796438044_)
                                           (if (gx#stx-pair? _tl3796538046_)
                                               (let ((_e3796638049_
                                                      (gx#stx-e
                                                       _tl3796538046_)))
                                                 (let ((_tl3796838054_
                                                        (##cdr _e3796638049_))
                                                       (_hd3796738052_
                                                        (##car _e3796638049_)))
                                                   (if (gx#stx-null?
                                                        _tl3796838054_)
                                                       (if (gx#stx-null?
                                                            _tl3796238038_)
                                                           (___kont4176441765_
                                                            _hd3796738052_
                                                            _hd3795838028_
                                                            _hd3795538020_)
                                                           (___kont4176641767_))
                                                       (___kont4176641767_))))
                                               (___kont4176641767_))
                                           (___kont4176641767_))
                                       (___kont4176641767_))))
                               (___kont4176641767_))))
                       (___kont4176641767_))
                   (___kont4176641767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176641767_))
                                               (___kont4176641767_))))
                                       (___kont4176641767_))))
                               (___kont4176641767_))
                           (___kont4176641767_)))
                   (___kont4176641767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4176641767_))))
                                           (___kont4176641767_))
                                       (___kont4176641767_))
                                   (___kont4176641767_))))
                           (___kont4176641767_))))))
                (_countf-symbol33836_
                 (lambda (_id37776_)
                   (let ((_$e37778_ (gxc#identifier-symbol _id37776_)))
                     (if (let ((_$e37781_ (eq? '##vector-length _$e37778_)))
                           (if _$e37781_
                               _$e37781_
                               (eq? 'vector-length _$e37778_)))
                         'vector-length
                         (if (eq? 'values-count _$e37778_)
                             'values-count
                             '#f)))))
                (_eqf-symbol33837_
                 (lambda (_sym37762_)
                   (let ((_$e37764_ _sym37762_))
                     (if (let ((_$e37767_ (eq? '##eq? _$e37764_)))
                           (if _$e37767_ _$e37767_ (eq? 'eq? _$e37764_)))
                         'eq?
                         (if (let ((_$e37770_ (eq? '##eqv? _$e37764_)))
                               (if _$e37770_ _$e37770_ (eq? 'eqv? _$e37764_)))
                             'eqv?
                             (if (let ((_$e37773_ (eq? '##equal? _$e37764_)))
                                   (if _$e37773_
                                       _$e37773_
                                       (eq? 'equal? _$e37764_)))
                                 'equal?
                                 (if (eq? 'gx#free-identifier=? _$e37764_)
                                     'free-identifier=?
                                     (if (eq? 'gx#stx-eq? _$e37764_)
                                         'stx-eq?
                                         '#f))))))))
                (_eqf-symbol?33838_
                 (lambda (_sym37745_)
                   (let ((_$e37747_ _sym37745_))
                     (if (let ((_$e37750_ (eq? 'eq? _$e37747_)))
                           (if _$e37750_
                               _$e37750_
                               (let ((_$e37753_ (eq? 'eqv? _$e37747_)))
                                 (if _$e37753_
                                     _$e37753_
                                     (let ((_$e37756_ (eq? 'equal? _$e37747_)))
                                       (if _$e37756_
                                           _$e37756_
                                           (let ((_$e37759_
                                                  (eq? 'free-identifier=?
                                                       _$e37747_)))
                                             (if _$e37759_
                                                 _$e37759_
                                                 (eq? 'stx-eq?
                                                      _$e37747_)))))))))
                         '#t
                         '#f))))
                (_do-assert!33839_
                 (lambda (_assert37736_ _type37737_ _K37738_)
                   (let ((_unwind-assert37740_ _env-assert33829_)
                         (_unwind-type37741_ _env-type33830_))
                     (begin
                       (set! _env-assert33829_ _assert37736_)
                       (set! _env-type33830_ _type37737_)
                       (let ((_val37743_ (_K37738_)))
                         (begin
                           (set! _env-assert33829_ _unwind-assert37740_)
                           (set! _env-type33830_ _unwind-type37741_)
                           _val37743_))))))
                (_do-bind33840_
                 (lambda (_bind37733_ _K37734_)
                   (if (pair? _bind37733_)
                       (_do-bind!33842_
                        (_fold-bind-env33841_ _bind37733_ _env-bind33831_)
                        _K37734_)
                       (_K37734_))))
                (_fold-bind-env33841_
                 (lambda (_bind37662_ _env37663_)
                   (let _lp37665_ ((_rest37667_ _bind37662_)
                                   (_env37668_ _env37663_))
                     (let* ((_rest3766937677_ _rest37667_)
                            (_else3767137685_ (lambda () _env37668_))
                            (_K3767337721_
                             (lambda (_rest37688_ _bind37689_)
                               (let* ((_bind3769037697_ _bind37689_)
                                      (_E3769237701_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3769037697_)))
                                      (_K3769337709_
                                       (lambda (_expr37704_ _id37705_)
                                         (let ((_sexpr37707_
                                                (gxc#apply-generate-runtime-repr
                                                 _expr37704_)))
                                           (_lp37665_
                                            _rest37688_
                                            (cons (cons _sexpr37707_ _id37705_)
                                                  _env37668_))))))
                                 (if (##pair? _bind3769037697_)
                                     (let ((_hd3769437712_
                                            (##car _bind3769037697_))
                                           (_tl3769537714_
                                            (##cdr _bind3769037697_)))
                                       (let* ((_id37717_ _hd3769437712_)
                                              (_expr37719_ _tl3769537714_))
                                         (_K3769337709_
                                          _expr37719_
                                          _id37717_)))
                                     (_E3769237701_))))))
                       (if (##pair? _rest3766937677_)
                           (let ((_hd3767437724_ (##car _rest3766937677_))
                                 (_tl3767537726_ (##cdr _rest3766937677_)))
                             (let* ((_bind37729_ _hd3767437724_)
                                    (_rest37731_ _tl3767537726_))
                               (_K3767337721_ _rest37731_ _bind37729_)))
                           (_else3767137685_))))))
                (_do-bind!33842_
                 (lambda (_env37655_ _K37656_)
                   (let ((_unwind37658_ _env-bind33831_))
                     (begin
                       (set! _env-bind33831_ _env37655_)
                       (let ((_val37660_ (_K37656_)))
                         (begin
                           (set! _env-bind33831_ _unwind37658_)
                           _val37660_))))))
                (_do-splice!33843_
                 (lambda (_K37649_)
                   (let ((_unwind37651_ _in-splice?33832_))
                     (begin
                       (set! _in-splice?33832_ '#t)
                       (let ((_val37653_ (_K37649_)))
                         (begin
                           (set! _in-splice?33832_ _unwind37651_)
                           _val37653_))))))
                (_optimize-e33844_
                 (lambda (_expr36846_)
                   (let* ((___stx4220442205_ _expr36846_)
                          (_g3685337026_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4220442205_))))
                     (let ((___kont4220642207_
                            (lambda (_L37621_ _L37622_ _L37623_)
                              (let ((_$e37640_ (_assert-e33847_ _L37623_)))
                                (if (eq? '#t _$e37640_)
                                    (_optimize-e33844_ _L37622_)
                                    (if (eq? '#f _$e37640_)
                                        (_optimize-e33844_ _L37621_)
                                        (let ((_K37643_
                                               (_optimize-t__0__4116741168_
                                                _L37622_
                                                _L37623_))
                                              (_E37644_
                                               (_optimize-f__4116941170_
                                                _L37621_
                                                _L37623_)))
                                          (if (equal? (gxc#apply-generate-runtime-repr
                                                       _K37643_)
                                                      (gxc#apply-generate-runtime-repr
                                                       _E37644_))
                                              _K37643_
                                              (cons '%#if
                                                    (cons _L37623_
                                                          (cons _K37643_
                                                                (cons _E37644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (___kont4220842209_
                            (lambda (_L37551_ _L37552_)
                              (let ((_$e37572_ (_lookup-block33852_ _L37552_)))
                                (if _$e37572_
                                    ((lambda (_block37575_)
                                       (if (_nonlinear-block?33854_
                                            _block37575_)
                                           _expr36846_
                                           (_optimize-e33844_
                                            (_inline-block33853_
                                             _block37575_
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g3757637579_
                                                                _g3757737581_)
                                                         (cons _g3757637579_
                                                               _g3757737581_))
                                                       '()
                                                       _L37551_))))))
                                     _$e37572_)
                                    _expr36846_))))
                           (___kont4221242213_
                            (lambda (_L37441_ _L37442_ _L37443_)
                              (let ((_body37462_ (_optimize-e33844_ _L37441_)))
                                (cons '%#let-values
                                      (cons (begin
                                              (gx#syntax-check-splice-targets
                                               _L37442_
                                               _L37443_)
                                              (foldr2 (lambda (_g3746337467_
                                                               _g3746437469_
                                                               _g3746537471_)
                                                        (cons (cons (cons _g3746437469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                        (cons _g3746337467_ '()))
                                  '()))
                      _g3746537471_))
              '()
              _L37442_
              _L37443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _body37462_ '()))))))
                           (___kont4221642217_
                            (lambda (_L37309_ _L37310_ _L37311_)
                              (_bind-e__0__4117541176_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3732937332_
                                                       _g3733037334_)
                                                (cons _g3732937332_
                                                      _g3733037334_))
                                              '()
                                              _L37311_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3733637339_
                                                       _g3733737341_)
                                                (cons _g3733637339_
                                                      _g3733737341_))
                                              '()
                                              _L37310_)))
                               _L37309_)))
                           (___kont4222042221_
                            (lambda (_L37166_
                                     _L37167_
                                     _L37168_
                                     _L37169_
                                     _L37170_)
                              (_do-splice!33843_
                               (lambda ()
                                 (let ((_expr37212_
                                        (_optimize-e33844_ _L37168_)))
                                   (cons '%#letrec-values
                                         (cons (cons (cons (cons _L37170_ '())
                                                           (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3721337216_
                                                        _g3721437218_)
                                                 (cons _g3721337216_
                                                       _g3721437218_))
                                               '()
                                               _L37169_))
                                     (cons _expr37212_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g3722037223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g3722137225_)
                         (cons _g3722037223_ _g3722137225_))
                       '()
                       _L37167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L37166_ '()))))))))
                           (___kont4222642227_ (lambda () _expr36846_)))
                       (let* ((___match4241342414_
                               (lambda (_e3697437038_
                                        _hd3697537041_
                                        _tl3697637043_
                                        _e3697737046_
                                        _hd3697837049_
                                        _tl3697937051_
                                        _e3698037054_
                                        _hd3698137057_
                                        _tl3698237059_
                                        _e3698337062_
                                        _hd3698437065_
                                        _tl3698537067_
                                        _e3698637070_
                                        _hd3698737073_
                                        _tl3698837075_
                                        _e3698937078_
                                        _hd3699037081_
                                        _tl3699137083_
                                        _e3699237086_
                                        _hd3699337089_
                                        _tl3699437091_
                                        _e3699537094_
                                        _hd3699637097_
                                        _tl3699737099_
                                        ___splice4222242223_
                                        _target3699837102_
                                        _tl3700037104_)
                                 (letrec ((_loop3700137107_
                                           (lambda (_hd3699937110_
                                                    _id3700537112_)
                                             (if (gx#stx-pair? _hd3699937110_)
                                                 (let ((_e3700237115_
                                                        (gx#stx-e
                                                         _hd3699937110_)))
                                                   (let ((_lp-tl3700437120_
                                                          (##cdr _e3700237115_))
                                                         (_lp-hd3700337118_
                                                          (##car _e3700237115_)))
                                                     (_loop3700137107_
                                                      _lp-tl3700437120_
                                                      (cons _lp-hd3700337118_
                                                            _id3700537112_))))
                                                 (let ((_id3700637123_
                                                        (reverse _id3700537112_)))
                                                   (if (gx#stx-pair?
                                                        _tl3699737099_)
                                                       (let ((_e3700737126_
                                                              (gx#stx-e
                                                               _tl3699737099_)))
                                                         (let ((_tl3700937131_
                                                                (##cdr _e3700737126_))
                                                               (_hd3700837129_
                                                                (##car _e3700737126_)))
                                                           (if (gx#stx-null?
                                                                _tl3700937131_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3699137083_)
                           (if (gx#stx-pair/null? _tl3698237059_)
                               (let ((___splice4222442225_
                                      (gx#syntax-split-splice
                                       _tl3698237059_
                                       '0)))
                                 (let ((_tl3701237136_
                                        (##vector-ref ___splice4222442225_ '1))
                                       (_target3701037134_
                                        (##vector-ref
                                         ___splice4222442225_
                                         '0)))
                                   (if (gx#stx-null? _tl3701237136_)
                                       (letrec ((_loop3701337139_
                                                 (lambda (_hd3701137142_
                                                          _bind3701737144_)
                                                   (if (gx#stx-pair?
                                                        _hd3701137142_)
                                                       (let ((_e3701437147_
                                                              (gx#stx-e
                                                               _hd3701137142_)))
                                                         (let ((_lp-tl3701637152_
                                                                (##cdr _e3701437147_))
                                                               (_lp-hd3701537150_
                                                                (##car _e3701437147_)))
                                                           (_loop3701337139_
                                                            _lp-tl3701637152_
                                                            (cons _lp-hd3701537150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind3701737144_))))
               (let ((_bind3701837155_ (reverse _bind3701737144_)))
                 (if (gx#stx-pair? _tl3697937051_)
                     (let ((_e3701937158_ (gx#stx-e _tl3697937051_)))
                       (let ((_tl3702137163_ (##cdr _e3701937158_))
                             (_hd3702037161_ (##car _e3701937158_)))
                         (if (gx#stx-null? _tl3702137163_)
                             (___kont4222042221_
                              _hd3702037161_
                              _bind3701837155_
                              _hd3700837129_
                              _id3700637123_
                              _hd3698737073_)
                             (___kont4222642227_))))
                     (___kont4222642227_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop3701337139_
                                          _target3701037134_
                                          '()))
                                       (___kont4222642227_))))
                               (___kont4222642227_))
                           (___kont4222642227_))
                       (___kont4222642227_))))
               (___kont4222642227_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_loop3700137107_ _target3699837102_ '()))))
                              (___match4234742348_
                               (lambda (_e3694037233_
                                        _hd3694137236_
                                        _tl3694237238_
                                        _e3694337241_
                                        _hd3694437244_
                                        _tl3694537246_
                                        ___splice4221842219_
                                        _target3694637249_
                                        _tl3694837251_)
                                 (letrec ((_loop3694937254_
                                           (lambda (_hd3694737257_
                                                    _expr3695337259_
                                                    _id3695437261_)
                                             (if (gx#stx-pair? _hd3694737257_)
                                                 (let ((_e3695037264_
                                                        (gx#stx-e
                                                         _hd3694737257_)))
                                                   (let ((_lp-tl3695237269_
                                                          (##cdr _e3695037264_))
                                                         (_lp-hd3695137267_
                                                          (##car _e3695037264_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3695137267_)
                                                         (let ((_e3695737272_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3695137267_)))
                   (let ((_tl3695937277_ (##cdr _e3695737272_))
                         (_hd3695837275_ (##car _e3695737272_)))
                     (if (gx#stx-pair? _hd3695837275_)
                         (let ((_e3696037280_ (gx#stx-e _hd3695837275_)))
                           (let ((_tl3696237285_ (##cdr _e3696037280_))
                                 (_hd3696137283_ (##car _e3696037280_)))
                             (if (gx#stx-null? _tl3696237285_)
                                 (if (gx#stx-pair? _tl3695937277_)
                                     (let ((_e3696337288_
                                            (gx#stx-e _tl3695937277_)))
                                       (let ((_tl3696537293_
                                              (##cdr _e3696337288_))
                                             (_hd3696437291_
                                              (##car _e3696337288_)))
                                         (if (gx#stx-null? _tl3696537293_)
                                             (_loop3694937254_
                                              _lp-tl3695237269_
                                              (cons _hd3696437291_
                                                    _expr3695337259_)
                                              (cons _hd3696137283_
                                                    _id3695437261_))
                                             (___kont4222642227_))))
                                     (___kont4222642227_))
                                 (___kont4222642227_))))
                         (___kont4222642227_))))
                 (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3695637298_
                                                        (reverse _id3695437261_))
                                                       (_expr3695537296_
                                                        (reverse _expr3695337259_)))
                                                   (if (gx#stx-pair?
                                                        _tl3694537246_)
                                                       (let ((_e3696637301_
                                                              (gx#stx-e
                                                               _tl3694537246_)))
                                                         (let ((_tl3696837306_
                                                                (##cdr _e3696637301_))
                                                               (_hd3696737304_
                                                                (##car _e3696637301_)))
                                                           (if (gx#stx-null?
                                                                _tl3696837306_)
                                                               (___kont4221642217_
                                                                _hd3696737304_
                                                                _expr3695537296_
                                                                _id3695637298_)
                                                               (___kont4222642227_))))
                                                       (___kont4222642227_)))))))
                                   (_loop3694937254_
                                    _target3694637249_
                                    '()
                                    '()))))
                              (___match4232342324_
                               (lambda (_e3690237349_
                                        _hd3690337352_
                                        _tl3690437354_
                                        _e3690537357_
                                        _hd3690637360_
                                        _tl3690737362_
                                        ___splice4221442215_
                                        _target3690837365_
                                        _tl3691037367_)
                                 (letrec ((_loop3691137370_
                                           (lambda (_hd3690937373_
                                                    _xid3691537375_
                                                    _id3691637377_)
                                             (if (gx#stx-pair? _hd3690937373_)
                                                 (let ((_e3691237380_
                                                        (gx#stx-e
                                                         _hd3690937373_)))
                                                   (let ((_lp-tl3691437385_
                                                          (##cdr _e3691237380_))
                                                         (_lp-hd3691337383_
                                                          (##car _e3691237380_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3691337383_)
                                                         (let ((_e3691937388_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3691337383_)))
                   (let ((_tl3692137393_ (##cdr _e3691937388_))
                         (_hd3692037391_ (##car _e3691937388_)))
                     (if (gx#stx-pair? _hd3692037391_)
                         (let ((_e3692237396_ (gx#stx-e _hd3692037391_)))
                           (let ((_tl3692437401_ (##cdr _e3692237396_))
                                 (_hd3692337399_ (##car _e3692237396_)))
                             (if (gx#stx-null? _tl3692437401_)
                                 (if (gx#stx-pair? _tl3692137393_)
                                     (let ((_e3692537404_
                                            (gx#stx-e _tl3692137393_)))
                                       (let ((_tl3692737409_
                                              (##cdr _e3692537404_))
                                             (_hd3692637407_
                                              (##car _e3692537404_)))
                                         (if (gx#stx-pair? _hd3692637407_)
                                             (let ((_e3692837412_
                                                    (gx#stx-e _hd3692637407_)))
                                               (let ((_tl3693037417_
                                                      (##cdr _e3692837412_))
                                                     (_hd3692937415_
                                                      (##car _e3692837412_)))
                                                 (if (gx#identifier?
                                                      _hd3692937415_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd3692937415_)
                                                         (if (gx#stx-pair?
                                                              _tl3693037417_)
                                                             (let ((_e3693137420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3693037417_)))
                       (let ((_tl3693337425_ (##cdr _e3693137420_))
                             (_hd3693237423_ (##car _e3693137420_)))
                         (if (gx#stx-null? _tl3693337425_)
                             (if (gx#stx-null? _tl3692737409_)
                                 (_loop3691137370_
                                  _lp-tl3691437385_
                                  (cons _hd3693237423_ _xid3691537375_)
                                  (cons _hd3692337399_ _id3691637377_))
                                 (___match4234742348_
                                  _e3690237349_
                                  _hd3690337352_
                                  _tl3690437354_
                                  _e3690537357_
                                  _hd3690637360_
                                  _tl3690737362_
                                  ___splice4221442215_
                                  _target3690837365_
                                  _tl3691037367_))
                             (___match4234742348_
                              _e3690237349_
                              _hd3690337352_
                              _tl3690437354_
                              _e3690537357_
                              _hd3690637360_
                              _tl3690737362_
                              ___splice4221442215_
                              _target3690837365_
                              _tl3691037367_))))
                     (___match4234742348_
                      _e3690237349_
                      _hd3690337352_
                      _tl3690437354_
                      _e3690537357_
                      _hd3690637360_
                      _tl3690737362_
                      ___splice4221442215_
                      _target3690837365_
                      _tl3691037367_))
                 (___match4234742348_
                  _e3690237349_
                  _hd3690337352_
                  _tl3690437354_
                  _e3690537357_
                  _hd3690637360_
                  _tl3690737362_
                  ___splice4221442215_
                  _target3690837365_
                  _tl3691037367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___match4234742348_
                                                      _e3690237349_
                                                      _hd3690337352_
                                                      _tl3690437354_
                                                      _e3690537357_
                                                      _hd3690637360_
                                                      _tl3690737362_
                                                      ___splice4221442215_
                                                      _target3690837365_
                                                      _tl3691037367_))))
                                             (___match4234742348_
                                              _e3690237349_
                                              _hd3690337352_
                                              _tl3690437354_
                                              _e3690537357_
                                              _hd3690637360_
                                              _tl3690737362_
                                              ___splice4221442215_
                                              _target3690837365_
                                              _tl3691037367_))))
                                     (___match4234742348_
                                      _e3690237349_
                                      _hd3690337352_
                                      _tl3690437354_
                                      _e3690537357_
                                      _hd3690637360_
                                      _tl3690737362_
                                      ___splice4221442215_
                                      _target3690837365_
                                      _tl3691037367_))
                                 (___match4234742348_
                                  _e3690237349_
                                  _hd3690337352_
                                  _tl3690437354_
                                  _e3690537357_
                                  _hd3690637360_
                                  _tl3690737362_
                                  ___splice4221442215_
                                  _target3690837365_
                                  _tl3691037367_))))
                         (___match4234742348_
                          _e3690237349_
                          _hd3690337352_
                          _tl3690437354_
                          _e3690537357_
                          _hd3690637360_
                          _tl3690737362_
                          ___splice4221442215_
                          _target3690837365_
                          _tl3691037367_))))
                 (___match4234742348_
                  _e3690237349_
                  _hd3690337352_
                  _tl3690437354_
                  _e3690537357_
                  _hd3690637360_
                  _tl3690737362_
                  ___splice4221442215_
                  _target3690837365_
                  _tl3691037367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3691837430_
                                                        (reverse _id3691637377_))
                                                       (_xid3691737428_
                                                        (reverse _xid3691537375_)))
                                                   (if (gx#stx-pair?
                                                        _tl3690737362_)
                                                       (let ((_e3693437433_
                                                              (gx#stx-e
                                                               _tl3690737362_)))
                                                         (let ((_tl3693637438_
                                                                (##cdr _e3693437433_))
                                                               (_hd3693537436_
                                                                (##car _e3693437433_)))
                                                           (if (gx#stx-null?
                                                                _tl3693637438_)
                                                               (___kont4221242213_
                                                                _hd3693537436_
                                                                _xid3691737428_
                                                                _id3691837430_)
                                                               (___match4234742348_
                                                                _e3690237349_
                                                                _hd3690337352_
                                                                _tl3690437354_
                                                                _e3690537357_
                                                                _hd3690637360_
                                                                _tl3690737362_
                                                                ___splice4221442215_
                                                                _target3690837365_
                                                                _tl3691037367_))))
                                                       (___match4234742348_
                                                        _e3690237349_
                                                        _hd3690337352_
                                                        _tl3690437354_
                                                        _e3690537357_
                                                        _hd3690637360_
                                                        _tl3690737362_
                                                        ___splice4221442215_
                                                        _target3690837365_
                                                        _tl3691037367_)))))))
                                   (_loop3691137370_
                                    _target3690837365_
                                    '()
                                    '()))))
                              (___match4229942300_
                               (lambda (_e3687237479_
                                        _hd3687337482_
                                        _tl3687437484_
                                        _e3687537487_
                                        _hd3687637490_
                                        _tl3687737492_
                                        _e3687837495_
                                        _hd3687937498_
                                        _tl3688037500_
                                        _e3688137503_
                                        _hd3688237506_
                                        _tl3688337508_
                                        ___splice4221042211_
                                        _target3688437511_
                                        _tl3688637513_)
                                 (letrec ((_loop3688737516_
                                           (lambda (_hd3688537519_
                                                    _id3689137521_)
                                             (if (gx#stx-pair? _hd3688537519_)
                                                 (let ((_e3688837524_
                                                        (gx#stx-e
                                                         _hd3688537519_)))
                                                   (let ((_lp-tl3689037529_
                                                          (##cdr _e3688837524_))
                                                         (_lp-hd3688937527_
                                                          (##car _e3688837524_)))
                                                     (if (gx#stx-pair?
                                                          _lp-hd3688937527_)
                                                         (let ((_e3689337532_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lp-hd3688937527_)))
                   (let ((_tl3689537537_ (##cdr _e3689337532_))
                         (_hd3689437535_ (##car _e3689337532_)))
                     (if (gx#identifier? _hd3689437535_)
                         (if (gx#stx-eq? '%#ref _hd3689437535_)
                             (if (gx#stx-pair? _tl3689537537_)
                                 (let ((_e3689637540_
                                        (gx#stx-e _tl3689537537_)))
                                   (let ((_tl3689837545_ (##cdr _e3689637540_))
                                         (_hd3689737543_
                                          (##car _e3689637540_)))
                                     (if (gx#stx-null? _tl3689837545_)
                                         (_loop3688737516_
                                          _lp-tl3689037529_
                                          (cons _hd3689737543_ _id3689137521_))
                                         (___kont4222642227_))))
                                 (___kont4222642227_))
                             (___kont4222642227_))
                         (___kont4222642227_))))
                 (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_id3689237548_
                                                        (reverse _id3689137521_)))
                                                   (___kont4220842209_
                                                    _id3689237548_
                                                    _hd3688237506_))))))
                                   (_loop3688737516_
                                    _target3688437511_
                                    '())))))
                         (if (gx#stx-pair? ___stx4220442205_)
                             (let ((_e3685837589_
                                    (gx#stx-e ___stx4220442205_)))
                               (let ((_tl3686037594_ (##cdr _e3685837589_))
                                     (_hd3685937592_ (##car _e3685837589_)))
                                 (if (gx#identifier? _hd3685937592_)
                                     (if (gx#stx-eq? '%#if _hd3685937592_)
                                         (if (gx#stx-pair? _tl3686037594_)
                                             (let ((_e3686137597_
                                                    (gx#stx-e _tl3686037594_)))
                                               (let ((_tl3686337602_
                                                      (##cdr _e3686137597_))
                                                     (_hd3686237600_
                                                      (##car _e3686137597_)))
                                                 (if (gx#stx-pair?
                                                      _tl3686337602_)
                                                     (let ((_e3686437605_
                                                            (gx#stx-e
                                                             _tl3686337602_)))
                                                       (let ((_tl3686637610_
                                                              (##cdr _e3686437605_))
                                                             (_hd3686537608_
                                                              (##car _e3686437605_)))
                                                         (if (gx#stx-pair?
                                                              _tl3686637610_)
                                                             (let ((_e3686737613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3686637610_)))
                       (let ((_tl3686937618_ (##cdr _e3686737613_))
                             (_hd3686837616_ (##car _e3686737613_)))
                         (if (gx#stx-null? _tl3686937618_)
                             (___kont4220642207_
                              _hd3686837616_
                              _hd3686537608_
                              _hd3686237600_)
                             (___kont4222642227_))))
                     (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222642227_))))
                                             (___kont4222642227_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3685937592_)
                                             (if (gx#stx-pair? _tl3686037594_)
                                                 (let ((_e3687537487_
                                                        (gx#stx-e
                                                         _tl3686037594_)))
                                                   (let ((_tl3687737492_
                                                          (##cdr _e3687537487_))
                                                         (_hd3687637490_
                                                          (##car _e3687537487_)))
                                                     (if (gx#stx-pair?
                                                          _hd3687637490_)
                                                         (let ((_e3687837495_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3687637490_)))
                   (let ((_tl3688037500_ (##cdr _e3687837495_))
                         (_hd3687937498_ (##car _e3687837495_)))
                     (if (gx#identifier? _hd3687937498_)
                         (if (gx#stx-eq? '%#ref _hd3687937498_)
                             (if (gx#stx-pair? _tl3688037500_)
                                 (let ((_e3688137503_
                                        (gx#stx-e _tl3688037500_)))
                                   (let ((_tl3688337508_ (##cdr _e3688137503_))
                                         (_hd3688237506_
                                          (##car _e3688137503_)))
                                     (if (gx#stx-null? _tl3688337508_)
                                         (if (gx#stx-pair/null? _tl3687737492_)
                                             (let ((___splice4221042211_
                                                    (gx#syntax-split-splice
                                                     _tl3687737492_
                                                     '0)))
                                               (let ((_tl3688637513_
                                                      (##vector-ref
                                                       ___splice4221042211_
                                                       '1))
                                                     (_target3688437511_
                                                      (##vector-ref
                                                       ___splice4221042211_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3688637513_)
                                                     (___match4229942300_
                                                      _e3685837589_
                                                      _hd3685937592_
                                                      _tl3686037594_
                                                      _e3687537487_
                                                      _hd3687637490_
                                                      _tl3687737492_
                                                      _e3687837495_
                                                      _hd3687937498_
                                                      _tl3688037500_
                                                      _e3688137503_
                                                      _hd3688237506_
                                                      _tl3688337508_
                                                      ___splice4221042211_
                                                      _target3688437511_
                                                      _tl3688637513_)
                                                     (___kont4222642227_))))
                                             (___kont4222642227_))
                                         (___kont4222642227_))))
                                 (___kont4222642227_))
                             (___kont4222642227_))
                         (___kont4222642227_))))
                 (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4222642227_))
                                             (if (gx#stx-eq?
                                                  '%#let-values
                                                  _hd3685937592_)
                                                 (if (gx#stx-pair?
                                                      _tl3686037594_)
                                                     (let ((_e3690537357_
                                                            (gx#stx-e
                                                             _tl3686037594_)))
                                                       (let ((_tl3690737362_
                                                              (##cdr _e3690537357_))
                                                             (_hd3690637360_
                                                              (##car _e3690537357_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd3690637360_)
                                                             (let ((___splice4221442215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd3690637360_ '0)))
                       (let ((_tl3691037367_
                              (##vector-ref ___splice4221442215_ '1))
                             (_target3690837365_
                              (##vector-ref ___splice4221442215_ '0)))
                         (if (gx#stx-null? _tl3691037367_)
                             (___match4232342324_
                              _e3685837589_
                              _hd3685937592_
                              _tl3686037594_
                              _e3690537357_
                              _hd3690637360_
                              _tl3690737362_
                              ___splice4221442215_
                              _target3690837365_
                              _tl3691037367_)
                             (___kont4222642227_))))
                     (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222642227_))
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3685937592_)
                                                     (if (gx#stx-pair?
                                                          _tl3686037594_)
                                                         (let ((_e3697737046_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3686037594_)))
                   (let ((_tl3697937051_ (##cdr _e3697737046_))
                         (_hd3697837049_ (##car _e3697737046_)))
                     (if (gx#stx-pair? _hd3697837049_)
                         (let ((_e3698037054_ (gx#stx-e _hd3697837049_)))
                           (let ((_tl3698237059_ (##cdr _e3698037054_))
                                 (_hd3698137057_ (##car _e3698037054_)))
                             (if (gx#stx-pair? _hd3698137057_)
                                 (let ((_e3698337062_
                                        (gx#stx-e _hd3698137057_)))
                                   (let ((_tl3698537067_ (##cdr _e3698337062_))
                                         (_hd3698437065_
                                          (##car _e3698337062_)))
                                     (if (gx#stx-pair? _hd3698437065_)
                                         (let ((_e3698637070_
                                                (gx#stx-e _hd3698437065_)))
                                           (let ((_tl3698837075_
                                                  (##cdr _e3698637070_))
                                                 (_hd3698737073_
                                                  (##car _e3698637070_)))
                                             (if (gx#stx-null? _tl3698837075_)
                                                 (if (gx#stx-pair?
                                                      _tl3698537067_)
                                                     (let ((_e3698937078_
                                                            (gx#stx-e
                                                             _tl3698537067_)))
                                                       (let ((_tl3699137083_
                                                              (##cdr _e3698937078_))
                                                             (_hd3699037081_
                                                              (##car _e3698937078_)))
                                                         (if (gx#stx-pair?
                                                              _hd3699037081_)
                                                             (let ((_e3699237086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3699037081_)))
                       (let ((_tl3699437091_ (##cdr _e3699237086_))
                             (_hd3699337089_ (##car _e3699237086_)))
                         (if (gx#identifier? _hd3699337089_)
                             (if (gx#stx-eq? '%#lambda _hd3699337089_)
                                 (if (gx#stx-pair? _tl3699437091_)
                                     (let ((_e3699537094_
                                            (gx#stx-e _tl3699437091_)))
                                       (let ((_tl3699737099_
                                              (##cdr _e3699537094_))
                                             (_hd3699637097_
                                              (##car _e3699537094_)))
                                         (if (gx#stx-pair/null? _hd3699637097_)
                                             (let ((___splice4222242223_
                                                    (gx#syntax-split-splice
                                                     _hd3699637097_
                                                     '0)))
                                               (let ((_tl3700037104_
                                                      (##vector-ref
                                                       ___splice4222242223_
                                                       '1))
                                                     (_target3699837102_
                                                      (##vector-ref
                                                       ___splice4222242223_
                                                       '0)))
                                                 (if (gx#stx-null?
                                                      _tl3700037104_)
                                                     (___match4241342414_
                                                      _e3685837589_
                                                      _hd3685937592_
                                                      _tl3686037594_
                                                      _e3697737046_
                                                      _hd3697837049_
                                                      _tl3697937051_
                                                      _e3698037054_
                                                      _hd3698137057_
                                                      _tl3698237059_
                                                      _e3698337062_
                                                      _hd3698437065_
                                                      _tl3698537067_
                                                      _e3698637070_
                                                      _hd3698737073_
                                                      _tl3698837075_
                                                      _e3698937078_
                                                      _hd3699037081_
                                                      _tl3699137083_
                                                      _e3699237086_
                                                      _hd3699337089_
                                                      _tl3699437091_
                                                      _e3699537094_
                                                      _hd3699637097_
                                                      _tl3699737099_
                                                      ___splice4222242223_
                                                      _target3699837102_
                                                      _tl3700037104_)
                                                     (___kont4222642227_))))
                                             (___kont4222642227_))))
                                     (___kont4222642227_))
                                 (___kont4222642227_))
                             (___kont4222642227_))))
                     (___kont4222642227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222642227_))
                                                 (___kont4222642227_))))
                                         (___kont4222642227_))))
                                 (___kont4222642227_))))
                         (___kont4222642227_))))
                 (___kont4222642227_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4222642227_)))))
                                     (___kont4222642227_))))
                             (___kont4222642227_)))))))
                (_optimize-t__4116541166_
                 (lambda (_expr36829_ _test36830_ _continue36831_)
                   (_do-assert33833_
                    (cons (cons _test36830_ '#t) '())
                    (lambda () (_continue36831_ _expr36829_)))))
                (_optimize-t__0__4116741168_
                 (lambda (_expr36837_ _test36838_)
                   (let ((_continue36840_ _optimize-e33844_))
                     (_optimize-t__4116541166_
                      _expr36837_
                      _test36838_
                      _continue36840_))))
                (_optimize-t33845_
                 (lambda _g44268_
                   (let ((_g44267_ (length _g44268_)))
                     (cond ((##fx= _g44267_ 2)
                            (apply _optimize-t__0__4116741168_ _g44268_))
                           ((##fx= _g44267_ 3)
                            (apply _optimize-t__4116541166_ _g44268_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44268_))))))
                (_optimize-f__4116941170_
                 (lambda (_expr35914_ _test35915_)
                   (_do-assert33833_
                    (if _test35915_ (cons (cons _test35915_ '#f) '()) '())
                    (lambda ()
                      (let* ((___stx4245442455_ _expr35914_)
                             (_g3592336096_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4245442455_))))
                        (let ((___kont4245642457_
                               (lambda (_L36684_ _L36685_)
                                 (let ((_$e36705_
                                        (_lookup-block33852_ _L36685_)))
                                   (if _$e36705_
                                       ((lambda (_block36708_)
                                          (if (_nonlinear-block?33854_
                                               _block36708_)
                                              _expr35914_
                                              (let* ((_inline36717_
                                                      (_inline-block33853_
                                                       _block36708_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g3670936712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g3671036714_)
                           (cons _g3670936712_ _g3671036714_))
                         '()
                         _L36684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___stx4241642417_
                                                      _inline36717_)
                                                     (_g3672036741_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4241642417_))))
                                                (let ((___kont4241842419_
                                                       (lambda (_L36785_
                                                                _L36786_
                                                                _L36787_)
                                                         (let ((_$e36809_
                                                                (_assert-e33847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L36787_)))
                   (if (eq? '#t _$e36809_)
                       (if _in-splice?33832_
                           (_optimize-f__0__4117141172_ _L36786_)
                           (_optimize-e33844_ _L36786_))
                       (if (eq? '#f _$e36809_)
                           (_optimize-f__0__4117141172_ _L36785_)
                           _expr35914_)))))
              (___kont4242042421_
               (lambda () (_optimize-f__0__4117141172_ _inline36717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4241642417_)
                                                      (let ((_e3672536753_
                                                             (gx#stx-e
                                                              ___stx4241642417_)))
                                                        (let ((_tl3672736758_
                                                               (##cdr _e3672536753_))
                                                              (_hd3672636756_
                                                               (##car _e3672536753_)))
                                                          (if (gx#identifier?
                                                               _hd3672636756_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#if
                           _hd3672636756_)
                          (if (gx#stx-pair? _tl3672736758_)
                              (let ((_e3672836761_ (gx#stx-e _tl3672736758_)))
                                (let ((_tl3673036766_ (##cdr _e3672836761_))
                                      (_hd3672936764_ (##car _e3672836761_)))
                                  (if (gx#stx-pair? _tl3673036766_)
                                      (let ((_e3673136769_
                                             (gx#stx-e _tl3673036766_)))
                                        (let ((_tl3673336774_
                                               (##cdr _e3673136769_))
                                              (_hd3673236772_
                                               (##car _e3673136769_)))
                                          (if (gx#stx-pair? _tl3673336774_)
                                              (let ((_e3673436777_
                                                     (gx#stx-e
                                                      _tl3673336774_)))
                                                (let ((_tl3673636782_
                                                       (##cdr _e3673436777_))
                                                      (_hd3673536780_
                                                       (##car _e3673436777_)))
                                                  (if (gx#stx-null?
                                                       _tl3673636782_)
                                                      (___kont4241842419_
                                                       _hd3673536780_
                                                       _hd3673236772_
                                                       _hd3672936764_)
                                                      (___kont4242042421_))))
                                              (___kont4242042421_))))
                                      (___kont4242042421_))))
                              (___kont4242042421_))
                          (___kont4242042421_))
                      (___kont4242042421_))))
              (___kont4242042421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e36705_)
                                       _expr35914_))))
                              (___kont4246042461_
                               (lambda (_L36582_ _L36583_ _L36584_)
                                 (let ((_$e36601_ (_assert-e33847_ _L36584_)))
                                   (if (eq? '#t _$e36601_)
                                       (if _in-splice?33832_
                                           (_optimize-f__0__4117141172_
                                            _L36583_)
                                           (_optimize-e33844_ _L36583_))
                                       (if (eq? '#f _$e36601_)
                                           (_optimize-f__0__4117141172_
                                            _L36582_)
                                           (let ((_K36604_
                                                  (_optimize-t__4116541166_
                                                   _L36583_
                                                   _L36584_
                                                   _optimize-f33846_))
                                                 (_E36605_
                                                  (_optimize-f__4116941170_
                                                   _L36582_
                                                   _L36584_)))
                                             (if (equal? (gxc#apply-generate-runtime-repr
                                                          _K36604_)
                                                         (gxc#apply-generate-runtime-repr
                                                          _E36605_))
                                                 _K36604_
                                                 (cons '%#if
                                                       (cons _L36584_
                                                             (cons _K36604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _E36605_ '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (___kont4246242463_
                               (lambda (_L36512_ _L36513_ _L36514_)
                                 (let ((_body36533_
                                        (_optimize-f__0__4117141172_
                                         _L36512_)))
                                   (cons '%#let-values
                                         (cons (begin
                                                 (gx#syntax-check-splice-targets
                                                  _L36513_
                                                  _L36514_)
                                                 (foldr2 (lambda (_g3653436538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3653536540_
                          _g3653636542_)
                   (cons (cons (cons _g3653536540_ '())
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g3653436538_ '()))
                                     '()))
                         _g3653636542_))
                 '()
                 _L36513_
                 _L36514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _body36533_ '()))))))
                              (___kont4246642467_
                               (lambda (_L36380_ _L36381_ _L36382_)
                                 (_bind-e__4117341174_
                                  (map cons
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3640036403_
                                                          _g3640136405_)
                                                   (cons _g3640036403_
                                                         _g3640136405_))
                                                 '()
                                                 _L36382_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3640736410_
                                                          _g3640836412_)
                                                   (cons _g3640736410_
                                                         _g3640836412_))
                                                 '()
                                                 _L36381_)))
                                  _L36380_
                                  _optimize-f33846_)))
                              (___kont4247042471_
                               (lambda (_L36236_
                                        _L36237_
                                        _L36238_
                                        _L36239_
                                        _L36240_)
                                 (_do-splice!33843_
                                  (lambda ()
                                    (let ((_expr36283_
                                           (_optimize-f__0__4117141172_
                                            _L36238_)))
                                      (cons '%#letrec-values
                                            (cons (cons (cons (cons _L36240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons '%#lambda
                                  (cons (begin
                                          '#!void
                                          (foldr1 (lambda (_g3628436287_
                                                           _g3628536289_)
                                                    (cons _g3628436287_
                                                          _g3628536289_))
                                                  '()
                                                  _L36239_))
                                        (cons _expr36283_ '())))
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3629136294_ _g3629236296_)
                            (cons _g3629136294_ _g3629236296_))
                          '()
                          _L36237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L36236_ '()))))))))
                              (___kont4247642477_ (lambda () _expr35914_)))
                          (let* ((___match4266342664_
                                  (lambda (_e3604436108_
                                           _hd3604536111_
                                           _tl3604636113_
                                           _e3604736116_
                                           _hd3604836119_
                                           _tl3604936121_
                                           _e3605036124_
                                           _hd3605136127_
                                           _tl3605236129_
                                           _e3605336132_
                                           _hd3605436135_
                                           _tl3605536137_
                                           _e3605636140_
                                           _hd3605736143_
                                           _tl3605836145_
                                           _e3605936148_
                                           _hd3606036151_
                                           _tl3606136153_
                                           _e3606236156_
                                           _hd3606336159_
                                           _tl3606436161_
                                           _e3606536164_
                                           _hd3606636167_
                                           _tl3606736169_
                                           ___splice4247242473_
                                           _target3606836172_
                                           _tl3607036174_)
                                    (letrec ((_loop3607136177_
                                              (lambda (_hd3606936180_
                                                       _id3607536182_)
                                                (if (gx#stx-pair?
                                                     _hd3606936180_)
                                                    (let ((_e3607236185_
                                                           (gx#stx-e
                                                            _hd3606936180_)))
                                                      (let ((_lp-tl3607436190_
                                                             (##cdr _e3607236185_))
                                                            (_lp-hd3607336188_
                                                             (##car _e3607236185_)))
                                                        (_loop3607136177_
                                                         _lp-tl3607436190_
                                                         (cons _lp-hd3607336188_
                                                               _id3607536182_))))
                                                    (let ((_id3607636193_
                                                           (reverse _id3607536182_)))
                                                      (if (gx#stx-pair?
                                                           _tl3606736169_)
                                                          (let ((_e3607736196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3606736169_)))
                    (let ((_tl3607936201_ (##cdr _e3607736196_))
                          (_hd3607836199_ (##car _e3607736196_)))
                      (if (gx#stx-null? _tl3607936201_)
                          (if (gx#stx-null? _tl3606136153_)
                              (if (gx#stx-pair/null? _tl3605236129_)
                                  (let ((___splice4247442475_
                                         (gx#syntax-split-splice
                                          _tl3605236129_
                                          '0)))
                                    (let ((_tl3608236206_
                                           (##vector-ref
                                            ___splice4247442475_
                                            '1))
                                          (_target3608036204_
                                           (##vector-ref
                                            ___splice4247442475_
                                            '0)))
                                      (if (gx#stx-null? _tl3608236206_)
                                          (letrec ((_loop3608336209_
                                                    (lambda (_hd3608136212_
                                                             _bind3608736214_)
                                                      (if (gx#stx-pair?
                                                           _hd3608136212_)
                                                          (let ((_e3608436217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3608136212_)))
                    (let ((_lp-tl3608636222_ (##cdr _e3608436217_))
                          (_lp-hd3608536220_ (##car _e3608436217_)))
                      (_loop3608336209_
                       _lp-tl3608636222_
                       (cons _lp-hd3608536220_ _bind3608736214_))))
                  (let ((_bind3608836225_ (reverse _bind3608736214_)))
                    (if (gx#stx-pair? _tl3604936121_)
                        (let ((_e3608936228_ (gx#stx-e _tl3604936121_)))
                          (let ((_tl3609136233_ (##cdr _e3608936228_))
                                (_hd3609036231_ (##car _e3608936228_)))
                            (if (gx#stx-null? _tl3609136233_)
                                (___kont4247042471_
                                 _hd3609036231_
                                 _bind3608836225_
                                 _hd3607836199_
                                 _id3607636193_
                                 _hd3605736143_)
                                (___kont4247642477_))))
                        (___kont4247642477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3608336209_
                                             _target3608036204_
                                             '()))
                                          (___kont4247642477_))))
                                  (___kont4247642477_))
                              (___kont4247642477_))
                          (___kont4247642477_))))
                  (___kont4247642477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3607136177_
                                       _target3606836172_
                                       '()))))
                                 (___match4259742598_
                                  (lambda (_e3601036304_
                                           _hd3601136307_
                                           _tl3601236309_
                                           _e3601336312_
                                           _hd3601436315_
                                           _tl3601536317_
                                           ___splice4246842469_
                                           _target3601636320_
                                           _tl3601836322_)
                                    (letrec ((_loop3601936325_
                                              (lambda (_hd3601736328_
                                                       _expr3602336330_
                                                       _id3602436332_)
                                                (if (gx#stx-pair?
                                                     _hd3601736328_)
                                                    (let ((_e3602036335_
                                                           (gx#stx-e
                                                            _hd3601736328_)))
                                                      (let ((_lp-tl3602236340_
                                                             (##cdr _e3602036335_))
                                                            (_lp-hd3602136338_
                                                             (##car _e3602036335_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3602136338_)
                                                            (let ((_e3602736343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3602136338_)))
                      (let ((_tl3602936348_ (##cdr _e3602736343_))
                            (_hd3602836346_ (##car _e3602736343_)))
                        (if (gx#stx-pair? _hd3602836346_)
                            (let ((_e3603036351_ (gx#stx-e _hd3602836346_)))
                              (let ((_tl3603236356_ (##cdr _e3603036351_))
                                    (_hd3603136354_ (##car _e3603036351_)))
                                (if (gx#stx-null? _tl3603236356_)
                                    (if (gx#stx-pair? _tl3602936348_)
                                        (let ((_e3603336359_
                                               (gx#stx-e _tl3602936348_)))
                                          (let ((_tl3603536364_
                                                 (##cdr _e3603336359_))
                                                (_hd3603436362_
                                                 (##car _e3603336359_)))
                                            (if (gx#stx-null? _tl3603536364_)
                                                (_loop3601936325_
                                                 _lp-tl3602236340_
                                                 (cons _hd3603436362_
                                                       _expr3602336330_)
                                                 (cons _hd3603136354_
                                                       _id3602436332_))
                                                (___kont4247642477_))))
                                        (___kont4247642477_))
                                    (___kont4247642477_))))
                            (___kont4247642477_))))
                    (___kont4247642477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3602636369_
                                                           (reverse _id3602436332_))
                                                          (_expr3602536367_
                                                           (reverse _expr3602336330_)))
                                                      (if (gx#stx-pair?
                                                           _tl3601536317_)
                                                          (let ((_e3603636372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3601536317_)))
                    (let ((_tl3603836377_ (##cdr _e3603636372_))
                          (_hd3603736375_ (##car _e3603636372_)))
                      (if (gx#stx-null? _tl3603836377_)
                          (___kont4246642467_
                           _hd3603736375_
                           _expr3602536367_
                           _id3602636369_)
                          (___kont4247642477_))))
                  (___kont4247642477_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3601936325_
                                       _target3601636320_
                                       '()
                                       '()))))
                                 (___match4257342574_
                                  (lambda (_e3597236420_
                                           _hd3597336423_
                                           _tl3597436425_
                                           _e3597536428_
                                           _hd3597636431_
                                           _tl3597736433_
                                           ___splice4246442465_
                                           _target3597836436_
                                           _tl3598036438_)
                                    (letrec ((_loop3598136441_
                                              (lambda (_hd3597936444_
                                                       _xid3598536446_
                                                       _id3598636448_)
                                                (if (gx#stx-pair?
                                                     _hd3597936444_)
                                                    (let ((_e3598236451_
                                                           (gx#stx-e
                                                            _hd3597936444_)))
                                                      (let ((_lp-tl3598436456_
                                                             (##cdr _e3598236451_))
                                                            (_lp-hd3598336454_
                                                             (##car _e3598236451_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3598336454_)
                                                            (let ((_e3598936459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3598336454_)))
                      (let ((_tl3599136464_ (##cdr _e3598936459_))
                            (_hd3599036462_ (##car _e3598936459_)))
                        (if (gx#stx-pair? _hd3599036462_)
                            (let ((_e3599236467_ (gx#stx-e _hd3599036462_)))
                              (let ((_tl3599436472_ (##cdr _e3599236467_))
                                    (_hd3599336470_ (##car _e3599236467_)))
                                (if (gx#stx-null? _tl3599436472_)
                                    (if (gx#stx-pair? _tl3599136464_)
                                        (let ((_e3599536475_
                                               (gx#stx-e _tl3599136464_)))
                                          (let ((_tl3599736480_
                                                 (##cdr _e3599536475_))
                                                (_hd3599636478_
                                                 (##car _e3599536475_)))
                                            (if (gx#stx-pair? _hd3599636478_)
                                                (let ((_e3599836483_
                                                       (gx#stx-e
                                                        _hd3599636478_)))
                                                  (let ((_tl3600036488_
                                                         (##cdr _e3599836483_))
                                                        (_hd3599936486_
                                                         (##car _e3599836483_)))
                                                    (if (gx#identifier?
                                                         _hd3599936486_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3599936486_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3600036488_)
                        (let ((_e3600136491_ (gx#stx-e _tl3600036488_)))
                          (let ((_tl3600336496_ (##cdr _e3600136491_))
                                (_hd3600236494_ (##car _e3600136491_)))
                            (if (gx#stx-null? _tl3600336496_)
                                (if (gx#stx-null? _tl3599736480_)
                                    (_loop3598136441_
                                     _lp-tl3598436456_
                                     (cons _hd3600236494_ _xid3598536446_)
                                     (cons _hd3599336470_ _id3598636448_))
                                    (___match4259742598_
                                     _e3597236420_
                                     _hd3597336423_
                                     _tl3597436425_
                                     _e3597536428_
                                     _hd3597636431_
                                     _tl3597736433_
                                     ___splice4246442465_
                                     _target3597836436_
                                     _tl3598036438_))
                                (___match4259742598_
                                 _e3597236420_
                                 _hd3597336423_
                                 _tl3597436425_
                                 _e3597536428_
                                 _hd3597636431_
                                 _tl3597736433_
                                 ___splice4246442465_
                                 _target3597836436_
                                 _tl3598036438_))))
                        (___match4259742598_
                         _e3597236420_
                         _hd3597336423_
                         _tl3597436425_
                         _e3597536428_
                         _hd3597636431_
                         _tl3597736433_
                         ___splice4246442465_
                         _target3597836436_
                         _tl3598036438_))
                    (___match4259742598_
                     _e3597236420_
                     _hd3597336423_
                     _tl3597436425_
                     _e3597536428_
                     _hd3597636431_
                     _tl3597736433_
                     ___splice4246442465_
                     _target3597836436_
                     _tl3598036438_))
                (___match4259742598_
                 _e3597236420_
                 _hd3597336423_
                 _tl3597436425_
                 _e3597536428_
                 _hd3597636431_
                 _tl3597736433_
                 ___splice4246442465_
                 _target3597836436_
                 _tl3598036438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match4259742598_
                                                 _e3597236420_
                                                 _hd3597336423_
                                                 _tl3597436425_
                                                 _e3597536428_
                                                 _hd3597636431_
                                                 _tl3597736433_
                                                 ___splice4246442465_
                                                 _target3597836436_
                                                 _tl3598036438_))))
                                        (___match4259742598_
                                         _e3597236420_
                                         _hd3597336423_
                                         _tl3597436425_
                                         _e3597536428_
                                         _hd3597636431_
                                         _tl3597736433_
                                         ___splice4246442465_
                                         _target3597836436_
                                         _tl3598036438_))
                                    (___match4259742598_
                                     _e3597236420_
                                     _hd3597336423_
                                     _tl3597436425_
                                     _e3597536428_
                                     _hd3597636431_
                                     _tl3597736433_
                                     ___splice4246442465_
                                     _target3597836436_
                                     _tl3598036438_))))
                            (___match4259742598_
                             _e3597236420_
                             _hd3597336423_
                             _tl3597436425_
                             _e3597536428_
                             _hd3597636431_
                             _tl3597736433_
                             ___splice4246442465_
                             _target3597836436_
                             _tl3598036438_))))
                    (___match4259742598_
                     _e3597236420_
                     _hd3597336423_
                     _tl3597436425_
                     _e3597536428_
                     _hd3597636431_
                     _tl3597736433_
                     ___splice4246442465_
                     _target3597836436_
                     _tl3598036438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3598836501_
                                                           (reverse _id3598636448_))
                                                          (_xid3598736499_
                                                           (reverse _xid3598536446_)))
                                                      (if (gx#stx-pair?
                                                           _tl3597736433_)
                                                          (let ((_e3600436504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3597736433_)))
                    (let ((_tl3600636509_ (##cdr _e3600436504_))
                          (_hd3600536507_ (##car _e3600436504_)))
                      (if (gx#stx-null? _tl3600636509_)
                          (___kont4246242463_
                           _hd3600536507_
                           _xid3598736499_
                           _id3598836501_)
                          (___match4259742598_
                           _e3597236420_
                           _hd3597336423_
                           _tl3597436425_
                           _e3597536428_
                           _hd3597636431_
                           _tl3597736433_
                           ___splice4246442465_
                           _target3597836436_
                           _tl3598036438_))))
                  (___match4259742598_
                   _e3597236420_
                   _hd3597336423_
                   _tl3597436425_
                   _e3597536428_
                   _hd3597636431_
                   _tl3597736433_
                   ___splice4246442465_
                   _target3597836436_
                   _tl3598036438_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop3598136441_
                                       _target3597836436_
                                       '()
                                       '()))))
                                 (___match4251942520_
                                  (lambda (_e3592736612_
                                           _hd3592836615_
                                           _tl3592936617_
                                           _e3593036620_
                                           _hd3593136623_
                                           _tl3593236625_
                                           _e3593336628_
                                           _hd3593436631_
                                           _tl3593536633_
                                           _e3593636636_
                                           _hd3593736639_
                                           _tl3593836641_
                                           ___splice4245842459_
                                           _target3593936644_
                                           _tl3594136646_)
                                    (letrec ((_loop3594236649_
                                              (lambda (_hd3594036652_
                                                       _id3594636654_)
                                                (if (gx#stx-pair?
                                                     _hd3594036652_)
                                                    (let ((_e3594336657_
                                                           (gx#stx-e
                                                            _hd3594036652_)))
                                                      (let ((_lp-tl3594536662_
                                                             (##cdr _e3594336657_))
                                                            (_lp-hd3594436660_
                                                             (##car _e3594336657_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd3594436660_)
                                                            (let ((_e3594836665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _lp-hd3594436660_)))
                      (let ((_tl3595036670_ (##cdr _e3594836665_))
                            (_hd3594936668_ (##car _e3594836665_)))
                        (if (gx#identifier? _hd3594936668_)
                            (if (gx#stx-eq? '%#ref _hd3594936668_)
                                (if (gx#stx-pair? _tl3595036670_)
                                    (let ((_e3595136673_
                                           (gx#stx-e _tl3595036670_)))
                                      (let ((_tl3595336678_
                                             (##cdr _e3595136673_))
                                            (_hd3595236676_
                                             (##car _e3595136673_)))
                                        (if (gx#stx-null? _tl3595336678_)
                                            (_loop3594236649_
                                             _lp-tl3594536662_
                                             (cons _hd3595236676_
                                                   _id3594636654_))
                                            (___kont4247642477_))))
                                    (___kont4247642477_))
                                (___kont4247642477_))
                            (___kont4247642477_))))
                    (___kont4247642477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_id3594736681_
                                                           (reverse _id3594636654_)))
                                                      (___kont4245642457_
                                                       _id3594736681_
                                                       _hd3593736639_))))))
                                      (_loop3594236649_
                                       _target3593936644_
                                       '())))))
                            (if (gx#stx-pair? ___stx4245442455_)
                                (let ((_e3592736612_
                                       (gx#stx-e ___stx4245442455_)))
                                  (let ((_tl3592936617_ (##cdr _e3592736612_))
                                        (_hd3592836615_ (##car _e3592736612_)))
                                    (if (gx#identifier? _hd3592836615_)
                                        (if (gx#stx-eq? '%#call _hd3592836615_)
                                            (if (gx#stx-pair? _tl3592936617_)
                                                (let ((_e3593036620_
                                                       (gx#stx-e
                                                        _tl3592936617_)))
                                                  (let ((_tl3593236625_
                                                         (##cdr _e3593036620_))
                                                        (_hd3593136623_
                                                         (##car _e3593036620_)))
                                                    (if (gx#stx-pair?
                                                         _hd3593136623_)
                                                        (let ((_e3593336628_
                                                               (gx#stx-e
                                                                _hd3593136623_)))
                                                          (let ((_tl3593536633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3593336628_))
                        (_hd3593436631_ (##car _e3593336628_)))
                    (if (gx#identifier? _hd3593436631_)
                        (if (gx#stx-eq? '%#ref _hd3593436631_)
                            (if (gx#stx-pair? _tl3593536633_)
                                (let ((_e3593636636_
                                       (gx#stx-e _tl3593536633_)))
                                  (let ((_tl3593836641_ (##cdr _e3593636636_))
                                        (_hd3593736639_ (##car _e3593636636_)))
                                    (if (gx#stx-null? _tl3593836641_)
                                        (if (gx#stx-pair/null? _tl3593236625_)
                                            (let ((___splice4245842459_
                                                   (gx#syntax-split-splice
                                                    _tl3593236625_
                                                    '0)))
                                              (let ((_tl3594136646_
                                                     (##vector-ref
                                                      ___splice4245842459_
                                                      '1))
                                                    (_target3593936644_
                                                     (##vector-ref
                                                      ___splice4245842459_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3594136646_)
                                                    (___match4251942520_
                                                     _e3592736612_
                                                     _hd3592836615_
                                                     _tl3592936617_
                                                     _e3593036620_
                                                     _hd3593136623_
                                                     _tl3593236625_
                                                     _e3593336628_
                                                     _hd3593436631_
                                                     _tl3593536633_
                                                     _e3593636636_
                                                     _hd3593736639_
                                                     _tl3593836641_
                                                     ___splice4245842459_
                                                     _target3593936644_
                                                     _tl3594136646_)
                                                    (___kont4247642477_))))
                                            (___kont4247642477_))
                                        (___kont4247642477_))))
                                (___kont4247642477_))
                            (___kont4247642477_))
                        (___kont4247642477_))))
                (___kont4247642477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4247642477_))
                                            (if (gx#stx-eq?
                                                 '%#if
                                                 _hd3592836615_)
                                                (if (gx#stx-pair?
                                                     _tl3592936617_)
                                                    (let ((_e3596036558_
                                                           (gx#stx-e
                                                            _tl3592936617_)))
                                                      (let ((_tl3596236563_
                                                             (##cdr _e3596036558_))
                                                            (_hd3596136561_
                                                             (##car _e3596036558_)))
                                                        (if (gx#stx-pair?
                                                             _tl3596236563_)
                                                            (let ((_e3596336566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3596236563_)))
                      (let ((_tl3596536571_ (##cdr _e3596336566_))
                            (_hd3596436569_ (##car _e3596336566_)))
                        (if (gx#stx-pair? _tl3596536571_)
                            (let ((_e3596636574_ (gx#stx-e _tl3596536571_)))
                              (let ((_tl3596836579_ (##cdr _e3596636574_))
                                    (_hd3596736577_ (##car _e3596636574_)))
                                (if (gx#stx-null? _tl3596836579_)
                                    (___kont4246042461_
                                     _hd3596736577_
                                     _hd3596436569_
                                     _hd3596136561_)
                                    (___kont4247642477_))))
                            (___kont4247642477_))))
                    (___kont4247642477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247642477_))
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3592836615_)
                                                    (if (gx#stx-pair?
                                                         _tl3592936617_)
                                                        (let ((_e3597536428_
                                                               (gx#stx-e
                                                                _tl3592936617_)))
                                                          (let ((_tl3597736433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3597536428_))
                        (_hd3597636431_ (##car _e3597536428_)))
                    (if (gx#stx-pair/null? _hd3597636431_)
                        (let ((___splice4246442465_
                               (gx#syntax-split-splice _hd3597636431_ '0)))
                          (let ((_tl3598036438_
                                 (##vector-ref ___splice4246442465_ '1))
                                (_target3597836436_
                                 (##vector-ref ___splice4246442465_ '0)))
                            (if (gx#stx-null? _tl3598036438_)
                                (___match4257342574_
                                 _e3592736612_
                                 _hd3592836615_
                                 _tl3592936617_
                                 _e3597536428_
                                 _hd3597636431_
                                 _tl3597736433_
                                 ___splice4246442465_
                                 _target3597836436_
                                 _tl3598036438_)
                                (___kont4247642477_))))
                        (___kont4247642477_))))
                (___kont4247642477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#letrec-values
                                                         _hd3592836615_)
                                                        (if (gx#stx-pair?
                                                             _tl3592936617_)
                                                            (let ((_e3604736116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3592936617_)))
                      (let ((_tl3604936121_ (##cdr _e3604736116_))
                            (_hd3604836119_ (##car _e3604736116_)))
                        (if (gx#stx-pair? _hd3604836119_)
                            (let ((_e3605036124_ (gx#stx-e _hd3604836119_)))
                              (let ((_tl3605236129_ (##cdr _e3605036124_))
                                    (_hd3605136127_ (##car _e3605036124_)))
                                (if (gx#stx-pair? _hd3605136127_)
                                    (let ((_e3605336132_
                                           (gx#stx-e _hd3605136127_)))
                                      (let ((_tl3605536137_
                                             (##cdr _e3605336132_))
                                            (_hd3605436135_
                                             (##car _e3605336132_)))
                                        (if (gx#stx-pair? _hd3605436135_)
                                            (let ((_e3605636140_
                                                   (gx#stx-e _hd3605436135_)))
                                              (let ((_tl3605836145_
                                                     (##cdr _e3605636140_))
                                                    (_hd3605736143_
                                                     (##car _e3605636140_)))
                                                (if (gx#stx-null?
                                                     _tl3605836145_)
                                                    (if (gx#stx-pair?
                                                         _tl3605536137_)
                                                        (let ((_e3605936148_
                                                               (gx#stx-e
                                                                _tl3605536137_)))
                                                          (let ((_tl3606136153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3605936148_))
                        (_hd3606036151_ (##car _e3605936148_)))
                    (if (gx#stx-pair? _hd3606036151_)
                        (let ((_e3606236156_ (gx#stx-e _hd3606036151_)))
                          (let ((_tl3606436161_ (##cdr _e3606236156_))
                                (_hd3606336159_ (##car _e3606236156_)))
                            (if (gx#identifier? _hd3606336159_)
                                (if (gx#stx-eq? '%#lambda _hd3606336159_)
                                    (if (gx#stx-pair? _tl3606436161_)
                                        (let ((_e3606536164_
                                               (gx#stx-e _tl3606436161_)))
                                          (let ((_tl3606736169_
                                                 (##cdr _e3606536164_))
                                                (_hd3606636167_
                                                 (##car _e3606536164_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3606636167_)
                                                (let ((___splice4247242473_
                                                       (gx#syntax-split-splice
                                                        _hd3606636167_
                                                        '0)))
                                                  (let ((_tl3607036174_
                                                         (##vector-ref
                                                          ___splice4247242473_
                                                          '1))
                                                        (_target3606836172_
                                                         (##vector-ref
                                                          ___splice4247242473_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3607036174_)
                                                        (___match4266342664_
                                                         _e3592736612_
                                                         _hd3592836615_
                                                         _tl3592936617_
                                                         _e3604736116_
                                                         _hd3604836119_
                                                         _tl3604936121_
                                                         _e3605036124_
                                                         _hd3605136127_
                                                         _tl3605236129_
                                                         _e3605336132_
                                                         _hd3605436135_
                                                         _tl3605536137_
                                                         _e3605636140_
                                                         _hd3605736143_
                                                         _tl3605836145_
                                                         _e3605936148_
                                                         _hd3606036151_
                                                         _tl3606136153_
                                                         _e3606236156_
                                                         _hd3606336159_
                                                         _tl3606436161_
                                                         _e3606536164_
                                                         _hd3606636167_
                                                         _tl3606736169_
                                                         ___splice4247242473_
                                                         _target3606836172_
                                                         _tl3607036174_)
                                                        (___kont4247642477_))))
                                                (___kont4247642477_))))
                                        (___kont4247642477_))
                                    (___kont4247642477_))
                                (___kont4247642477_))))
                        (___kont4247642477_))))
                (___kont4247642477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4247642477_))))
                                            (___kont4247642477_))))
                                    (___kont4247642477_))))
                            (___kont4247642477_))))
                    (___kont4247642477_))
                (___kont4247642477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (___kont4247642477_))))
                                (___kont4247642477_)))))))))
                (_optimize-f__0__4117141172_
                 (lambda (_expr36821_)
                   (let ((_test36823_ '#f))
                     (_optimize-f__4116941170_ _expr36821_ _test36823_))))
                (_optimize-f33846_
                 (lambda _g44270_
                   (let ((_g44269_ (length _g44270_)))
                     (cond ((##fx= _g44269_ 1)
                            (apply _optimize-f__0__4117141172_ _g44270_))
                           ((##fx= _g44269_ 2)
                            (apply _optimize-f__4116941170_ _g44270_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44270_))))))
                (_assert-e33847_
                 (lambda (_expr34855_)
                   (let* ((_sexpr34857_
                           (gxc#apply-generate-runtime-repr _expr34855_))
                          (_$e34859_ (assoc _sexpr34857_ _env-assert33829_)))
                     (if _$e34859_
                         (cdr _$e34859_)
                         (let _assert34862_ ((_expr34864_ _expr34855_))
                           (let* ((___stx4276042761_ _expr34864_)
                                  (_g3487235051_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      ___stx4276042761_))))
                             (let ((___kont4276242763_
                                    (lambda (_L35882_ _L35883_)
                                      (let ((_$e35905_
                                             (_predicate-type33834_ _L35883_)))
                                        (if _$e35905_
                                            ((lambda (_t35908_)
                                               (_assert-type33848_
                                                _L35882_
                                                _t35908_))
                                             _$e35905_)
                                            '#!void))))
                                   (___kont4276442765_
                                    (lambda (_L35575_ _L35576_ _L35577_)
                                      (let ((_$e35602_
                                             (gxc#identifier-symbol _L35577_)))
                                        (if (let ((_$e35605_
                                                   (eq? '##fx= _$e35602_)))
                                              (if _$e35605_
                                                  _$e35605_
                                                  (eq? 'fx= _$e35602_)))
                                            (let* ((___stx4266642667_ _L35576_)
                                                   (_g3560935638_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       ___stx4266642667_))))
                                              (let ((___kont4266842669_
                                                     (lambda (_L35706_
                                                              _L35707_)
                                                       (let ((_$e35732_
                                                              (_countf-symbol33836_
                                                               _L35707_)))
                                                         (if _$e35732_
                                                             ((lambda (_sym35735_)
                                                                (_assert-count33849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L35706_
                         _sym35735_
                         (gx#stx-e _L35575_)))
                      _$e35732_)
                     '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4267042671_
                                                     (lambda () '#!void)))
                                                (if (gx#stx-pair?
                                                     ___stx4266642667_)
                                                    (let ((_e3561335650_
                                                           (gx#stx-e
                                                            ___stx4266642667_)))
                                                      (let ((_tl3561535655_
                                                             (##cdr _e3561335650_))
                                                            (_hd3561435653_
                                                             (##car _e3561335650_)))
                                                        (if (gx#identifier?
                                                             _hd3561435653_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd3561435653_)
                        (if (gx#stx-pair? _tl3561535655_)
                            (let ((_e3561635658_ (gx#stx-e _tl3561535655_)))
                              (let ((_tl3561835663_ (##cdr _e3561635658_))
                                    (_hd3561735661_ (##car _e3561635658_)))
                                (if (gx#stx-pair? _hd3561735661_)
                                    (let ((_e3561935666_
                                           (gx#stx-e _hd3561735661_)))
                                      (let ((_tl3562135671_
                                             (##cdr _e3561935666_))
                                            (_hd3562035669_
                                             (##car _e3561935666_)))
                                        (if (gx#identifier? _hd3562035669_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3562035669_)
                                                (if (gx#stx-pair?
                                                     _tl3562135671_)
                                                    (let ((_e3562235674_
                                                           (gx#stx-e
                                                            _tl3562135671_)))
                                                      (let ((_tl3562435679_
                                                             (##cdr _e3562235674_))
                                                            (_hd3562335677_
                                                             (##car _e3562235674_)))
                                                        (if (gx#stx-null?
                                                             _tl3562435679_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3561835663_)
                        (let ((_e3562535682_ (gx#stx-e _tl3561835663_)))
                          (let ((_tl3562735687_ (##cdr _e3562535682_))
                                (_hd3562635685_ (##car _e3562535682_)))
                            (if (gx#stx-pair? _hd3562635685_)
                                (let ((_e3562835690_
                                       (gx#stx-e _hd3562635685_)))
                                  (let ((_tl3563035695_ (##cdr _e3562835690_))
                                        (_hd3562935693_ (##car _e3562835690_)))
                                    (if (gx#identifier? _hd3562935693_)
                                        (if (gx#stx-eq? '%#ref _hd3562935693_)
                                            (if (gx#stx-pair? _tl3563035695_)
                                                (let ((_e3563135698_
                                                       (gx#stx-e
                                                        _tl3563035695_)))
                                                  (let ((_tl3563335703_
                                                         (##cdr _e3563135698_))
                                                        (_hd3563235701_
                                                         (##car _e3563135698_)))
                                                    (if (gx#stx-null?
                                                         _tl3563335703_)
                                                        (if (gx#stx-null?
                                                             _tl3562735687_)
                                                            (___kont4266842669_
                                                             _hd3563235701_
                                                             _hd3562335677_)
                                                            (___kont4267042671_))
                                                        (___kont4267042671_))))
                                                (___kont4267042671_))
                                            (___kont4267042671_))
                                        (___kont4267042671_))))
                                (___kont4267042671_))))
                        (___kont4267042671_))
                    (___kont4267042671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4267042671_))
                                                (___kont4267042671_))
                                            (___kont4267042671_))))
                                    (___kont4267042671_))))
                            (___kont4267042671_))
                        (___kont4267042671_))
                    (___kont4267042671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4267042671_))))
                                            (if (let ((_$e35740_
                                                       (eq? '##eq? _$e35602_)))
                                                  (if _$e35740_
                                                      _$e35740_
                                                      (let ((_$e35743_
                                                             (eq? 'eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e35602_)))
                (if _$e35743_
                    _$e35743_
                    (let ((_$e35746_ (eq? '##eqv? _$e35602_)))
                      (if _$e35746_
                          _$e35746_
                          (let ((_$e35749_ (eq? 'eqv? _$e35602_)))
                            (if _$e35749_
                                _$e35749_
                                (let ((_$e35752_ (eq? '##equal? _$e35602_)))
                                  (if _$e35752_
                                      _$e35752_
                                      (let ((_$e35755_
                                             (eq? 'equal? _$e35602_)))
                                        (if _$e35755_
                                            _$e35755_
                                            (let ((_$e35758_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35602_)))
                                              (if _$e35758_
                                                  _$e35758_
                                                  (eq? 'gx#stx-eq?
                                                       _$e35602_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                ((lambda (_sym35761_)
                                                   (let* ((___stx4273442735_
                                                           _L35576_)
                                                          (_g3576435777_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4273442735_))))
                                                     (let ((___kont4273642737_
                                                            (lambda (_L35805_)
                                                              (_assert-eqf33850_
                                                               _L35805_
                                                               (_eqf-symbol33837_
                                                                _sym35761_)
                                                               (gx#stx-e
                                                                _L35575_))))
                                                           (___kont4273842739_
                                                            (lambda ()
                                                              '#!void)))
                                                       (if (gx#stx-pair?
                                                            ___stx4273442735_)
                                                           (let ((_e3576735789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e ___stx4273442735_)))
                     (let ((_tl3576935794_ (##cdr _e3576735789_))
                           (_hd3576835792_ (##car _e3576735789_)))
                       (if (gx#identifier? _hd3576835792_)
                           (if (gx#stx-eq? '%#ref _hd3576835792_)
                               (if (gx#stx-pair? _tl3576935794_)
                                   (let ((_e3577035797_
                                          (gx#stx-e _tl3576935794_)))
                                     (let ((_tl3577235802_
                                            (##cdr _e3577035797_))
                                           (_hd3577135800_
                                            (##car _e3577035797_)))
                                       (if (gx#stx-null? _tl3577235802_)
                                           (___kont4273642737_ _hd3577135800_)
                                           (___kont4273842739_))))
                                   (___kont4273842739_))
                               (___kont4273842739_))
                           (___kont4273842739_))))
                   (___kont4273842739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _$e35602_)
                                                '#!void)))))
                                   (___kont4276642767_
                                    (lambda (_L35479_ _L35480_ _L35481_)
                                      (_assert34862_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35481_ '()))
                                                   (cons _L35479_
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#quote)
                             (cons _L35480_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4276842769_
                                    (lambda (_L35371_ _L35372_ _L35373_)
                                      (let ((_$e35402_
                                             (gxc#identifier-symbol _L35373_)))
                                        (if (let ((_$e35405_
                                                   (eq? 'gx#free-identifier=?
                                                        _$e35402_)))
                                              (if _$e35405_
                                                  _$e35405_
                                                  (eq? 'gx#stx-eq? _$e35402_)))
                                            ((lambda (_sym35408_)
                                               (_assert-eqf33850_
                                                _L35372_
                                                (_eqf-symbol33837_ _sym35408_)
                                                _L35371_))
                                             _$e35402_)
                                            '#!void))))
                                   (___kont4277042771_
                                    (lambda (_L35255_ _L35256_ _L35257_)
                                      (_assert34862_
                                       (cons (gx#datum->syntax__0 '#f '%#call)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)
                                                         (cons _L35257_ '()))
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                '%#ref)
                                                               (cons _L35255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#quote-syntax)
                             (cons _L35256_ '()))
                       '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (___kont4277242773_
                                    (lambda (_L35135_ _L35136_ _L35137_)
                                      (_assert34862_
                                       (gxc#apply-expression-subst
                                        _L35136_
                                        _L35137_
                                        _L35135_))))
                                   (___kont4277442775_ (lambda () '#!void)))
                               (if (gx#stx-pair? ___stx4276042761_)
                                   (let ((_e3487635826_
                                          (gx#stx-e ___stx4276042761_)))
                                     (let ((_tl3487835831_
                                            (##cdr _e3487635826_))
                                           (_hd3487735829_
                                            (##car _e3487635826_)))
                                       (if (gx#identifier? _hd3487735829_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd3487735829_)
                                               (if (gx#stx-pair?
                                                    _tl3487835831_)
                                                   (let ((_e3487935834_
                                                          (gx#stx-e
                                                           _tl3487835831_)))
                                                     (let ((_tl3488135839_
                                                            (##cdr _e3487935834_))
                                                           (_hd3488035837_
                                                            (##car _e3487935834_)))
                                                       (if (gx#stx-pair?
                                                            _hd3488035837_)
                                                           (let ((_e3488235842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3488035837_)))
                     (let ((_tl3488435847_ (##cdr _e3488235842_))
                           (_hd3488335845_ (##car _e3488235842_)))
                       (if (gx#identifier? _hd3488335845_)
                           (if (gx#stx-eq? '%#ref _hd3488335845_)
                               (if (gx#stx-pair? _tl3488435847_)
                                   (let ((_e3488535850_
                                          (gx#stx-e _tl3488435847_)))
                                     (let ((_tl3488735855_
                                            (##cdr _e3488535850_))
                                           (_hd3488635853_
                                            (##car _e3488535850_)))
                                       (if (gx#stx-null? _tl3488735855_)
                                           (if (gx#stx-pair? _tl3488135839_)
                                               (let ((_e3488835858_
                                                      (gx#stx-e
                                                       _tl3488135839_)))
                                                 (let ((_tl3489035863_
                                                        (##cdr _e3488835858_))
                                                       (_hd3488935861_
                                                        (##car _e3488835858_)))
                                                   (if (gx#stx-pair?
                                                        _hd3488935861_)
                                                       (let ((_e3489135866_
                                                              (gx#stx-e
                                                               _hd3488935861_)))
                                                         (let ((_tl3489335871_
                                                                (##cdr _e3489135866_))
                                                               (_hd3489235869_
                                                                (##car _e3489135866_)))
                                                           (if (gx#identifier?
                                                                _hd3489235869_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3489235869_)
                           (if (gx#stx-pair? _tl3489335871_)
                               (let ((_e3489435874_ (gx#stx-e _tl3489335871_)))
                                 (let ((_tl3489635879_ (##cdr _e3489435874_))
                                       (_hd3489535877_ (##car _e3489435874_)))
                                   (if (gx#stx-null? _tl3489635879_)
                                       (if (gx#stx-null? _tl3489035863_)
                                           (___kont4276242763_
                                            _hd3489535877_
                                            _hd3488635853_)
                                           (if (gx#stx-pair? _tl3489035863_)
                                               (let ((_e3491535551_
                                                      (gx#stx-e
                                                       _tl3489035863_)))
                                                 (let ((_tl3491735556_
                                                        (##cdr _e3491535551_))
                                                       (_hd3491635554_
                                                        (##car _e3491535551_)))
                                                   (if (gx#stx-pair?
                                                        _hd3491635554_)
                                                       (let ((_e3491835559_
                                                              (gx#stx-e
                                                               _hd3491635554_)))
                                                         (let ((_tl3492035564_
                                                                (##cdr _e3491835559_))
                                                               (_hd3491935562_
                                                                (##car _e3491835559_)))
                                                           (if (gx#identifier?
                                                                _hd3491935562_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#quote
                            _hd3491935562_)
                           (if (gx#stx-pair? _tl3492035564_)
                               (let ((_e3492135567_ (gx#stx-e _tl3492035564_)))
                                 (let ((_tl3492335572_ (##cdr _e3492135567_))
                                       (_hd3492235570_ (##car _e3492135567_)))
                                   (if (gx#stx-null? _tl3492335572_)
                                       (if (gx#stx-null? _tl3491735556_)
                                           (___kont4276442765_
                                            _hd3492235570_
                                            _hd3488935861_
                                            _hd3488635853_)
                                           (___kont4277442775_))
                                       (___kont4277442775_))))
                               (___kont4277442775_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3491935562_)
                               (if (gx#stx-pair? _tl3492035564_)
                                   (let ((_e3498135363_
                                          (gx#stx-e _tl3492035564_)))
                                     (let ((_tl3498335368_
                                            (##cdr _e3498135363_))
                                           (_hd3498235366_
                                            (##car _e3498135363_)))
                                       (if (gx#stx-null? _tl3498335368_)
                                           (if (gx#stx-null? _tl3491735556_)
                                               (___kont4276842769_
                                                _hd3498235366_
                                                _hd3489535877_
                                                _hd3488635853_)
                                               (___kont4277442775_))
                                           (___kont4277442775_))))
                                   (___kont4277442775_))
                               (___kont4277442775_)))
                       (___kont4277442775_))))
               (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277442775_)))
                                       (if (gx#stx-pair? _tl3489035863_)
                                           (let ((_e3491535551_
                                                  (gx#stx-e _tl3489035863_)))
                                             (let ((_tl3491735556_
                                                    (##cdr _e3491535551_))
                                                   (_hd3491635554_
                                                    (##car _e3491535551_)))
                                               (if (gx#stx-pair?
                                                    _hd3491635554_)
                                                   (let ((_e3491835559_
                                                          (gx#stx-e
                                                           _hd3491635554_)))
                                                     (let ((_tl3492035564_
                                                            (##cdr _e3491835559_))
                                                           (_hd3491935562_
                                                            (##car _e3491835559_)))
                                                       (if (gx#identifier?
                                                            _hd3491935562_)
                                                           (if (gx#stx-eq?
                                                                '%#quote
                                                                _hd3491935562_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3492035564_)
                           (let ((_e3492135567_ (gx#stx-e _tl3492035564_)))
                             (let ((_tl3492335572_ (##cdr _e3492135567_))
                                   (_hd3492235570_ (##car _e3492135567_)))
                               (if (gx#stx-null? _tl3492335572_)
                                   (if (gx#stx-null? _tl3491735556_)
                                       (___kont4276442765_
                                        _hd3492235570_
                                        _hd3488935861_
                                        _hd3488635853_)
                                       (___kont4277442775_))
                                   (___kont4277442775_))))
                           (___kont4277442775_))
                       (___kont4277442775_))
                   (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277442775_))))
                                           (___kont4277442775_)))))
                               (if (gx#stx-pair? _tl3489035863_)
                                   (let ((_e3491535551_
                                          (gx#stx-e _tl3489035863_)))
                                     (let ((_tl3491735556_
                                            (##cdr _e3491535551_))
                                           (_hd3491635554_
                                            (##car _e3491535551_)))
                                       (if (gx#stx-pair? _hd3491635554_)
                                           (let ((_e3491835559_
                                                  (gx#stx-e _hd3491635554_)))
                                             (let ((_tl3492035564_
                                                    (##cdr _e3491835559_))
                                                   (_hd3491935562_
                                                    (##car _e3491835559_)))
                                               (if (gx#identifier?
                                                    _hd3491935562_)
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3491935562_)
                                                       (if (gx#stx-pair?
                                                            _tl3492035564_)
                                                           (let ((_e3492135567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3492035564_)))
                     (let ((_tl3492335572_ (##cdr _e3492135567_))
                           (_hd3492235570_ (##car _e3492135567_)))
                       (if (gx#stx-null? _tl3492335572_)
                           (if (gx#stx-null? _tl3491735556_)
                               (___kont4276442765_
                                _hd3492235570_
                                _hd3488935861_
                                _hd3488635853_)
                               (___kont4277442775_))
                           (___kont4277442775_))))
                   (___kont4277442775_))
               (___kont4277442775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277442775_))))
                                           (___kont4277442775_))))
                                   (___kont4277442775_)))
                           (if (gx#stx-pair? _tl3489035863_)
                               (let ((_e3491535551_ (gx#stx-e _tl3489035863_)))
                                 (let ((_tl3491735556_ (##cdr _e3491535551_))
                                       (_hd3491635554_ (##car _e3491535551_)))
                                   (if (gx#stx-pair? _hd3491635554_)
                                       (let ((_e3491835559_
                                              (gx#stx-e _hd3491635554_)))
                                         (let ((_tl3492035564_
                                                (##cdr _e3491835559_))
                                               (_hd3491935562_
                                                (##car _e3491835559_)))
                                           (if (gx#identifier? _hd3491935562_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3491935562_)
                                                   (if (gx#stx-pair?
                                                        _tl3492035564_)
                                                       (let ((_e3492135567_
                                                              (gx#stx-e
                                                               _tl3492035564_)))
                                                         (let ((_tl3492335572_
                                                                (##cdr _e3492135567_))
                                                               (_hd3492235570_
                                                                (##car _e3492135567_)))
                                                           (if (gx#stx-null?
                                                                _tl3492335572_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491735556_)
                           (___kont4276442765_
                            _hd3492235570_
                            _hd3488935861_
                            _hd3488635853_)
                           (if (gx#stx-eq? '%#quote _hd3489235869_)
                               (if (gx#stx-pair? _tl3489335871_)
                                   (let ((_e3494535463_
                                          (gx#stx-e _tl3489335871_)))
                                     (let ((_tl3494735468_
                                            (##cdr _e3494535463_))
                                           (_hd3494635466_
                                            (##car _e3494535463_)))
                                       (___kont4277442775_)))
                                   (___kont4277442775_))
                               (if (gx#stx-eq? '%#quote-syntax _hd3489235869_)
                                   (if (gx#stx-pair? _tl3489335871_)
                                       (let ((_e3500535223_
                                              (gx#stx-e _tl3489335871_)))
                                         (let ((_tl3500735228_
                                                (##cdr _e3500535223_))
                                               (_hd3500635226_
                                                (##car _e3500535223_)))
                                           (___kont4277442775_)))
                                       (___kont4277442775_))
                                   (___kont4277442775_))))
                       (if (gx#stx-eq? '%#quote _hd3489235869_)
                           (if (gx#stx-pair? _tl3489335871_)
                               (let ((_e3494535463_ (gx#stx-e _tl3489335871_)))
                                 (let ((_tl3494735468_ (##cdr _e3494535463_))
                                       (_hd3494635466_ (##car _e3494535463_)))
                                   (if (gx#stx-null? _tl3494735468_)
                                       (if (gx#stx-null? _tl3491735556_)
                                           (___kont4276642767_
                                            _hd3491635554_
                                            _hd3494635466_
                                            _hd3488635853_)
                                           (___kont4277442775_))
                                       (___kont4277442775_))))
                               (___kont4277442775_))
                           (if (gx#stx-eq? '%#quote-syntax _hd3489235869_)
                               (if (gx#stx-pair? _tl3489335871_)
                                   (let ((_e3500535223_
                                          (gx#stx-e _tl3489335871_)))
                                     (let ((_tl3500735228_
                                            (##cdr _e3500535223_))
                                           (_hd3500635226_
                                            (##car _e3500535223_)))
                                       (___kont4277442775_)))
                                   (___kont4277442775_))
                               (___kont4277442775_))))))
               (if (gx#stx-eq? '%#quote _hd3489235869_)
                   (if (gx#stx-pair? _tl3489335871_)
                       (let ((_e3494535463_ (gx#stx-e _tl3489335871_)))
                         (let ((_tl3494735468_ (##cdr _e3494535463_))
                               (_hd3494635466_ (##car _e3494535463_)))
                           (if (gx#stx-null? _tl3494735468_)
                               (if (gx#stx-null? _tl3491735556_)
                                   (___kont4276642767_
                                    _hd3491635554_
                                    _hd3494635466_
                                    _hd3488635853_)
                                   (___kont4277442775_))
                               (___kont4277442775_))))
                       (___kont4277442775_))
                   (if (gx#stx-eq? '%#quote-syntax _hd3489235869_)
                       (if (gx#stx-pair? _tl3489335871_)
                           (let ((_e3500535223_ (gx#stx-e _tl3489335871_)))
                             (let ((_tl3500735228_ (##cdr _e3500535223_))
                                   (_hd3500635226_ (##car _e3500535223_)))
                               (___kont4277442775_)))
                           (___kont4277442775_))
                       (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote
                                                        _hd3489235869_)
                                                       (if (gx#stx-pair?
                                                            _tl3489335871_)
                                                           (let ((_e3494535463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3489335871_)))
                     (let ((_tl3494735468_ (##cdr _e3494535463_))
                           (_hd3494635466_ (##car _e3494535463_)))
                       (if (gx#stx-null? _tl3494735468_)
                           (if (gx#stx-null? _tl3491735556_)
                               (___kont4276642767_
                                _hd3491635554_
                                _hd3494635466_
                                _hd3488635853_)
                               (___kont4277442775_))
                           (___kont4277442775_))))
                   (___kont4277442775_))
               (if (gx#stx-eq? '%#quote-syntax _hd3489235869_)
                   (if (gx#stx-pair? _tl3489335871_)
                       (let ((_e3500535223_ (gx#stx-e _tl3489335871_)))
                         (let ((_tl3500735228_ (##cdr _e3500535223_))
                               (_hd3500635226_ (##car _e3500535223_)))
                           (if (gx#stx-null? _tl3500735228_)
                               (if (gx#stx-eq? '%#ref _hd3491935562_)
                                   (if (gx#stx-pair? _tl3492035564_)
                                       (let ((_e3501435247_
                                              (gx#stx-e _tl3492035564_)))
                                         (let ((_tl3501635252_
                                                (##cdr _e3501435247_))
                                               (_hd3501535250_
                                                (##car _e3501435247_)))
                                           (if (gx#stx-null? _tl3501635252_)
                                               (if (gx#stx-null?
                                                    _tl3491735556_)
                                                   (___kont4277042771_
                                                    _hd3501535250_
                                                    _hd3500635226_
                                                    _hd3488635853_)
                                                   (___kont4277442775_))
                                               (___kont4277442775_))))
                                       (___kont4277442775_))
                                   (___kont4277442775_))
                               (___kont4277442775_))))
                       (___kont4277442775_))
                   (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _hd3489235869_)
                                                   (if (gx#stx-pair?
                                                        _tl3489335871_)
                                                       (let ((_e3494535463_
                                                              (gx#stx-e
                                                               _tl3489335871_)))
                                                         (let ((_tl3494735468_
                                                                (##cdr _e3494535463_))
                                                               (_hd3494635466_
                                                                (##car _e3494535463_)))
                                                           (if (gx#stx-null?
                                                                _tl3494735468_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3491735556_)
                           (___kont4276642767_
                            _hd3491635554_
                            _hd3494635466_
                            _hd3488635853_)
                           (___kont4277442775_))
                       (___kont4277442775_))))
               (___kont4277442775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-eq?
                                                        '%#quote-syntax
                                                        _hd3489235869_)
                                                       (if (gx#stx-pair?
                                                            _tl3489335871_)
                                                           (let ((_e3500535223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3489335871_)))
                     (let ((_tl3500735228_ (##cdr _e3500535223_))
                           (_hd3500635226_ (##car _e3500535223_)))
                       (___kont4277442775_)))
                   (___kont4277442775_))
               (___kont4277442775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-eq? '%#quote _hd3489235869_)
                                           (if (gx#stx-pair? _tl3489335871_)
                                               (let ((_e3494535463_
                                                      (gx#stx-e
                                                       _tl3489335871_)))
                                                 (let ((_tl3494735468_
                                                        (##cdr _e3494535463_))
                                                       (_hd3494635466_
                                                        (##car _e3494535463_)))
                                                   (if (gx#stx-null?
                                                        _tl3494735468_)
                                                       (if (gx#stx-null?
                                                            _tl3491735556_)
                                                           (___kont4276642767_
                                                            _hd3491635554_
                                                            _hd3494635466_
                                                            _hd3488635853_)
                                                           (___kont4277442775_))
                                                       (___kont4277442775_))))
                                               (___kont4277442775_))
                                           (if (gx#stx-eq?
                                                '%#quote-syntax
                                                _hd3489235869_)
                                               (if (gx#stx-pair?
                                                    _tl3489335871_)
                                                   (let ((_e3500535223_
                                                          (gx#stx-e
                                                           _tl3489335871_)))
                                                     (let ((_tl3500735228_
                                                            (##cdr _e3500535223_))
                                                           (_hd3500635226_
                                                            (##car _e3500535223_)))
                                                       (___kont4277442775_)))
                                                   (___kont4277442775_))
                                               (___kont4277442775_))))))
                               (if (gx#stx-eq? '%#quote _hd3489235869_)
                                   (if (gx#stx-pair? _tl3489335871_)
                                       (let ((_e3494535463_
                                              (gx#stx-e _tl3489335871_)))
                                         (let ((_tl3494735468_
                                                (##cdr _e3494535463_))
                                               (_hd3494635466_
                                                (##car _e3494535463_)))
                                           (___kont4277442775_)))
                                       (___kont4277442775_))
                                   (if (gx#stx-eq?
                                        '%#quote-syntax
                                        _hd3489235869_)
                                       (if (gx#stx-pair? _tl3489335871_)
                                           (let ((_e3500535223_
                                                  (gx#stx-e _tl3489335871_)))
                                             (let ((_tl3500735228_
                                                    (##cdr _e3500535223_))
                                                   (_hd3500635226_
                                                    (##car _e3500535223_)))
                                               (___kont4277442775_)))
                                           (___kont4277442775_))
                                       (___kont4277442775_)))))
                       (if (gx#stx-pair? _tl3489035863_)
                           (let ((_e3491535551_ (gx#stx-e _tl3489035863_)))
                             (let ((_tl3491735556_ (##cdr _e3491535551_))
                                   (_hd3491635554_ (##car _e3491535551_)))
                               (if (gx#stx-pair? _hd3491635554_)
                                   (let ((_e3491835559_
                                          (gx#stx-e _hd3491635554_)))
                                     (let ((_tl3492035564_
                                            (##cdr _e3491835559_))
                                           (_hd3491935562_
                                            (##car _e3491835559_)))
                                       (if (gx#identifier? _hd3491935562_)
                                           (if (gx#stx-eq?
                                                '%#quote
                                                _hd3491935562_)
                                               (if (gx#stx-pair?
                                                    _tl3492035564_)
                                                   (let ((_e3492135567_
                                                          (gx#stx-e
                                                           _tl3492035564_)))
                                                     (let ((_tl3492335572_
                                                            (##cdr _e3492135567_))
                                                           (_hd3492235570_
                                                            (##car _e3492135567_)))
                                                       (if (gx#stx-null?
                                                            _tl3492335572_)
                                                           (if (gx#stx-null?
                                                                _tl3491735556_)
                                                               (___kont4276442765_
                                                                _hd3492235570_
                                                                _hd3488935861_
                                                                _hd3488635853_)
                                                               (___kont4277442775_))
                                                           (___kont4277442775_))))
                                                   (___kont4277442775_))
                                               (___kont4277442775_))
                                           (___kont4277442775_))))
                                   (___kont4277442775_))))
                           (___kont4277442775_)))))
               (if (gx#stx-pair? _tl3489035863_)
                   (let ((_e3491535551_ (gx#stx-e _tl3489035863_)))
                     (let ((_tl3491735556_ (##cdr _e3491535551_))
                           (_hd3491635554_ (##car _e3491535551_)))
                       (if (gx#stx-pair? _hd3491635554_)
                           (let ((_e3491835559_ (gx#stx-e _hd3491635554_)))
                             (let ((_tl3492035564_ (##cdr _e3491835559_))
                                   (_hd3491935562_ (##car _e3491835559_)))
                               (if (gx#identifier? _hd3491935562_)
                                   (if (gx#stx-eq? '%#quote _hd3491935562_)
                                       (if (gx#stx-pair? _tl3492035564_)
                                           (let ((_e3492135567_
                                                  (gx#stx-e _tl3492035564_)))
                                             (let ((_tl3492335572_
                                                    (##cdr _e3492135567_))
                                                   (_hd3492235570_
                                                    (##car _e3492135567_)))
                                               (if (gx#stx-null?
                                                    _tl3492335572_)
                                                   (if (gx#stx-null?
                                                        _tl3491735556_)
                                                       (___kont4276442765_
                                                        _hd3492235570_
                                                        _hd3488935861_
                                                        _hd3488635853_)
                                                       (___kont4277442775_))
                                                   (___kont4277442775_))))
                                           (___kont4277442775_))
                                       (___kont4277442775_))
                                   (___kont4277442775_))))
                           (___kont4277442775_))))
                   (___kont4277442775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277442775_))
                                           (___kont4277442775_))))
                                   (___kont4277442775_))
                               (if (gx#stx-eq? '%#lambda _hd3488335845_)
                                   (if (gx#stx-pair? _tl3488435847_)
                                       (let ((_e3502935087_
                                              (gx#stx-e _tl3488435847_)))
                                         (let ((_tl3503135092_
                                                (##cdr _e3502935087_))
                                               (_hd3503035090_
                                                (##car _e3502935087_)))
                                           (if (gx#stx-pair? _hd3503035090_)
                                               (let ((_e3503235095_
                                                      (gx#stx-e
                                                       _hd3503035090_)))
                                                 (let ((_tl3503435100_
                                                        (##cdr _e3503235095_))
                                                       (_hd3503335098_
                                                        (##car _e3503235095_)))
                                                   (if (gx#stx-null?
                                                        _tl3503435100_)
                                                       (if (gx#stx-pair?
                                                            _tl3503135092_)
                                                           (let ((_e3503535103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3503135092_)))
                     (let ((_tl3503735108_ (##cdr _e3503535103_))
                           (_hd3503635106_ (##car _e3503535103_)))
                       (if (gx#stx-null? _tl3503735108_)
                           (if (gx#stx-pair? _tl3488135839_)
                               (let ((_e3503835111_ (gx#stx-e _tl3488135839_)))
                                 (let ((_tl3504035116_ (##cdr _e3503835111_))
                                       (_hd3503935114_ (##car _e3503835111_)))
                                   (if (gx#stx-pair? _hd3503935114_)
                                       (let ((_e3504135119_
                                              (gx#stx-e _hd3503935114_)))
                                         (let ((_tl3504335124_
                                                (##cdr _e3504135119_))
                                               (_hd3504235122_
                                                (##car _e3504135119_)))
                                           (if (gx#identifier? _hd3504235122_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd3504235122_)
                                                   (if (gx#stx-pair?
                                                        _tl3504335124_)
                                                       (let ((_e3504435127_
                                                              (gx#stx-e
                                                               _tl3504335124_)))
                                                         (let ((_tl3504635132_
                                                                (##cdr _e3504435127_))
                                                               (_hd3504535130_
                                                                (##car _e3504435127_)))
                                                           (if (gx#stx-null?
                                                                _tl3504635132_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3504035116_)
                           (___kont4277242773_
                            _hd3504535130_
                            _hd3503635106_
                            _hd3503335098_)
                           (___kont4277442775_))
                       (___kont4277442775_))))
               (___kont4277442775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277442775_))
                                               (___kont4277442775_))))
                                       (___kont4277442775_))))
                               (___kont4277442775_))
                           (___kont4277442775_))))
                   (___kont4277442775_))
               (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4277442775_))))
                                       (___kont4277442775_))
                                   (___kont4277442775_)))
                           (___kont4277442775_))))
                   (___kont4277442775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4277442775_))
                                               (___kont4277442775_))
                                           (___kont4277442775_))))
                                   (___kont4277442775_)))))))))
                (_assert-type33848_
                 (lambda (_id34747_ _t34748_)
                   (letrec ((_super-e34750_
                             (lambda (_t34847_)
                               (let ((_tid3484834850_
                                      (##structure-ref
                                       _t34847_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid3484834850_
                                     (let ((_tid34853_ _tid3484834850_))
                                       (gxc#optimizer-resolve-type _tid34853_))
                                     '#f)))))
                     (let _lp34752_ ((_rest34754_ _env-type33830_))
                       (let* ((_rest3475534763_ _rest34754_)
                              (_else3475734771_ (lambda () '#!void))
                              (_K3475934835_
                               (lambda (_rest34774_ _type-info34775_)
                                 (let* ((_type-info3477634788_
                                         _type-info34775_)
                                        (_else3477834796_
                                         (lambda () (_lp34752_ _rest34774_)))
                                        (_K3478034811_
                                         (lambda (_val34799_
                                                  _xt34800_
                                                  _xid34801_)
                                           (if (gx#free-identifier=?
                                                _id34747_
                                                _xid34801_)
                                               (if (eq? _t34748_ _xt34800_)
                                                   _val34799_
                                                   (if _val34799_
                                                       (if (if (##structure-instance-of?
                                                                _t34748_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt34800_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?34803_ ((_xt34805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e34750_ _xt34800_)))
                     (if (not _xt34805_)
                         '#f
                         (if (eq? _xt34805_ _t34748_)
                             '#t
                             (_subtype?34803_ (_super-e34750_ _xt34805_)))))
                   '#f)
               (if (if (##structure-instance-of? _t34748_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt34800_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?34807_ ((_t34809_
                                            (_super-e34750_ _t34748_)))
                     (if (not _t34809_)
                         (_lp34752_ _rest34774_)
                         (if (eq? _t34809_ _xt34800_)
                             '#f
                             (_supertype?34807_ (_super-e34750_ _t34809_)))))
                   (_lp34752_ _rest34774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp34752_ _rest34774_)))))
                                   (if (##pair? _type-info3477634788_)
                                       (let ((_hd3478134814_
                                              (##car _type-info3477634788_))
                                             (_tl3478234816_
                                              (##cdr _type-info3477634788_)))
                                         (let ((_xid34819_ _hd3478134814_))
                                           (if (##pair? _tl3478234816_)
                                               (let ((_hd3478334821_
                                                      (##car _tl3478234816_))
                                                     (_tl3478434823_
                                                      (##cdr _tl3478234816_)))
                                                 (let ((_xt34826_
                                                        _hd3478334821_))
                                                   (if (##pair? _tl3478434823_)
                                                       (let ((_hd3478534828_
                                                              (##car _tl3478434823_))
                                                             (_tl3478634830_
                                                              (##cdr _tl3478434823_)))
                                                         (let ((_val34833_
                                                                _hd3478534828_))
                                                           (if (##null? _tl3478634830_)
                                                               (_K3478034811_
                                                                _val34833_
                                                                _xt34826_
                                                                _xid34819_)
                                                               (_else3477834796_))))
                                                       (_else3477834796_))))
                                               (_else3477834796_))))
                                       (_else3477834796_))))))
                         (if (##pair? _rest3475534763_)
                             (let ((_hd3476034838_ (##car _rest3475534763_))
                                   (_tl3476134840_ (##cdr _rest3475534763_)))
                               (let* ((_type-info34843_ _hd3476034838_)
                                      (_rest34845_ _tl3476134840_))
                                 (_K3475934835_ _rest34845_ _type-info34843_)))
                             (_else3475734771_)))))))
                (_assert-count33849_
                 (lambda (_id34646_ _sym34647_ _count34648_)
                   (let _lp34650_ ((_rest34652_ _env-type33830_))
                     (let* ((_rest3465334661_ _rest34652_)
                            (_else3465534669_ (lambda () '#!void))
                            (_K3465734735_
                             (lambda (_rest34672_ _type-info34673_)
                               (let* ((_type-info3467434688_ _type-info34673_)
                                      (_else3467634696_
                                       (lambda () (_lp34650_ _rest34672_)))
                                      (_K3467834704_
                                       (lambda (_val34699_
                                                _xcount34700_
                                                _xsym34701_
                                                _xid34702_)
                                         (if (if (eq? _sym34647_ _xsym34701_)
                                                 (gx#free-identifier=?
                                                  _id34646_
                                                  _xid34702_)
                                                 '#f)
                                             (if _val34699_
                                                 (fx= _count34648_
                                                      _xcount34700_)
                                                 (if (fx= _count34648_
                                                          _xcount34700_)
                                                     '#f
                                                     (_lp34650_ _rest34672_)))
                                             (_lp34650_ _rest34672_)))))
                                 (if (##pair? _type-info3467434688_)
                                     (let ((_hd3467934707_
                                            (##car _type-info3467434688_))
                                           (_tl3468034709_
                                            (##cdr _type-info3467434688_)))
                                       (let ((_xid34712_ _hd3467934707_))
                                         (if (##pair? _tl3468034709_)
                                             (let ((_hd3468134714_
                                                    (##car _tl3468034709_))
                                                   (_tl3468234716_
                                                    (##cdr _tl3468034709_)))
                                               (let ((_xsym34719_
                                                      _hd3468134714_))
                                                 (if (##pair? _tl3468234716_)
                                                     (let ((_hd3468334721_
                                                            (##car _tl3468234716_))
                                                           (_tl3468434723_
                                                            (##cdr _tl3468234716_)))
                                                       (let ((_xcount34726_
                                                              _hd3468334721_))
                                                         (if (##pair? _tl3468434723_)
                                                             (let ((_hd3468534728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3468434723_))
                           (_tl3468634730_ (##cdr _tl3468434723_)))
                       (let ((_val34733_ _hd3468534728_))
                         (if (##null? _tl3468634730_)
                             (_K3467834704_
                              _val34733_
                              _xcount34726_
                              _xsym34719_
                              _xid34712_)
                             (_else3467634696_))))
                     (_else3467634696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else3467634696_))))
                                             (_else3467634696_))))
                                     (_else3467634696_))))))
                       (if (##pair? _rest3465334661_)
                           (let ((_hd3465834738_ (##car _rest3465334661_))
                                 (_tl3465934740_ (##cdr _rest3465334661_)))
                             (let* ((_type-info34743_ _hd3465834738_)
                                    (_rest34745_ _tl3465934740_))
                               (_K3465734735_ _rest34745_ _type-info34743_)))
                           (_else3465534669_))))))
                (_assert-eqf33850_
                 (lambda (_id34536_ _sym34537_ _datum34538_)
                   (letrec ((_eqf34540_
                             (lambda (_sym34641_)
                               (let ((_$e34643_ _sym34641_))
                                 (if (eq? 'eq? _$e34643_)
                                     eq?
                                     (if (eq? 'eqv? _$e34643_)
                                         eqv?
                                         (if (eq? 'equal? _$e34643_)
                                             equal?
                                             (if (eq? 'free-identifier=?
                                                      _$e34643_)
                                                 gx#free-identifier=?
                                                 (if (eq? 'stx-eq? _$e34643_)
                                                     gx#stx-eq?
                                                     (gxc#raise-compile-error
                                                      '"Unexpected eqf symbol"
                                                      _body33591_
                                                      _sym34641_))))))))))
                     (let _lp34542_ ((_rest34544_ _env-type33830_))
                       (let* ((_rest3454534553_ _rest34544_)
                              (_else3454734561_ (lambda () '#!void))
                              (_K3454934629_
                               (lambda (_rest34564_ _type-info34565_)
                                 (let* ((_type-info3456634580_
                                         _type-info34565_)
                                        (_else3456834588_
                                         (lambda () (_lp34542_ _rest34564_)))
                                        (_K3457034598_
                                         (lambda (_val34591_
                                                  _xdatum34592_
                                                  _xsym34593_
                                                  _xid34594_)
                                           (if (if (eq? _sym34537_ _xsym34593_)
                                                   (gx#free-identifier=?
                                                    _id34536_
                                                    _xid34594_)
                                                   '#f)
                                               (let ((_=?34596_
                                                      (_eqf34540_ _sym34537_)))
                                                 (if _val34591_
                                                     (_=?34596_
                                                      _datum34538_
                                                      _xdatum34592_)
                                                     (if (_=?34596_
                                                          _datum34538_
                                                          _xdatum34592_)
                                                         '#f
                                                         (_lp34542_
                                                          _rest34564_))))
                                               (_lp34542_ _rest34564_)))))
                                   (if (##pair? _type-info3456634580_)
                                       (let ((_hd3457134601_
                                              (##car _type-info3456634580_))
                                             (_tl3457234603_
                                              (##cdr _type-info3456634580_)))
                                         (let ((_xid34606_ _hd3457134601_))
                                           (if (##pair? _tl3457234603_)
                                               (let ((_hd3457334608_
                                                      (##car _tl3457234603_))
                                                     (_tl3457434610_
                                                      (##cdr _tl3457234603_)))
                                                 (let ((_xsym34613_
                                                        _hd3457334608_))
                                                   (if (##pair? _tl3457434610_)
                                                       (let ((_hd3457534615_
                                                              (##car _tl3457434610_))
                                                             (_tl3457634617_
                                                              (##cdr _tl3457434610_)))
                                                         (let ((_xdatum34620_
                                                                _hd3457534615_))
                                                           (if (##pair? _tl3457634617_)
                                                               (let ((_hd3457734622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl3457634617_))
                             (_tl3457834624_ (##cdr _tl3457634617_)))
                         (let ((_val34627_ _hd3457734622_))
                           (if (##null? _tl3457834624_)
                               (_K3457034598_
                                _val34627_
                                _xdatum34620_
                                _xsym34613_
                                _xid34606_)
                               (_else3456834588_))))
                       (_else3456834588_))))
               (_else3456834588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else3456834588_))))
                                       (_else3456834588_))))))
                         (if (##pair? _rest3454534553_)
                             (let ((_hd3455034632_ (##car _rest3454534553_))
                                   (_tl3455134634_ (##cdr _rest3454534553_)))
                               (let* ((_type-info34637_ _hd3455034632_)
                                      (_rest34639_ _tl3455134634_))
                                 (_K3454934629_ _rest34639_ _type-info34637_)))
                             (_else3454734561_)))))))
                (_bind-e__4117341174_
                 (lambda (_bind34439_ _body34440_ _continue34441_)
                   (let _lp34443_ ((_rest34445_ _bind34439_)
                                   (_subst34446_ '())
                                   (_locals34447_ '())
                                   (_env34448_ _env-bind33831_))
                     (let* ((_rest3444934457_ _rest34445_)
                            (_else3445134471_
                             (lambda ()
                               (let* ((_body34465_
                                       (if (null? _subst34446_)
                                           _body34440_
                                           (gxc#apply-expression-subst*
                                            _body34440_
                                            _subst34446_)))
                                      (_body34468_
                                       (_do-bind!33842_
                                        _env34448_
                                        (lambda ()
                                          (_continue34441_ _body34465_)))))
                                 (if (null? _locals34447_)
                                     _body34468_
                                     (cons '%#let-values
                                           (cons _locals34447_
                                                 (cons _body34468_ '())))))))
                            (_K3445334512_
                             (lambda (_rest34474_ _bind34475_)
                               (let* ((_bind3447634483_ _bind34475_)
                                      (_E3447834487_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind3447634483_)))
                                      (_K3447934500_
                                       (lambda (_expr34490_ _id34491_)
                                         (let* ((_sexpr34493_
                                                 (gxc#apply-generate-runtime-repr
                                                  _expr34490_))
                                                (_$e34495_
                                                 (assget _sexpr34493_
                                                         _env-bind33831_)))
                                           (if _$e34495_
                                               ((lambda (_xid34498_)
                                                  (_lp34443_
                                                   _rest34474_
                                                   (cons (cons _id34491_
                                                               _xid34498_)
                                                         _subst34446_)
                                                   _locals34447_
                                                   _env34448_))
                                                _$e34495_)
                                               (_lp34443_
                                                _rest34474_
                                                _subst34446_
                                                (cons (cons (cons _id34491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr34490_ '()))
              _locals34447_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr34493_
                                                            _id34491_)
                                                      _env34448_)))))))
                                 (if (##pair? _bind3447634483_)
                                     (let ((_hd3448034503_
                                            (##car _bind3447634483_))
                                           (_tl3448134505_
                                            (##cdr _bind3447634483_)))
                                       (let* ((_id34508_ _hd3448034503_)
                                              (_expr34510_ _tl3448134505_))
                                         (_K3447934500_
                                          _expr34510_
                                          _id34508_)))
                                     (_E3447834487_))))))
                       (if (##pair? _rest3444934457_)
                           (let ((_hd3445434515_ (##car _rest3444934457_))
                                 (_tl3445534517_ (##cdr _rest3444934457_)))
                             (let* ((_bind34520_ _hd3445434515_)
                                    (_rest34522_ _tl3445534517_))
                               (_K3445334512_ _rest34522_ _bind34520_)))
                           (_else3445134471_))))))
                (_bind-e__0__4117541176_
                 (lambda (_bind34527_ _body34528_)
                   (let ((_continue34530_ _optimize-e33844_))
                     (_bind-e__4117341174_
                      _bind34527_
                      _body34528_
                      _continue34530_))))
                (_bind-e33851_
                 (lambda _g44272_
                   (let ((_g44271_ (length _g44272_)))
                     (cond ((##fx= _g44271_ 2)
                            (apply _bind-e__0__4117541176_ _g44272_))
                           ((##fx= _g44271_ 3)
                            (apply _bind-e__4117341174_ _g44272_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g44272_))))))
                (_lookup-block33852_
                 (lambda (_id34434_)
                   (find (lambda (_block34436_)
                           (gx#free-identifier=? (car _block34436_) _id34434_))
                         _blocks33594_)))
                (_inline-block33853_
                 (lambda (_block34310_ _args34311_)
                   (let* ((_kont34313_ (caddr _block34310_))
                          (_g3431534341_
                           (lambda (_g3431634338_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3431634338_)))
                          (_g3431434431_
                           (lambda (_g3431634344_)
                             (if (gx#stx-pair? _g3431634344_)
                                 (let ((_e3431934346_
                                        (gx#stx-e _g3431634344_)))
                                   (let ((_hd3432034349_ (##car _e3431934346_))
                                         (_tl3432134351_
                                          (##cdr _e3431934346_)))
                                     (if (gx#identifier? _hd3432034349_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd3432034349_)
                                             (if (gx#stx-pair? _tl3432134351_)
                                                 (let ((_e3432234354_
                                                        (gx#stx-e
                                                         _tl3432134351_)))
                                                   (let ((_hd3432334357_
                                                          (##car _e3432234354_))
                                                         (_tl3432434359_
                                                          (##cdr _e3432234354_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd3432334357_)
                                                         (let ((_g44273_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3432334357_
                         '0)))
                   (begin
                     (let ((_g44274_
                            (if (##values? _g44273_)
                                (##vector-length _g44273_)
                                1)))
                       (if (not (##fx= _g44274_ 2))
                           (error "Context expects 2 values" _g44274_)))
                     (let ((_target3432534362_ (##vector-ref _g44273_ 0))
                           (_tl3432734364_ (##vector-ref _g44273_ 1)))
                       (if (gx#stx-null? _tl3432734364_)
                           (letrec ((_loop3432834367_
                                     (lambda (_hd3432634370_ _id3433234372_)
                                       (if (gx#stx-pair? _hd3432634370_)
                                           (let ((_e3432934375_
                                                  (gx#stx-e _hd3432634370_)))
                                             (let ((_lp-hd3433034378_
                                                    (##car _e3432934375_))
                                                   (_lp-tl3433134380_
                                                    (##cdr _e3432934375_)))
                                               (_loop3432834367_
                                                _lp-tl3433134380_
                                                (cons _lp-hd3433034378_
                                                      _id3433234372_))))
                                           (let ((_id3433334383_
                                                  (reverse _id3433234372_)))
                                             (if (gx#stx-pair? _tl3432434359_)
                                                 (let ((_e3433434386_
                                                        (gx#stx-e
                                                         _tl3432434359_)))
                                                   (let ((_hd3433534389_
                                                          (##car _e3433434386_))
                                                         (_tl3433634391_
                                                          (##cdr _e3433434386_)))
                                                     (if (gx#stx-null?
                                                          _tl3433634391_)
                                                         ((lambda (_L34394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L34395_)
                    (if (null? (begin
                                 '#!void
                                 (foldr1 (lambda (_g3441434417_ _g3441534419_)
                                           (cons _g3441434417_ _g3441534419_))
                                         '()
                                         _L34395_)))
                        _L34394_
                        (let ((_subst34429_
                               (map cons
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g3442134424_
                                                       _g3442234426_)
                                                (cons _g3442134424_
                                                      _g3442234426_))
                                              '()
                                              _L34395_))
                                    _args34311_)))
                          (gxc#apply-expression-subst*
                           _L34394_
                           _subst34429_))))
                  _hd3433534389_
                  _id3433334383_)
                 (_g3431534341_ _g3431634344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431534341_
                                                  _g3431634344_)))))))
                             (_loop3432834367_ _target3432534362_ '()))
                           (_g3431534341_ _g3431634344_)))))
                 (_g3431534341_ _g3431634344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3431534341_ _g3431634344_))
                                             (_g3431534341_ _g3431634344_))
                                         (_g3431534341_ _g3431634344_))))
                                 (_g3431534341_ _g3431634344_)))))
                     (_g3431434431_ _kont34313_))))
                (_nonlinear-block?33854_
                 (lambda (_block33859_)
                   (letrec ((_nonlinear-expr?33861_
                             (lambda (_expr33969_)
                               (let* ((___stx4323043231_ _expr33969_)
                                      (_g3397534041_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4323043231_))))
                                 (let ((___kont4323243233_ (lambda () '#t))
                                       (___kont4323443235_
                                        (lambda (_L34240_)
                                          (let* ((___stx4321243213_ _L34240_)
                                                 (_g3425834267_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx4321243213_))))
                                            (let ((___kont4321443215_
                                                   (lambda () '#f))
                                                  (___kont4321643217_
                                                   (lambda () '#t)))
                                              (if (gx#stx-pair?
                                                   ___stx4321243213_)
                                                  (let ((_e3426034279_
                                                         (gx#stx-e
                                                          ___stx4321243213_)))
                                                    (let ((_tl3426234284_
                                                           (##cdr _e3426034279_))
                                                          (_hd3426134282_
                                                           (##car _e3426034279_)))
                                                      (if (gx#identifier?
                                                           _hd3426134282_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd3426134282_)
                                                              (___kont4321443215_)
                                                              (___kont4321643217_))
                                                          (___kont4321643217_))))
                                                  (___kont4321643217_))))))
                                       (___kont4323843239_
                                        (lambda (_L34138_)
                                          (_nonlinear-expr?33861_ _L34138_)))
                                       (___kont4324043241_
                                        (lambda (_L34085_ _L34086_ _L34087_)
                                          (let ((_$e34106_
                                                 (_nonlinear-expr?33861_
                                                  _L34086_)))
                                            (if _$e34106_
                                                _$e34106_
                                                (_nonlinear-expr?33861_
                                                 _L34085_)))))
                                       (___kont4324243243_ (lambda () '#f)))
                                   (let* ((___match4329343294_
                                           (lambda (_e3401334114_
                                                    _hd3401434117_
                                                    _tl3401534119_
                                                    _e3401634122_
                                                    _hd3401734125_
                                                    _tl3401834127_)
                                             (if (gx#stx-pair? _tl3401834127_)
                                                 (let ((_e3401934130_
                                                        (gx#stx-e
                                                         _tl3401834127_)))
                                                   (let ((_tl3402134135_
                                                          (##cdr _e3401934130_))
                                                         (_hd3402034133_
                                                          (##car _e3401934130_)))
                                                     (if (gx#stx-null?
                                                          _tl3402134135_)
                                                         (___kont4323843239_
                                                          _hd3402034133_)
                                                         (___kont4324243243_))))
                                                 (___kont4324243243_))))
                                          (___match4327743278_
                                           (lambda (_e3398134156_
                                                    _hd3398234159_
                                                    _tl3398334161_
                                                    _e3398434164_
                                                    _hd3398534167_
                                                    _tl3398634169_
                                                    ___splice4323643237_
                                                    _target3398734172_
                                                    _tl3398934174_)
                                             (letrec ((_loop3399034177_
                                                       (lambda (_hd3398834180_)
                                                         (if (gx#stx-pair?
                                                              _hd3398834180_)
                                                             (let ((_e3399134183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3398834180_)))
                       (let ((_lp-tl3399334188_ (##cdr _e3399134183_))
                             (_lp-hd3399234186_ (##car _e3399134183_)))
                         (if (gx#stx-pair? _lp-hd3399234186_)
                             (let ((_e3399434191_
                                    (gx#stx-e _lp-hd3399234186_)))
                               (let ((_tl3399634196_ (##cdr _e3399434191_))
                                     (_hd3399534194_ (##car _e3399434191_)))
                                 (if (gx#stx-pair? _hd3399534194_)
                                     (let ((_e3399734199_
                                            (gx#stx-e _hd3399534194_)))
                                       (let ((_tl3399934204_
                                              (##cdr _e3399734199_))
                                             (_hd3399834202_
                                              (##car _e3399734199_)))
                                         (if (gx#stx-null? _tl3399934204_)
                                             (if (gx#stx-pair? _tl3399634196_)
                                                 (let ((_e3400034207_
                                                        (gx#stx-e
                                                         _tl3399634196_)))
                                                   (let ((_tl3400234212_
                                                          (##cdr _e3400034207_))
                                                         (_hd3400134210_
                                                          (##car _e3400034207_)))
                                                     (if (gx#stx-pair?
                                                          _hd3400134210_)
                                                         (let ((_e3400334215_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3400134210_)))
                   (let ((_tl3400534220_ (##cdr _e3400334215_))
                         (_hd3400434218_ (##car _e3400334215_)))
                     (if (gx#identifier? _hd3400434218_)
                         (if (gx#stx-eq? '%#ref _hd3400434218_)
                             (if (gx#stx-pair? _tl3400534220_)
                                 (let ((_e3400634223_
                                        (gx#stx-e _tl3400534220_)))
                                   (let ((_tl3400834228_ (##cdr _e3400634223_))
                                         (_hd3400734226_
                                          (##car _e3400634223_)))
                                     (if (gx#stx-null? _tl3400834228_)
                                         (if (gx#stx-null? _tl3400234212_)
                                             (_loop3399034177_
                                              _lp-tl3399334188_)
                                             (___match4329343294_
                                              _e3398134156_
                                              _hd3398234159_
                                              _tl3398334161_
                                              _e3398434164_
                                              _hd3398534167_
                                              _tl3398634169_))
                                         (___match4329343294_
                                          _e3398134156_
                                          _hd3398234159_
                                          _tl3398334161_
                                          _e3398434164_
                                          _hd3398534167_
                                          _tl3398634169_))))
                                 (___match4329343294_
                                  _e3398134156_
                                  _hd3398234159_
                                  _tl3398334161_
                                  _e3398434164_
                                  _hd3398534167_
                                  _tl3398634169_))
                             (___match4329343294_
                              _e3398134156_
                              _hd3398234159_
                              _tl3398334161_
                              _e3398434164_
                              _hd3398534167_
                              _tl3398634169_))
                         (___match4329343294_
                          _e3398134156_
                          _hd3398234159_
                          _tl3398334161_
                          _e3398434164_
                          _hd3398534167_
                          _tl3398634169_))))
                 (___match4329343294_
                  _e3398134156_
                  _hd3398234159_
                  _tl3398334161_
                  _e3398434164_
                  _hd3398534167_
                  _tl3398634169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___match4329343294_
                                                  _e3398134156_
                                                  _hd3398234159_
                                                  _tl3398334161_
                                                  _e3398434164_
                                                  _hd3398534167_
                                                  _tl3398634169_))
                                             (___match4329343294_
                                              _e3398134156_
                                              _hd3398234159_
                                              _tl3398334161_
                                              _e3398434164_
                                              _hd3398534167_
                                              _tl3398634169_))))
                                     (___match4329343294_
                                      _e3398134156_
                                      _hd3398234159_
                                      _tl3398334161_
                                      _e3398434164_
                                      _hd3398534167_
                                      _tl3398634169_))))
                             (___match4329343294_
                              _e3398134156_
                              _hd3398234159_
                              _tl3398334161_
                              _e3398434164_
                              _hd3398534167_
                              _tl3398634169_))))
                     (let ()
                       (if (gx#stx-pair? _tl3398634169_)
                           (let ((_e3400934232_ (gx#stx-e _tl3398634169_)))
                             (let ((_tl3401134237_ (##cdr _e3400934232_))
                                   (_hd3401034235_ (##car _e3400934232_)))
                               (if (gx#stx-null? _tl3401134237_)
                                   (___kont4323443235_ _hd3401034235_)
                                   (___kont4324243243_))))
                           (___kont4324243243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop3399034177_
                                                _target3398734172_)))))
                                     (if (gx#stx-pair? ___stx4323043231_)
                                         (let ((_e3397734297_
                                                (gx#stx-e ___stx4323043231_)))
                                           (let ((_tl3397934302_
                                                  (##cdr _e3397734297_))
                                                 (_hd3397834300_
                                                  (##car _e3397734297_)))
                                             (if (gx#identifier?
                                                  _hd3397834300_)
                                                 (if (gx#stx-eq?
                                                      '%#letrec-values
                                                      _hd3397834300_)
                                                     (___kont4323243233_)
                                                     (if (gx#stx-eq?
                                                          '%#let-values
                                                          _hd3397834300_)
                                                         (if (gx#stx-pair?
                                                              _tl3397934302_)
                                                             (let ((_e3398434164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl3397934302_)))
                       (let ((_tl3398634169_ (##cdr _e3398434164_))
                             (_hd3398534167_ (##car _e3398434164_)))
                         (if (gx#stx-pair/null? _hd3398534167_)
                             (let ((___splice4323643237_
                                    (gx#syntax-split-splice
                                     _hd3398534167_
                                     '0)))
                               (let ((_tl3398934174_
                                      (##vector-ref ___splice4323643237_ '1))
                                     (_target3398734172_
                                      (##vector-ref ___splice4323643237_ '0)))
                                 (if (gx#stx-null? _tl3398934174_)
                                     (___match4327743278_
                                      _e3397734297_
                                      _hd3397834300_
                                      _tl3397934302_
                                      _e3398434164_
                                      _hd3398534167_
                                      _tl3398634169_
                                      ___splice4323643237_
                                      _target3398734172_
                                      _tl3398934174_)
                                     (if (gx#stx-pair? _tl3398634169_)
                                         (let ((_e3401934130_
                                                (gx#stx-e _tl3398634169_)))
                                           (let ((_tl3402134135_
                                                  (##cdr _e3401934130_))
                                                 (_hd3402034133_
                                                  (##car _e3401934130_)))
                                             (if (gx#stx-null? _tl3402134135_)
                                                 (___kont4323843239_
                                                  _hd3402034133_)
                                                 (___kont4324243243_))))
                                         (___kont4324243243_)))))
                             (if (gx#stx-pair? _tl3398634169_)
                                 (let ((_e3401934130_
                                        (gx#stx-e _tl3398634169_)))
                                   (let ((_tl3402134135_ (##cdr _e3401934130_))
                                         (_hd3402034133_
                                          (##car _e3401934130_)))
                                     (if (gx#stx-null? _tl3402134135_)
                                         (___kont4323843239_ _hd3402034133_)
                                         (___kont4324243243_))))
                                 (___kont4324243243_)))))
                     (___kont4324243243_))
                 (if (gx#stx-eq? '%#if _hd3397834300_)
                     (if (gx#stx-pair? _tl3397934302_)
                         (let ((_e3402834061_ (gx#stx-e _tl3397934302_)))
                           (let ((_tl3403034066_ (##cdr _e3402834061_))
                                 (_hd3402934064_ (##car _e3402834061_)))
                             (if (gx#stx-pair? _tl3403034066_)
                                 (let ((_e3403134069_
                                        (gx#stx-e _tl3403034066_)))
                                   (let ((_tl3403334074_ (##cdr _e3403134069_))
                                         (_hd3403234072_
                                          (##car _e3403134069_)))
                                     (if (gx#stx-pair? _tl3403334074_)
                                         (let ((_e3403434077_
                                                (gx#stx-e _tl3403334074_)))
                                           (let ((_tl3403634082_
                                                  (##cdr _e3403434077_))
                                                 (_hd3403534080_
                                                  (##car _e3403434077_)))
                                             (if (gx#stx-null? _tl3403634082_)
                                                 (___kont4324043241_
                                                  _hd3403534080_
                                                  _hd3403234072_
                                                  _hd3402934064_)
                                                 (___kont4324243243_))))
                                         (___kont4324243243_))))
                                 (___kont4324243243_))))
                         (___kont4324243243_))
                     (___kont4324243243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont4324243243_))))
                                         (___kont4324243243_))))))))
                     (let* ((_kont33863_ (caddr _block33859_))
                            (_g3386533891_
                             (lambda (_g3386633888_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g3386633888_)))
                            (_g3386433966_
                             (lambda (_g3386633894_)
                               (if (gx#stx-pair? _g3386633894_)
                                   (let ((_e3386933896_
                                          (gx#stx-e _g3386633894_)))
                                     (let ((_hd3387033899_
                                            (##car _e3386933896_))
                                           (_tl3387133901_
                                            (##cdr _e3386933896_)))
                                       (if (gx#identifier? _hd3387033899_)
                                           (if (gx#stx-eq?
                                                '%#lambda
                                                _hd3387033899_)
                                               (if (gx#stx-pair?
                                                    _tl3387133901_)
                                                   (let ((_e3387233904_
                                                          (gx#stx-e
                                                           _tl3387133901_)))
                                                     (let ((_hd3387333907_
                                                            (##car _e3387233904_))
                                                           (_tl3387433909_
                                                            (##cdr _e3387233904_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd3387333907_)
                                                           (let ((_g44275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd3387333907_ '0)))
                     (begin
                       (let ((_g44276_
                              (if (##values? _g44275_)
                                  (##vector-length _g44275_)
                                  1)))
                         (if (not (##fx= _g44276_ 2))
                             (error "Context expects 2 values" _g44276_)))
                       (let ((_target3387533912_ (##vector-ref _g44275_ 0))
                             (_tl3387733914_ (##vector-ref _g44275_ 1)))
                         (if (gx#stx-null? _tl3387733914_)
                             (letrec ((_loop3387833917_
                                       (lambda (_hd3387633920_ _id3388233922_)
                                         (if (gx#stx-pair? _hd3387633920_)
                                             (let ((_e3387933925_
                                                    (gx#stx-e _hd3387633920_)))
                                               (let ((_lp-hd3388033928_
                                                      (##car _e3387933925_))
                                                     (_lp-tl3388133930_
                                                      (##cdr _e3387933925_)))
                                                 (_loop3387833917_
                                                  _lp-tl3388133930_
                                                  (cons _lp-hd3388033928_
                                                        _id3388233922_))))
                                             (let ((_id3388333933_
                                                    (reverse _id3388233922_)))
                                               (if (gx#stx-pair?
                                                    _tl3387433909_)
                                                   (let ((_e3388433936_
                                                          (gx#stx-e
                                                           _tl3387433909_)))
                                                     (let ((_hd3388533939_
                                                            (##car _e3388433936_))
                                                           (_tl3388633941_
                                                            (##cdr _e3388433936_)))
                                                       (if (gx#stx-null?
                                                            _tl3388633941_)
                                                           ((lambda (_L33944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L33945_)
                      (_nonlinear-expr?33861_ _L33944_))
                    _hd3388533939_
                    _id3388333933_)
                   (_g3386533891_ _g3386633894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386533891_
                                                    _g3386633894_)))))))
                               (_loop3387833917_ _target3387533912_ '()))
                             (_g3386533891_ _g3386633894_)))))
                   (_g3386533891_ _g3386633894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3386533891_
                                                    _g3386633894_))
                                               (_g3386533891_ _g3386633894_))
                                           (_g3386533891_ _g3386633894_))))
                                   (_g3386533891_ _g3386633894_)))))
                       (_g3386433966_ _kont33863_))))))
        (_do-assert33833_
         _assert33592_
         (lambda ()
           (_do-bind33840_
            _bind33593_
            (lambda ()
              (if (memq '@match:prefix (gxc#current-annotation-optimizer))
                  (_do-splice!33843_
                   (lambda () (_optimize-e33844_ _body33591_)))
                  (_optimize-e33844_ _body33591_)))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks33503_ _konts33504_)
      (letrec* ((_rtab33506_ (make-table 'test: eq?)))
        (begin
          (for-each
           (lambda (_block33508_)
             (gxc#apply-collect-runtime-refs (caddr _block33508_) _rtab33506_))
           _konts33504_)
          (let _lp33510_ ((_rest33512_ _blocks33503_) (_r33513_ '()))
            (let* ((_rest3351433522_ _rest33512_)
                   (_else3351633530_ (lambda () (reverse _r33513_)))
                   (_K3351833579_
                    (lambda (_rest33533_ _block33534_)
                      (let* ((_block3353533546_ _block33534_)
                             (_E3353733550_
                              (lambda ()
                                (error '"No clause matching"
                                       _block3353533546_)))
                             (_K3353833557_
                              (lambda (_kont33553_ _type33554_ _name33555_)
                                (if (table-ref
                                     _rtab33506_
                                     (gxc#identifier-symbol _name33555_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont33553_
                                       _rtab33506_)
                                      (_lp33510_
                                       _rest33533_
                                       (cons _block33534_ _r33513_)))
                                    (_lp33510_ _rest33533_ _r33513_)))))
                        (if (##pair? _block3353533546_)
                            (let ((_hd3353933560_ (##car _block3353533546_))
                                  (_tl3354033562_ (##cdr _block3353533546_)))
                              (let ((_name33565_ _hd3353933560_))
                                (if (##pair? _tl3354033562_)
                                    (let ((_hd3354133567_
                                           (##car _tl3354033562_))
                                          (_tl3354233569_
                                           (##cdr _tl3354033562_)))
                                      (let ((_type33572_ _hd3354133567_))
                                        (if (##pair? _tl3354233569_)
                                            (let* ((_hd3354333574_
                                                    (##car _tl3354233569_))
                                                   (_kont33577_
                                                    _hd3354333574_))
                                              (_K3353833557_
                                               _kont33577_
                                               _type33572_
                                               _name33565_))
                                            (_E3353733550_))))
                                    (_E3353733550_))))
                            (_E3353733550_))))))
              (if (##pair? _rest3351433522_)
                  (let ((_hd3351933582_ (##car _rest3351433522_))
                        (_tl3352033584_ (##cdr _rest3351433522_)))
                    (let* ((_block33587_ _hd3351933582_)
                           (_rest33589_ _tl3352033584_))
                      (_K3351833579_ _rest33589_ _block33587_)))
                  (_else3351633530_))))))))
  (define gxc#optimize-match-fuse-restart-blocks
    (lambda (_blocks33427_ _konts33428_)
      (let* ((_blocks3342933445_ _blocks33427_)
             (_else3343133453_ (lambda () _blocks33427_))
             (_K3343333471_
              (lambda (_rest33456_ _kont33457_ _name33458_)
                (letrec* ((_rtab33460_ (make-table 'test: eq?)))
                  (begin
                    (for-each
                     (lambda (_block33462_)
                       (gxc#apply-collect-runtime-refs
                        (caddr _block33462_)
                        _rtab33460_))
                     _konts33428_)
                    (if (fx= (table-ref
                              _rtab33460_
                              (gxc#identifier-symbol _name33458_))
                             '1)
                        (let* ((_rblock33466_
                                (find (lambda (_block33464_)
                                        (gxc#apply-find-var-refs
                                         (caddr _block33464_)
                                         (cons _name33458_ '())))
                                      _konts33428_))
                               (_assert33468_
                                (gxc#optimize-match-assert-restart
                                 _rblock33466_
                                 _name33458_)))
                          (cons (cons _name33458_
                                      (cons 'restart:
                                            (cons _kont33457_
                                                  (cons _assert33468_ '()))))
                                _rest33456_))
                        _blocks33427_))))))
        (if (##pair? _blocks3342933445_)
            (let ((_hd3343433474_ (##car _blocks3342933445_))
                  (_tl3343533476_ (##cdr _blocks3342933445_)))
              (if (##pair? _hd3343433474_)
                  (let ((_hd3343633479_ (##car _hd3343433474_))
                        (_tl3343733481_ (##cdr _hd3343433474_)))
                    (let ((_name33484_ _hd3343633479_))
                      (if (##pair? _tl3343733481_)
                          (let ((_hd3343833486_ (##car _tl3343733481_))
                                (_tl3343933488_ (##cdr _tl3343733481_)))
                            (if (##eq? _hd3343833486_ 'restart:)
                                (if (##pair? _tl3343933488_)
                                    (let ((_hd3344033491_
                                           (##car _tl3343933488_))
                                          (_tl3344133493_
                                           (##cdr _tl3343933488_)))
                                      (let ((_kont33496_ _hd3344033491_))
                                        (if (##pair? _tl3344133493_)
                                            (let ((_tl3344333498_
                                                   (##cdr _tl3344133493_)))
                                              (if (##null? _tl3344333498_)
                                                  (let ((_rest33501_
                                                         _tl3343533476_))
                                                    (_K3343333471_
                                                     _rest33501_
                                                     _kont33496_
                                                     _name33484_))
                                                  (_else3343133453_)))
                                            (_else3343133453_))))
                                    (_else3343133453_))
                                (_else3343133453_)))
                          (_else3343133453_))))
                  (_else3343133453_)))
            (_else3343133453_)))))
  (define gxc#optimize-match-assert-restart
    (lambda (_block32823_ _name32824_)
      (letrec ((_assert-restart32826_
                (lambda (_expr32982_ _assert32983_)
                  (let* ((___stx4333443335_ _expr32982_)
                         (_g3298933086_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4333443335_))))
                    (let ((___kont4333643337_
                           (lambda (_L33402_ _L33403_ _L33404_)
                             (let ((_$e33421_
                                    (_assert-restart32826_
                                     _L33403_
                                     (cons (cons _L33404_ '#t)
                                           _assert32983_))))
                               (if _$e33421_
                                   _$e33421_
                                   (_assert-restart32826_
                                    _L33402_
                                    (cons (cons _L33404_ '#f)
                                          _assert32983_))))))
                          (___kont4333843339_
                           (lambda (_L33350_)
                             (if (gx#free-identifier=? _L33350_ _name32824_)
                                 _assert32983_
                                 '#f)))
                          (___kont4334043341_
                           (lambda (_L33300_)
                             (_assert-restart32826_ _L33300_ _assert32983_)))
                          (___kont4334243343_
                           (lambda (_L33226_
                                    _L33227_
                                    _L33228_
                                    _L33229_
                                    _L33230_)
                             (_assert-restart32826_ _L33228_ _assert32983_)))
                          (___kont4334843349_ (lambda () '#f)))
                      (let ((___match4350343504_
                             (lambda (_e3303433098_
                                      _hd3303533101_
                                      _tl3303633103_
                                      _e3303733106_
                                      _hd3303833109_
                                      _tl3303933111_
                                      _e3304033114_
                                      _hd3304133117_
                                      _tl3304233119_
                                      _e3304333122_
                                      _hd3304433125_
                                      _tl3304533127_
                                      _e3304633130_
                                      _hd3304733133_
                                      _tl3304833135_
                                      _e3304933138_
                                      _hd3305033141_
                                      _tl3305133143_
                                      _e3305233146_
                                      _hd3305333149_
                                      _tl3305433151_
                                      _e3305533154_
                                      _hd3305633157_
                                      _tl3305733159_
                                      ___splice4334443345_
                                      _target3305833162_
                                      _tl3306033164_)
                               (letrec ((_loop3306133167_
                                         (lambda (_hd3305933170_
                                                  _id3306533172_)
                                           (if (gx#stx-pair? _hd3305933170_)
                                               (let ((_e3306233175_
                                                      (gx#stx-e
                                                       _hd3305933170_)))
                                                 (let ((_lp-tl3306433180_
                                                        (##cdr _e3306233175_))
                                                       (_lp-hd3306333178_
                                                        (##car _e3306233175_)))
                                                   (_loop3306133167_
                                                    _lp-tl3306433180_
                                                    (cons _lp-hd3306333178_
                                                          _id3306533172_))))
                                               (let ((_id3306633183_
                                                      (reverse _id3306533172_)))
                                                 (if (gx#stx-pair?
                                                      _tl3305733159_)
                                                     (let ((_e3306733186_
                                                            (gx#stx-e
                                                             _tl3305733159_)))
                                                       (let ((_tl3306933191_
                                                              (##cdr _e3306733186_))
                                                             (_hd3306833189_
                                                              (##car _e3306733186_)))
                                                         (if (gx#stx-null?
                                                              _tl3306933191_)
                                                             (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl3305133143_)
                         (if (gx#stx-pair/null? _tl3304233119_)
                             (let ((___splice4334643347_
                                    (gx#syntax-split-splice
                                     _tl3304233119_
                                     '0)))
                               (let ((_tl3307233196_
                                      (##vector-ref ___splice4334643347_ '1))
                                     (_target3307033194_
                                      (##vector-ref ___splice4334643347_ '0)))
                                 (if (gx#stx-null? _tl3307233196_)
                                     (letrec ((_loop3307333199_
                                               (lambda (_hd3307133202_
                                                        _bind3307733204_)
                                                 (if (gx#stx-pair?
                                                      _hd3307133202_)
                                                     (let ((_e3307433207_
                                                            (gx#stx-e
                                                             _hd3307133202_)))
                                                       (let ((_lp-tl3307633212_
                                                              (##cdr _e3307433207_))
                                                             (_lp-hd3307533210_
                                                              (##car _e3307433207_)))
                                                         (_loop3307333199_
                                                          _lp-tl3307633212_
                                                          (cons _lp-hd3307533210_
                                                                _bind3307733204_))))
                                                     (let ((_bind3307833215_
                                                            (reverse _bind3307733204_)))
                                                       (if (gx#stx-pair?
                                                            _tl3303933111_)
                                                           (let ((_e3307933218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3303933111_)))
                     (let ((_tl3308133223_ (##cdr _e3307933218_))
                           (_hd3308033221_ (##car _e3307933218_)))
                       (if (gx#stx-null? _tl3308133223_)
                           (___kont4334243343_
                            _hd3308033221_
                            _bind3307833215_
                            _hd3306833189_
                            _id3306633183_
                            _hd3304733133_)
                           (___kont4334843349_))))
                   (___kont4334843349_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3307333199_
                                        _target3307033194_
                                        '()))
                                     (___kont4334843349_))))
                             (___kont4334843349_))
                         (___kont4334843349_))
                     (___kont4334843349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4334843349_)))))))
                                 (_loop3306133167_ _target3305833162_ '())))))
                        (if (gx#stx-pair? ___stx4333443335_)
                            (let ((_e3299433370_ (gx#stx-e ___stx4333443335_)))
                              (let ((_tl3299633375_ (##cdr _e3299433370_))
                                    (_hd3299533373_ (##car _e3299433370_)))
                                (if (gx#identifier? _hd3299533373_)
                                    (if (gx#stx-eq? '%#if _hd3299533373_)
                                        (if (gx#stx-pair? _tl3299633375_)
                                            (let ((_e3299733378_
                                                   (gx#stx-e _tl3299633375_)))
                                              (let ((_tl3299933383_
                                                     (##cdr _e3299733378_))
                                                    (_hd3299833381_
                                                     (##car _e3299733378_)))
                                                (if (gx#stx-pair?
                                                     _tl3299933383_)
                                                    (let ((_e3300033386_
                                                           (gx#stx-e
                                                            _tl3299933383_)))
                                                      (let ((_tl3300233391_
                                                             (##cdr _e3300033386_))
                                                            (_hd3300133389_
                                                             (##car _e3300033386_)))
                                                        (if (gx#stx-pair?
                                                             _tl3300233391_)
                                                            (let ((_e3300333394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3300233391_)))
                      (let ((_tl3300533399_ (##cdr _e3300333394_))
                            (_hd3300433397_ (##car _e3300333394_)))
                        (if (gx#stx-null? _tl3300533399_)
                            (___kont4333643337_
                             _hd3300433397_
                             _hd3300133389_
                             _hd3299833381_)
                            (___kont4334843349_))))
                    (___kont4334843349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334843349_))))
                                            (___kont4334843349_))
                                        (if (gx#stx-eq? '%#call _hd3299533373_)
                                            (if (gx#stx-pair? _tl3299633375_)
                                                (let ((_e3301033326_
                                                       (gx#stx-e
                                                        _tl3299633375_)))
                                                  (let ((_tl3301233331_
                                                         (##cdr _e3301033326_))
                                                        (_hd3301133329_
                                                         (##car _e3301033326_)))
                                                    (if (gx#stx-pair?
                                                         _hd3301133329_)
                                                        (let ((_e3301333334_
                                                               (gx#stx-e
                                                                _hd3301133329_)))
                                                          (let ((_tl3301533339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3301333334_))
                        (_hd3301433337_ (##car _e3301333334_)))
                    (if (gx#identifier? _hd3301433337_)
                        (if (gx#stx-eq? '%#ref _hd3301433337_)
                            (if (gx#stx-pair? _tl3301533339_)
                                (let ((_e3301633342_
                                       (gx#stx-e _tl3301533339_)))
                                  (let ((_tl3301833347_ (##cdr _e3301633342_))
                                        (_hd3301733345_ (##car _e3301633342_)))
                                    (if (gx#stx-null? _tl3301833347_)
                                        (___kont4333843339_ _hd3301733345_)
                                        (___kont4334843349_))))
                                (___kont4334843349_))
                            (___kont4334843349_))
                        (___kont4334843349_))))
                (___kont4334843349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4334843349_))
                                            (if (gx#stx-eq?
                                                 '%#let-values
                                                 _hd3299533373_)
                                                (if (gx#stx-pair?
                                                     _tl3299633375_)
                                                    (let ((_e3302333284_
                                                           (gx#stx-e
                                                            _tl3299633375_)))
                                                      (let ((_tl3302533289_
                                                             (##cdr _e3302333284_))
                                                            (_hd3302433287_
                                                             (##car _e3302333284_)))
                                                        (if (gx#stx-pair?
                                                             _tl3302533289_)
                                                            (let ((_e3302633292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3302533289_)))
                      (let ((_tl3302833297_ (##cdr _e3302633292_))
                            (_hd3302733295_ (##car _e3302633292_)))
                        (if (gx#stx-null? _tl3302833297_)
                            (___kont4334043341_ _hd3302733295_)
                            (___kont4334843349_))))
                    (___kont4334843349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334843349_))
                                                (if (gx#stx-eq?
                                                     '%#letrec-values
                                                     _hd3299533373_)
                                                    (if (gx#stx-pair?
                                                         _tl3299633375_)
                                                        (let ((_e3303733106_
                                                               (gx#stx-e
                                                                _tl3299633375_)))
                                                          (let ((_tl3303933111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3303733106_))
                        (_hd3303833109_ (##car _e3303733106_)))
                    (if (gx#stx-pair? _hd3303833109_)
                        (let ((_e3304033114_ (gx#stx-e _hd3303833109_)))
                          (let ((_tl3304233119_ (##cdr _e3304033114_))
                                (_hd3304133117_ (##car _e3304033114_)))
                            (if (gx#stx-pair? _hd3304133117_)
                                (let ((_e3304333122_
                                       (gx#stx-e _hd3304133117_)))
                                  (let ((_tl3304533127_ (##cdr _e3304333122_))
                                        (_hd3304433125_ (##car _e3304333122_)))
                                    (if (gx#stx-pair? _hd3304433125_)
                                        (let ((_e3304633130_
                                               (gx#stx-e _hd3304433125_)))
                                          (let ((_tl3304833135_
                                                 (##cdr _e3304633130_))
                                                (_hd3304733133_
                                                 (##car _e3304633130_)))
                                            (if (gx#stx-null? _tl3304833135_)
                                                (if (gx#stx-pair?
                                                     _tl3304533127_)
                                                    (let ((_e3304933138_
                                                           (gx#stx-e
                                                            _tl3304533127_)))
                                                      (let ((_tl3305133143_
                                                             (##cdr _e3304933138_))
                                                            (_hd3305033141_
                                                             (##car _e3304933138_)))
                                                        (if (gx#stx-pair?
                                                             _hd3305033141_)
                                                            (let ((_e3305233146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3305033141_)))
                      (let ((_tl3305433151_ (##cdr _e3305233146_))
                            (_hd3305333149_ (##car _e3305233146_)))
                        (if (gx#identifier? _hd3305333149_)
                            (if (gx#stx-eq? '%#lambda _hd3305333149_)
                                (if (gx#stx-pair? _tl3305433151_)
                                    (let ((_e3305533154_
                                           (gx#stx-e _tl3305433151_)))
                                      (let ((_tl3305733159_
                                             (##cdr _e3305533154_))
                                            (_hd3305633157_
                                             (##car _e3305533154_)))
                                        (if (gx#stx-pair/null? _hd3305633157_)
                                            (let ((___splice4334443345_
                                                   (gx#syntax-split-splice
                                                    _hd3305633157_
                                                    '0)))
                                              (let ((_tl3306033164_
                                                     (##vector-ref
                                                      ___splice4334443345_
                                                      '1))
                                                    (_target3305833162_
                                                     (##vector-ref
                                                      ___splice4334443345_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3306033164_)
                                                    (___match4350343504_
                                                     _e3299433370_
                                                     _hd3299533373_
                                                     _tl3299633375_
                                                     _e3303733106_
                                                     _hd3303833109_
                                                     _tl3303933111_
                                                     _e3304033114_
                                                     _hd3304133117_
                                                     _tl3304233119_
                                                     _e3304333122_
                                                     _hd3304433125_
                                                     _tl3304533127_
                                                     _e3304633130_
                                                     _hd3304733133_
                                                     _tl3304833135_
                                                     _e3304933138_
                                                     _hd3305033141_
                                                     _tl3305133143_
                                                     _e3305233146_
                                                     _hd3305333149_
                                                     _tl3305433151_
                                                     _e3305533154_
                                                     _hd3305633157_
                                                     _tl3305733159_
                                                     ___splice4334443345_
                                                     _target3305833162_
                                                     _tl3306033164_)
                                                    (___kont4334843349_))))
                                            (___kont4334843349_))))
                                    (___kont4334843349_))
                                (___kont4334843349_))
                            (___kont4334843349_))))
                    (___kont4334843349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334843349_))
                                                (___kont4334843349_))))
                                        (___kont4334843349_))))
                                (___kont4334843349_))))
                        (___kont4334843349_))))
                (___kont4334843349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4334843349_)))))
                                    (___kont4334843349_))))
                            (___kont4334843349_))))))))
        (let* ((_block3282732840_ _block32823_)
               (_E3282932844_
                (lambda () (error '"No clause matching" _block3282732840_)))
               (_K3283032957_
                (lambda (_maybe-bind32847_ _assert32848_ _kont32849_)
                  (let* ((_g3285132877_
                          (lambda (_g3285232874_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3285232874_)))
                         (_g3285032954_
                          (lambda (_g3285232880_)
                            (if (gx#stx-pair? _g3285232880_)
                                (let ((_e3285532882_ (gx#stx-e _g3285232880_)))
                                  (let ((_hd3285632885_ (##car _e3285532882_))
                                        (_tl3285732887_ (##cdr _e3285532882_)))
                                    (if (gx#identifier? _hd3285632885_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3285632885_)
                                            (if (gx#stx-pair? _tl3285732887_)
                                                (let ((_e3285832890_
                                                       (gx#stx-e
                                                        _tl3285732887_)))
                                                  (let ((_hd3285932893_
                                                         (##car _e3285832890_))
                                                        (_tl3286032895_
                                                         (##cdr _e3285832890_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3285932893_)
                                                        (let ((_g44277_
                                                               (gx#syntax-split-splice
                                                                _hd3285932893_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44277_)
                               (##vector-length _g44277_)
                               1)))
                      (if (not (##fx= _g44278_ 2))
                          (error "Context expects 2 values" _g44278_)))
                    (let ((_target3286132898_ (##vector-ref _g44277_ 0))
                          (_tl3286332900_ (##vector-ref _g44277_ 1)))
                      (if (gx#stx-null? _tl3286332900_)
                          (letrec ((_loop3286432903_
                                    (lambda (_hd3286232906_ _id3286832908_)
                                      (if (gx#stx-pair? _hd3286232906_)
                                          (let ((_e3286532911_
                                                 (gx#stx-e _hd3286232906_)))
                                            (let ((_lp-hd3286632914_
                                                   (##car _e3286532911_))
                                                  (_lp-tl3286732916_
                                                   (##cdr _e3286532911_)))
                                              (_loop3286432903_
                                               _lp-tl3286732916_
                                               (cons _lp-hd3286632914_
                                                     _id3286832908_))))
                                          (let ((_id3286932919_
                                                 (reverse _id3286832908_)))
                                            (if (gx#stx-pair? _tl3286032895_)
                                                (let ((_e3287032922_
                                                       (gx#stx-e
                                                        _tl3286032895_)))
                                                  (let ((_hd3287132925_
                                                         (##car _e3287032922_))
                                                        (_tl3287232927_
                                                         (##cdr _e3287032922_)))
                                                    (if (gx#stx-null?
                                                         _tl3287232927_)
                                                        ((lambda (_L32930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32931_)
                   (_assert-restart32826_ _L32930_ _assert32848_))
                 _hd3287132925_
                 _id3286932919_)
                (_g3285132877_ _g3285232880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3285132877_
                                                 _g3285232880_)))))))
                            (_loop3286432903_ _target3286132898_ '()))
                          (_g3285132877_ _g3285232880_)))))
                (_g3285132877_ _g3285232880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3285132877_ _g3285232880_))
                                            (_g3285132877_ _g3285232880_))
                                        (_g3285132877_ _g3285232880_))))
                                (_g3285132877_ _g3285232880_)))))
                    (_g3285032954_ _kont32849_)))))
          (if (##pair? _block3282732840_)
              (let ((_tl3283232960_ (##cdr _block3282732840_)))
                (if (##pair? _tl3283232960_)
                    (let ((_tl3283432963_ (##cdr _tl3283232960_)))
                      (if (##pair? _tl3283432963_)
                          (let ((_hd3283532966_ (##car _tl3283432963_))
                                (_tl3283632968_ (##cdr _tl3283432963_)))
                            (let ((_kont32971_ _hd3283532966_))
                              (if (##pair? _tl3283632968_)
                                  (let ((_hd3283732973_ (##car _tl3283632968_))
                                        (_tl3283832975_
                                         (##cdr _tl3283632968_)))
                                    (let* ((_assert32978_ _hd3283732973_)
                                           (_maybe-bind32980_ _tl3283832975_))
                                      (_K3283032957_
                                       _maybe-bind32980_
                                       _assert32978_
                                       _kont32971_)))
                                  (_E3282932844_))))
                          (_E3282932844_)))
                    (_E3282932844_)))
              (_E3282932844_))))))
  (define gxc#optimize-syntax-case
    (lambda (_stx32454_)
      (let* ((_g3245632486_
              (lambda (_g3245732483_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3245732483_)))
             (_g3245532820_
              (lambda (_g3245732489_)
                (if (gx#stx-pair? _g3245732489_)
                    (let ((_e3246132491_ (gx#stx-e _g3245732489_)))
                      (let ((_hd3246232494_ (##car _e3246132491_))
                            (_tl3246332496_ (##cdr _e3246132491_)))
                        (if (gx#identifier? _hd3246232494_)
                            (if (gx#stx-eq? '%#let-values _hd3246232494_)
                                (if (gx#stx-pair? _tl3246332496_)
                                    (let ((_e3246432499_
                                           (gx#stx-e _tl3246332496_)))
                                      (let ((_hd3246532502_
                                             (##car _e3246432499_))
                                            (_tl3246632504_
                                             (##cdr _e3246432499_)))
                                        (if (gx#stx-pair? _hd3246532502_)
                                            (let ((_e3246732507_
                                                   (gx#stx-e _hd3246532502_)))
                                              (let ((_hd3246832510_
                                                     (##car _e3246732507_))
                                                    (_tl3246932512_
                                                     (##cdr _e3246732507_)))
                                                (if (gx#stx-pair?
                                                     _hd3246832510_)
                                                    (let ((_e3247032515_
                                                           (gx#stx-e
                                                            _hd3246832510_)))
                                                      (let ((_hd3247132518_
                                                             (##car _e3247032515_))
                                                            (_tl3247232520_
                                                             (##cdr _e3247032515_)))
                                                        (if (gx#stx-pair?
                                                             _hd3247132518_)
                                                            (let ((_e3247332523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3247132518_)))
                      (let ((_hd3247432526_ (##car _e3247332523_))
                            (_tl3247532528_ (##cdr _e3247332523_)))
                        (if (gx#stx-null? _tl3247532528_)
                            (if (gx#stx-pair? _tl3247232520_)
                                (let ((_e3247632531_
                                       (gx#stx-e _tl3247232520_)))
                                  (let ((_hd3247732534_ (##car _e3247632531_))
                                        (_tl3247832536_ (##cdr _e3247632531_)))
                                    (if (gx#stx-null? _tl3247832536_)
                                        (if (gx#stx-null? _tl3246932512_)
                                            (if (gx#stx-pair? _tl3246632504_)
                                                (let ((_e3247932539_
                                                       (gx#stx-e
                                                        _tl3246632504_)))
                                                  (let ((_hd3248032542_
                                                         (##car _e3247932539_))
                                                        (_tl3248132544_
                                                         (##cdr _e3247932539_)))
                                                    (if (gx#stx-null?
                                                         _tl3248132544_)
                                                        ((lambda (_L32547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32548_
                          _L32549_)
                   (let _lp32573_ ((_body32575_ _L32547_) (_clauses32576_ '()))
                     (let* ((___stx4350643507_ _body32575_)
                            (_g3257932626_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                ___stx4350643507_))))
                       (let ((___kont4350843509_
                              (lambda (_L32792_ _L32793_ _L32794_)
                                (_lp32573_
                                 _L32792_
                                 (cons (cons _L32794_ (gxc#compile-e _L32793_))
                                       _clauses32576_))))
                             (___kont4351043511_
                              (lambda (_L32671_ _L32672_)
                                (let ((_$e32693_ (length _clauses32576_)))
                                  (if (eq? '0 _$e32693_)
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _L32549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L32548_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gxc#compile-e
                                                          _body32575_)
                                                         '())))
                                       _stx32454_)
                                      (if (eq? '1 _$e32693_)
                                          (let* ((_clauses3269532704_
                                                  _clauses32576_)
                                                 (_E3269732708_
                                                  (lambda ()
                                                    (error '"No clause matching"
                                                           _clauses3269532704_)))
                                                 (_K3269832714_
                                                  (lambda (_clause-lambda32711_
                                                           _clause32712_)
                                                    (gxc#xform-wrap-source
                                                     (cons '%#let-values
                                                           (cons (cons (cons (cons _L32549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           '())
                                     (cons _L32548_ '()))
                               '())
                         (cons (cons '%#let-values
                                     (cons (cons (cons (cons _clause32712_ '())
                                                       (cons _clause-lambda32711_
                                                             '()))
                                                 '())
                                           (cons (gxc#compile-e _body32575_)
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx32454_))))
                                            (if (##pair? _clauses3269532704_)
                                                (let ((_hd3269932717_
                                                       (##car _clauses3269532704_))
                                                      (_tl3270032719_
                                                       (##cdr _clauses3269532704_)))
                                                  (if (##pair? _hd3269932717_)
                                                      (let ((_hd3270132722_
                                                             (##car _hd3269932717_))
                                                            (_tl3270232724_
                                                             (##cdr _hd3269932717_)))
                                                        (let* ((_clause32727_
                                                                _hd3270132722_)
                                                               (_clause-lambda32729_
                                                                _tl3270232724_))
                                                          (if (##null? _tl3270032719_)
                                                              (_K3269832714_
                                                               _clause-lambda32729_
                                                               _clause32727_)
                                                              (_E3269732708_))))
                                                      (_E3269732708_)))
                                                (_E3269732708_)))
                                          (gxc#optimize-syntax-case-body
                                           _stx32454_
                                           (gxc#compile-e _L32671_)
                                           (cons _L32549_ _L32548_)
                                           _clauses32576_)))))))
                         (if (gx#stx-pair? ___stx4350643507_)
                             (let ((_e3258432736_
                                    (gx#stx-e ___stx4350643507_)))
                               (let ((_tl3258632741_ (##cdr _e3258432736_))
                                     (_hd3258532739_ (##car _e3258432736_)))
                                 (if (gx#identifier? _hd3258532739_)
                                     (if (gx#stx-eq?
                                          '%#let-values
                                          _hd3258532739_)
                                         (if (gx#stx-pair? _tl3258632741_)
                                             (let ((_e3258732744_
                                                    (gx#stx-e _tl3258632741_)))
                                               (let ((_tl3258932749_
                                                      (##cdr _e3258732744_))
                                                     (_hd3258832747_
                                                      (##car _e3258732744_)))
                                                 (if (gx#stx-pair?
                                                      _hd3258832747_)
                                                     (let ((_e3259032752_
                                                            (gx#stx-e
                                                             _hd3258832747_)))
                                                       (let ((_tl3259232757_
                                                              (##cdr _e3259032752_))
                                                             (_hd3259132755_
                                                              (##car _e3259032752_)))
                                                         (if (gx#stx-pair?
                                                              _hd3259132755_)
                                                             (let ((_e3259332760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd3259132755_)))
                       (let ((_tl3259532765_ (##cdr _e3259332760_))
                             (_hd3259432763_ (##car _e3259332760_)))
                         (if (gx#stx-pair? _hd3259432763_)
                             (let ((_e3259632768_ (gx#stx-e _hd3259432763_)))
                               (let ((_tl3259832773_ (##cdr _e3259632768_))
                                     (_hd3259732771_ (##car _e3259632768_)))
                                 (if (gx#stx-null? _tl3259832773_)
                                     (if (gx#stx-pair? _tl3259532765_)
                                         (let ((_e3259932776_
                                                (gx#stx-e _tl3259532765_)))
                                           (let ((_tl3260132781_
                                                  (##cdr _e3259932776_))
                                                 (_hd3260032779_
                                                  (##car _e3259932776_)))
                                             (if (gx#stx-null? _tl3260132781_)
                                                 (if (gx#stx-null?
                                                      _tl3259232757_)
                                                     (if (gx#stx-pair?
                                                          _tl3258932749_)
                                                         (let ((_e3260232784_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3258932749_)))
                   (let ((_tl3260432789_ (##cdr _e3260232784_))
                         (_hd3260332787_ (##car _e3260232784_)))
                     (if (gx#stx-null? _tl3260432789_)
                         (___kont4350843509_
                          _hd3260332787_
                          _hd3260032779_
                          _hd3259732771_)
                         (_g3257932626_))))
                 (_g3257932626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257932626_))
                                                 (_g3257932626_))))
                                         (_g3257932626_))
                                     (_g3257932626_))))
                             (_g3257932626_))))
                     (_g3257932626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3257932626_))))
                                             (_g3257932626_))
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd3258532739_)
                                             (if (gx#stx-pair? _tl3258632741_)
                                                 (let ((_e3261032639_
                                                        (gx#stx-e
                                                         _tl3258632741_)))
                                                   (let ((_tl3261232644_
                                                          (##cdr _e3261032639_))
                                                         (_hd3261132642_
                                                          (##car _e3261032639_)))
                                                     (if (gx#stx-pair?
                                                          _hd3261132642_)
                                                         (let ((_e3261332647_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3261132642_)))
                   (let ((_tl3261532652_ (##cdr _e3261332647_))
                         (_hd3261432650_ (##car _e3261332647_)))
                     (if (gx#identifier? _hd3261432650_)
                         (if (gx#stx-eq? '%#ref _hd3261432650_)
                             (if (gx#stx-pair? _tl3261532652_)
                                 (let ((_e3261632655_
                                        (gx#stx-e _tl3261532652_)))
                                   (let ((_tl3261832660_ (##cdr _e3261632655_))
                                         (_hd3261732658_
                                          (##car _e3261632655_)))
                                     (if (gx#stx-null? _tl3261832660_)
                                         (if (gx#stx-pair? _tl3261232644_)
                                             (let ((_e3261932663_
                                                    (gx#stx-e _tl3261232644_)))
                                               (let ((_tl3262132668_
                                                      (##cdr _e3261932663_))
                                                     (_hd3262032666_
                                                      (##car _e3261932663_)))
                                                 (if (gx#stx-null?
                                                      _tl3262132668_)
                                                     (___kont4351043511_
                                                      _hd3262032666_
                                                      _hd3261732658_)
                                                     (_g3257932626_))))
                                             (_g3257932626_))
                                         (_g3257932626_))))
                                 (_g3257932626_))
                             (_g3257932626_))
                         (_g3257932626_))))
                 (_g3257932626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3257932626_))
                                             (_g3257932626_)))
                                     (_g3257932626_))))
                             (_g3257932626_))))))
                 _hd3248032542_
                 _hd3247732534_
                 _hd3247432526_)
                (_g3245632486_ _g3245732489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3245632486_ _g3245732489_))
                                            (_g3245632486_ _g3245732489_))
                                        (_g3245632486_ _g3245732489_))))
                                (_g3245632486_ _g3245732489_))
                            (_g3245632486_ _g3245732489_))))
                    (_g3245632486_ _g3245732489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3245632486_
                                                     _g3245732489_))))
                                            (_g3245632486_ _g3245732489_))))
                                    (_g3245632486_ _g3245732489_))
                                (_g3245632486_ _g3245732489_))
                            (_g3245632486_ _g3245732489_))))
                    (_g3245632486_ _g3245732489_)))))
        (_g3245532820_ _stx32454_))))
  (define gxc#optimize-syntax-case-body
    (lambda (_stx32382_ _expr32383_ _negation32384_ _clauses32385_)
      (letrec ((_normalize32387_
                (lambda (_clauses32414_)
                  (let* ((_clauses3241532424_ _clauses32414_)
                         (_E3241732428_
                          (lambda ()
                            (error '"No clause matching" _clauses3241532424_)))
                         (_K3241832435_
                          (lambda (_rest32431_ _kont32432_ _id32433_)
                            (cons (cons '#f _kont32432_) _rest32431_))))
                    (if (##pair? _clauses3241532424_)
                        (let ((_hd3241932438_ (##car _clauses3241532424_))
                              (_tl3242032440_ (##cdr _clauses3241532424_)))
                          (if (##pair? _hd3241932438_)
                              (let ((_hd3242132443_ (##car _hd3241932438_))
                                    (_tl3242232445_ (##cdr _hd3241932438_)))
                                (let* ((_id32448_ _hd3242132443_)
                                       (_kont32450_ _tl3242232445_)
                                       (_rest32452_ _tl3242032440_))
                                  (_K3241832435_
                                   _rest32452_
                                   _kont32450_
                                   _id32448_)))
                              (_E3241732428_)))
                        (_E3241732428_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_id32390_ (make-symbol (gensym '__stx)))
                  (_id32392_ (gx#core-quote-syntax__0 _id32390_))
                  (_g44279_ (gx#core-bind-runtime!__0 _id32392_))
                  (_g44280_
                   (gxc#optimize-syntax-case-clauses
                    _clauses32385_
                    (car _negation32384_))))
             (begin
               (let ((_g44281_
                      (if (##values? _g44280_) (##vector-length _g44280_) 1)))
                 (if (not (##fx= _g44281_ 2))
                     (error "Context expects 2 values" _g44281_)))
               (let ((_clauses32395_ (##vector-ref _g44280_ 0))
                     (_konts32396_ (##vector-ref _g44280_ 1)))
                 (let* ((_clauses32405_
                         (map (lambda (_g3239732400_ _g3239832402_)
                                (gxc#optimize-syntax-case-closure
                                 _g3239732400_
                                 _g3239832402_
                                 _id32392_))
                              _clauses32395_
                              (foldr1 cons
                                      (cons (car _negation32384_) '())
                                      (map car (cdr _clauses32395_)))))
                        (_clauses32407_ (_normalize32387_ _clauses32405_))
                        (_negation32409_
                         (gxc#optimize-syntax-case-closure
                          _negation32384_
                          '#f
                          _id32392_))
                        (_body32411_
                         (gxc#optimize-match-body
                          _stx32382_
                          _negation32409_
                          _clauses32407_
                          _konts32396_)))
                   (gxc#xform-wrap-source
                    (cons '%#let-values
                          (cons (cons (cons (cons _id32392_ '())
                                            (cons _expr32383_ '()))
                                      '())
                                (cons _body32411_ '())))
                    _stx32382_))))))
         gx#current-expander-context
         (let ((__obj44252 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj44252) __obj44252))))))
  (define gxc#optimize-syntax-case-clauses
    (lambda (_clauses31140_ _negation-id31141_)
      (letrec ((_xform-e31143_
                (lambda (_expr31527_
                         _kont-id31528_
                         _kont-box31529_
                         _negation-id31530_)
                  (let* ((___stx4370843709_ _expr31527_)
                         (_g3153631669_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4370843709_))))
                    (let ((___kont4371043711_
                           (lambda (_L32358_ _L32359_ _L32360_)
                             (let ((_K32377_
                                    (_xform-e31143_
                                     _L32359_
                                     _kont-id31528_
                                     _kont-box31529_
                                     _negation-id31530_)))
                               (cons '%#if
                                     (cons _L32360_
                                           (cons _K32377_
                                                 (cons _L32358_ '())))))))
                          (___kont4371243713_
                           (lambda (_L32274_
                                    _L32275_
                                    _L32276_
                                    _L32277_
                                    _L32278_)
                             (let* ((_id32313_
                                     (make-symbol (gensym '__splice)))
                                    (_id32315_
                                     (gx#core-quote-syntax__0 _id32313_))
                                    (_g44282_
                                     (gx#core-bind-runtime!__0 _id32315_))
                                    (_body32318_
                                     (_xform-e31143_
                                      _L32274_
                                      _kont-id31528_
                                      _kont-box31529_
                                      _negation-id31530_)))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _id32315_ '())
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#call)
                           (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                       (cons _L32276_ '()))
                                 _L32275_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons '%#let-values
                                                       (cons (cons (cons (cons _L32278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons '%#call
                                             (cons '(%#ref ##vector-ref)
                                                   (cons (cons '%#ref
                                                               (cons _id32315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '(%#quote 0) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (cons _L32277_ '())
                                       (cons (cons '%#call
                                                   (cons '(%#ref ##vector-ref)
                                                         (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _id32315_ '()))
                       (cons '(%#quote 1) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))
                     (cons _body32318_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                          (___kont4371443715_
                           (lambda (_L32156_ _L32157_)
                             (let ((_body32171_
                                    (_xform-e31143_
                                     _L32156_
                                     _kont-id31528_
                                     _kont-box31529_
                                     _negation-id31530_)))
                               (cons '%#let-values
                                     (cons _L32157_ (cons _body32171_ '()))))))
                          (___kont4371643717_
                           (lambda (_L32100_ _L32101_ _L32102_)
                             (let ((_lambda-expr32125_
                                    (_xform-loop-e31144_
                                     _L32101_
                                     _kont-id31528_
                                     _kont-box31529_
                                     _negation-id31530_)))
                               (cons '%#letrec-values
                                     (cons (cons (cons (cons _L32102_ '())
                                                       (cons _lambda-expr32125_
                                                             '()))
                                                 '())
                                           (cons _L32100_ '()))))))
                          (___kont4371843719_
                           (lambda (_L31762_ _L31763_ _L31764_)
                             (let* ((___stx4361043611_ _L31763_)
                                    (_g3179331836_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        ___stx4361043611_))))
                               (let ((___kont4361243613_
                                      (lambda (_L31952_
                                               _L31953_
                                               _L31954_
                                               _L31955_)
                                        (let ((_kont31996_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3198831991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3198931993_)
                               (cons _g3198831991_ _g3198931993_))
                             '()
                             _L31764_))
                   (cons _L31954_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31529_
                                             _kont31996_)
                                            (let* ((_kont-args32007_
                                                    (map (lambda (_id31998_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _id31998_ '())))
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3199932002_ _g3200032004_)
                             (cons _g3199932002_ _g3200032004_))
                           '()
                           _L31764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_body32009_
                                                    (cons '%#if
                                                          (cons _L31955_
                                                                (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#ref
                                                (cons _kont-id31528_ '()))
                                          _kont-args32007_))
                              (cons (cons (gx#datum->syntax__0 '#f '%#call)
                                          (cons (cons (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref)
                                                      (cons _L31953_ '()))
                                                (cons (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)
                                                            (cons _L31952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g3201132014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3201232016_)
                             (cons _g3201132014_ _g3201232016_))
                           '()
                           _L31764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _body32009_
                                                  (cons '%#let-values
                                                        (cons (map (lambda (_id32019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _arg32020_)
                             (cons (cons _id32019_ '()) (cons _arg32020_ '())))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3202132024_ _g3202232026_)
                                       (cons _g3202132024_ _g3202232026_))
                                     '()
                                     _L31764_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g3202832031_ _g3202932033_)
                                       (cons _g3202832031_ _g3202932033_))
                                     '()
                                     _L31762_)))
                      (cons _body32009_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (___kont4361443615_
                                      (lambda ()
                                        (let ((_kont31850_
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      '%#lambda)
                                                     (cons (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g3184231845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3184331847_)
                               (cons _g3184231845_ _g3184331847_))
                             '()
                             _L31764_))
                   (cons _L31763_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (begin
                                            (set-box!
                                             _kont-box31529_
                                             _kont31850_)
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _kont-id31528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (begin
                  '#!void
                  (foldr1 (lambda (_g3185131854_ _g3185231856_)
                            (cons _g3185131854_ _g3185231856_))
                          '()
                          _L31762_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((___match4370543706_
                                        (lambda (_e3179931864_
                                                 _hd3180031867_
                                                 _tl3180131869_
                                                 _e3180231872_
                                                 _hd3180331875_
                                                 _tl3180431877_
                                                 _e3180531880_
                                                 _hd3180631883_
                                                 _tl3180731885_
                                                 _e3180831888_
                                                 _hd3180931891_
                                                 _tl3181031893_
                                                 _e3181131896_
                                                 _hd3181231899_
                                                 _tl3181331901_
                                                 _e3181431904_
                                                 _hd3181531907_
                                                 _tl3181631909_
                                                 _e3181731912_
                                                 _hd3181831915_
                                                 _tl3181931917_
                                                 _e3182031920_
                                                 _hd3182131923_
                                                 _tl3182231925_
                                                 _e3182331928_
                                                 _hd3182431931_
                                                 _tl3182531933_
                                                 _e3182631936_
                                                 _hd3182731939_
                                                 _tl3182831941_
                                                 _e3182931944_
                                                 _hd3183031947_
                                                 _tl3183131949_)
                                          (let ((_L31952_ _hd3183031947_)
                                                (_L31953_ _hd3182131923_)
                                                (_L31954_ _hd3180631883_)
                                                (_L31955_ _hd3180331875_))
                                            (if (gx#free-identifier=?
                                                 _L31953_
                                                 _negation-id31530_)
                                                (___kont4361243613_
                                                 _L31952_
                                                 _L31953_
                                                 _L31954_
                                                 _L31955_)
                                                (___kont4361443615_))))))
                                   (if (gx#stx-pair? ___stx4361043611_)
                                       (let ((_e3179931864_
                                              (gx#stx-e ___stx4361043611_)))
                                         (let ((_tl3180131869_
                                                (##cdr _e3179931864_))
                                               (_hd3180031867_
                                                (##car _e3179931864_)))
                                           (if (gx#identifier? _hd3180031867_)
                                               (if (gx#stx-eq?
                                                    '%#if
                                                    _hd3180031867_)
                                                   (if (gx#stx-pair?
                                                        _tl3180131869_)
                                                       (let ((_e3180231872_
                                                              (gx#stx-e
                                                               _tl3180131869_)))
                                                         (let ((_tl3180431877_
                                                                (##cdr _e3180231872_))
                                                               (_hd3180331875_
                                                                (##car _e3180231872_)))
                                                           (if (gx#stx-pair?
                                                                _tl3180431877_)
                                                               (let ((_e3180531880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl3180431877_)))
                         (let ((_tl3180731885_ (##cdr _e3180531880_))
                               (_hd3180631883_ (##car _e3180531880_)))
                           (if (gx#stx-pair? _tl3180731885_)
                               (let ((_e3180831888_ (gx#stx-e _tl3180731885_)))
                                 (let ((_tl3181031893_ (##cdr _e3180831888_))
                                       (_hd3180931891_ (##car _e3180831888_)))
                                   (if (gx#stx-pair? _hd3180931891_)
                                       (let ((_e3181131896_
                                              (gx#stx-e _hd3180931891_)))
                                         (let ((_tl3181331901_
                                                (##cdr _e3181131896_))
                                               (_hd3181231899_
                                                (##car _e3181131896_)))
                                           (if (gx#identifier? _hd3181231899_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd3181231899_)
                                                   (if (gx#stx-pair?
                                                        _tl3181331901_)
                                                       (let ((_e3181431904_
                                                              (gx#stx-e
                                                               _tl3181331901_)))
                                                         (let ((_tl3181631909_
                                                                (##cdr _e3181431904_))
                                                               (_hd3181531907_
                                                                (##car _e3181431904_)))
                                                           (if (gx#stx-pair?
                                                                _hd3181531907_)
                                                               (let ((_e3181731912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3181531907_)))
                         (let ((_tl3181931917_ (##cdr _e3181731912_))
                               (_hd3181831915_ (##car _e3181731912_)))
                           (if (gx#identifier? _hd3181831915_)
                               (if (gx#stx-eq? '%#ref _hd3181831915_)
                                   (if (gx#stx-pair? _tl3181931917_)
                                       (let ((_e3182031920_
                                              (gx#stx-e _tl3181931917_)))
                                         (let ((_tl3182231925_
                                                (##cdr _e3182031920_))
                                               (_hd3182131923_
                                                (##car _e3182031920_)))
                                           (if (gx#stx-null? _tl3182231925_)
                                               (if (gx#stx-pair?
                                                    _tl3181631909_)
                                                   (let ((_e3182331928_
                                                          (gx#stx-e
                                                           _tl3181631909_)))
                                                     (let ((_tl3182531933_
                                                            (##cdr _e3182331928_))
                                                           (_hd3182431931_
                                                            (##car _e3182331928_)))
                                                       (if (gx#stx-pair?
                                                            _hd3182431931_)
                                                           (let ((_e3182631936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd3182431931_)))
                     (let ((_tl3182831941_ (##cdr _e3182631936_))
                           (_hd3182731939_ (##car _e3182631936_)))
                       (if (gx#identifier? _hd3182731939_)
                           (if (gx#stx-eq? '%#ref _hd3182731939_)
                               (if (gx#stx-pair? _tl3182831941_)
                                   (let ((_e3182931944_
                                          (gx#stx-e _tl3182831941_)))
                                     (let ((_tl3183131949_
                                            (##cdr _e3182931944_))
                                           (_hd3183031947_
                                            (##car _e3182931944_)))
                                       (if (gx#stx-null? _tl3183131949_)
                                           (if (gx#stx-null? _tl3182531933_)
                                               (if (gx#stx-null?
                                                    _tl3181031893_)
                                                   (___match4370543706_
                                                    _e3179931864_
                                                    _hd3180031867_
                                                    _tl3180131869_
                                                    _e3180231872_
                                                    _hd3180331875_
                                                    _tl3180431877_
                                                    _e3180531880_
                                                    _hd3180631883_
                                                    _tl3180731885_
                                                    _e3180831888_
                                                    _hd3180931891_
                                                    _tl3181031893_
                                                    _e3181131896_
                                                    _hd3181231899_
                                                    _tl3181331901_
                                                    _e3181431904_
                                                    _hd3181531907_
                                                    _tl3181631909_
                                                    _e3181731912_
                                                    _hd3181831915_
                                                    _tl3181931917_
                                                    _e3182031920_
                                                    _hd3182131923_
                                                    _tl3182231925_
                                                    _e3182331928_
                                                    _hd3182431931_
                                                    _tl3182531933_
                                                    _e3182631936_
                                                    _hd3182731939_
                                                    _tl3182831941_
                                                    _e3182931944_
                                                    _hd3183031947_
                                                    _tl3183131949_)
                                                   (___kont4361443615_))
                                               (___kont4361443615_))
                                           (___kont4361443615_))))
                                   (___kont4361443615_))
                               (___kont4361443615_))
                           (___kont4361443615_))))
                   (___kont4361443615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361443615_))
                                               (___kont4361443615_))))
                                       (___kont4361443615_))
                                   (___kont4361443615_))
                               (___kont4361443615_))))
                       (___kont4361443615_))))
               (___kont4361443615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361443615_))
                                               (___kont4361443615_))))
                                       (___kont4361443615_))))
                               (___kont4361443615_))))
                       (___kont4361443615_))))
               (___kont4361443615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4361443615_))
                                               (___kont4361443615_))))
                                       (___kont4361443615_))))))))
                      (let* ((___match4396543966_
                              (lambda (_e3163231674_
                                       _hd3163331677_
                                       _tl3163431679_
                                       _e3163531682_
                                       _hd3163631685_
                                       _tl3163731687_
                                       _e3163831690_
                                       _hd3163931693_
                                       _tl3164031695_
                                       _e3164131698_
                                       _hd3164231701_
                                       _tl3164331703_
                                       ___splice4372043721_
                                       _target3164431706_
                                       _tl3164631708_)
                                (letrec ((_loop3164731711_
                                          (lambda (_hd3164531714_
                                                   _id3165131716_)
                                            (if (gx#stx-pair? _hd3164531714_)
                                                (let ((_e3164831719_
                                                       (gx#stx-e
                                                        _hd3164531714_)))
                                                  (let ((_lp-tl3165031724_
                                                         (##cdr _e3164831719_))
                                                        (_lp-hd3164931722_
                                                         (##car _e3164831719_)))
                                                    (_loop3164731711_
                                                     _lp-tl3165031724_
                                                     (cons _lp-hd3164931722_
                                                           _id3165131716_))))
                                                (let ((_id3165231727_
                                                       (reverse _id3165131716_)))
                                                  (if (gx#stx-pair?
                                                       _tl3164331703_)
                                                      (let ((_e3165331730_
                                                             (gx#stx-e
                                                              _tl3164331703_)))
                                                        (let ((_tl3165531735_
                                                               (##cdr _e3165331730_))
                                                              (_hd3165431733_
                                                               (##car _e3165331730_)))
                                                          (if (gx#stx-null?
                                                               _tl3165531735_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3163731687_)
                          (let ((___splice4372243723_
                                 (gx#syntax-split-splice _tl3163731687_ '0)))
                            (let ((_tl3165831740_
                                   (##vector-ref ___splice4372243723_ '1))
                                  (_target3165631738_
                                   (##vector-ref ___splice4372243723_ '0)))
                              (if (gx#stx-null? _tl3165831740_)
                                  (letrec ((_loop3165931743_
                                            (lambda (_hd3165731746_
                                                     _arg3166331748_)
                                              (if (gx#stx-pair? _hd3165731746_)
                                                  (let ((_e3166031751_
                                                         (gx#stx-e
                                                          _hd3165731746_)))
                                                    (let ((_lp-tl3166231756_
                                                           (##cdr _e3166031751_))
                                                          (_lp-hd3166131754_
                                                           (##car _e3166031751_)))
                                                      (_loop3165931743_
                                                       _lp-tl3166231756_
                                                       (cons _lp-hd3166131754_
                                                             _arg3166331748_))))
                                                  (let ((_arg3166431759_
                                                         (reverse _arg3166331748_)))
                                                    (___kont4371843719_
                                                     _arg3166431759_
                                                     _hd3165431733_
                                                     _id3165231727_))))))
                                    (_loop3165931743_ _target3165631738_ '()))
                                  (_g3153631669_))))
                          (_g3153631669_))
                      (_g3153631669_))))
              (_g3153631669_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop3164731711_ _target3164431706_ '()))))
                             (___match4384743848_
                              (lambda (_e3155832178_
                                       _hd3155932181_
                                       _tl3156032183_
                                       _e3156132186_
                                       _hd3156232189_
                                       _tl3156332191_
                                       _e3156432194_
                                       _hd3156532197_
                                       _tl3156632199_
                                       _e3156732202_
                                       _hd3156832205_
                                       _tl3156932207_
                                       _e3157032210_
                                       _hd3157132213_
                                       _tl3157232215_
                                       _e3157332218_
                                       _hd3157432221_
                                       _tl3157532223_
                                       _e3157632226_
                                       _hd3157732229_
                                       _tl3157832231_
                                       _e3157932234_
                                       _hd3158032237_
                                       _tl3158132239_
                                       _e3158232242_
                                       _hd3158332245_
                                       _tl3158432247_
                                       _e3158532250_
                                       _hd3158632253_
                                       _tl3158732255_
                                       _e3158832258_
                                       _hd3158932261_
                                       _tl3159032263_
                                       _e3159132266_
                                       _hd3159232269_
                                       _tl3159332271_)
                                (let ((_L32274_ _hd3159232269_)
                                      (_L32275_ _tl3158432247_)
                                      (_L32276_ _hd3158932261_)
                                      (_L32277_ _hd3157432221_)
                                      (_L32278_ _hd3157132213_))
                                  (if (gxc#runtime-identifier=?
                                       _L32276_
                                       'gx#syntax-split-splice)
                                      (___kont4371243713_
                                       _L32274_
                                       _L32275_
                                       _L32276_
                                       _L32277_
                                       _L32278_)
                                      (___kont4371443715_
                                       _hd3159232269_
                                       _hd3156232189_))))))
                        (if (gx#stx-pair? ___stx4370843709_)
                            (let ((_e3154132326_ (gx#stx-e ___stx4370843709_)))
                              (let ((_tl3154332331_ (##cdr _e3154132326_))
                                    (_hd3154232329_ (##car _e3154132326_)))
                                (if (gx#identifier? _hd3154232329_)
                                    (if (gx#stx-eq? '%#if _hd3154232329_)
                                        (if (gx#stx-pair? _tl3154332331_)
                                            (let ((_e3154432334_
                                                   (gx#stx-e _tl3154332331_)))
                                              (let ((_tl3154632339_
                                                     (##cdr _e3154432334_))
                                                    (_hd3154532337_
                                                     (##car _e3154432334_)))
                                                (if (gx#stx-pair?
                                                     _tl3154632339_)
                                                    (let ((_e3154732342_
                                                           (gx#stx-e
                                                            _tl3154632339_)))
                                                      (let ((_tl3154932347_
                                                             (##cdr _e3154732342_))
                                                            (_hd3154832345_
                                                             (##car _e3154732342_)))
                                                        (if (gx#stx-pair?
                                                             _tl3154932347_)
                                                            (let ((_e3155032350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3154932347_)))
                      (let ((_tl3155232355_ (##cdr _e3155032350_))
                            (_hd3155132353_ (##car _e3155032350_)))
                        (if (gx#stx-null? _tl3155232355_)
                            (___kont4371043711_
                             _hd3155132353_
                             _hd3154832345_
                             _hd3154532337_)
                            (_g3153631669_))))
                    (_g3153631669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153631669_))))
                                            (_g3153631669_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3154232329_)
                                            (if (gx#stx-pair? _tl3154332331_)
                                                (let ((_e3156132186_
                                                       (gx#stx-e
                                                        _tl3154332331_)))
                                                  (let ((_tl3156332191_
                                                         (##cdr _e3156132186_))
                                                        (_hd3156232189_
                                                         (##car _e3156132186_)))
                                                    (if (gx#stx-pair?
                                                         _hd3156232189_)
                                                        (let ((_e3156432194_
                                                               (gx#stx-e
                                                                _hd3156232189_)))
                                                          (let ((_tl3156632199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156432194_))
                        (_hd3156532197_ (##car _e3156432194_)))
                    (if (gx#stx-pair? _hd3156532197_)
                        (let ((_e3156732202_ (gx#stx-e _hd3156532197_)))
                          (let ((_tl3156932207_ (##cdr _e3156732202_))
                                (_hd3156832205_ (##car _e3156732202_)))
                            (if (gx#stx-pair? _hd3156832205_)
                                (let ((_e3157032210_
                                       (gx#stx-e _hd3156832205_)))
                                  (let ((_tl3157232215_ (##cdr _e3157032210_))
                                        (_hd3157132213_ (##car _e3157032210_)))
                                    (if (gx#stx-pair? _tl3157232215_)
                                        (let ((_e3157332218_
                                               (gx#stx-e _tl3157232215_)))
                                          (let ((_tl3157532223_
                                                 (##cdr _e3157332218_))
                                                (_hd3157432221_
                                                 (##car _e3157332218_)))
                                            (if (gx#stx-null? _tl3157532223_)
                                                (if (gx#stx-pair?
                                                     _tl3156932207_)
                                                    (let ((_e3157632226_
                                                           (gx#stx-e
                                                            _tl3156932207_)))
                                                      (let ((_tl3157832231_
                                                             (##cdr _e3157632226_))
                                                            (_hd3157732229_
                                                             (##car _e3157632226_)))
                                                        (if (gx#stx-pair?
                                                             _hd3157732229_)
                                                            (let ((_e3157932234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3157732229_)))
                      (let ((_tl3158132239_ (##cdr _e3157932234_))
                            (_hd3158032237_ (##car _e3157932234_)))
                        (if (gx#identifier? _hd3158032237_)
                            (if (gx#stx-eq? '%#call _hd3158032237_)
                                (if (gx#stx-pair? _tl3158132239_)
                                    (let ((_e3158232242_
                                           (gx#stx-e _tl3158132239_)))
                                      (let ((_tl3158432247_
                                             (##cdr _e3158232242_))
                                            (_hd3158332245_
                                             (##car _e3158232242_)))
                                        (if (gx#stx-pair? _hd3158332245_)
                                            (let ((_e3158532250_
                                                   (gx#stx-e _hd3158332245_)))
                                              (let ((_tl3158732255_
                                                     (##cdr _e3158532250_))
                                                    (_hd3158632253_
                                                     (##car _e3158532250_)))
                                                (if (gx#identifier?
                                                     _hd3158632253_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd3158632253_)
                                                        (if (gx#stx-pair?
                                                             _tl3158732255_)
                                                            (let ((_e3158832258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3158732255_)))
                      (let ((_tl3159032263_ (##cdr _e3158832258_))
                            (_hd3158932261_ (##car _e3158832258_)))
                        (if (gx#stx-null? _tl3159032263_)
                            (if (gx#stx-null? _tl3157832231_)
                                (if (gx#stx-null? _tl3156632199_)
                                    (if (gx#stx-pair? _tl3156332191_)
                                        (let ((_e3159132266_
                                               (gx#stx-e _tl3156332191_)))
                                          (let ((_tl3159332271_
                                                 (##cdr _e3159132266_))
                                                (_hd3159232269_
                                                 (##car _e3159132266_)))
                                            (if (gx#stx-null? _tl3159332271_)
                                                (___match4384743848_
                                                 _e3154132326_
                                                 _hd3154232329_
                                                 _tl3154332331_
                                                 _e3156132186_
                                                 _hd3156232189_
                                                 _tl3156332191_
                                                 _e3156432194_
                                                 _hd3156532197_
                                                 _tl3156632199_
                                                 _e3156732202_
                                                 _hd3156832205_
                                                 _tl3156932207_
                                                 _e3157032210_
                                                 _hd3157132213_
                                                 _tl3157232215_
                                                 _e3157332218_
                                                 _hd3157432221_
                                                 _tl3157532223_
                                                 _e3157632226_
                                                 _hd3157732229_
                                                 _tl3157832231_
                                                 _e3157932234_
                                                 _hd3158032237_
                                                 _tl3158132239_
                                                 _e3158232242_
                                                 _hd3158332245_
                                                 _tl3158432247_
                                                 _e3158532250_
                                                 _hd3158632253_
                                                 _tl3158732255_
                                                 _e3158832258_
                                                 _hd3158932261_
                                                 _tl3159032263_
                                                 _e3159132266_
                                                 _hd3159232269_
                                                 _tl3159332271_)
                                                (_g3153631669_))))
                                        (_g3153631669_))
                                    (if (gx#stx-pair? _tl3156332191_)
                                        (let ((_e3160232148_
                                               (gx#stx-e _tl3156332191_)))
                                          (let ((_tl3160432153_
                                                 (##cdr _e3160232148_))
                                                (_hd3160332151_
                                                 (##car _e3160232148_)))
                                            (if (gx#stx-null? _tl3160432153_)
                                                (___kont4371443715_
                                                 _hd3160332151_
                                                 _hd3156232189_)
                                                (_g3153631669_))))
                                        (_g3153631669_)))
                                (if (gx#stx-pair? _tl3156332191_)
                                    (let ((_e3160232148_
                                           (gx#stx-e _tl3156332191_)))
                                      (let ((_tl3160432153_
                                             (##cdr _e3160232148_))
                                            (_hd3160332151_
                                             (##car _e3160232148_)))
                                        (if (gx#stx-null? _tl3160432153_)
                                            (___kont4371443715_
                                             _hd3160332151_
                                             _hd3156232189_)
                                            (_g3153631669_))))
                                    (_g3153631669_)))
                            (if (gx#stx-pair? _tl3156332191_)
                                (let ((_e3160232148_
                                       (gx#stx-e _tl3156332191_)))
                                  (let ((_tl3160432153_ (##cdr _e3160232148_))
                                        (_hd3160332151_ (##car _e3160232148_)))
                                    (if (gx#stx-null? _tl3160432153_)
                                        (___kont4371443715_
                                         _hd3160332151_
                                         _hd3156232189_)
                                        (_g3153631669_))))
                                (_g3153631669_)))))
                    (if (gx#stx-pair? _tl3156332191_)
                        (let ((_e3160232148_ (gx#stx-e _tl3156332191_)))
                          (let ((_tl3160432153_ (##cdr _e3160232148_))
                                (_hd3160332151_ (##car _e3160232148_)))
                            (if (gx#stx-null? _tl3160432153_)
                                (___kont4371443715_
                                 _hd3160332151_
                                 _hd3156232189_)
                                (_g3153631669_))))
                        (_g3153631669_)))
                (if (gx#stx-pair? _tl3156332191_)
                    (let ((_e3160232148_ (gx#stx-e _tl3156332191_)))
                      (let ((_tl3160432153_ (##cdr _e3160232148_))
                            (_hd3160332151_ (##car _e3160232148_)))
                        (if (gx#stx-null? _tl3160432153_)
                            (___kont4371443715_ _hd3160332151_ _hd3156232189_)
                            (_g3153631669_))))
                    (_g3153631669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3156332191_)
                                                        (let ((_e3160232148_
                                                               (gx#stx-e
                                                                _tl3156332191_)))
                                                          (let ((_tl3160432153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3160232148_))
                        (_hd3160332151_ (##car _e3160232148_)))
                    (if (gx#stx-null? _tl3160432153_)
                        (___kont4371443715_ _hd3160332151_ _hd3156232189_)
                        (_g3153631669_))))
                (_g3153631669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3156332191_)
                                                (let ((_e3160232148_
                                                       (gx#stx-e
                                                        _tl3156332191_)))
                                                  (let ((_tl3160432153_
                                                         (##cdr _e3160232148_))
                                                        (_hd3160332151_
                                                         (##car _e3160232148_)))
                                                    (if (gx#stx-null?
                                                         _tl3160432153_)
                                                        (___kont4371443715_
                                                         _hd3160332151_
                                                         _hd3156232189_)
                                                        (_g3153631669_))))
                                                (_g3153631669_)))))
                                    (if (gx#stx-pair? _tl3156332191_)
                                        (let ((_e3160232148_
                                               (gx#stx-e _tl3156332191_)))
                                          (let ((_tl3160432153_
                                                 (##cdr _e3160232148_))
                                                (_hd3160332151_
                                                 (##car _e3160232148_)))
                                            (if (gx#stx-null? _tl3160432153_)
                                                (___kont4371443715_
                                                 _hd3160332151_
                                                 _hd3156232189_)
                                                (_g3153631669_))))
                                        (_g3153631669_)))
                                (if (gx#stx-pair? _tl3156332191_)
                                    (let ((_e3160232148_
                                           (gx#stx-e _tl3156332191_)))
                                      (let ((_tl3160432153_
                                             (##cdr _e3160232148_))
                                            (_hd3160332151_
                                             (##car _e3160232148_)))
                                        (if (gx#stx-null? _tl3160432153_)
                                            (___kont4371443715_
                                             _hd3160332151_
                                             _hd3156232189_)
                                            (_g3153631669_))))
                                    (_g3153631669_)))
                            (if (gx#stx-pair? _tl3156332191_)
                                (let ((_e3160232148_
                                       (gx#stx-e _tl3156332191_)))
                                  (let ((_tl3160432153_ (##cdr _e3160232148_))
                                        (_hd3160332151_ (##car _e3160232148_)))
                                    (if (gx#stx-null? _tl3160432153_)
                                        (___kont4371443715_
                                         _hd3160332151_
                                         _hd3156232189_)
                                        (_g3153631669_))))
                                (_g3153631669_)))))
                    (if (gx#stx-pair? _tl3156332191_)
                        (let ((_e3160232148_ (gx#stx-e _tl3156332191_)))
                          (let ((_tl3160432153_ (##cdr _e3160232148_))
                                (_hd3160332151_ (##car _e3160232148_)))
                            (if (gx#stx-null? _tl3160432153_)
                                (___kont4371443715_
                                 _hd3160332151_
                                 _hd3156232189_)
                                (_g3153631669_))))
                        (_g3153631669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _tl3156332191_)
                                                        (let ((_e3160232148_
                                                               (gx#stx-e
                                                                _tl3156332191_)))
                                                          (let ((_tl3160432153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3160232148_))
                        (_hd3160332151_ (##car _e3160232148_)))
                    (if (gx#stx-null? _tl3160432153_)
                        (___kont4371443715_ _hd3160332151_ _hd3156232189_)
                        (_g3153631669_))))
                (_g3153631669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl3156332191_)
                                                    (let ((_e3160232148_
                                                           (gx#stx-e
                                                            _tl3156332191_)))
                                                      (let ((_tl3160432153_
                                                             (##cdr _e3160232148_))
                                                            (_hd3160332151_
                                                             (##car _e3160232148_)))
                                                        (if (gx#stx-null?
                                                             _tl3160432153_)
                                                            (___kont4371443715_
                                                             _hd3160332151_
                                                             _hd3156232189_)
                                                            (_g3153631669_))))
                                                    (_g3153631669_)))))
                                        (if (gx#stx-pair? _tl3156332191_)
                                            (let ((_e3160232148_
                                                   (gx#stx-e _tl3156332191_)))
                                              (let ((_tl3160432153_
                                                     (##cdr _e3160232148_))
                                                    (_hd3160332151_
                                                     (##car _e3160232148_)))
                                                (if (gx#stx-null?
                                                     _tl3160432153_)
                                                    (___kont4371443715_
                                                     _hd3160332151_
                                                     _hd3156232189_)
                                                    (_g3153631669_))))
                                            (_g3153631669_)))))
                                (if (gx#stx-pair? _tl3156332191_)
                                    (let ((_e3160232148_
                                           (gx#stx-e _tl3156332191_)))
                                      (let ((_tl3160432153_
                                             (##cdr _e3160232148_))
                                            (_hd3160332151_
                                             (##car _e3160232148_)))
                                        (if (gx#stx-null? _tl3160432153_)
                                            (___kont4371443715_
                                             _hd3160332151_
                                             _hd3156232189_)
                                            (_g3153631669_))))
                                    (_g3153631669_)))))
                        (if (gx#stx-pair? _tl3156332191_)
                            (let ((_e3160232148_ (gx#stx-e _tl3156332191_)))
                              (let ((_tl3160432153_ (##cdr _e3160232148_))
                                    (_hd3160332151_ (##car _e3160232148_)))
                                (if (gx#stx-null? _tl3160432153_)
                                    (___kont4371443715_
                                     _hd3160332151_
                                     _hd3156232189_)
                                    (_g3153631669_))))
                            (_g3153631669_)))))
                (if (gx#stx-pair? _tl3156332191_)
                    (let ((_e3160232148_ (gx#stx-e _tl3156332191_)))
                      (let ((_tl3160432153_ (##cdr _e3160232148_))
                            (_hd3160332151_ (##car _e3160232148_)))
                        (if (gx#stx-null? _tl3160432153_)
                            (___kont4371443715_ _hd3160332151_ _hd3156232189_)
                            (_g3153631669_))))
                    (_g3153631669_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153631669_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3154232329_)
                                                (if (gx#stx-pair?
                                                     _tl3154332331_)
                                                    (let ((_e3161132052_
                                                           (gx#stx-e
                                                            _tl3154332331_)))
                                                      (let ((_tl3161332057_
                                                             (##cdr _e3161132052_))
                                                            (_hd3161232055_
                                                             (##car _e3161132052_)))
                                                        (if (gx#stx-pair?
                                                             _hd3161232055_)
                                                            (let ((_e3161432060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3161232055_)))
                      (let ((_tl3161632065_ (##cdr _e3161432060_))
                            (_hd3161532063_ (##car _e3161432060_)))
                        (if (gx#stx-pair? _hd3161532063_)
                            (let ((_e3161732068_ (gx#stx-e _hd3161532063_)))
                              (let ((_tl3161932073_ (##cdr _e3161732068_))
                                    (_hd3161832071_ (##car _e3161732068_)))
                                (if (gx#stx-pair? _hd3161832071_)
                                    (let ((_e3162032076_
                                           (gx#stx-e _hd3161832071_)))
                                      (let ((_tl3162232081_
                                             (##cdr _e3162032076_))
                                            (_hd3162132079_
                                             (##car _e3162032076_)))
                                        (if (gx#stx-null? _tl3162232081_)
                                            (if (gx#stx-pair? _tl3161932073_)
                                                (let ((_e3162332084_
                                                       (gx#stx-e
                                                        _tl3161932073_)))
                                                  (let ((_tl3162532089_
                                                         (##cdr _e3162332084_))
                                                        (_hd3162432087_
                                                         (##car _e3162332084_)))
                                                    (if (gx#stx-null?
                                                         _tl3162532089_)
                                                        (if (gx#stx-null?
                                                             _tl3161632065_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3161332057_)
                        (let ((_e3162632092_ (gx#stx-e _tl3161332057_)))
                          (let ((_tl3162832097_ (##cdr _e3162632092_))
                                (_hd3162732095_ (##car _e3162632092_)))
                            (if (gx#stx-null? _tl3162832097_)
                                (___kont4371643717_
                                 _hd3162732095_
                                 _hd3162432087_
                                 _hd3162132079_)
                                (_g3153631669_))))
                        (_g3153631669_))
                    (_g3153631669_))
                (_g3153631669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3153631669_))
                                            (_g3153631669_))))
                                    (_g3153631669_))))
                            (_g3153631669_))))
                    (_g3153631669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153631669_))
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd3154232329_)
                                                    (if (gx#stx-pair?
                                                         _tl3154332331_)
                                                        (let ((_e3163531682_
                                                               (gx#stx-e
                                                                _tl3154332331_)))
                                                          (let ((_tl3163731687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3163531682_))
                        (_hd3163631685_ (##car _e3163531682_)))
                    (if (gx#stx-pair? _hd3163631685_)
                        (let ((_e3163831690_ (gx#stx-e _hd3163631685_)))
                          (let ((_tl3164031695_ (##cdr _e3163831690_))
                                (_hd3163931693_ (##car _e3163831690_)))
                            (if (gx#identifier? _hd3163931693_)
                                (if (gx#stx-eq? '%#lambda _hd3163931693_)
                                    (if (gx#stx-pair? _tl3164031695_)
                                        (let ((_e3164131698_
                                               (gx#stx-e _tl3164031695_)))
                                          (let ((_tl3164331703_
                                                 (##cdr _e3164131698_))
                                                (_hd3164231701_
                                                 (##car _e3164131698_)))
                                            (if (gx#stx-pair/null?
                                                 _hd3164231701_)
                                                (let ((___splice4372043721_
                                                       (gx#syntax-split-splice
                                                        _hd3164231701_
                                                        '0)))
                                                  (let ((_tl3164631708_
                                                         (##vector-ref
                                                          ___splice4372043721_
                                                          '1))
                                                        (_target3164431706_
                                                         (##vector-ref
                                                          ___splice4372043721_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3164631708_)
                                                        (___match4396543966_
                                                         _e3154132326_
                                                         _hd3154232329_
                                                         _tl3154332331_
                                                         _e3163531682_
                                                         _hd3163631685_
                                                         _tl3163731687_
                                                         _e3163831690_
                                                         _hd3163931693_
                                                         _tl3164031695_
                                                         _e3164131698_
                                                         _hd3164231701_
                                                         _tl3164331703_
                                                         ___splice4372043721_
                                                         _target3164431706_
                                                         _tl3164631708_)
                                                        (_g3153631669_))))
                                                (_g3153631669_))))
                                        (_g3153631669_))
                                    (_g3153631669_))
                                (_g3153631669_))))
                        (_g3153631669_))))
                (_g3153631669_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3153631669_)))))
                                    (_g3153631669_))))
                            (_g3153631669_)))))))
               (_xform-loop-e31144_
                (lambda (_expr31353_
                         _kont-id31354_
                         _kont-box31355_
                         _negation-id31356_)
                  (let* ((_g3135831398_
                          (lambda (_g3135931395_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3135931395_)))
                         (_g3135731524_
                          (lambda (_g3135931401_)
                            (if (gx#stx-pair? _g3135931401_)
                                (let ((_e3136431403_ (gx#stx-e _g3135931401_)))
                                  (let ((_hd3136531406_ (##car _e3136431403_))
                                        (_tl3136631408_ (##cdr _e3136431403_)))
                                    (if (gx#identifier? _hd3136531406_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3136531406_)
                                            (if (gx#stx-pair? _tl3136631408_)
                                                (let ((_e3136731411_
                                                       (gx#stx-e
                                                        _tl3136631408_)))
                                                  (let ((_hd3136831414_
                                                         (##car _e3136731411_))
                                                        (_tl3136931416_
                                                         (##cdr _e3136731411_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd3136831414_)
                                                        (let ((_g44283_
                                                               (gx#syntax-split-splice
                                                                _hd3136831414_
                                                                '0)))
                                                          (begin
                                                            (let ((_g44284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g44283_)
                               (##vector-length _g44283_)
                               1)))
                      (if (not (##fx= _g44284_ 2))
                          (error "Context expects 2 values" _g44284_)))
                    (let ((_target3137031419_ (##vector-ref _g44283_ 0))
                          (_tl3137231421_ (##vector-ref _g44283_ 1)))
                      (if (gx#stx-null? _tl3137231421_)
                          (letrec ((_loop3137331424_
                                    (lambda (_hd3137131427_ _id3137731429_)
                                      (if (gx#stx-pair? _hd3137131427_)
                                          (let ((_e3137431432_
                                                 (gx#stx-e _hd3137131427_)))
                                            (let ((_lp-hd3137531435_
                                                   (##car _e3137431432_))
                                                  (_lp-tl3137631437_
                                                   (##cdr _e3137431432_)))
                                              (_loop3137331424_
                                               _lp-tl3137631437_
                                               (cons _lp-hd3137531435_
                                                     _id3137731429_))))
                                          (let ((_id3137831440_
                                                 (reverse _id3137731429_)))
                                            (if (gx#stx-pair? _tl3136931416_)
                                                (let ((_e3137931443_
                                                       (gx#stx-e
                                                        _tl3136931416_)))
                                                  (let ((_hd3138031446_
                                                         (##car _e3137931443_))
                                                        (_tl3138131448_
                                                         (##cdr _e3137931443_)))
                                                    (if (gx#stx-pair?
                                                         _hd3138031446_)
                                                        (let ((_e3138231451_
                                                               (gx#stx-e
                                                                _hd3138031446_)))
                                                          (let ((_hd3138331454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3138231451_))
                        (_tl3138431456_ (##cdr _e3138231451_)))
                    (if (gx#identifier? _hd3138331454_)
                        (if (gx#stx-eq? '%#if _hd3138331454_)
                            (if (gx#stx-pair? _tl3138431456_)
                                (let ((_e3138531459_
                                       (gx#stx-e _tl3138431456_)))
                                  (let ((_hd3138631462_ (##car _e3138531459_))
                                        (_tl3138731464_ (##cdr _e3138531459_)))
                                    (if (gx#stx-pair? _tl3138731464_)
                                        (let ((_e3138831467_
                                               (gx#stx-e _tl3138731464_)))
                                          (let ((_hd3138931470_
                                                 (##car _e3138831467_))
                                                (_tl3139031472_
                                                 (##cdr _e3138831467_)))
                                            (if (gx#stx-pair? _tl3139031472_)
                                                (let ((_e3139131475_
                                                       (gx#stx-e
                                                        _tl3139031472_)))
                                                  (let ((_hd3139231478_
                                                         (##car _e3139131475_))
                                                        (_tl3139331480_
                                                         (##cdr _e3139131475_)))
                                                    (if (gx#stx-null?
                                                         _tl3139331480_)
                                                        (if (gx#stx-null?
                                                             _tl3138131448_)
                                                            ((lambda (_L31483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L31484_
                              _L31485_
                              _L31486_)
                       (let ((_E31515_
                              (_xform-e31143_
                               _L31483_
                               _kont-id31354_
                               _kont-box31355_
                               _negation-id31356_)))
                         (cons '%#lambda
                               (cons (begin
                                       '#!void
                                       (foldr1 (lambda (_g3151631519_
                                                        _g3151731521_)
                                                 (cons _g3151631519_
                                                       _g3151731521_))
                                               '()
                                               _L31486_))
                                     (cons (cons '%#if
                                                 (cons _L31485_
                                                       (cons _L31484_
                                                             (cons _E31515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _hd3139231478_
                     _hd3138931470_
                     _hd3138631462_
                     _id3137831440_)
                    (_g3135831398_ _g3135931401_))
                (_g3135831398_ _g3135931401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135831398_
                                                 _g3135931401_))))
                                        (_g3135831398_ _g3135931401_))))
                                (_g3135831398_ _g3135931401_))
                            (_g3135831398_ _g3135931401_))
                        (_g3135831398_ _g3135931401_))))
                (_g3135831398_ _g3135931401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135831398_
                                                 _g3135931401_)))))))
                            (_loop3137331424_ _target3137031419_ '()))
                          (_g3135831398_ _g3135931401_)))))
                (_g3135831398_ _g3135931401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3135831398_ _g3135931401_))
                                            (_g3135831398_ _g3135931401_))
                                        (_g3135831398_ _g3135931401_))))
                                (_g3135831398_ _g3135931401_)))))
                    (_g3135731524_ _expr31353_))))
               (_clause-e31145_
                (lambda (_clause-lambda31223_ _kont-id31224_ _rest31225_)
                  (letrec* ((_kont-box31227_ (box '#f)))
                    (let* ((_negation-id31267_
                            (let* ((_rest3122831238_ _rest31225_)
                                   (_else3123031246_
                                    (lambda () _negation-id31141_))
                                   (_K3123231252_
                                    (lambda (_clause31249_ _clause-id31250_)
                                      _clause-id31250_)))
                              (if (##pair? _rest3122831238_)
                                  (let ((_hd3123331255_
                                         (##car _rest3122831238_)))
                                    (if (##pair? _hd3123331255_)
                                        (let ((_hd3123531258_
                                               (##car _hd3123331255_))
                                              (_tl3123631260_
                                               (##cdr _hd3123331255_)))
                                          (let* ((_clause-id31263_
                                                  _hd3123531258_)
                                                 (_clause31265_
                                                  _tl3123631260_))
                                            (_K3123231252_
                                             _clause31265_
                                             _clause-id31263_)))
                                        (_else3123031246_)))
                                  (_else3123031246_))))
                           (_g3126931289_
                            (lambda (_g3127031286_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g3127031286_)))
                           (_g3126831350_
                            (lambda (_g3127031292_)
                              (if (gx#stx-pair? _g3127031292_)
                                  (let ((_e3127331294_
                                         (gx#stx-e _g3127031292_)))
                                    (let ((_hd3127431297_
                                           (##car _e3127331294_))
                                          (_tl3127531299_
                                           (##cdr _e3127331294_)))
                                      (if (gx#identifier? _hd3127431297_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _hd3127431297_)
                                              (if (gx#stx-pair? _tl3127531299_)
                                                  (let ((_e3127631302_
                                                         (gx#stx-e
                                                          _tl3127531299_)))
                                                    (let ((_hd3127731305_
                                                           (##car _e3127631302_))
                                                          (_tl3127831307_
                                                           (##cdr _e3127631302_)))
                                                      (if (gx#stx-pair?
                                                           _hd3127731305_)
                                                          (let ((_e3127931310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3127731305_)))
                    (let ((_hd3128031313_ (##car _e3127931310_))
                          (_tl3128131315_ (##cdr _e3127931310_)))
                      (if (gx#stx-null? _tl3128131315_)
                          (if (gx#stx-pair? _tl3127831307_)
                              (let ((_e3128231318_ (gx#stx-e _tl3127831307_)))
                                (let ((_hd3128331321_ (##car _e3128231318_))
                                      (_tl3128431323_ (##cdr _e3128231318_)))
                                  (if (gx#stx-null? _tl3128431323_)
                                      ((lambda (_L31326_ _L31327_)
                                         (let ((_body31348_
                                                (_xform-e31143_
                                                 _L31326_
                                                 _kont-id31224_
                                                 _kont-box31227_
                                                 _negation-id31267_)))
                                           (values (cons '%#lambda
                                                         (cons (cons _L31327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _body31348_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (unbox _kont-box31227_))))
                                       _hd3128331321_
                                       _hd3128031313_)
                                      (_g3126931289_ _g3127031292_))))
                              (_g3126931289_ _g3127031292_))
                          (_g3126931289_ _g3127031292_))))
                  (_g3126931289_ _g3127031292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3126931289_
                                                   _g3127031292_))
                                              (_g3126931289_ _g3127031292_))
                                          (_g3126931289_ _g3127031292_))))
                                  (_g3126931289_ _g3127031292_)))))
                      (_g3126831350_ _clause-lambda31223_))))))
        (let _lp31147_ ((_rest31149_ _clauses31140_)
                        (_clauses31150_ '())
                        (_konts31151_ '()))
          (let* ((_rest3115231160_ _rest31149_)
                 (_else3115431168_
                  (lambda ()
                    (values (reverse _clauses31150_) (reverse _konts31151_))))
                 (_K3115631211_
                  (lambda (_rest31171_ _clause31172_)
                    (let* ((_clause3117331180_ _clause31172_)
                           (_E3117531184_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause3117331180_)))
                           (_K3117631199_
                            (lambda (_clause-lambda31187_ _clause-id31188_)
                              (let* ((_id31190_ (make-symbol (gensym '__kont)))
                                     (_id31192_
                                      (gx#core-quote-syntax__0 _id31190_))
                                     (_g44285_
                                      (gx#core-bind-runtime!__0 _id31192_))
                                     (_g44286_
                                      (_clause-e31145_
                                       _clause-lambda31187_
                                       _id31192_
                                       _rest31171_)))
                                (begin
                                  (let ((_g44287_
                                         (if (##values? _g44286_)
                                             (##vector-length _g44286_)
                                             1)))
                                    (if (not (##fx= _g44287_ 2))
                                        (error "Context expects 2 values"
                                               _g44287_)))
                                  (let ((_clause-lambda31195_
                                         (##vector-ref _g44286_ 0))
                                        (_kont31196_
                                         (##vector-ref _g44286_ 1)))
                                    (let ()
                                      (_lp31147_
                                       _rest31171_
                                       (cons (cons _clause-id31188_
                                                   _clause-lambda31195_)
                                             _clauses31150_)
                                       (cons (cons _id31192_ _kont31196_)
                                             _konts31151_)))))))))
                      (if (##pair? _clause3117331180_)
                          (let ((_hd3117731202_ (##car _clause3117331180_))
                                (_tl3117831204_ (##cdr _clause3117331180_)))
                            (let* ((_clause-id31207_ _hd3117731202_)
                                   (_clause-lambda31209_ _tl3117831204_))
                              (_K3117631199_
                               _clause-lambda31209_
                               _clause-id31207_)))
                          (_E3117531184_))))))
            (if (##pair? _rest3115231160_)
                (let ((_hd3115731214_ (##car _rest3115231160_))
                      (_tl3115831216_ (##cdr _rest3115231160_)))
                  (let* ((_clause31219_ _hd3115731214_)
                         (_rest31221_ _tl3115831216_))
                    (_K3115631211_ _rest31221_ _clause31219_)))
                (_else3115431168_)))))))
  (define gxc#optimize-syntax-case-closure
    (lambda (_clause30484_ _negation30485_ _target30486_)
      (letrec ((_closure-e30488_
                (lambda (_expr30605_)
                  (let* ((___stx4396843969_ _expr30605_)
                         (_g3061230727_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx4396843969_))))
                    (let ((___kont4397043971_
                           (lambda (_L31118_ _L31119_ _L31120_)
                             (cons '%#if
                                   (cons _L31120_
                                         (cons (_closure-e30488_ _L31119_)
                                               (cons (_closure-e30488_
                                                      _L31118_)
                                                     '()))))))
                          (___kont4397243973_
                           (lambda (_L31066_ _L31067_)
                             (cons '%#let-values
                                   (cons _L31067_
                                         (cons (_closure-e30488_ _L31066_)
                                               '())))))
                          (___kont4397443975_
                           (lambda (_L31012_ _L31013_ _L31014_)
                             (cons '%#letrec-values
                                   (cons (cons (cons (cons _L31014_ '())
                                                     (cons (_closure-e30488_
                                                            _L31013_)
                                                           '()))
                                               '())
                                         (cons _L31012_ '())))))
                          (___kont4397643977_
                           (lambda (_L30925_ _L30926_)
                             (cons '%#lambda
                                   (cons (begin
                                           '#!void
                                           (foldr1 (lambda (_g3094330946_
                                                            _g3094430948_)
                                                     (cons _g3094330946_
                                                           _g3094430948_))
                                                   '()
                                                   _L30926_))
                                         (cons (_closure-e30488_ _L30925_)
                                               '())))))
                          (___kont4398043981_
                           (lambda (_L30855_)
                             (cons '%#call
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _L30855_ '()))
                                         '()))))
                          (___kont4398243983_
                           (lambda (_L30788_ _L30789_) _expr30605_)))
                      (let* ((___match4420144202_
                              (lambda (_e3070230732_
                                       _hd3070330735_
                                       _tl3070430737_
                                       _e3070530740_
                                       _hd3070630743_
                                       _tl3070730745_
                                       _e3070830748_
                                       _hd3070930751_
                                       _tl3071030753_
                                       _e3071130756_
                                       _hd3071230759_
                                       _tl3071330761_
                                       ___splice4398443985_
                                       _target3071430764_
                                       _tl3071630766_)
                                (letrec ((_loop3071730769_
                                          (lambda (_hd3071530772_
                                                   _arg3072130774_)
                                            (if (gx#stx-pair? _hd3071530772_)
                                                (let ((_e3071830777_
                                                       (gx#stx-e
                                                        _hd3071530772_)))
                                                  (let ((_lp-tl3072030782_
                                                         (##cdr _e3071830777_))
                                                        (_lp-hd3071930780_
                                                         (##car _e3071830777_)))
                                                    (_loop3071730769_
                                                     _lp-tl3072030782_
                                                     (cons _lp-hd3071930780_
                                                           _arg3072130774_))))
                                                (let ((_arg3072230785_
                                                       (reverse _arg3072130774_)))
                                                  (___kont4398243983_
                                                   _arg3072230785_
                                                   _hd3071230759_))))))
                                  (_loop3071730769_ _target3071430764_ '()))))
                             (___match4415944160_
                              (lambda (_e3068530815_
                                       _hd3068630818_
                                       _tl3068730820_
                                       _e3068830823_
                                       _hd3068930826_
                                       _tl3069030828_
                                       _e3069130831_
                                       _hd3069230834_
                                       _tl3069330836_
                                       _e3069430839_
                                       _hd3069530842_
                                       _tl3069630844_
                                       _e3069730847_
                                       _hd3069830850_
                                       _tl3069930852_)
                                (let ((_L30855_ _hd3069530842_))
                                  (if (gx#free-identifier=?
                                       _L30855_
                                       _negation30485_)
                                      (___kont4398043981_ _L30855_)
                                      (if (gx#stx-pair/null? _tl3069030828_)
                                          (let ((___splice4398443985_
                                                 (gx#syntax-split-splice
                                                  _tl3069030828_
                                                  '0)))
                                            (let ((_tl3071630766_
                                                   (##vector-ref
                                                    ___splice4398443985_
                                                    '1))
                                                  (_target3071430764_
                                                   (##vector-ref
                                                    ___splice4398443985_
                                                    '0)))
                                              (if (gx#stx-null? _tl3071630766_)
                                                  (___match4420144202_
                                                   _e3068530815_
                                                   _hd3068630818_
                                                   _tl3068730820_
                                                   _e3068830823_
                                                   _hd3068930826_
                                                   _tl3069030828_
                                                   _e3069130831_
                                                   _hd3069230834_
                                                   _tl3069330836_
                                                   _e3069430839_
                                                   _hd3069530842_
                                                   _tl3069630844_
                                                   ___splice4398443985_
                                                   _target3071430764_
                                                   _tl3071630766_)
                                                  (_g3061230727_))))
                                          (_g3061230727_))))))
                             (___match4411744118_
                              (lambda (_e3066630877_
                                       _hd3066730880_
                                       _tl3066830882_
                                       _e3066930885_
                                       _hd3067030888_
                                       _tl3067130890_
                                       ___splice4397843979_
                                       _target3067230893_
                                       _tl3067430895_)
                                (letrec ((_loop3067530898_
                                          (lambda (_hd3067330901_
                                                   _id3067930903_)
                                            (if (gx#stx-pair? _hd3067330901_)
                                                (let ((_e3067630906_
                                                       (gx#stx-e
                                                        _hd3067330901_)))
                                                  (let ((_lp-tl3067830911_
                                                         (##cdr _e3067630906_))
                                                        (_lp-hd3067730909_
                                                         (##car _e3067630906_)))
                                                    (_loop3067530898_
                                                     _lp-tl3067830911_
                                                     (cons _lp-hd3067730909_
                                                           _id3067930903_))))
                                                (let ((_id3068030914_
                                                       (reverse _id3067930903_)))
                                                  (if (gx#stx-pair?
                                                       _tl3067130890_)
                                                      (let ((_e3068130917_
                                                             (gx#stx-e
                                                              _tl3067130890_)))
                                                        (let ((_tl3068330922_
                                                               (##cdr _e3068130917_))
                                                              (_hd3068230920_
                                                               (##car _e3068130917_)))
                                                          (if (gx#stx-null?
                                                               _tl3068330922_)
                                                              (___kont4397643977_
                                                               _hd3068230920_
                                                               _id3068030914_)
                                                              (_g3061230727_))))
                                                      (_g3061230727_)))))))
                                  (_loop3067530898_ _target3067230893_ '())))))
                        (if (gx#stx-pair? ___stx4396843969_)
                            (let ((_e3061731086_ (gx#stx-e ___stx4396843969_)))
                              (let ((_tl3061931091_ (##cdr _e3061731086_))
                                    (_hd3061831089_ (##car _e3061731086_)))
                                (if (gx#identifier? _hd3061831089_)
                                    (if (gx#stx-eq? '%#if _hd3061831089_)
                                        (if (gx#stx-pair? _tl3061931091_)
                                            (let ((_e3062031094_
                                                   (gx#stx-e _tl3061931091_)))
                                              (let ((_tl3062231099_
                                                     (##cdr _e3062031094_))
                                                    (_hd3062131097_
                                                     (##car _e3062031094_)))
                                                (if (gx#stx-pair?
                                                     _tl3062231099_)
                                                    (let ((_e3062331102_
                                                           (gx#stx-e
                                                            _tl3062231099_)))
                                                      (let ((_tl3062531107_
                                                             (##cdr _e3062331102_))
                                                            (_hd3062431105_
                                                             (##car _e3062331102_)))
                                                        (if (gx#stx-pair?
                                                             _tl3062531107_)
                                                            (let ((_e3062631110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3062531107_)))
                      (let ((_tl3062831115_ (##cdr _e3062631110_))
                            (_hd3062731113_ (##car _e3062631110_)))
                        (if (gx#stx-null? _tl3062831115_)
                            (___kont4397043971_
                             _hd3062731113_
                             _hd3062431105_
                             _hd3062131097_)
                            (_g3061230727_))))
                    (_g3061230727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061230727_))))
                                            (_g3061230727_))
                                        (if (gx#stx-eq?
                                             '%#let-values
                                             _hd3061831089_)
                                            (if (gx#stx-pair? _tl3061931091_)
                                                (let ((_e3063431050_
                                                       (gx#stx-e
                                                        _tl3061931091_)))
                                                  (let ((_tl3063631055_
                                                         (##cdr _e3063431050_))
                                                        (_hd3063531053_
                                                         (##car _e3063431050_)))
                                                    (if (gx#stx-pair?
                                                         _tl3063631055_)
                                                        (let ((_e3063731058_
                                                               (gx#stx-e
                                                                _tl3063631055_)))
                                                          (let ((_tl3063931063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3063731058_))
                        (_hd3063831061_ (##car _e3063731058_)))
                    (if (gx#stx-null? _tl3063931063_)
                        (___kont4397243973_ _hd3063831061_ _hd3063531053_)
                        (_g3061230727_))))
                (_g3061230727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3061230727_))
                                            (if (gx#stx-eq?
                                                 '%#letrec-values
                                                 _hd3061831089_)
                                                (if (gx#stx-pair?
                                                     _tl3061931091_)
                                                    (let ((_e3064630964_
                                                           (gx#stx-e
                                                            _tl3061931091_)))
                                                      (let ((_tl3064830969_
                                                             (##cdr _e3064630964_))
                                                            (_hd3064730967_
                                                             (##car _e3064630964_)))
                                                        (if (gx#stx-pair?
                                                             _hd3064730967_)
                                                            (let ((_e3064930972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3064730967_)))
                      (let ((_tl3065130977_ (##cdr _e3064930972_))
                            (_hd3065030975_ (##car _e3064930972_)))
                        (if (gx#stx-pair? _hd3065030975_)
                            (let ((_e3065230980_ (gx#stx-e _hd3065030975_)))
                              (let ((_tl3065430985_ (##cdr _e3065230980_))
                                    (_hd3065330983_ (##car _e3065230980_)))
                                (if (gx#stx-pair? _hd3065330983_)
                                    (let ((_e3065530988_
                                           (gx#stx-e _hd3065330983_)))
                                      (let ((_tl3065730993_
                                             (##cdr _e3065530988_))
                                            (_hd3065630991_
                                             (##car _e3065530988_)))
                                        (if (gx#stx-null? _tl3065730993_)
                                            (if (gx#stx-pair? _tl3065430985_)
                                                (let ((_e3065830996_
                                                       (gx#stx-e
                                                        _tl3065430985_)))
                                                  (let ((_tl3066031001_
                                                         (##cdr _e3065830996_))
                                                        (_hd3065930999_
                                                         (##car _e3065830996_)))
                                                    (if (gx#stx-null?
                                                         _tl3066031001_)
                                                        (if (gx#stx-null?
                                                             _tl3065130977_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3064830969_)
                        (let ((_e3066131004_ (gx#stx-e _tl3064830969_)))
                          (let ((_tl3066331009_ (##cdr _e3066131004_))
                                (_hd3066231007_ (##car _e3066131004_)))
                            (if (gx#stx-null? _tl3066331009_)
                                (___kont4397443975_
                                 _hd3066231007_
                                 _hd3065930999_
                                 _hd3065630991_)
                                (_g3061230727_))))
                        (_g3061230727_))
                    (_g3061230727_))
                (_g3061230727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3061230727_))
                                            (_g3061230727_))))
                                    (_g3061230727_))))
                            (_g3061230727_))))
                    (_g3061230727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061230727_))
                                                (if (gx#stx-eq?
                                                     '%#lambda
                                                     _hd3061831089_)
                                                    (if (gx#stx-pair?
                                                         _tl3061931091_)
                                                        (let ((_e3066930885_
                                                               (gx#stx-e
                                                                _tl3061931091_)))
                                                          (let ((_tl3067130890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3066930885_))
                        (_hd3067030888_ (##car _e3066930885_)))
                    (if (gx#stx-pair/null? _hd3067030888_)
                        (let ((___splice4397843979_
                               (gx#syntax-split-splice _hd3067030888_ '0)))
                          (let ((_tl3067430895_
                                 (##vector-ref ___splice4397843979_ '1))
                                (_target3067230893_
                                 (##vector-ref ___splice4397843979_ '0)))
                            (if (gx#stx-null? _tl3067430895_)
                                (___match4411744118_
                                 _e3061731086_
                                 _hd3061831089_
                                 _tl3061931091_
                                 _e3066930885_
                                 _hd3067030888_
                                 _tl3067130890_
                                 ___splice4397843979_
                                 _target3067230893_
                                 _tl3067430895_)
                                (_g3061230727_))))
                        (_g3061230727_))))
                (_g3061230727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd3061831089_)
                                                        (if (gx#stx-pair?
                                                             _tl3061931091_)
                                                            (let ((_e3068830823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3061931091_)))
                      (let ((_tl3069030828_ (##cdr _e3068830823_))
                            (_hd3068930826_ (##car _e3068830823_)))
                        (if (gx#stx-pair? _hd3068930826_)
                            (let ((_e3069130831_ (gx#stx-e _hd3068930826_)))
                              (let ((_tl3069330836_ (##cdr _e3069130831_))
                                    (_hd3069230834_ (##car _e3069130831_)))
                                (if (gx#identifier? _hd3069230834_)
                                    (if (gx#stx-eq? '%#ref _hd3069230834_)
                                        (if (gx#stx-pair? _tl3069330836_)
                                            (let ((_e3069430839_
                                                   (gx#stx-e _tl3069330836_)))
                                              (let ((_tl3069630844_
                                                     (##cdr _e3069430839_))
                                                    (_hd3069530842_
                                                     (##car _e3069430839_)))
                                                (if (gx#stx-null?
                                                     _tl3069630844_)
                                                    (if (gx#stx-pair?
                                                         _tl3069030828_)
                                                        (let ((_e3069730847_
                                                               (gx#stx-e
                                                                _tl3069030828_)))
                                                          (let ((_tl3069930852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3069730847_))
                        (_hd3069830850_ (##car _e3069730847_)))
                    (if (gx#stx-null? _tl3069930852_)
                        (___match4415944160_
                         _e3061731086_
                         _hd3061831089_
                         _tl3061931091_
                         _e3068830823_
                         _hd3068930826_
                         _tl3069030828_
                         _e3069130831_
                         _hd3069230834_
                         _tl3069330836_
                         _e3069430839_
                         _hd3069530842_
                         _tl3069630844_
                         _e3069730847_
                         _hd3069830850_
                         _tl3069930852_)
                        (if (gx#stx-pair/null? _tl3069030828_)
                            (let ((___splice4398443985_
                                   (gx#syntax-split-splice _tl3069030828_ '0)))
                              (let ((_tl3071630766_
                                     (##vector-ref ___splice4398443985_ '1))
                                    (_target3071430764_
                                     (##vector-ref ___splice4398443985_ '0)))
                                (if (gx#stx-null? _tl3071630766_)
                                    (___match4420144202_
                                     _e3061731086_
                                     _hd3061831089_
                                     _tl3061931091_
                                     _e3068830823_
                                     _hd3068930826_
                                     _tl3069030828_
                                     _e3069130831_
                                     _hd3069230834_
                                     _tl3069330836_
                                     _e3069430839_
                                     _hd3069530842_
                                     _tl3069630844_
                                     ___splice4398443985_
                                     _target3071430764_
                                     _tl3071630766_)
                                    (_g3061230727_))))
                            (_g3061230727_)))))
                (if (gx#stx-pair/null? _tl3069030828_)
                    (let ((___splice4398443985_
                           (gx#syntax-split-splice _tl3069030828_ '0)))
                      (let ((_tl3071630766_
                             (##vector-ref ___splice4398443985_ '1))
                            (_target3071430764_
                             (##vector-ref ___splice4398443985_ '0)))
                        (if (gx#stx-null? _tl3071630766_)
                            (___match4420144202_
                             _e3061731086_
                             _hd3061831089_
                             _tl3061931091_
                             _e3068830823_
                             _hd3068930826_
                             _tl3069030828_
                             _e3069130831_
                             _hd3069230834_
                             _tl3069330836_
                             _e3069430839_
                             _hd3069530842_
                             _tl3069630844_
                             ___splice4398443985_
                             _target3071430764_
                             _tl3071630766_)
                            (_g3061230727_))))
                    (_g3061230727_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3061230727_))))
                                            (_g3061230727_))
                                        (_g3061230727_))
                                    (_g3061230727_))))
                            (_g3061230727_))))
                    (_g3061230727_))
                (_g3061230727_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g3061230727_))))
                            (_g3061230727_))))))))
        (let* ((_clause3048930496_ _clause30484_)
               (_E3049130500_
                (lambda () (error '"No clause matching" _clause3048930496_)))
               (_K3049230593_
                (lambda (_kont30503_ _id30504_)
                  (let* ((_g3050630526_
                          (lambda (_g3050730523_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3050730523_)))
                         (_g3050530590_
                          (lambda (_g3050730529_)
                            (if (gx#stx-pair? _g3050730529_)
                                (let ((_e3051030531_ (gx#stx-e _g3050730529_)))
                                  (let ((_hd3051130534_ (##car _e3051030531_))
                                        (_tl3051230536_ (##cdr _e3051030531_)))
                                    (if (gx#identifier? _hd3051130534_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd3051130534_)
                                            (if (gx#stx-pair? _tl3051230536_)
                                                (let ((_e3051330539_
                                                       (gx#stx-e
                                                        _tl3051230536_)))
                                                  (let ((_hd3051430542_
                                                         (##car _e3051330539_))
                                                        (_tl3051530544_
                                                         (##cdr _e3051330539_)))
                                                    (if (gx#stx-pair?
                                                         _hd3051430542_)
                                                        (let ((_e3051630547_
                                                               (gx#stx-e
                                                                _hd3051430542_)))
                                                          (let ((_hd3051730550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3051630547_))
                        (_tl3051830552_ (##cdr _e3051630547_)))
                    (if (gx#stx-null? _tl3051830552_)
                        (if (gx#stx-pair? _tl3051530544_)
                            (let ((_e3051930555_ (gx#stx-e _tl3051530544_)))
                              (let ((_hd3052030558_ (##car _e3051930555_))
                                    (_tl3052130560_ (##cdr _e3051930555_)))
                                (if (gx#stx-null? _tl3052130560_)
                                    ((lambda (_L30563_ _L30564_)
                                       (let* ((_body30585_
                                               (gxc#apply-expression-subst
                                                _L30563_
                                                _L30564_
                                                _target30486_))
                                              (_body30587_
                                               (if _negation30485_
                                                   (_closure-e30488_
                                                    _body30585_)
                                                   _body30585_)))
                                         (begin
                                           (gxc#optimizer-declare-type!__%
                                            (gxc#identifier-symbol _id30504_)
                                            (let ((__obj44253
                                                   (make-object
                                                    gxc#!lambda::t
                                                    '5)))
                                              (begin
                                                (gxc#!lambda:::init!__0
                                                 __obj44253
                                                 'lambda
                                                 '0
                                                 '#f)
                                                __obj44253))
                                            '#t)
                                           (cons _id30504_
                                                 (cons '%#lambda
                                                       (cons '()
                                                             (cons _body30587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd3052030558_
                                     _hd3051730550_)
                                    (_g3050630526_ _g3050730529_))))
                            (_g3050630526_ _g3050730529_))
                        (_g3050630526_ _g3050730529_))))
                (_g3050630526_ _g3050730529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3050630526_ _g3050730529_))
                                            (_g3050630526_ _g3050730529_))
                                        (_g3050630526_ _g3050730529_))))
                                (_g3050630526_ _g3050730529_)))))
                    (_g3050530590_ _kont30503_)))))
          (if (##pair? _clause3048930496_)
              (let ((_hd3049330596_ (##car _clause3048930496_))
                    (_tl3049430598_ (##cdr _clause3048930496_)))
                (let* ((_id30601_ _hd3049330596_) (_kont30603_ _tl3049430598_))
                  (_K3049230593_ _kont30603_ _id30601_)))
              (_E3049130500_))))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx30270_ _vars30271_ _K30272_)
      (let* ((_g3027430291_
              (lambda (_g3027530288_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3027530288_)))
             (_g3027330481_
              (lambda (_g3027530294_)
                (if (gx#stx-pair? _g3027530294_)
                    (let ((_e3027830296_ (gx#stx-e _g3027530294_)))
                      (let ((_hd3027930299_ (##car _e3027830296_))
                            (_tl3028030301_ (##cdr _e3027830296_)))
                        (if (gx#stx-pair? _tl3028030301_)
                            (let ((_e3028130304_ (gx#stx-e _tl3028030301_)))
                              (let ((_hd3028230307_ (##car _e3028130304_))
                                    (_tl3028330309_ (##cdr _e3028130304_)))
                                (if (gx#stx-pair? _tl3028330309_)
                                    (let ((_e3028430312_
                                           (gx#stx-e _tl3028330309_)))
                                      (let ((_hd3028530315_
                                             (##car _e3028430312_))
                                            (_tl3028630317_
                                             (##cdr _e3028430312_)))
                                        (if (gx#stx-null? _tl3028630317_)
                                            ((lambda (_L30320_ _L30321_)
                                               (let _lp30336_ ((_rest30338_
                                                                _L30321_)
                                                               (_rebind30339_
                                                                '())
                                                               (_vars30340_
                                                                _vars30271_))
                                                 (let* ((_rest3034130349_
                                                         _rest30338_)
                                                        (_else3034330357_
                                                         (lambda ()
                                                           (if (null? _rebind30339_)
                                                               (gxc#compile-e
                                                                _L30320_
                                                                _vars30340_
                                                                _K30272_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind30339_)
                                    (cons (gxc#compile-e
                                           _L30320_
                                           _vars30340_
                                           _K30272_)
                                          '())))
                        _stx30270_))))
                (_K3034530469_
                 (lambda (_rest30360_ _bind30361_)
                   (let* ((___stx4420444205_ _bind30361_)
                          (_g3036430387_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx4420444205_))))
                     (let ((___kont4420644207_
                            (lambda (_L30439_ _L30440_)
                              (_lp30336_
                               _rest30360_
                               _rebind30339_
                               (cons _bind30361_ _vars30340_))))
                           (___kont4420844209_
                            (lambda ()
                              (_lp30336_
                               _rest30360_
                               (cons _bind30361_ _rebind30339_)
                               _vars30340_))))
                       (if (gx#stx-pair? ___stx4420444205_)
                           (let ((_e3036830399_ (gx#stx-e ___stx4420444205_)))
                             (let ((_tl3037030404_ (##cdr _e3036830399_))
                                   (_hd3036930402_ (##car _e3036830399_)))
                               (if (gx#stx-pair? _hd3036930402_)
                                   (let ((_e3037130407_
                                          (gx#stx-e _hd3036930402_)))
                                     (let ((_tl3037330412_
                                            (##cdr _e3037130407_))
                                           (_hd3037230410_
                                            (##car _e3037130407_)))
                                       (if (gx#stx-null? _tl3037330412_)
                                           (if (gx#stx-pair? _tl3037030404_)
                                               (let ((_e3037430415_
                                                      (gx#stx-e
                                                       _tl3037030404_)))
                                                 (let ((_tl3037630420_
                                                        (##cdr _e3037430415_))
                                                       (_hd3037530418_
                                                        (##car _e3037430415_)))
                                                   (if (gx#stx-pair?
                                                        _hd3037530418_)
                                                       (let ((_e3037730423_
                                                              (gx#stx-e
                                                               _hd3037530418_)))
                                                         (let ((_tl3037930428_
                                                                (##cdr _e3037730423_))
                                                               (_hd3037830426_
                                                                (##car _e3037730423_)))
                                                           (if (gx#identifier?
                                                                _hd3037830426_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#ref
                            _hd3037830426_)
                           (if (gx#stx-pair? _tl3037930428_)
                               (let ((_e3038030431_ (gx#stx-e _tl3037930428_)))
                                 (let ((_tl3038230436_ (##cdr _e3038030431_))
                                       (_hd3038130434_ (##car _e3038030431_)))
                                   (if (gx#stx-null? _tl3038230436_)
                                       (if (gx#stx-null? _tl3037630420_)
                                           (___kont4420644207_
                                            _hd3038130434_
                                            _hd3037230410_)
                                           (___kont4420844209_))
                                       (___kont4420844209_))))
                               (___kont4420844209_))
                           (___kont4420844209_))
                       (___kont4420844209_))))
               (___kont4420844209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont4420844209_))
                                           (___kont4420844209_))))
                                   (___kont4420844209_))))
                           (___kont4420844209_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest3034130349_)
                                                       (let ((_hd3034630472_
                                                              (##car _rest3034130349_))
                                                             (_tl3034730474_
                                                              (##cdr _rest3034130349_)))
                                                         (let* ((_bind30477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3034630472_)
                        (_rest30479_ _tl3034730474_))
                   (_K3034530469_ _rest30479_ _bind30477_)))
               (_else3034330357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd3028530315_
                                             _hd3028230307_)
                                            (_g3027430291_ _g3027530294_))))
                                    (_g3027430291_ _g3027530294_))))
                            (_g3027430291_ _g3027530294_))))
                    (_g3027430291_ _g3027530294_)))))
        (_g3027330481_ _stx30270_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx30185_ _vars30186_ _K30187_)
      (let* ((_g3018930210_
              (lambda (_g3019030207_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3019030207_)))
             (_g3018830267_
              (lambda (_g3019030213_)
                (if (gx#stx-pair? _g3019030213_)
                    (let ((_e3019430215_ (gx#stx-e _g3019030213_)))
                      (let ((_hd3019530218_ (##car _e3019430215_))
                            (_tl3019630220_ (##cdr _e3019430215_)))
                        (if (gx#stx-pair? _tl3019630220_)
                            (let ((_e3019730223_ (gx#stx-e _tl3019630220_)))
                              (let ((_hd3019830226_ (##car _e3019730223_))
                                    (_tl3019930228_ (##cdr _e3019730223_)))
                                (if (gx#stx-pair? _tl3019930228_)
                                    (let ((_e3020030231_
                                           (gx#stx-e _tl3019930228_)))
                                      (let ((_hd3020130234_
                                             (##car _e3020030231_))
                                            (_tl3020230236_
                                             (##cdr _e3020030231_)))
                                        (if (gx#stx-pair? _tl3020230236_)
                                            (let ((_e3020330239_
                                                   (gx#stx-e _tl3020230236_)))
                                              (let ((_hd3020430242_
                                                     (##car _e3020330239_))
                                                    (_tl3020530244_
                                                     (##cdr _e3020330239_)))
                                                (if (gx#stx-null?
                                                     _tl3020530244_)
                                                    ((lambda (_L30247_
                                                              _L30248_
                                                              _L30249_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L30249_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars30186_))
                   (gxc#push-match-vars-stop _stx30185_ _vars30186_ _K30187_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L30249_
                                (cons (gxc#compile-e
                                       _L30248_
                                       _vars30186_
                                       _K30187_)
                                      (cons (gxc#compile-e
                                             _L30247_
                                             _vars30186_
                                             _K30187_)
                                            '()))))
                    _stx30185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd3020430242_
                                                     _hd3020130234_
                                                     _hd3019830226_)
                                                    (_g3018930210_
                                                     _g3019030213_))))
                                            (_g3018930210_ _g3019030213_))))
                                    (_g3018930210_ _g3019030213_))))
                            (_g3018930210_ _g3019030213_))))
                    (_g3018930210_ _g3019030213_)))))
        (_g3018830267_ _stx30185_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx30105_ _vars30106_ _K30107_)
      (let* ((_g3010930128_
              (lambda (_g3011030125_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3011030125_)))
             (_g3010830182_
              (lambda (_g3011030131_)
                (if (gx#stx-pair? _g3011030131_)
                    (let ((_e3011230133_ (gx#stx-e _g3011030131_)))
                      (let ((_hd3011330136_ (##car _e3011230133_))
                            (_tl3011430138_ (##cdr _e3011230133_)))
                        (if (gx#stx-pair? _tl3011430138_)
                            (let ((_e3011530141_ (gx#stx-e _tl3011430138_)))
                              (let ((_hd3011630144_ (##car _e3011530141_))
                                    (_tl3011730146_ (##cdr _e3011530141_)))
                                (if (gx#stx-pair? _hd3011630144_)
                                    (let ((_e3011830149_
                                           (gx#stx-e _hd3011630144_)))
                                      (let ((_hd3011930152_
                                             (##car _e3011830149_))
                                            (_tl3012030154_
                                             (##cdr _e3011830149_)))
                                        (if (gx#identifier? _hd3011930152_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3011930152_)
                                                (if (gx#stx-pair?
                                                     _tl3012030154_)
                                                    (let ((_e3012130157_
                                                           (gx#stx-e
                                                            _tl3012030154_)))
                                                      (let ((_hd3012230160_
                                                             (##car _e3012130157_))
                                                            (_tl3012330162_
                                                             (##cdr _e3012130157_)))
                                                        (if (gx#stx-null?
                                                             _tl3012330162_)
                                                            ((lambda (_L30165_)
                                                               (if (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L30165_
                                _K30107_)
                               (pair? _vars30106_)
                               '#f)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars30106_)
                                        (cons _stx30105_ '())))
                            _stx30105_)
                           _stx30105_))
                     _hd3012230160_)
                    (_g3010930128_ _g3011030131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3010930128_
                                                     _g3011030131_))
                                                (_g3010930128_ _g3011030131_))
                                            (_g3010930128_ _g3011030131_))))
                                    (_g3010930128_ _g3011030131_))))
                            (_g3010930128_ _g3011030131_))))
                    (_g3010930128_ _g3011030131_)))))
        (_g3010830182_ _stx30105_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx30101_ _vars30102_ _K30103_)
      (if (null? _vars30102_)
          _stx30101_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars30102_) (cons _stx30101_ '())))
           _stx30101_)))))
