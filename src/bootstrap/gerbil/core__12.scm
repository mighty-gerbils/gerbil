(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setq-macro|
    (lambda _$args25761_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setq-macro::t|
             _$args25761_)))
  (define |gerbil/core::<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core::<MOP>::<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core::<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core::<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core::<more-sugar>[1]#make-setf-macro|
    (lambda _$args25757_
      (apply make-class-instance
             |gerbil/core::<more-sugar>[1]#setf-macro::t|
             _$args25757_)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx25754_)
      (if (gx#identifier? _stx25754_)
          (|gerbil/core::<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx25754_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx25751_)
      (if (gx#identifier? _stx25751_)
          (|gerbil/core::<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx25751_ false))
          '#f)))
  (define |gerbil/core::<more-sugar>[:0:]#set!|
    (lambda (_stx25765_)
      (let ((_g2577125830_
             (lambda (_g2577225826_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2577225826_))))
        (let ((_g2577025885_
               (lambda (_g2577225834_)
                 (if (gx#stx-pair? _g2577225834_)
                     (let ((_e2581625837_ (gx#syntax-e _g2577225834_)))
                       (let ((_hd2581725841_ (##car _e2581625837_))
                             (_tl2581825844_ (##cdr _e2581625837_)))
                         (if (gx#stx-pair? _tl2581825844_)
                             (let ((_e2581925847_
                                    (gx#syntax-e _tl2581825844_)))
                               (let ((_hd2582025851_ (##car _e2581925847_))
                                     (_tl2582125854_ (##cdr _e2581925847_)))
                                 (if (gx#stx-pair? _tl2582125854_)
                                     (let ((_e2582225857_
                                            (gx#syntax-e _tl2582125854_)))
                                       (let ((_hd2582325861_
                                              (##car _e2582225857_))
                                             (_tl2582425864_
                                              (##cdr _e2582225857_)))
                                         (if (gx#stx-null? _tl2582425864_)
                                             ((lambda (_L25867_ _L25869_)
                                                (if (gx#identifier? _L25869_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '%#set!)
                                                          (cons _L25869_
                                                                (cons _L25867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2577125830_
                                                     _g2577225834_)))
                                              _hd2582325861_
                                              _hd2582025851_)
                                             (_g2577125830_ _g2577225834_))))
                                     (_g2577125830_ _g2577225834_))))
                             (_g2577125830_ _g2577225834_))))
                     (_g2577125830_ _g2577225834_)))))
          (let ((_g2576925925_
                 (lambda (_g2577225889_)
                   (if (gx#stx-pair? _g2577225889_)
                       (let ((_e2580825892_ (gx#syntax-e _g2577225889_)))
                         (let ((_hd2580925896_ (##car _e2580825892_))
                               (_tl2581025899_ (##cdr _e2580825892_)))
                           (if (gx#stx-pair? _tl2581025899_)
                               (let ((_e2581125902_
                                      (gx#syntax-e _tl2581025899_)))
                                 (let ((_hd2581225906_ (##car _e2581125902_))
                                       (_tl2581325909_ (##cdr _e2581125902_)))
                                   ((lambda (_L25912_)
                                      (if (|gerbil/core::<more-sugar>[1]#syntax-local-setq-macro?|
                                           _L25912_)
                                          (gx#core-apply-expander
                                           (gx#syntax-local-e _L25912_)
                                           _stx25765_)
                                          (_g2577025885_ _g2577225889_)))
                                    _hd2581225906_)))
                               (_g2577025885_ _g2577225889_))))
                       (_g2577025885_ _g2577225889_)))))
            (let ((_g2576826066_
                   (lambda (_g2577225929_)
                     (if (gx#stx-pair? _g2577225929_)
                         (let ((_e2578625932_ (gx#syntax-e _g2577225929_)))
                           (let ((_hd2578725936_ (##car _e2578625932_))
                                 (_tl2578825939_ (##cdr _e2578625932_)))
                             (if (gx#stx-pair? _tl2578825939_)
                                 (let ((_e2578925942_
                                        (gx#syntax-e _tl2578825939_)))
                                   (let ((_hd2579025946_ (##car _e2578925942_))
                                         (_tl2579125949_
                                          (##cdr _e2578925942_)))
                                     (if (gx#stx-pair? _hd2579025946_)
                                         (let ((_e2579225952_
                                                (gx#syntax-e _hd2579025946_)))
                                           (let ((_hd2579325956_
                                                  (##car _e2579225952_))
                                                 (_tl2579425959_
                                                  (##cdr _e2579225952_)))
                                             (if (gx#stx-pair/null?
                                                  _tl2579425959_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl2579425959_)
                                                           '0)
                                                     (let ((_g28486_
                                                            (gx#syntax-split-splice
                                                             _tl2579425959_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28487_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28486_)))
                   (if (not (fx= _g28487_ 2))
                       (error "Context expects 2 values" _g28487_)))
                 (let ((_target2579525962_ (values-ref _g28486_ 0))
                       (_tl2579725965_ (values-ref _g28486_ 1)))
                   (if (gx#stx-null? _tl2579725965_)
                       (letrec ((_loop2579825968_
                                 (lambda (_hd2579625972_ _arg2580225975_)
                                   (if (gx#stx-pair? _hd2579625972_)
                                       (let ((_e2579925978_
                                              (gx#syntax-e _hd2579625972_)))
                                         (let ((_lp-hd2580025982_
                                                (##car _e2579925978_))
                                               (_lp-tl2580125985_
                                                (##cdr _e2579925978_)))
                                           (_loop2579825968_
                                            _lp-tl2580125985_
                                            (cons _lp-hd2580025982_
                                                  _arg2580225975_))))
                                       (let ((_arg2580325988_
                                              (reverse _arg2580225975_)))
                                         (if (gx#stx-pair? _tl2579125949_)
                                             (let ((_e2580425992_
                                                    (gx#syntax-e
                                                     _tl2579125949_)))
                                               (let ((_hd2580525996_
                                                      (##car _e2580425992_))
                                                     (_tl2580625999_
                                                      (##cdr _e2580425992_)))
                                                 (if (gx#stx-null?
                                                      _tl2580625999_)
                                                     ((lambda (_L26002_
                                                               _L26004_
                                                               _L26005_)
                                                        (if (gx#identifier?
                                                             _L26005_)
                                                            (let ((_g2602726035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2602826031_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2602826031_))))
                      (let ((_g2602626062_
                             (lambda (_g2602826039_)
                               ((lambda (_L26042_)
                                  (let ()
                                    (cons _L26042_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2605326056_
                                                            _g2605426059_)
                                                     (cons _g2605326056_
                                                           _g2605426059_))
                                                   (cons _L26002_ '())
                                                   _L26004_)))))
                                _g2602826039_))))
                        (_g2602626062_
                         (gx#stx-identifier _L26005_ _L26005_ '"-set!"))))
                    (_g2576925925_ _g2577225929_)))
              _hd2580525996_
              _arg2580325988_
              _hd2579325956_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2576925925_
                                                      _g2577225929_))))
                                             (_g2576925925_
                                              _g2577225929_)))))))
                         (_loop2579825968_ _target2579525962_ '()))
                       (_g2576925925_ _g2577225929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2576925925_
                                                      _g2577225929_))
                                                 (_g2576925925_
                                                  _g2577225929_))))
                                         (_g2576925925_ _g2577225929_))))
                                 (_g2576925925_ _g2577225929_))))
                         (_g2576925925_ _g2577225929_)))))
              (let ((_g2576726118_
                     (lambda (_g2577226070_)
                       (if (gx#stx-pair? _g2577226070_)
                           (let ((_e2577426073_ (gx#syntax-e _g2577226070_)))
                             (let ((_hd2577526077_ (##car _e2577426073_))
                                   (_tl2577626080_ (##cdr _e2577426073_)))
                               (if (gx#stx-pair? _tl2577626080_)
                                   (let ((_e2577726083_
                                          (gx#syntax-e _tl2577626080_)))
                                     (let ((_hd2577826087_
                                            (##car _e2577726083_))
                                           (_tl2577926090_
                                            (##cdr _e2577726083_)))
                                       (if (gx#stx-pair? _hd2577826087_)
                                           (let ((_e2578026093_
                                                  (gx#syntax-e
                                                   _hd2577826087_)))
                                             (let ((_hd2578126097_
                                                    (##car _e2578026093_))
                                                   (_tl2578226100_
                                                    (##cdr _e2578026093_)))
                                               ((lambda (_L26103_)
                                                  (if (|gerbil/core::<more-sugar>[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (gx#core-apply-expander
                                                       (gx#syntax-local-e
                                                        _L26103_)
                                                       _stx25765_)
                                                      (_g2576826066_
                                                       _g2577226070_)))
                                                _hd2578126097_)))
                                           (_g2576826066_ _g2577226070_))))
                                   (_g2576826066_ _g2577226070_))))
                           (_g2576826066_ _g2577226070_)))))
                (_g2576726118_ _stx25765_))))))))
  (define |gerbil/core::<more-sugar>[:0:]#values-set!|
    (lambda (_stx26123_)
      (let ((_g2612626150_
             (lambda (_g2612726146_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2612726146_))))
        (let ((_g2612526328_
               (lambda (_g2612726154_)
                 (if (gx#stx-pair? _g2612726154_)
                     (let ((_e2613026157_ (gx#syntax-e _g2612726154_)))
                       (let ((_hd2613126161_ (##car _e2613026157_))
                             (_tl2613226164_ (##cdr _e2613026157_)))
                         (if (gx#stx-pair/null? _tl2613226164_)
                             (if (fx>= (gx#stx-length _tl2613226164_) '1)
                                 (let ((_g28488_
                                        (gx#syntax-split-splice
                                         _tl2613226164_
                                         '1)))
                                   (begin
                                     (let ((_g28489_ (values-count _g28488_)))
                                       (if (not (fx= _g28489_ 2))
                                           (error "Context expects 2 values"
                                                  _g28489_)))
                                     (let ((_target2613326167_
                                            (values-ref _g28488_ 0))
                                           (_tl2613526170_
                                            (values-ref _g28488_ 1)))
                                       (if (gx#stx-pair? _tl2613526170_)
                                           (let ((_e2614226173_
                                                  (gx#syntax-e
                                                   _tl2613526170_)))
                                             (let ((_hd2614326177_
                                                    (##car _e2614226173_))
                                                   (_tl2614426180_
                                                    (##cdr _e2614226173_)))
                                               (if (gx#stx-null?
                                                    _tl2614426180_)
                                                   (letrec ((_loop2613626183_
                                                             (lambda (_hd2613426187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _tgt2614026190_)
                       (if (gx#stx-pair? _hd2613426187_)
                           (let ((_e2613726193_ (gx#syntax-e _hd2613426187_)))
                             (let ((_lp-hd2613826197_ (##car _e2613726193_))
                                   (_lp-tl2613926200_ (##cdr _e2613726193_)))
                               (_loop2613626183_
                                _lp-tl2613926200_
                                (cons _lp-hd2613826197_ _tgt2614026190_))))
                           (let ((_tgt2614126203_ (reverse _tgt2614026190_)))
                             ((lambda (_L26207_ _L26209_)
                                (let ((_g2622726244_
                                       (lambda (_g2622826240_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2622826240_))))
                                  (let ((_g2622626316_
                                         (lambda (_g2622826248_)
                                           (if (gx#stx-pair/null?
                                                _g2622826248_)
                                               (if (fx>= (gx#stx-length
                                                          _g2622826248_)
                                                         '0)
                                                   (let ((_g28490_
                                                          (gx#syntax-split-splice
                                                           _g2622826248_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28491_
                                                              (values-count
                                                               _g28490_)))
                                                         (if (not (fx= _g28491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28491_)))
               (let ((_target2623026251_ (values-ref _g28490_ 0))
                     (_tl2623226254_ (values-ref _g28490_ 1)))
                 (if (gx#stx-null? _tl2623226254_)
                     (letrec ((_loop2623326257_
                               (lambda (_hd2623126261_ _$e2623726264_)
                                 (if (gx#stx-pair? _hd2623126261_)
                                     (let ((_e2623426267_
                                            (gx#syntax-e _hd2623126261_)))
                                       (let ((_lp-hd2623526271_
                                              (##car _e2623426267_))
                                             (_lp-tl2623626274_
                                              (##cdr _e2623426267_)))
                                         (_loop2623326257_
                                          _lp-tl2623626274_
                                          (cons _lp-hd2623526271_
                                                _$e2623726264_))))
                                     (let ((_$e2623826277_
                                            (reverse _$e2623726264_)))
                                       ((lambda (_L26281_)
                                          (let ()
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'let-values)
                                                  (cons (cons (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr (lambda (_g2629626302_ _g2629726305_)
                                       (cons _g2629626302_ _g2629726305_))
                                     '()
                                     _L26281_))
                            (cons _L26207_ '()))
                      '())
                (begin
                  (gx#syntax-check-splice-targets _L26281_ _L26209_)
                  (foldr (lambda (_g2629826308_ _g2629926311_ _g2630026313_)
                           (cons (cons (gx#datum->syntax '#f 'set!)
                                       (cons _g2629926311_
                                             (cons _g2629826308_ '())))
                                 _g2630026313_))
                         '()
                         _L26281_
                         _L26209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _$e2623826277_))))))
                       (_loop2623326257_ _target2623026251_ '()))
                     (_g2622726244_ _g2622826248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2622726244_
                                                    _g2622826248_))
                                               (_g2622726244_
                                                _g2622826248_)))))
                                    (_g2622626316_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2631926322_
                                                        _g2632026325_)
                                                 (cons _g2631926322_
                                                       _g2632026325_))
                                               '()
                                               _L26209_)))))))
                              _hd2614326177_
                              _tgt2614126203_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2613626183_
                                                      _target2613326167_
                                                      '()))
                                                   (_g2612626150_
                                                    _g2612726154_))))
                                           (_g2612626150_ _g2612726154_)))))
                                 (_g2612626150_ _g2612726154_))
                             (_g2612626150_ _g2612726154_))))
                     (_g2612626150_ _g2612726154_)))))
          (_g2612526328_ _stx26123_)))))
  (define |gerbil/core::<more-sugar>[:0:]#parameterize|
    (lambda (_stx26334_)
      (let ((_g2633826396_
             (lambda (_g2633926392_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2633926392_))))
        (let ((_g2633726673_
               (lambda (_g2633926400_)
                 (if (gx#stx-pair? _g2633926400_)
                     (let ((_e2635926403_ (gx#syntax-e _g2633926400_)))
                       (let ((_hd2636026407_ (##car _e2635926403_))
                             (_tl2636126410_ (##cdr _e2635926403_)))
                         (if (gx#stx-pair? _tl2636126410_)
                             (let ((_e2636226413_
                                    (gx#syntax-e _tl2636126410_)))
                               (let ((_hd2636326417_ (##car _e2636226413_))
                                     (_tl2636426420_ (##cdr _e2636226413_)))
                                 (if (gx#stx-pair/null? _hd2636326417_)
                                     (if (fx>= (gx#stx-length _hd2636326417_)
                                               '0)
                                         (let ((_g28492_
                                                (gx#syntax-split-splice
                                                 _hd2636326417_
                                                 '0)))
                                           (begin
                                             (let ((_g28493_
                                                    (values-count _g28492_)))
                                               (if (not (fx= _g28493_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28493_)))
                                             (let ((_target2636526423_
                                                    (values-ref _g28492_ 0))
                                                   (_tl2636726426_
                                                    (values-ref _g28492_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2636726426_)
                                                   (letrec ((_loop2636826429_
                                                             (lambda (_hd2636626433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr2637226436_
                              _param2637326438_)
                       (if (gx#stx-pair? _hd2636626433_)
                           (let ((_e2636926441_ (gx#syntax-e _hd2636626433_)))
                             (let ((_lp-hd2637026445_ (##car _e2636926441_))
                                   (_lp-tl2637126448_ (##cdr _e2636926441_)))
                               (if (gx#stx-pair? _lp-hd2637026445_)
                                   (let ((_e2637626451_
                                          (gx#syntax-e _lp-hd2637026445_)))
                                     (let ((_hd2637726455_
                                            (##car _e2637626451_))
                                           (_tl2637826458_
                                            (##cdr _e2637626451_)))
                                       (if (gx#stx-pair? _tl2637826458_)
                                           (let ((_e2637926461_
                                                  (gx#syntax-e
                                                   _tl2637826458_)))
                                             (let ((_hd2638026465_
                                                    (##car _e2637926461_))
                                                   (_tl2638126468_
                                                    (##cdr _e2637926461_)))
                                               (if (gx#stx-null?
                                                    _tl2638126468_)
                                                   (_loop2636826429_
                                                    _lp-tl2637126448_
                                                    (cons _hd2638026465_
                                                          _expr2637226436_)
                                                    (cons _hd2637726455_
                                                          _param2637326438_))
                                                   (_g2633826396_
                                                    _g2633926400_))))
                                           (_g2633826396_ _g2633926400_))))
                                   (_g2633826396_ _g2633926400_))))
                           (let ((_expr2637426471_ (reverse _expr2637226436_))
                                 (_param2637526474_
                                  (reverse _param2637326438_)))
                             (if (gx#stx-pair/null? _tl2636426420_)
                                 (if (fx>= (gx#stx-length _tl2636426420_) '0)
                                     (let ((_g28494_
                                            (gx#syntax-split-splice
                                             _tl2636426420_
                                             '0)))
                                       (begin
                                         (let ((_g28495_
                                                (values-count _g28494_)))
                                           (if (not (fx= _g28495_ 2))
                                               (error "Context expects 2 values"
                                                      _g28495_)))
                                         (let ((_target2638226477_
                                                (values-ref _g28494_ 0))
                                               (_tl2638426480_
                                                (values-ref _g28494_ 1)))
                                           (if (gx#stx-null? _tl2638426480_)
                                               (letrec ((_loop2638526483_
                                                         (lambda (_hd2638326487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body2638926490_)
                   (if (gx#stx-pair? _hd2638326487_)
                       (let ((_e2638626493_ (gx#syntax-e _hd2638326487_)))
                         (let ((_lp-hd2638726497_ (##car _e2638626493_))
                               (_lp-tl2638826500_ (##cdr _e2638626493_)))
                           (_loop2638526483_
                            _lp-tl2638826500_
                            (cons _lp-hd2638726497_ _body2638926490_))))
                       (let ((_body2639026503_ (reverse _body2638926490_)))
                         ((lambda (_L26507_ _L26509_ _L26510_)
                            (let ((_g2653326541_
                                   (lambda (_g2653426537_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2653426537_))))
                              (let ((_g2653226661_
                                     (lambda (_g2653426545_)
                                       ((lambda (_L26548_)
                                          (let ()
                                            (let ((_g2656026577_
                                                   (lambda (_g2656126573_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2656126573_))))
                                              (let ((_g2655926641_
                                                     (lambda (_g2656126581_)
                                                       (if (gx#stx-pair/null?
                                                            _g2656126581_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2656126581_)
                             '0)
                       (let ((_g28496_
                              (gx#syntax-split-splice _g2656126581_ '0)))
                         (begin
                           (let ((_g28497_ (values-count _g28496_)))
                             (if (not (fx= _g28497_ 2))
                                 (error "Context expects 2 values" _g28497_)))
                           (let ((_target2656326584_ (values-ref _g28496_ 0))
                                 (_tl2656526587_ (values-ref _g28496_ 1)))
                             (if (gx#stx-null? _tl2656526587_)
                                 (letrec ((_loop2656626590_
                                           (lambda (_hd2656426594_
                                                    _arg2657026597_)
                                             (if (gx#stx-pair? _hd2656426594_)
                                                 (let ((_e2656726600_
                                                        (gx#syntax-e
                                                         _hd2656426594_)))
                                                   (let ((_lp-hd2656826604_
                                                          (##car _e2656726600_))
                                                         (_lp-tl2656926607_
                                                          (##cdr _e2656726600_)))
                                                     (_loop2656626590_
                                                      _lp-tl2656926607_
                                                      (cons _lp-hd2656826604_
                                                            _arg2657026597_))))
                                                 (let ((_arg2657126610_
                                                        (reverse _arg2657026597_)))
                                                   ((lambda (_L26614_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'call-with-parameters)
                        (cons _L26548_
                              (begin
                                '#!void
                                (foldr (lambda (_g2663226635_ _g2663326638_)
                                         (cons _g2663226635_ _g2663326638_))
                                       '()
                                       _L26614_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _arg2657126610_))))))
                                   (_loop2656626590_ _target2656326584_ '()))
                                 (_g2656026577_ _g2656126581_)))))
                       (_g2656026577_ _g2656126581_))
                   (_g2656026577_ _g2656126581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2655926641_
                                                 (foldr cons*
                                                        '()
                                                        (gx#syntax->list
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g2664426647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2664526650_)
                            (cons _g2664426647_ _g2664526650_))
                          '()
                          _L26510_)))
                (gx#syntax->list
                 (begin
                   '#!void
                   (foldr (lambda (_g2665226655_ _g2665326658_)
                            (cons _g2665226655_ _g2665326658_))
                          '()
                          _L26509_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2653426545_))))
                                (_g2653226661_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g2666426667_
                                                                _g2666526670_)
                                                         (cons _g2666426667_
                                                               _g2666526670_))
                                                       '()
                                                       _L26507_))))
                                  (gx#stx-source _stx26334_))))))
                          _body2639026503_
                          _expr2637426471_
                          _param2637526474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2638526483_
                                                  _target2638226477_
                                                  '()))
                                               (_g2633826396_
                                                _g2633926400_)))))
                                     (_g2633826396_ _g2633926400_))
                                 (_g2633826396_ _g2633926400_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2636826429_
                                                      _target2636526423_
                                                      '()
                                                      '()))
                                                   (_g2633826396_
                                                    _g2633926400_)))))
                                         (_g2633826396_ _g2633926400_))
                                     (_g2633826396_ _g2633926400_))))
                             (_g2633826396_ _g2633926400_))))
                     (_g2633826396_ _g2633926400_)))))
          (let ((_g2633626755_
                 (lambda (_g2633926677_)
                   (if (gx#stx-pair? _g2633926677_)
                       (let ((_e2634126680_ (gx#syntax-e _g2633926677_)))
                         (let ((_hd2634226684_ (##car _e2634126680_))
                               (_tl2634326687_ (##cdr _e2634126680_)))
                           (if (gx#stx-pair? _tl2634326687_)
                               (let ((_e2634426690_
                                      (gx#syntax-e _tl2634326687_)))
                                 (let ((_hd2634526694_ (##car _e2634426690_))
                                       (_tl2634626697_ (##cdr _e2634426690_)))
                                   (if (gx#stx-null? _hd2634526694_)
                                       (if (gx#stx-pair/null? _tl2634626697_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2634626697_)
                                                     '0)
                                               (let ((_g28498_
                                                      (gx#syntax-split-splice
                                                       _tl2634626697_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28499_
                                                          (values-count
                                                           _g28498_)))
                                                     (if (not (fx= _g28499_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28499_)))
                                                   (let ((_target2634726700_
                                                          (values-ref
                                                           _g28498_
                                                           0))
                                                         (_tl2634926703_
                                                          (values-ref
                                                           _g28498_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2634926703_)
                                                         (letrec ((_loop2635026706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2634826710_ _body2635426713_)
                             (if (gx#stx-pair? _hd2634826710_)
                                 (let ((_e2635126716_
                                        (gx#syntax-e _hd2634826710_)))
                                   (let ((_lp-hd2635226720_
                                          (##car _e2635126716_))
                                         (_lp-tl2635326723_
                                          (##cdr _e2635126716_)))
                                     (_loop2635026706_
                                      _lp-tl2635326723_
                                      (cons _lp-hd2635226720_
                                            _body2635426713_))))
                                 (let ((_body2635526726_
                                        (reverse _body2635426713_)))
                                   ((lambda (_L26730_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2674626749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2674726752_)
                     (cons _g2674626749_ _g2674726752_))
                   '()
                   _L26730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2635526726_))))))
                   (_loop2635026706_ _target2634726700_ '()))
                 (_g2633726673_ _g2633926677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2633726673_ _g2633926677_))
                                           (_g2633726673_ _g2633926677_))
                                       (_g2633726673_ _g2633926677_))))
                               (_g2633726673_ _g2633926677_))))
                       (_g2633726673_ _g2633926677_)))))
            (_g2633626755_ _stx26334_))))))
  (define |gerbil/core::<more-sugar>[:0:]#let/cc|
    (lambda (_$stx26763_)
      (let ((_g2676726791_
             (lambda (_g2676826787_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2676826787_))))
        (let ((_g2676626876_
               (lambda (_g2676826795_)
                 (if (gx#stx-pair? _g2676826795_)
                     (let ((_e2677126798_ (gx#syntax-e _g2676826795_)))
                       (let ((_hd2677226802_ (##car _e2677126798_))
                             (_tl2677326805_ (##cdr _e2677126798_)))
                         (if (gx#stx-pair? _tl2677326805_)
                             (let ((_e2677426808_
                                    (gx#syntax-e _tl2677326805_)))
                               (let ((_hd2677526812_ (##car _e2677426808_))
                                     (_tl2677626815_ (##cdr _e2677426808_)))
                                 (if (gx#stx-pair/null? _tl2677626815_)
                                     (if (fx>= (gx#stx-length _tl2677626815_)
                                               '0)
                                         (let ((_g28500_
                                                (gx#syntax-split-splice
                                                 _tl2677626815_
                                                 '0)))
                                           (begin
                                             (let ((_g28501_
                                                    (values-count _g28500_)))
                                               (if (not (fx= _g28501_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28501_)))
                                             (let ((_target2677726818_
                                                    (values-ref _g28500_ 0))
                                                   (_tl2677926821_
                                                    (values-ref _g28500_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2677926821_)
                                                   (letrec ((_loop2678026824_
                                                             (lambda (_hd2677826828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2678426831_)
                       (if (gx#stx-pair? _hd2677826828_)
                           (let ((_e2678126834_ (gx#syntax-e _hd2677826828_)))
                             (let ((_lp-hd2678226838_ (##car _e2678126834_))
                                   (_lp-tl2678326841_ (##cdr _e2678126834_)))
                               (_loop2678026824_
                                _lp-tl2678326841_
                                (cons _lp-hd2678226838_ _body2678426831_))))
                           (let ((_body2678526844_ (reverse _body2678426831_)))
                             ((lambda (_L26848_ _L26850_)
                                (if (gx#identifier? _L26850_)
                                    (cons (gx#datum->syntax '#f 'call/cc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26850_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2686726870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2686826873_)
                               (cons _g2686726870_ _g2686826873_))
                             '()
                             _L26848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2676726791_ _g2676826795_)))
                              _body2678526844_
                              _hd2677526812_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2678026824_
                                                      _target2677726818_
                                                      '()))
                                                   (_g2676726791_
                                                    _g2676826795_)))))
                                         (_g2676726791_ _g2676826795_))
                                     (_g2676726791_ _g2676826795_))))
                             (_g2676726791_ _g2676826795_))))
                     (_g2676726791_ _g2676826795_)))))
          (_g2676626876_ _$stx26763_)))))
  (define |gerbil/core::<more-sugar>[:0:]#let/esc|
    (lambda (_$stx26881_)
      (let ((_g2688526909_
             (lambda (_g2688626905_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2688626905_))))
        (let ((_g2688426994_
               (lambda (_g2688626913_)
                 (if (gx#stx-pair? _g2688626913_)
                     (let ((_e2688926916_ (gx#syntax-e _g2688626913_)))
                       (let ((_hd2689026920_ (##car _e2688926916_))
                             (_tl2689126923_ (##cdr _e2688926916_)))
                         (if (gx#stx-pair? _tl2689126923_)
                             (let ((_e2689226926_
                                    (gx#syntax-e _tl2689126923_)))
                               (let ((_hd2689326930_ (##car _e2689226926_))
                                     (_tl2689426933_ (##cdr _e2689226926_)))
                                 (if (gx#stx-pair/null? _tl2689426933_)
                                     (if (fx>= (gx#stx-length _tl2689426933_)
                                               '0)
                                         (let ((_g28502_
                                                (gx#syntax-split-splice
                                                 _tl2689426933_
                                                 '0)))
                                           (begin
                                             (let ((_g28503_
                                                    (values-count _g28502_)))
                                               (if (not (fx= _g28503_ 2))
                                                   (error "Context expects 2 values"
                                                          _g28503_)))
                                             (let ((_target2689526936_
                                                    (values-ref _g28502_ 0))
                                                   (_tl2689726939_
                                                    (values-ref _g28502_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2689726939_)
                                                   (letrec ((_loop2689826942_
                                                             (lambda (_hd2689626946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body2690226949_)
                       (if (gx#stx-pair? _hd2689626946_)
                           (let ((_e2689926952_ (gx#syntax-e _hd2689626946_)))
                             (let ((_lp-hd2690026956_ (##car _e2689926952_))
                                   (_lp-tl2690126959_ (##cdr _e2689926952_)))
                               (_loop2689826942_
                                _lp-tl2690126959_
                                (cons _lp-hd2690026956_ _body2690226949_))))
                           (let ((_body2690326962_ (reverse _body2690226949_)))
                             ((lambda (_L26966_ _L26968_)
                                (if (gx#identifier? _L26968_)
                                    (cons (gx#datum->syntax '#f 'call/esc)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L26968_ '())
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g2698526988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2698626991_)
                               (cons _g2698526988_ _g2698626991_))
                             '()
                             _L26966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_g2688526909_ _g2688626913_)))
                              _body2690326962_
                              _hd2689326930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2689826942_
                                                      _target2689526936_
                                                      '()))
                                                   (_g2688526909_
                                                    _g2688626913_)))))
                                         (_g2688526909_ _g2688626913_))
                                     (_g2688526909_ _g2688626913_))))
                             (_g2688526909_ _g2688626913_))))
                     (_g2688526909_ _g2688626913_)))))
          (_g2688426994_ _$stx26881_)))))
  (define |gerbil/core::<more-sugar>[:0:]#catch|
    (lambda (_$stx26999_)
      (let ((_g2700227009_
             (lambda (_g2700327005_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2700327005_))))
        (_g2700227009_ _$stx26999_))))
  (define |gerbil/core::<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx27013_)
      (let ((_g2701727035_
             (lambda (_g2701827031_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2701827031_))))
        (let ((_g2701627090_
               (lambda (_g2701827039_)
                 (if (gx#stx-pair? _g2701827039_)
                     (let ((_e2702127042_ (gx#syntax-e _g2701827039_)))
                       (let ((_hd2702227046_ (##car _e2702127042_))
                             (_tl2702327049_ (##cdr _e2702127042_)))
                         (if (gx#stx-pair? _tl2702327049_)
                             (let ((_e2702427052_
                                    (gx#syntax-e _tl2702327049_)))
                               (let ((_hd2702527056_ (##car _e2702427052_))
                                     (_tl2702627059_ (##cdr _e2702427052_)))
                                 (if (gx#stx-pair? _tl2702627059_)
                                     (let ((_e2702727062_
                                            (gx#syntax-e _tl2702627059_)))
                                       (let ((_hd2702827066_
                                              (##car _e2702727062_))
                                             (_tl2702927069_
                                              (##cdr _e2702727062_)))
                                         (if (gx#stx-null? _tl2702927069_)
                                             ((lambda (_L27072_ _L27074_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'with-unwind-protect)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '() (cons _L27074_ '())))
                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                (cons '() (cons _L27072_ '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2702827066_
                                              _hd2702527056_)
                                             (_g2701727035_ _g2701827039_))))
                                     (_g2701727035_ _g2701827039_))))
                             (_g2701727035_ _g2701827039_))))
                     (_g2701727035_ _g2701827039_)))))
          (_g2701627090_ _$stx27013_))))))
