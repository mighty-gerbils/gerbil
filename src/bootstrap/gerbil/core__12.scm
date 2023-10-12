(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[:0:]#:|
    (lambda (_$stx32719_)
      (let ((_g3272232729_
             (lambda (_g3272332725_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3272332725_))))
        (_g3272232729_ _$stx32719_))))
  (define |gerbil/core$<more-sugar>[:0:]#:~|
    (lambda (_$stx32733_)
      (let ((_g3273632743_
             (lambda (_g3273732739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3273732739_))))
        (_g3273632743_ _$stx32733_))))
  (define |gerbil/core$<more-sugar>[:0:]#:-|
    (lambda (_$stx32747_)
      (let ((_g3275032757_
             (lambda (_g3275132753_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3275132753_))))
        (_g3275032757_ _$stx32747_))))
  (define |gerbil/core$<more-sugar>[:0:]#:=|
    (lambda (_$stx32761_)
      (let ((_g3276432771_
             (lambda (_g3276532767_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3276532767_))))
        (_g3276432771_ _$stx32761_))))
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32786_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32786_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32782_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32782_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32779_)
      (if (gx#identifier? _stx32779_)
          (let ((__tmp43034 (gx#syntax-local-value _stx32779_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             __tmp43034))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32776_)
      (if (gx#identifier? _stx32776_)
          (let ((__tmp43035 (gx#syntax-local-value _stx32776_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             __tmp43035))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32790_)
      (let* ((___stx4231242313_ _stx32790_)
             (_g3279632855_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4231242313_))))
        (let ((___kont4231542316_
               (lambda (_L33128_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L33128_)
                  _stx32790_)))
              (___kont4231742318_
               (lambda (_L33027_ _L33029_ _L33030_)
                 (let* ((_g3305233060_
                         (lambda (_g3305333056_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3305333056_)))
                        (_g3305133087_
                         (lambda (_g3305333064_)
                           ((lambda (_L33067_)
                              (let ()
                                (cons _L33067_
                                      (foldr (lambda (_g3307833081_
                                                      _g3307933084_)
                                               (cons _g3307833081_
                                                     _g3307933084_))
                                             (cons _L33027_ '())
                                             _L33029_))))
                            _g3305333064_))))
                   (_g3305133087_
                    (gx#stx-identifier _L33030_ _L33030_ '"-set!")))))
              (___kont4232142322_
               (lambda (_L32937_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32937_)
                  _stx32790_)))
              (___kont4232342324_
               (lambda (_L32892_ _L32894_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32894_ (cons _L32892_ '()))))))
          (let* ((___match4240342404_
                  (lambda (_e3284332862_
                           _hd3284232866_
                           _tl3284132869_
                           _e3284632872_
                           _hd3284532876_
                           _tl3284432879_
                           _e3284932882_
                           _hd3284832886_
                           _tl3284732889_)
                    (let ((_L32892_ _hd3284832886_) (_L32894_ _hd3284532876_))
                      (if (gx#identifier? _L32894_)
                          (___kont4232342324_ _L32892_ _L32894_)
                          (let () (declare (not safe)) (_g3279632855_))))))
                 (___match4238342384_
                  (lambda (_e3283532917_
                           _hd3283432921_
                           _tl3283332924_
                           _e3283832927_
                           _hd3283732931_
                           _tl3283632934_)
                    (let ((_L32937_ _hd3283732931_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                             _L32937_))
                          (___kont4232142322_ _L32937_)
                          (if (gx#stx-pair? _tl3283632934_)
                              (let ((_e3284932882_
                                     (gx#syntax-e _tl3283632934_)))
                                (let ((_tl3284732889_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3284932882_)))
                                      (_hd3284832886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3284932882_))))
                                  (if (gx#stx-null? _tl3284732889_)
                                      (___match4240342404_
                                       _e3283532917_
                                       _hd3283432921_
                                       _tl3283332924_
                                       _e3283832927_
                                       _hd3283732931_
                                       _tl3283632934_
                                       _e3284932882_
                                       _hd3284832886_
                                       _tl3284732889_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3279632855_)))))
                              (let ()
                                (declare (not safe))
                                (_g3279632855_)))))))
                 (___match4237142372_
                  (lambda (_e3281332957_
                           _hd3281232961_
                           _tl3281132964_
                           _e3281632967_
                           _hd3281532971_
                           _tl3281432974_
                           _e3281932977_
                           _hd3281832981_
                           _tl3281732984_
                           ___splice4231942320_
                           _target3282032987_
                           _tl3282232990_)
                    (letrec ((_loop3282332993_
                              (lambda (_hd3282132997_ _arg3282733000_)
                                (if (gx#stx-pair? _hd3282132997_)
                                    (let ((_e3282433003_
                                           (gx#syntax-e _hd3282132997_)))
                                      (let ((_lp-tl3282633010_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3282433003_)))
                                            (_lp-hd3282533007_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3282433003_))))
                                        (_loop3282332993_
                                         _lp-tl3282633010_
                                         (cons _lp-hd3282533007_
                                               _arg3282733000_))))
                                    (let ((_arg3282833013_
                                           (reverse _arg3282733000_)))
                                      (if (gx#stx-pair? _tl3281432974_)
                                          (let ((_e3283133017_
                                                 (gx#syntax-e _tl3281432974_)))
                                            (let ((_tl3282933024_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3283133017_)))
                                                  (_hd3283033021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3283133017_))))
                                              (if (gx#stx-null? _tl3282933024_)
                                                  (let ((_L33027_
                                                         _hd3283033021_)
                                                        (_L33029_
                                                         _arg3282833013_)
                                                        (_L33030_
                                                         _hd3281832981_))
                                                    (if (gx#identifier?
                                                         _L33030_)
                                                        (___kont4231742318_
                                                         _L33027_
                                                         _L33029_
                                                         _L33030_)
                                                        (___match4238342384_
                                                         _e3281332957_
                                                         _hd3281232961_
                                                         _tl3281132964_
                                                         _e3281632967_
                                                         _hd3281532971_
                                                         _tl3281432974_)))
                                                  (___match4238342384_
                                                   _e3281332957_
                                                   _hd3281232961_
                                                   _tl3281132964_
                                                   _e3281632967_
                                                   _hd3281532971_
                                                   _tl3281432974_))))
                                          (___match4238342384_
                                           _e3281332957_
                                           _hd3281232961_
                                           _tl3281132964_
                                           _e3281632967_
                                           _hd3281532971_
                                           _tl3281432974_)))))))
                      (_loop3282332993_ _target3282032987_ '())))))
            (if (gx#stx-pair? ___stx4231242313_)
                (let ((_e3280133098_ (gx#syntax-e ___stx4231242313_)))
                  (let ((_tl3279933105_
                         (let () (declare (not safe)) (##cdr _e3280133098_)))
                        (_hd3280033102_
                         (let () (declare (not safe)) (##car _e3280133098_))))
                    (if (gx#stx-pair? _tl3279933105_)
                        (let ((_e3280433108_ (gx#syntax-e _tl3279933105_)))
                          (let ((_tl3280233115_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3280433108_)))
                                (_hd3280333112_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3280433108_))))
                            (if (gx#stx-pair? _hd3280333112_)
                                (let ((_e3280733118_
                                       (gx#syntax-e _hd3280333112_)))
                                  (let ((_tl3280533125_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3280733118_)))
                                        (_hd3280633122_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3280733118_))))
                                    (if (let ((__tmp43036
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                           __tmp43036))
                                        (let ((_L33128_ _hd3280633122_))
                                          (___kont4231542316_ _L33128_))
                                        (if (gx#stx-pair/null? _tl3280533125_)
                                            (let ((___splice4231942320_
                                                   (gx#syntax-split-splice
                                                    _tl3280533125_
                                                    '0)))
                                              (let ((_tl3282232990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4231942320_
                                                        '1)))
                                                    (_target3282032987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4231942320_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3282232990_)
                                                    (___match4237142372_
                                                     _e3280133098_
                                                     _hd3280033102_
                                                     _tl3279933105_
                                                     _e3280433108_
                                                     _hd3280333112_
                                                     _tl3280233115_
                                                     _e3280733118_
                                                     _hd3280633122_
                                                     _tl3280533125_
                                                     ___splice4231942320_
                                                     _target3282032987_
                                                     _tl3282232990_)
                                                    (___match4238342384_
                                                     _e3280133098_
                                                     _hd3280033102_
                                                     _tl3279933105_
                                                     _e3280433108_
                                                     _hd3280333112_
                                                     _tl3280233115_))))
                                            (___match4238342384_
                                             _e3280133098_
                                             _hd3280033102_
                                             _tl3279933105_
                                             _e3280433108_
                                             _hd3280333112_
                                             _tl3280233115_)))))
                                (___match4238342384_
                                 _e3280133098_
                                 _hd3280033102_
                                 _tl3279933105_
                                 _e3280433108_
                                 _hd3280333112_
                                 _tl3280233115_))))
                        (let () (declare (not safe)) (_g3279632855_)))))
                (let () (declare (not safe)) (_g3279632855_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx33148_)
      (let* ((_g3315133175_
              (lambda (_g3315233171_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3315233171_)))
             (_g3315033353_
              (lambda (_g3315233179_)
                (if (gx#stx-pair? _g3315233179_)
                    (let ((_e3315733182_ (gx#syntax-e _g3315233179_)))
                      (let ((_hd3315633186_
                             (let ()
                               (declare (not safe))
                               (##car _e3315733182_)))
                            (_tl3315533189_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3315733182_))))
                        (if (gx#stx-pair/null? _tl3315533189_)
                            (if (fx>= (gx#stx-length _tl3315533189_) '1)
                                (let ((_g43037_
                                       (gx#syntax-split-splice
                                        _tl3315533189_
                                        '1)))
                                  (begin
                                    (let ((_g43038_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g43037_)
                                                 (##vector-length _g43037_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g43038_ 2)))
                                          (error "Context expects 2 values"
                                                 _g43038_)))
                                    (let ((_target3315833192_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g43037_ 0)))
                                          (_tl3316033195_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g43037_ 1))))
                                      (if (gx#stx-pair? _tl3316033195_)
                                          (let ((_e3316933198_
                                                 (gx#syntax-e _tl3316033195_)))
                                            (let ((_hd3316833202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3316933198_)))
                                                  (_tl3316733205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3316933198_))))
                                              (if (gx#stx-null? _tl3316733205_)
                                                  (letrec ((_loop3316133208_
                                                            (lambda (_hd3315933212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3316533215_)
                      (if (gx#stx-pair? _hd3315933212_)
                          (let ((_e3316233218_ (gx#syntax-e _hd3315933212_)))
                            (let ((_lp-hd3316333222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3316233218_)))
                                  (_lp-tl3316433225_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3316233218_))))
                              (_loop3316133208_
                               _lp-tl3316433225_
                               (cons _lp-hd3316333222_ _tgt3316533215_))))
                          (let ((_tgt3316633228_ (reverse _tgt3316533215_)))
                            ((lambda (_L33232_ _L33234_)
                               (let* ((_g3325233269_
                                       (lambda (_g3325333265_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3325333265_)))
                                      (_g3325133341_
                                       (lambda (_g3325333273_)
                                         (if (gx#stx-pair/null? _g3325333273_)
                                             (let ((_g43039_
                                                    (gx#syntax-split-splice
                                                     _g3325333273_
                                                     '0)))
                                               (begin
                                                 (let ((_g43040_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g43039_)
                                                              (##vector-length
                                                               _g43039_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g43040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g43040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target3325533276_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g43039_
                                                           0)))
                                                       (_tl3325733279_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g43039_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl3325733279_)
                                                       (letrec ((_loop3325833282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3325633286_ _$e3326233289_)
                           (if (gx#stx-pair? _hd3325633286_)
                               (let ((_e3325933292_
                                      (gx#syntax-e _hd3325633286_)))
                                 (let ((_lp-hd3326033296_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e3325933292_)))
                                       (_lp-tl3326133299_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e3325933292_))))
                                   (_loop3325833282_
                                    _lp-tl3326133299_
                                    (cons _lp-hd3326033296_ _$e3326233289_))))
                               (let ((_$e3326333302_ (reverse _$e3326233289_)))
                                 ((lambda (_L33306_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3332433327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3332533330_)
                               (cons _g3332433327_ _g3332533330_))
                             '()
                             _L33306_)
                      (cons _L33232_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L33306_
                                                     _L33234_)
                                                    (foldr (lambda (_g3332133333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3332233336_
                            _g3332333338_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3332233336_ (cons _g3332133333_ '())))
                           _g3332333338_))
                   '()
                   _L33306_
                   _L33234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3326333302_))))))
                 (_loop3325833282_ _target3325533276_ '()))
               (_g3325233269_ _g3325333273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3325233269_ _g3325333273_)))))
                                 (_g3325133341_
                                  (gx#gentemps
                                   (foldr (lambda (_g3334433347_ _g3334533350_)
                                            (cons _g3334433347_ _g3334533350_))
                                          '()
                                          _L33234_)))))
                             _hd3316833202_
                             _tgt3316633228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3316133208_
                                                     _target3315833192_
                                                     '()))
                                                  (_g3315133175_
                                                   _g3315233179_))))
                                          (_g3315133175_ _g3315233179_)))))
                                (_g3315133175_ _g3315233179_))
                            (_g3315133175_ _g3315233179_))))
                    (_g3315133175_ _g3315233179_)))))
        (_g3315033353_ _stx33148_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33359_)
      (let* ((___stx4240642407_ _stx33359_)
             (_g3336333421_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4240642407_))))
        (let ((___kont4240942410_
               (lambda (_L33755_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3377133774_ _g3377233777_)
                                      (cons _g3377133774_ _g3377233777_))
                                    '()
                                    _L33755_)))))
              (___kont4241342414_
               (lambda (_L33532_ _L33534_ _L33535_)
                 (let* ((_g3355833566_
                         (lambda (_g3355933562_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3355933562_)))
                        (_g3355733686_
                         (lambda (_g3355933570_)
                           ((lambda (_L33573_)
                              (let ()
                                (let* ((_g3358533602_
                                        (lambda (_g3358633598_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3358633598_)))
                                       (_g3358433666_
                                        (lambda (_g3358633606_)
                                          (if (gx#stx-pair/null? _g3358633606_)
                                              (let ((_g43041_
                                                     (gx#syntax-split-splice
                                                      _g3358633606_
                                                      '0)))
                                                (begin
                                                  (let ((_g43042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g43041_)
                                                               (##vector-length
                                                                _g43041_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g43042_ 2)))
                (error "Context expects 2 values" _g43042_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3358833609_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g43041_
                                                            0)))
                                                        (_tl3359033612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g43041_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl3359033612_)
                                                        (letrec ((_loop3359133615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3358933619_ _arg3359533622_)
                            (if (gx#stx-pair? _hd3358933619_)
                                (let ((_e3359233625_
                                       (gx#syntax-e _hd3358933619_)))
                                  (let ((_lp-hd3359333629_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3359233625_)))
                                        (_lp-tl3359433632_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3359233625_))))
                                    (_loop3359133615_
                                     _lp-tl3359433632_
                                     (cons _lp-hd3359333629_
                                           _arg3359533622_))))
                                (let ((_arg3359633635_
                                       (reverse _arg3359533622_)))
                                  ((lambda (_L33639_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33573_
                                                     (foldr (lambda (_g3365733660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3365833663_)
                      (cons _g3365733660_ _g3365833663_))
                    '()
                    _L33639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3359633635_))))))
                  (_loop3359133615_ _target3358833609_ '()))
                (_g3358533602_ _g3358633606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3358533602_ _g3358633606_)))))
                                  (_g3358433666_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3366933672_
                                                           _g3367033675_)
                                                    (cons _g3366933672_
                                                          _g3367033675_))
                                                  '()
                                                  _L33535_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3367733680_
                                                           _g3367833683_)
                                                    (cons _g3367733680_
                                                          _g3367833683_))
                                                  '()
                                                  _L33534_)))))))
                            _g3355933570_))))
                   (_g3355733686_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3368933692_ _g3369033695_)
                                          (cons _g3368933692_ _g3369033695_))
                                        '()
                                        _L33532_)))
                     (gx#stx-source _stx33359_)))))))
          (let* ((___match4246142462_
                  (lambda (_e3338633428_
                           _hd3338533432_
                           _tl3338433435_
                           _e3338933438_
                           _hd3338833442_
                           _tl3338733445_
                           ___splice4241542416_
                           _target3339033448_
                           _tl3339233451_)
                    (letrec ((_loop3339333454_
                              (lambda (_hd3339133458_
                                       _expr3339733461_
                                       _param3339833463_)
                                (if (gx#stx-pair? _hd3339133458_)
                                    (let ((_e3339433466_
                                           (gx#syntax-e _hd3339133458_)))
                                      (let ((_lp-tl3339633473_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3339433466_)))
                                            (_lp-hd3339533470_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3339433466_))))
                                        (if (gx#stx-pair? _lp-hd3339533470_)
                                            (let ((_e3340333476_
                                                   (gx#syntax-e
                                                    _lp-hd3339533470_)))
                                              (let ((_tl3340133483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3340333476_)))
                                                    (_hd3340233480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3340333476_))))
                                                (if (gx#stx-pair?
                                                     _tl3340133483_)
                                                    (let ((_e3340633486_
                                                           (gx#syntax-e
                                                            _tl3340133483_)))
                                                      (let ((_tl3340433493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3340633486_)))
                    (_hd3340533490_
                     (let () (declare (not safe)) (##car _e3340633486_))))
                (if (gx#stx-null? _tl3340433493_)
                    (_loop3339333454_
                     _lp-tl3339633473_
                     (cons _hd3340533490_ _expr3339733461_)
                     (cons _hd3340233480_ _param3339833463_))
                    (let () (declare (not safe)) (_g3336333421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3336333421_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3336333421_)))))
                                    (let ((_param3340033499_
                                           (reverse _param3339833463_))
                                          (_expr3339933496_
                                           (reverse _expr3339733461_)))
                                      (if (gx#stx-pair/null? _tl3338733445_)
                                          (let ((___splice4241742418_
                                                 (gx#syntax-split-splice
                                                  _tl3338733445_
                                                  '0)))
                                            (let ((_tl3340933505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4241742418_
                                                      '1)))
                                                  (_target3340733502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4241742418_
                                                      '0))))
                                              (if (gx#stx-null? _tl3340933505_)
                                                  (letrec ((_loop3341033508_
                                                            (lambda (_hd3340833512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3341433515_)
                      (if (gx#stx-pair? _hd3340833512_)
                          (let ((_e3341133518_ (gx#syntax-e _hd3340833512_)))
                            (let ((_lp-tl3341333525_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3341133518_)))
                                  (_lp-hd3341233522_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3341133518_))))
                              (_loop3341033508_
                               _lp-tl3341333525_
                               (cons _lp-hd3341233522_ _body3341433515_))))
                          (let ((_body3341533528_ (reverse _body3341433515_)))
                            (___kont4241342414_
                             _body3341533528_
                             _expr3339933496_
                             _param3340033499_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3341033508_
                                                     _target3340733502_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3336333421_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3336333421_))))))))
                      (_loop3339333454_ _target3339033448_ '() '()))))
                 (___match4244142442_
                  (lambda (_e3336833705_
                           _hd3336733709_
                           _tl3336633712_
                           _e3337133715_
                           _hd3337033719_
                           _tl3336933722_
                           ___splice4241142412_
                           _target3337233725_
                           _tl3337433728_)
                    (letrec ((_loop3337533731_
                              (lambda (_hd3337333735_ _body3337933738_)
                                (if (gx#stx-pair? _hd3337333735_)
                                    (let ((_e3337633741_
                                           (gx#syntax-e _hd3337333735_)))
                                      (let ((_lp-tl3337833748_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3337633741_)))
                                            (_lp-hd3337733745_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3337633741_))))
                                        (_loop3337533731_
                                         _lp-tl3337833748_
                                         (cons _lp-hd3337733745_
                                               _body3337933738_))))
                                    (let ((_body3338033751_
                                           (reverse _body3337933738_)))
                                      (___kont4240942410_
                                       _body3338033751_))))))
                      (_loop3337533731_ _target3337233725_ '())))))
            (if (gx#stx-pair? ___stx4240642407_)
                (let ((_e3336833705_ (gx#syntax-e ___stx4240642407_)))
                  (let ((_tl3336633712_
                         (let () (declare (not safe)) (##cdr _e3336833705_)))
                        (_hd3336733709_
                         (let () (declare (not safe)) (##car _e3336833705_))))
                    (if (gx#stx-pair? _tl3336633712_)
                        (let ((_e3337133715_ (gx#syntax-e _tl3336633712_)))
                          (let ((_tl3336933722_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3337133715_)))
                                (_hd3337033719_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3337133715_))))
                            (if (gx#stx-null? _hd3337033719_)
                                (if (gx#stx-pair/null? _tl3336933722_)
                                    (let ((___splice4241142412_
                                           (gx#syntax-split-splice
                                            _tl3336933722_
                                            '0)))
                                      (let ((_tl3337433728_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4241142412_
                                                '1)))
                                            (_target3337233725_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4241142412_
                                                '0))))
                                        (if (gx#stx-null? _tl3337433728_)
                                            (___match4244142442_
                                             _e3336833705_
                                             _hd3336733709_
                                             _tl3336633712_
                                             _e3337133715_
                                             _hd3337033719_
                                             _tl3336933722_
                                             ___splice4241142412_
                                             _target3337233725_
                                             _tl3337433728_)
                                            (if (gx#stx-pair/null?
                                                 _hd3337033719_)
                                                (let ((___splice4241542416_
                                                       (gx#syntax-split-splice
                                                        _hd3337033719_
                                                        '0)))
                                                  (let ((_tl3339233451_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4241542416_
                                                            '1)))
                                                        (_target3339033448_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4241542416_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl3339233451_)
                                                        (___match4246142462_
                                                         _e3336833705_
                                                         _hd3336733709_
                                                         _tl3336633712_
                                                         _e3337133715_
                                                         _hd3337033719_
                                                         _tl3336933722_
                                                         ___splice4241542416_
                                                         _target3339033448_
                                                         _tl3339233451_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3336333421_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3336333421_))))))
                                    (if (gx#stx-pair/null? _hd3337033719_)
                                        (let ((___splice4241542416_
                                               (gx#syntax-split-splice
                                                _hd3337033719_
                                                '0)))
                                          (let ((_tl3339233451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4241542416_
                                                    '1)))
                                                (_target3339033448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4241542416_
                                                    '0))))
                                            (if (gx#stx-null? _tl3339233451_)
                                                (___match4246142462_
                                                 _e3336833705_
                                                 _hd3336733709_
                                                 _tl3336633712_
                                                 _e3337133715_
                                                 _hd3337033719_
                                                 _tl3336933722_
                                                 ___splice4241542416_
                                                 _target3339033448_
                                                 _tl3339233451_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3336333421_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3336333421_))))
                                (if (gx#stx-pair/null? _hd3337033719_)
                                    (let ((___splice4241542416_
                                           (gx#syntax-split-splice
                                            _hd3337033719_
                                            '0)))
                                      (let ((_tl3339233451_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4241542416_
                                                '1)))
                                            (_target3339033448_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4241542416_
                                                '0))))
                                        (if (gx#stx-null? _tl3339233451_)
                                            (___match4246142462_
                                             _e3336833705_
                                             _hd3336733709_
                                             _tl3336633712_
                                             _e3337133715_
                                             _hd3337033719_
                                             _tl3336933722_
                                             ___splice4241542416_
                                             _target3339033448_
                                             _tl3339233451_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3336333421_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3336333421_))))))
                        (let () (declare (not safe)) (_g3336333421_)))))
                (let () (declare (not safe)) (_g3336333421_))))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33788_)
      (let* ((_g3379233816_
              (lambda (_g3379333812_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3379333812_)))
             (_g3379133901_
              (lambda (_g3379333820_)
                (if (gx#stx-pair? _g3379333820_)
                    (let ((_e3379833823_ (gx#syntax-e _g3379333820_)))
                      (let ((_hd3379733827_
                             (let ()
                               (declare (not safe))
                               (##car _e3379833823_)))
                            (_tl3379633830_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3379833823_))))
                        (if (gx#stx-pair? _tl3379633830_)
                            (let ((_e3380133833_ (gx#syntax-e _tl3379633830_)))
                              (let ((_hd3380033837_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3380133833_)))
                                    (_tl3379933840_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3380133833_))))
                                (if (gx#stx-pair/null? _tl3379933840_)
                                    (let ((_g43043_
                                           (gx#syntax-split-splice
                                            _tl3379933840_
                                            '0)))
                                      (begin
                                        (let ((_g43044_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g43043_)
                                                     (##vector-length _g43043_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g43044_ 2)))
                                              (error "Context expects 2 values"
                                                     _g43044_)))
                                        (let ((_target3380233843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43043_ 0)))
                                              (_tl3380433846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43043_ 1))))
                                          (if (gx#stx-null? _tl3380433846_)
                                              (letrec ((_loop3380533849_
                                                        (lambda (_hd3380333853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3380933856_)
                  (if (gx#stx-pair? _hd3380333853_)
                      (let ((_e3380633859_ (gx#syntax-e _hd3380333853_)))
                        (let ((_lp-hd3380733863_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3380633859_)))
                              (_lp-tl3380833866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3380633859_))))
                          (_loop3380533849_
                           _lp-tl3380833866_
                           (cons _lp-hd3380733863_ _body3380933856_))))
                      (let ((_body3381033869_ (reverse _body3380933856_)))
                        ((lambda (_L33873_ _L33875_)
                           (if (gx#identifier? _L33875_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33875_ '())
                                                       (foldr (lambda (_g3389233895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3389333898_)
                        (cons _g3389233895_ _g3389333898_))
                      '()
                      _L33873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3379233816_ _g3379333820_)))
                         _body3381033869_
                         _hd3380033837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3380533849_
                                                 _target3380233843_
                                                 '()))
                                              (_g3379233816_ _g3379333820_)))))
                                    (_g3379233816_ _g3379333820_))))
                            (_g3379233816_ _g3379333820_))))
                    (_g3379233816_ _g3379333820_)))))
        (_g3379133901_ _$stx33788_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33906_)
      (let* ((_g3391033934_
              (lambda (_g3391133930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3391133930_)))
             (_g3390934019_
              (lambda (_g3391133938_)
                (if (gx#stx-pair? _g3391133938_)
                    (let ((_e3391633941_ (gx#syntax-e _g3391133938_)))
                      (let ((_hd3391533945_
                             (let ()
                               (declare (not safe))
                               (##car _e3391633941_)))
                            (_tl3391433948_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3391633941_))))
                        (if (gx#stx-pair? _tl3391433948_)
                            (let ((_e3391933951_ (gx#syntax-e _tl3391433948_)))
                              (let ((_hd3391833955_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3391933951_)))
                                    (_tl3391733958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3391933951_))))
                                (if (gx#stx-pair/null? _tl3391733958_)
                                    (let ((_g43045_
                                           (gx#syntax-split-splice
                                            _tl3391733958_
                                            '0)))
                                      (begin
                                        (let ((_g43046_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g43045_)
                                                     (##vector-length _g43045_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g43046_ 2)))
                                              (error "Context expects 2 values"
                                                     _g43046_)))
                                        (let ((_target3392033961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43045_ 0)))
                                              (_tl3392233964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g43045_ 1))))
                                          (if (gx#stx-null? _tl3392233964_)
                                              (letrec ((_loop3392333967_
                                                        (lambda (_hd3392133971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3392733974_)
                  (if (gx#stx-pair? _hd3392133971_)
                      (let ((_e3392433977_ (gx#syntax-e _hd3392133971_)))
                        (let ((_lp-hd3392533981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3392433977_)))
                              (_lp-tl3392633984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3392433977_))))
                          (_loop3392333967_
                           _lp-tl3392633984_
                           (cons _lp-hd3392533981_ _body3392733974_))))
                      (let ((_body3392833987_ (reverse _body3392733974_)))
                        ((lambda (_L33991_ _L33993_)
                           (if (gx#identifier? _L33993_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33993_ '())
                                                       (foldr (lambda (_g3401034013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3401134016_)
                        (cons _g3401034013_ _g3401134016_))
                      '()
                      _L33991_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3391033934_ _g3391133938_)))
                         _body3392833987_
                         _hd3391833955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3392333967_
                                                 _target3392033961_
                                                 '()))
                                              (_g3391033934_ _g3391133938_)))))
                                    (_g3391033934_ _g3391133938_))))
                            (_g3391033934_ _g3391133938_))))
                    (_g3391033934_ _g3391133938_)))))
        (_g3390934019_ _$stx33906_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx34024_)
      (let* ((_g3402834056_
              (lambda (_g3402934052_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3402934052_)))
             (_g3402734155_
              (lambda (_g3402934060_)
                (if (gx#stx-pair? _g3402934060_)
                    (let ((_e3403534063_ (gx#syntax-e _g3402934060_)))
                      (let ((_hd3403434067_
                             (let ()
                               (declare (not safe))
                               (##car _e3403534063_)))
                            (_tl3403334070_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3403534063_))))
                        (if (gx#stx-pair? _tl3403334070_)
                            (let ((_e3403834073_ (gx#syntax-e _tl3403334070_)))
                              (let ((_hd3403734077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3403834073_)))
                                    (_tl3403634080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3403834073_))))
                                (if (gx#stx-pair? _tl3403634080_)
                                    (let ((_e3404134083_
                                           (gx#syntax-e _tl3403634080_)))
                                      (let ((_hd3404034087_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3404134083_)))
                                            (_tl3403934090_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3404134083_))))
                                        (if (gx#stx-pair/null? _tl3403934090_)
                                            (let ((_g43047_
                                                   (gx#syntax-split-splice
                                                    _tl3403934090_
                                                    '0)))
                                              (begin
                                                (let ((_g43048_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g43047_)
                                                             (##vector-length
                                                              _g43047_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g43048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g43048_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target3404234093_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g43047_
                                                          0)))
                                                      (_tl3404434096_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g43047_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl3404434096_)
                                                      (letrec ((_loop3404534099_
                                                                (lambda (_hd3404334103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3404934106_)
                          (if (gx#stx-pair? _hd3404334103_)
                              (let ((_e3404634109_
                                     (gx#syntax-e _hd3404334103_)))
                                (let ((_lp-hd3404734113_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3404634109_)))
                                      (_lp-tl3404834116_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3404634109_))))
                                  (_loop3404534099_
                                   _lp-tl3404834116_
                                   (cons _lp-hd3404734113_ _rest3404934106_))))
                              (let ((_rest3405034119_
                                     (reverse _rest3404934106_)))
                                ((lambda (_L34123_ _L34125_ _L34126_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L34126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L34125_
                               (foldr (lambda (_g3414634149_ _g3414734152_)
                                        (cons _g3414634149_ _g3414734152_))
                                      '()
                                      _L34123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3405034119_
                                 _hd3404034087_
                                 _hd3403734077_))))))
                (_loop3404534099_ _target3404234093_ '()))
              (_g3402834056_ _g3402934060_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3402834056_ _g3402934060_))))
                                    (_g3402834056_ _g3402934060_))))
                            (_g3402834056_ _g3402934060_))))
                    (_g3402834056_ _g3402934060_)))))
        (_g3402734155_ _$stx34024_))))
  (define |gerbil/core$<more-sugar>[:0:]#@bytes|
    (lambda (_stx34160_)
      (let* ((_g3416334177_
              (lambda (_g3416434173_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3416434173_)))
             (_g3416234249_
              (lambda (_g3416434181_)
                (if (gx#stx-pair? _g3416434181_)
                    (let ((_e3416834184_ (gx#syntax-e _g3416434181_)))
                      (let ((_hd3416734188_
                             (let ()
                               (declare (not safe))
                               (##car _e3416834184_)))
                            (_tl3416634191_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3416834184_))))
                        (if (gx#stx-pair? _tl3416634191_)
                            (let ((_e3417134194_ (gx#syntax-e _tl3416634191_)))
                              (let ((_hd3417034198_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3417134194_)))
                                    (_tl3416934201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3417134194_))))
                                (if (gx#stx-null? _tl3416934201_)
                                    ((lambda (_L34204_)
                                       (if (gx#stx-string? _L34204_)
                                           (let* ((_g3421834226_
                                                   (lambda (_g3421934222_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g3421934222_)))
                                                  (_g3421734245_
                                                   (lambda (_g3421934230_)
                                                     ((lambda (_L34233_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L34233_ '()))))
              _g3421934230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3421734245_
                                              (string->bytes
                                               (gx#stx-e _L34204_))))
                                           (_g3416334177_ _g3416434181_)))
                                     _hd3417034198_)
                                    (_g3416334177_ _g3416434181_))))
                            (_g3416334177_ _g3416434181_))))
                    (_g3416334177_ _g3416434181_)))))
        (_g3416234249_ _stx34160_)))))
