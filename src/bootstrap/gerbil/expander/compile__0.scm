(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1695377612)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx18603_)
        (let* ((_e1860418611_ _stx18603_)
               (_E1860618615_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1860418611_)))
               (_E1860518629_
                (lambda ()
                  (if (gx#stx-pair? _e1860418611_)
                      (let ((_e1860718619_ (gx#syntax-e _e1860418611_)))
                        (let ((_hd1860818622_ (##car _e1860718619_))
                              (_tl1860918624_ (##cdr _e1860718619_)))
                          (let ((_form18627_ _hd1860818622_))
                            (if '#t
                                (let* ((__self18632
                                        (gx#syntax-local-e__0 _form18627_))
                                       (__method18633
                                        (method-ref
                                         __self18632
                                         'compile-top-syntax)))
                                  (if __method18633
                                      (__method18633 __self18632 _stx18603_)
                                      (error '"Missing method"
                                             __self18632
                                             'compile-top-syntax)))
                                (_E1860618615_)))))
                      (_E1860618615_)))))
          (_E1860518629_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self18563_ _stx18564_)
        (let* ((_self1856518573_ _self18563_)
               (_E1856718577_
                (lambda () (error '"No clause matching" _self1856518573_)))
               (_K1856818589_
                (lambda (_K18580_)
                  (let ((_$e18582_ (gx#stx-source _stx18564_)))
                    (if _$e18582_
                        ((lambda (_g1858418586_)
                           (gx#stx-wrap-source
                            (_K18580_ _stx18564_)
                            _g1858418586_))
                         _$e18582_)
                        (_K18580_ _stx18564_))))))
          (if (##structure-instance-of? _self1856518573_ 'gx#core-expander::t)
              (let* ((_e1856918592_ (##vector-ref _self1856518573_ '1))
                     (_e1857018595_ (##vector-ref _self1856518573_ '2))
                     (_e1857118598_ (##vector-ref _self1856518573_ '3))
                     (_K18601_ _e1857118598_))
                (_K1856818589_ _K18601_))
              (_E1856718577_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx18437_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx18437_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx18407_)
        (let* ((_e1840818415_ _stx18407_)
               (_E1841018419_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1840818415_)))
               (_E1840918433_
                (lambda ()
                  (if (gx#stx-pair? _e1840818415_)
                      (let ((_e1841118423_ (gx#syntax-e _e1840818415_)))
                        (let ((_hd1841218426_ (##car _e1841118423_))
                              (_tl1841318428_ (##cdr _e1841118423_)))
                          (let ((_body18431_ _tl1841318428_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body18431_))
                                (_E1841018419_)))))
                      (_E1841018419_)))))
          (_E1840918433_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx18376_)
        (let* ((_e1837718384_ _stx18376_)
               (_E1837918388_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1837718384_)))
               (_E1837818403_
                (lambda ()
                  (if (gx#stx-pair? _e1837718384_)
                      (let ((_e1838018392_ (gx#syntax-e _e1837718384_)))
                        (let ((_hd1838118395_ (##car _e1838018392_))
                              (_tl1838218397_ (##cdr _e1838018392_)))
                          (let ((_body18400_ _tl1838218397_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body18400_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E1837918388_)))))
                      (_E1837918388_)))))
          (_E1837818403_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx18346_)
        (let* ((_e1834718354_ _stx18346_)
               (_E1834918358_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1834718354_)))
               (_E1834818372_
                (lambda ()
                  (if (gx#stx-pair? _e1834718354_)
                      (let ((_e1835018362_ (gx#syntax-e _e1834718354_)))
                        (let ((_hd1835118365_ (##car _e1835018362_))
                              (_tl1835218367_ (##cdr _e1835018362_)))
                          (let ((_body18370_ _tl1835218367_))
                            (if '#t
                                (cons '%#begin-foreign _body18370_)
                                (_E1834918358_)))))
                      (_E1834918358_)))))
          (_E1834818372_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx18292_)
        (let* ((_e1829318306_ _stx18292_)
               (_E1829518310_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1829318306_)))
               (_E1829418342_
                (lambda ()
                  (if (gx#stx-pair? _e1829318306_)
                      (let ((_e1829618314_ (gx#syntax-e _e1829318306_)))
                        (let ((_hd1829718317_ (##car _e1829618314_))
                              (_tl1829818319_ (##cdr _e1829618314_)))
                          (if (gx#stx-pair? _tl1829818319_)
                              (let ((_e1829918322_
                                     (gx#syntax-e _tl1829818319_)))
                                (let ((_hd1830018325_ (##car _e1829918322_))
                                      (_tl1830118327_ (##cdr _e1829918322_)))
                                  (let ((_ann18330_ _hd1830018325_))
                                    (if (gx#stx-pair? _tl1830118327_)
                                        (let ((_e1830218332_
                                               (gx#syntax-e _tl1830118327_)))
                                          (let ((_hd1830318335_
                                                 (##car _e1830218332_))
                                                (_tl1830418337_
                                                 (##cdr _e1830218332_)))
                                            (let ((_expr18340_ _hd1830318335_))
                                              (if (gx#stx-null? _tl1830418337_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr18340_)
                                                      (_E1829518310_))
                                                  (_E1829518310_)))))
                                        (_E1829518310_)))))
                              (_E1829518310_))))
                      (_E1829518310_)))))
          (_E1829418342_))))
    (define gx#core-compile-top-import%
      (lambda (_stx18262_)
        (let* ((_e1826318270_ _stx18262_)
               (_E1826518274_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1826318270_)))
               (_E1826418288_
                (lambda ()
                  (if (gx#stx-pair? _e1826318270_)
                      (let ((_e1826618278_ (gx#syntax-e _e1826318270_)))
                        (let ((_hd1826718281_ (##car _e1826618278_))
                              (_tl1826818283_ (##cdr _e1826618278_)))
                          (let ((_body18286_ _tl1826818283_))
                            (if '#t
                                (cons '%#import _body18286_)
                                (_E1826518274_)))))
                      (_E1826518274_)))))
          (_E1826418288_))))
    (define gx#core-compile-top-module%
      (lambda (_stx18219_)
        (let* ((_e1822018230_ _stx18219_)
               (_E1822218234_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1822018230_)))
               (_E1822118258_
                (lambda ()
                  (if (gx#stx-pair? _e1822018230_)
                      (let ((_e1822318238_ (gx#syntax-e _e1822018230_)))
                        (let ((_hd1822418241_ (##car _e1822318238_))
                              (_tl1822518243_ (##cdr _e1822318238_)))
                          (if (gx#stx-pair? _tl1822518243_)
                              (let ((_e1822618246_
                                     (gx#syntax-e _tl1822518243_)))
                                (let ((_hd1822718249_ (##car _e1822618246_))
                                      (_tl1822818251_ (##cdr _e1822618246_)))
                                  (let* ((_hd18254_ _hd1822718249_)
                                         (_body18256_ _tl1822818251_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd18254_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body18256_)))
                                        (_E1822218234_)))))
                              (_E1822218234_))))
                      (_E1822218234_)))))
          (_E1822118258_))))
    (define gx#core-compile-top-export%
      (lambda (_stx18189_)
        (let* ((_e1819018197_ _stx18189_)
               (_E1819218201_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1819018197_)))
               (_E1819118215_
                (lambda ()
                  (if (gx#stx-pair? _e1819018197_)
                      (let ((_e1819318205_ (gx#syntax-e _e1819018197_)))
                        (let ((_hd1819418208_ (##car _e1819318205_))
                              (_tl1819518210_ (##cdr _e1819318205_)))
                          (let ((_body18213_ _tl1819518210_))
                            (if '#t
                                (cons '%#export _body18213_)
                                (_E1819218201_)))))
                      (_E1819218201_)))))
          (_E1819118215_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx18159_)
        (let* ((_e1816018167_ _stx18159_)
               (_E1816218171_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1816018167_)))
               (_E1816118185_
                (lambda ()
                  (if (gx#stx-pair? _e1816018167_)
                      (let ((_e1816318175_ (gx#syntax-e _e1816018167_)))
                        (let ((_hd1816418178_ (##car _e1816318175_))
                              (_tl1816518180_ (##cdr _e1816318175_)))
                          (let ((_body18183_ _tl1816518180_))
                            (if '#t
                                (cons '%#provide _body18183_)
                                (_E1816218171_)))))
                      (_E1816218171_)))))
          (_E1816118185_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx18129_)
        (let* ((_e1813018137_ _stx18129_)
               (_E1813218141_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1813018137_)))
               (_E1813118155_
                (lambda ()
                  (if (gx#stx-pair? _e1813018137_)
                      (let ((_e1813318145_ (gx#syntax-e _e1813018137_)))
                        (let ((_hd1813418148_ (##car _e1813318145_))
                              (_tl1813518150_ (##cdr _e1813318145_)))
                          (let ((_body18153_ _tl1813518150_))
                            (if '#t
                                (cons '%#extern _body18153_)
                                (_E1813218141_)))))
                      (_E1813218141_)))))
          (_E1813118155_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx18075_)
        (let* ((_e1807618089_ _stx18075_)
               (_E1807818093_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1807618089_)))
               (_E1807718125_
                (lambda ()
                  (if (gx#stx-pair? _e1807618089_)
                      (let ((_e1807918097_ (gx#syntax-e _e1807618089_)))
                        (let ((_hd1808018100_ (##car _e1807918097_))
                              (_tl1808118102_ (##cdr _e1807918097_)))
                          (if (gx#stx-pair? _tl1808118102_)
                              (let ((_e1808218105_
                                     (gx#syntax-e _tl1808118102_)))
                                (let ((_hd1808318108_ (##car _e1808218105_))
                                      (_tl1808418110_ (##cdr _e1808218105_)))
                                  (let ((_hd18113_ _hd1808318108_))
                                    (if (gx#stx-pair? _tl1808418110_)
                                        (let ((_e1808518115_
                                               (gx#syntax-e _tl1808418110_)))
                                          (let ((_hd1808618118_
                                                 (##car _e1808518115_))
                                                (_tl1808718120_
                                                 (##cdr _e1808518115_)))
                                            (let ((_expr18123_ _hd1808618118_))
                                              (if (gx#stx-null? _tl1808718120_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd18113_)
                          (cons (gx#core-compile-top-syntax _expr18123_) '())))
              (_E1807818093_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1807818093_)))))
                                        (_E1807818093_)))))
                              (_E1807818093_))))
                      (_E1807818093_)))))
          (_E1807718125_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx18020_)
        (let* ((_e1802118034_ _stx18020_)
               (_E1802318038_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1802118034_)))
               (_E1802218071_
                (lambda ()
                  (if (gx#stx-pair? _e1802118034_)
                      (let ((_e1802418042_ (gx#syntax-e _e1802118034_)))
                        (let ((_hd1802518045_ (##car _e1802418042_))
                              (_tl1802618047_ (##cdr _e1802418042_)))
                          (if (gx#stx-pair? _tl1802618047_)
                              (let ((_e1802718050_
                                     (gx#syntax-e _tl1802618047_)))
                                (let ((_hd1802818053_ (##car _e1802718050_))
                                      (_tl1802918055_ (##cdr _e1802718050_)))
                                  (let ((_hd18058_ _hd1802818053_))
                                    (if (gx#stx-pair? _tl1802918055_)
                                        (let ((_e1803018060_
                                               (gx#syntax-e _tl1802918055_)))
                                          (let ((_hd1803118063_
                                                 (##car _e1803018060_))
                                                (_tl1803218065_
                                                 (##cdr _e1803018060_)))
                                            (let ((_expr18068_ _hd1803118063_))
                                              (if (gx#stx-null? _tl1803218065_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd18058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr18068_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E1802318038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1802318038_)))))
                                        (_E1802318038_)))))
                              (_E1802318038_))))
                      (_E1802318038_)))))
          (_E1802218071_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx17990_)
        (let* ((_e1799117998_ _stx17990_)
               (_E1799318002_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1799117998_)))
               (_E1799218016_
                (lambda ()
                  (if (gx#stx-pair? _e1799117998_)
                      (let ((_e1799418006_ (gx#syntax-e _e1799117998_)))
                        (let ((_hd1799518009_ (##car _e1799418006_))
                              (_tl1799618011_ (##cdr _e1799418006_)))
                          (let ((_body18014_ _tl1799618011_))
                            (if '#t
                                (cons '%#define-alias _body18014_)
                                (_E1799318002_)))))
                      (_E1799318002_)))))
          (_E1799218016_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx17960_)
        (let* ((_e1796117968_ _stx17960_)
               (_E1796317972_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1796117968_)))
               (_E1796217986_
                (lambda ()
                  (if (gx#stx-pair? _e1796117968_)
                      (let ((_e1796417976_ (gx#syntax-e _e1796117968_)))
                        (let ((_hd1796517979_ (##car _e1796417976_))
                              (_tl1796617981_ (##cdr _e1796417976_)))
                          (let ((_body17984_ _tl1796617981_))
                            (if '#t
                                (cons '%#define-runtime _body17984_)
                                (_E1796317972_)))))
                      (_E1796317972_)))))
          (_E1796217986_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx17930_)
        (let* ((_e1793117938_ _stx17930_)
               (_E1793317942_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1793117938_)))
               (_E1793217956_
                (lambda ()
                  (if (gx#stx-pair? _e1793117938_)
                      (let ((_e1793417946_ (gx#syntax-e _e1793117938_)))
                        (let ((_hd1793517949_ (##car _e1793417946_))
                              (_tl1793617951_ (##cdr _e1793417946_)))
                          (let ((_decls17954_ _tl1793617951_))
                            (if '#t
                                (cons '%#declare _decls17954_)
                                (_E1793317942_)))))
                      (_E1793317942_)))))
          (_E1793217956_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx17900_)
        (let* ((_e1790117908_ _stx17900_)
               (_E1790317912_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1790117908_)))
               (_E1790217926_
                (lambda ()
                  (if (gx#stx-pair? _e1790117908_)
                      (let ((_e1790417916_ (gx#syntax-e _e1790117908_)))
                        (let ((_hd1790517919_ (##car _e1790417916_))
                              (_tl1790617921_ (##cdr _e1790417916_)))
                          (let ((_clause17924_ _tl1790617921_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause17924_))
                                (_E1790317912_)))))
                      (_E1790317912_)))))
          (_E1790217926_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx17857_)
        (let* ((_e1785817868_ _stx17857_)
               (_E1786017872_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1785817868_)))
               (_E1785917896_
                (lambda ()
                  (if (gx#stx-pair? _e1785817868_)
                      (let ((_e1786117876_ (gx#syntax-e _e1785817868_)))
                        (let ((_hd1786217879_ (##car _e1786117876_))
                              (_tl1786317881_ (##cdr _e1786117876_)))
                          (let ((_hd17884_ _hd1786217879_))
                            (if (gx#stx-pair? _tl1786317881_)
                                (let ((_e1786417886_
                                       (gx#syntax-e _tl1786317881_)))
                                  (let ((_hd1786517889_ (##car _e1786417886_))
                                        (_tl1786617891_ (##cdr _e1786417886_)))
                                    (let ((_body17894_ _hd1786517889_))
                                      (if (gx#stx-null? _tl1786617891_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd17884_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body17894_)
                                                          '()))
                                              (_E1786017872_))
                                          (_E1786017872_)))))
                                (_E1786017872_)))))
                      (_E1786017872_)))))
          (_E1785917896_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx17827_)
        (let* ((_e1782817835_ _stx17827_)
               (_E1783017839_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1782817835_)))
               (_E1782917853_
                (lambda ()
                  (if (gx#stx-pair? _e1782817835_)
                      (let ((_e1783117843_ (gx#syntax-e _e1782817835_)))
                        (let ((_hd1783217846_ (##car _e1783117843_))
                              (_tl1783317848_ (##cdr _e1783117843_)))
                          (let ((_clauses17851_ _tl1783317848_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses17851_))
                                (_E1783017839_)))))
                      (_E1783017839_)))))
          (_E1782917853_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx17762_ _form17763_)
        (let* ((_e1776417777_ _stx17762_)
               (_E1776617781_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1776417777_)))
               (_E1776517813_
                (lambda ()
                  (if (gx#stx-pair? _e1776417777_)
                      (let ((_e1776717785_ (gx#syntax-e _e1776417777_)))
                        (let ((_hd1776817788_ (##car _e1776717785_))
                              (_tl1776917790_ (##cdr _e1776717785_)))
                          (if (gx#stx-pair? _tl1776917790_)
                              (let ((_e1777017793_
                                     (gx#syntax-e _tl1776917790_)))
                                (let ((_hd1777117796_ (##car _e1777017793_))
                                      (_tl1777217798_ (##cdr _e1777017793_)))
                                  (let ((_hd17801_ _hd1777117796_))
                                    (if (gx#stx-pair? _tl1777217798_)
                                        (let ((_e1777317803_
                                               (gx#syntax-e _tl1777217798_)))
                                          (let ((_hd1777417806_
                                                 (##car _e1777317803_))
                                                (_tl1777517808_
                                                 (##cdr _e1777317803_)))
                                            (let ((_body17811_ _hd1777417806_))
                                              (if (gx#stx-null? _tl1777517808_)
                                                  (if '#t
                                                      (cons _form17763_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd17801_)
                          (cons (gx#core-compile-top-syntax _body17811_) '())))
              (_E1776617781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1776617781_)))))
                                        (_E1776617781_)))))
                              (_E1776617781_))))
                      (_E1776617781_)))))
          (_E1776517813_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx17820_)
        (let ((_form17822_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx17820_ _form17822_))))
    (define gx#core-compile-top-let-values%
      (lambda _g18635_
        (let ((_g18634_ (##length _g18635_)))
          (cond ((##fx= _g18634_ 1)
                 (apply (lambda (_stx17820_)
                          (gx#core-compile-top-let-values%__0 _stx17820_))
                        _g18635_))
                ((##fx= _g18634_ 2)
                 (apply (lambda (_stx17824_ _form17825_)
                          (gx#core-compile-top-let-values%__%
                           _stx17824_
                           _form17825_))
                        _g18635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g18635_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx17759_)
        (gx#core-compile-top-let-values%__% _stx17759_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx17757_)
        (gx#core-compile-top-let-values%__% _stx17757_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx17716_)
        (let* ((_e1771717727_ _stx17716_)
               (_E1771917731_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1771717727_)))
               (_E1771817753_
                (lambda ()
                  (if (gx#stx-pair? _e1771717727_)
                      (let ((_e1772017735_ (gx#syntax-e _e1771717727_)))
                        (let ((_hd1772117738_ (##car _e1772017735_))
                              (_tl1772217740_ (##cdr _e1772017735_)))
                          (if (gx#stx-pair? _tl1772217740_)
                              (let ((_e1772317743_
                                     (gx#syntax-e _tl1772217740_)))
                                (let ((_hd1772417746_ (##car _e1772317743_))
                                      (_tl1772517748_ (##cdr _e1772317743_)))
                                  (let ((_e17751_ _hd1772417746_))
                                    (if (gx#stx-null? _tl1772517748_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e17751_)
                                                        '()))
                                            (_E1771917731_))
                                        (_E1771917731_)))))
                              (_E1771917731_))))
                      (_E1771917731_)))))
          (_E1771817753_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx17675_)
        (let* ((_e1767617686_ _stx17675_)
               (_E1767817690_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1767617686_)))
               (_E1767717712_
                (lambda ()
                  (if (gx#stx-pair? _e1767617686_)
                      (let ((_e1767917694_ (gx#syntax-e _e1767617686_)))
                        (let ((_hd1768017697_ (##car _e1767917694_))
                              (_tl1768117699_ (##cdr _e1767917694_)))
                          (if (gx#stx-pair? _tl1768117699_)
                              (let ((_e1768217702_
                                     (gx#syntax-e _tl1768117699_)))
                                (let ((_hd1768317705_ (##car _e1768217702_))
                                      (_tl1768417707_ (##cdr _e1768217702_)))
                                  (let ((_e17710_ _hd1768317705_))
                                    (if (gx#stx-null? _tl1768417707_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e17710_)
                                                        '()))
                                            (_E1767817690_))
                                        (_E1767817690_)))))
                              (_E1767817690_))))
                      (_E1767817690_)))))
          (_E1767717712_))))
    (define gx#core-compile-top-call%
      (lambda (_stx17632_)
        (let* ((_e1763317643_ _stx17632_)
               (_E1763517647_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1763317643_)))
               (_E1763417671_
                (lambda ()
                  (if (gx#stx-pair? _e1763317643_)
                      (let ((_e1763617651_ (gx#syntax-e _e1763317643_)))
                        (let ((_hd1763717654_ (##car _e1763617651_))
                              (_tl1763817656_ (##cdr _e1763617651_)))
                          (if (gx#stx-pair? _tl1763817656_)
                              (let ((_e1763917659_
                                     (gx#syntax-e _tl1763817656_)))
                                (let ((_hd1764017662_ (##car _e1763917659_))
                                      (_tl1764117664_ (##cdr _e1763917659_)))
                                  (let* ((_rator17667_ _hd1764017662_)
                                         (_args17669_ _tl1764117664_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator17667_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args17669_)))
                                        (_E1763517647_)))))
                              (_E1763517647_))))
                      (_E1763517647_)))))
          (_E1763417671_))))
    (define gx#core-compile-top-if%
      (lambda (_stx17565_)
        (let* ((_e1756617582_ _stx17565_)
               (_E1756817586_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1756617582_)))
               (_E1756717628_
                (lambda ()
                  (if (gx#stx-pair? _e1756617582_)
                      (let ((_e1756917590_ (gx#syntax-e _e1756617582_)))
                        (let ((_hd1757017593_ (##car _e1756917590_))
                              (_tl1757117595_ (##cdr _e1756917590_)))
                          (if (gx#stx-pair? _tl1757117595_)
                              (let ((_e1757217598_
                                     (gx#syntax-e _tl1757117595_)))
                                (let ((_hd1757317601_ (##car _e1757217598_))
                                      (_tl1757417603_ (##cdr _e1757217598_)))
                                  (let ((_test17606_ _hd1757317601_))
                                    (if (gx#stx-pair? _tl1757417603_)
                                        (let ((_e1757517608_
                                               (gx#syntax-e _tl1757417603_)))
                                          (let ((_hd1757617611_
                                                 (##car _e1757517608_))
                                                (_tl1757717613_
                                                 (##cdr _e1757517608_)))
                                            (let ((_K17616_ _hd1757617611_))
                                              (if (gx#stx-pair? _tl1757717613_)
                                                  (let ((_e1757817618_
                                                         (gx#syntax-e
                                                          _tl1757717613_)))
                                                    (let ((_hd1757917621_
                                                           (##car _e1757817618_))
                                                          (_tl1758017623_
                                                           (##cdr _e1757817618_)))
                                                      (let ((_E17626_
                                                             _hd1757917621_))
                                                        (if (gx#stx-null?
                                                             _tl1758017623_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test17606_)
                                    (cons (gx#core-compile-top-syntax _K17616_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E17626_)
                                                '()))))
                        (_E1756817586_))
                    (_E1756817586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1756817586_)))))
                                        (_E1756817586_)))))
                              (_E1756817586_))))
                      (_E1756817586_)))))
          (_E1756717628_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx17524_)
        (let* ((_e1752517535_ _stx17524_)
               (_E1752717539_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1752517535_)))
               (_E1752617561_
                (lambda ()
                  (if (gx#stx-pair? _e1752517535_)
                      (let ((_e1752817543_ (gx#syntax-e _e1752517535_)))
                        (let ((_hd1752917546_ (##car _e1752817543_))
                              (_tl1753017548_ (##cdr _e1752817543_)))
                          (if (gx#stx-pair? _tl1753017548_)
                              (let ((_e1753117551_
                                     (gx#syntax-e _tl1753017548_)))
                                (let ((_hd1753217554_ (##car _e1753117551_))
                                      (_tl1753317556_ (##cdr _e1753117551_)))
                                  (let ((_id17559_ _hd1753217554_))
                                    (if (gx#stx-null? _tl1753317556_)
                                        (if (gx#identifier? _id17559_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id17559_)
                                                        '()))
                                            (_E1752717539_))
                                        (_E1752717539_)))))
                              (_E1752717539_))))
                      (_E1752717539_)))))
          (_E1752617561_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx17470_)
        (let* ((_e1747117484_ _stx17470_)
               (_E1747317488_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1747117484_)))
               (_E1747217520_
                (lambda ()
                  (if (gx#stx-pair? _e1747117484_)
                      (let ((_e1747417492_ (gx#syntax-e _e1747117484_)))
                        (let ((_hd1747517495_ (##car _e1747417492_))
                              (_tl1747617497_ (##cdr _e1747417492_)))
                          (if (gx#stx-pair? _tl1747617497_)
                              (let ((_e1747717500_
                                     (gx#syntax-e _tl1747617497_)))
                                (let ((_hd1747817503_ (##car _e1747717500_))
                                      (_tl1747917505_ (##cdr _e1747717500_)))
                                  (let ((_id17508_ _hd1747817503_))
                                    (if (gx#stx-pair? _tl1747917505_)
                                        (let ((_e1748017510_
                                               (gx#syntax-e _tl1747917505_)))
                                          (let ((_hd1748117513_
                                                 (##car _e1748017510_))
                                                (_tl1748217515_
                                                 (##cdr _e1748017510_)))
                                            (let ((_expr17518_ _hd1748117513_))
                                              (if (gx#stx-null? _tl1748217515_)
                                                  (if (gx#identifier?
                                                       _id17508_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id17508_)
                          (cons (gx#core-compile-top-syntax _expr17518_) '())))
              (_E1747317488_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1747317488_)))))
                                        (_E1747317488_)))))
                              (_E1747317488_))))
                      (_E1747317488_)))))
          (_E1747217520_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id17465_)
        (let ((_$e17467_ (gx#resolve-identifier__0 _id17465_)))
          (if _$e17467_
              (##unchecked-structure-ref _$e17467_ '1 gx#binding::t '#f)
              _id17465_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd17463_)
        (if (gx#identifier? _hd17463_)
            (gx#core-compile-top-runtime-ref _hd17463_)
            '#f)))))
