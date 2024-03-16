(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710632268)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx95881_)
        (let* ((_e9588295889_ _stx95881_)
               (_E9588495893_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9588295889_)))
               (_E9588395907_
                (lambda ()
                  (if (gx#stx-pair? _e9588295889_)
                      (let ((_e9588595897_ (gx#syntax-e _e9588295889_)))
                        (let ((_hd9588695900_ (##car _e9588595897_))
                              (_tl9588795902_ (##cdr _e9588595897_)))
                          (let ((_form95905_ _hd9588695900_))
                            (if '#t
                                (let* ((__self95910
                                        (gx#syntax-local-e__0 _form95905_))
                                       (__method95911
                                        (method-ref
                                         __self95910
                                         'compile-top-syntax)))
                                  (if __method95911
                                      (__method95911 __self95910 _stx95881_)
                                      (error '"Missing method"
                                             __self95910
                                             'compile-top-syntax)))
                                (_E9588495893_)))))
                      (_E9588495893_)))))
          (_E9588395907_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self95841_ _stx95842_)
        (let* ((_self9584395851_ _self95841_)
               (_E9584595855_
                (lambda () (error '"No clause matching" _self9584395851_)))
               (_K9584695867_
                (lambda (_K95858_)
                  (let ((_$e95860_ (gx#stx-source _stx95842_)))
                    (if _$e95860_
                        ((lambda (_g9586295864_)
                           (gx#stx-wrap-source
                            (_K95858_ _stx95842_)
                            _g9586295864_))
                         _$e95860_)
                        (_K95858_ _stx95842_))))))
          (if (##structure-instance-of? _self9584395851_ 'gx#core-expander::t)
              (let* ((_e9584795870_
                      (##unchecked-structure-ref
                       _self9584395851_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9584895873_
                      (##unchecked-structure-ref
                       _self9584395851_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9584995876_
                      (##unchecked-structure-ref
                       _self9584395851_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K95879_ _e9584995876_))
                (_K9584695867_ _K95879_))
              (_E9584595855_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx95715_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx95715_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95685_)
        (let* ((_e9568695693_ _stx95685_)
               (_E9568895697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9568695693_)))
               (_E9568795711_
                (lambda ()
                  (if (gx#stx-pair? _e9568695693_)
                      (let ((_e9568995701_ (gx#syntax-e _e9568695693_)))
                        (let ((_hd9569095704_ (##car _e9568995701_))
                              (_tl9569195706_ (##cdr _e9568995701_)))
                          (let ((_body95709_ _tl9569195706_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95709_))
                                (_E9568895697_)))))
                      (_E9568895697_)))))
          (_E9568795711_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95654_)
        (let* ((_e9565595662_ _stx95654_)
               (_E9565795666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9565595662_)))
               (_E9565695681_
                (lambda ()
                  (if (gx#stx-pair? _e9565595662_)
                      (let ((_e9565895670_ (gx#syntax-e _e9565595662_)))
                        (let ((_hd9565995673_ (##car _e9565895670_))
                              (_tl9566095675_ (##cdr _e9565895670_)))
                          (let ((_body95678_ _tl9566095675_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95678_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9565795666_)))))
                      (_E9565795666_)))))
          (_E9565695681_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95624_)
        (let* ((_e9562595632_ _stx95624_)
               (_E9562795636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9562595632_)))
               (_E9562695650_
                (lambda ()
                  (if (gx#stx-pair? _e9562595632_)
                      (let ((_e9562895640_ (gx#syntax-e _e9562595632_)))
                        (let ((_hd9562995643_ (##car _e9562895640_))
                              (_tl9563095645_ (##cdr _e9562895640_)))
                          (let ((_body95648_ _tl9563095645_))
                            (if '#t
                                (cons '%#begin-foreign _body95648_)
                                (_E9562795636_)))))
                      (_E9562795636_)))))
          (_E9562695650_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95570_)
        (let* ((_e9557195584_ _stx95570_)
               (_E9557395588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9557195584_)))
               (_E9557295620_
                (lambda ()
                  (if (gx#stx-pair? _e9557195584_)
                      (let ((_e9557495592_ (gx#syntax-e _e9557195584_)))
                        (let ((_hd9557595595_ (##car _e9557495592_))
                              (_tl9557695597_ (##cdr _e9557495592_)))
                          (if (gx#stx-pair? _tl9557695597_)
                              (let ((_e9557795600_
                                     (gx#syntax-e _tl9557695597_)))
                                (let ((_hd9557895603_ (##car _e9557795600_))
                                      (_tl9557995605_ (##cdr _e9557795600_)))
                                  (let ((_ann95608_ _hd9557895603_))
                                    (if (gx#stx-pair? _tl9557995605_)
                                        (let ((_e9558095610_
                                               (gx#syntax-e _tl9557995605_)))
                                          (let ((_hd9558195613_
                                                 (##car _e9558095610_))
                                                (_tl9558295615_
                                                 (##cdr _e9558095610_)))
                                            (let ((_expr95618_ _hd9558195613_))
                                              (if (gx#stx-null? _tl9558295615_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95618_)
                                                      (_E9557395588_))
                                                  (_E9557395588_)))))
                                        (_E9557395588_)))))
                              (_E9557395588_))))
                      (_E9557395588_)))))
          (_E9557295620_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95540_)
        (let* ((_e9554195548_ _stx95540_)
               (_E9554395552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9554195548_)))
               (_E9554295566_
                (lambda ()
                  (if (gx#stx-pair? _e9554195548_)
                      (let ((_e9554495556_ (gx#syntax-e _e9554195548_)))
                        (let ((_hd9554595559_ (##car _e9554495556_))
                              (_tl9554695561_ (##cdr _e9554495556_)))
                          (let ((_body95564_ _tl9554695561_))
                            (if '#t
                                (cons '%#import _body95564_)
                                (_E9554395552_)))))
                      (_E9554395552_)))))
          (_E9554295566_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95497_)
        (let* ((_e9549895508_ _stx95497_)
               (_E9550095512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9549895508_)))
               (_E9549995536_
                (lambda ()
                  (if (gx#stx-pair? _e9549895508_)
                      (let ((_e9550195516_ (gx#syntax-e _e9549895508_)))
                        (let ((_hd9550295519_ (##car _e9550195516_))
                              (_tl9550395521_ (##cdr _e9550195516_)))
                          (if (gx#stx-pair? _tl9550395521_)
                              (let ((_e9550495524_
                                     (gx#syntax-e _tl9550395521_)))
                                (let ((_hd9550595527_ (##car _e9550495524_))
                                      (_tl9550695529_ (##cdr _e9550495524_)))
                                  (let* ((_hd95532_ _hd9550595527_)
                                         (_body95534_ _tl9550695529_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95532_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95534_)))
                                        (_E9550095512_)))))
                              (_E9550095512_))))
                      (_E9550095512_)))))
          (_E9549995536_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95467_)
        (let* ((_e9546895475_ _stx95467_)
               (_E9547095479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9546895475_)))
               (_E9546995493_
                (lambda ()
                  (if (gx#stx-pair? _e9546895475_)
                      (let ((_e9547195483_ (gx#syntax-e _e9546895475_)))
                        (let ((_hd9547295486_ (##car _e9547195483_))
                              (_tl9547395488_ (##cdr _e9547195483_)))
                          (let ((_body95491_ _tl9547395488_))
                            (if '#t
                                (cons '%#export _body95491_)
                                (_E9547095479_)))))
                      (_E9547095479_)))))
          (_E9546995493_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95437_)
        (let* ((_e9543895445_ _stx95437_)
               (_E9544095449_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9543895445_)))
               (_E9543995463_
                (lambda ()
                  (if (gx#stx-pair? _e9543895445_)
                      (let ((_e9544195453_ (gx#syntax-e _e9543895445_)))
                        (let ((_hd9544295456_ (##car _e9544195453_))
                              (_tl9544395458_ (##cdr _e9544195453_)))
                          (let ((_body95461_ _tl9544395458_))
                            (if '#t
                                (cons '%#provide _body95461_)
                                (_E9544095449_)))))
                      (_E9544095449_)))))
          (_E9543995463_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95407_)
        (let* ((_e9540895415_ _stx95407_)
               (_E9541095419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9540895415_)))
               (_E9540995433_
                (lambda ()
                  (if (gx#stx-pair? _e9540895415_)
                      (let ((_e9541195423_ (gx#syntax-e _e9540895415_)))
                        (let ((_hd9541295426_ (##car _e9541195423_))
                              (_tl9541395428_ (##cdr _e9541195423_)))
                          (let ((_body95431_ _tl9541395428_))
                            (if '#t
                                (cons '%#extern _body95431_)
                                (_E9541095419_)))))
                      (_E9541095419_)))))
          (_E9540995433_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95353_)
        (let* ((_e9535495367_ _stx95353_)
               (_E9535695371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9535495367_)))
               (_E9535595403_
                (lambda ()
                  (if (gx#stx-pair? _e9535495367_)
                      (let ((_e9535795375_ (gx#syntax-e _e9535495367_)))
                        (let ((_hd9535895378_ (##car _e9535795375_))
                              (_tl9535995380_ (##cdr _e9535795375_)))
                          (if (gx#stx-pair? _tl9535995380_)
                              (let ((_e9536095383_
                                     (gx#syntax-e _tl9535995380_)))
                                (let ((_hd9536195386_ (##car _e9536095383_))
                                      (_tl9536295388_ (##cdr _e9536095383_)))
                                  (let ((_hd95391_ _hd9536195386_))
                                    (if (gx#stx-pair? _tl9536295388_)
                                        (let ((_e9536395393_
                                               (gx#syntax-e _tl9536295388_)))
                                          (let ((_hd9536495396_
                                                 (##car _e9536395393_))
                                                (_tl9536595398_
                                                 (##cdr _e9536395393_)))
                                            (let ((_expr95401_ _hd9536495396_))
                                              (if (gx#stx-null? _tl9536595398_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95391_)
                          (cons (gx#core-compile-top-syntax _expr95401_) '())))
              (_E9535695371_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9535695371_)))))
                                        (_E9535695371_)))))
                              (_E9535695371_))))
                      (_E9535695371_)))))
          (_E9535595403_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95298_)
        (let* ((_e9529995312_ _stx95298_)
               (_E9530195316_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9529995312_)))
               (_E9530095349_
                (lambda ()
                  (if (gx#stx-pair? _e9529995312_)
                      (let ((_e9530295320_ (gx#syntax-e _e9529995312_)))
                        (let ((_hd9530395323_ (##car _e9530295320_))
                              (_tl9530495325_ (##cdr _e9530295320_)))
                          (if (gx#stx-pair? _tl9530495325_)
                              (let ((_e9530595328_
                                     (gx#syntax-e _tl9530495325_)))
                                (let ((_hd9530695331_ (##car _e9530595328_))
                                      (_tl9530795333_ (##cdr _e9530595328_)))
                                  (let ((_hd95336_ _hd9530695331_))
                                    (if (gx#stx-pair? _tl9530795333_)
                                        (let ((_e9530895338_
                                               (gx#syntax-e _tl9530795333_)))
                                          (let ((_hd9530995341_
                                                 (##car _e9530895338_))
                                                (_tl9531095343_
                                                 (##cdr _e9530895338_)))
                                            (let ((_expr95346_ _hd9530995341_))
                                              (if (gx#stx-null? _tl9531095343_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95346_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9530195316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9530195316_)))))
                                        (_E9530195316_)))))
                              (_E9530195316_))))
                      (_E9530195316_)))))
          (_E9530095349_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95268_)
        (let* ((_e9526995276_ _stx95268_)
               (_E9527195280_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9526995276_)))
               (_E9527095294_
                (lambda ()
                  (if (gx#stx-pair? _e9526995276_)
                      (let ((_e9527295284_ (gx#syntax-e _e9526995276_)))
                        (let ((_hd9527395287_ (##car _e9527295284_))
                              (_tl9527495289_ (##cdr _e9527295284_)))
                          (let ((_body95292_ _tl9527495289_))
                            (if '#t
                                (cons '%#define-alias _body95292_)
                                (_E9527195280_)))))
                      (_E9527195280_)))))
          (_E9527095294_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95238_)
        (let* ((_e9523995246_ _stx95238_)
               (_E9524195250_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9523995246_)))
               (_E9524095264_
                (lambda ()
                  (if (gx#stx-pair? _e9523995246_)
                      (let ((_e9524295254_ (gx#syntax-e _e9523995246_)))
                        (let ((_hd9524395257_ (##car _e9524295254_))
                              (_tl9524495259_ (##cdr _e9524295254_)))
                          (let ((_body95262_ _tl9524495259_))
                            (if '#t
                                (cons '%#define-runtime _body95262_)
                                (_E9524195250_)))))
                      (_E9524195250_)))))
          (_E9524095264_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95208_)
        (let* ((_e9520995216_ _stx95208_)
               (_E9521195220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9520995216_)))
               (_E9521095234_
                (lambda ()
                  (if (gx#stx-pair? _e9520995216_)
                      (let ((_e9521295224_ (gx#syntax-e _e9520995216_)))
                        (let ((_hd9521395227_ (##car _e9521295224_))
                              (_tl9521495229_ (##cdr _e9521295224_)))
                          (let ((_decls95232_ _tl9521495229_))
                            (if '#t
                                (cons '%#declare _decls95232_)
                                (_E9521195220_)))))
                      (_E9521195220_)))))
          (_E9521095234_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95178_)
        (let* ((_e9517995186_ _stx95178_)
               (_E9518195190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9517995186_)))
               (_E9518095204_
                (lambda ()
                  (if (gx#stx-pair? _e9517995186_)
                      (let ((_e9518295194_ (gx#syntax-e _e9517995186_)))
                        (let ((_hd9518395197_ (##car _e9518295194_))
                              (_tl9518495199_ (##cdr _e9518295194_)))
                          (let ((_clause95202_ _tl9518495199_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95202_))
                                (_E9518195190_)))))
                      (_E9518195190_)))))
          (_E9518095204_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95135_)
        (let* ((_e9513695146_ _stx95135_)
               (_E9513895150_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9513695146_)))
               (_E9513795174_
                (lambda ()
                  (if (gx#stx-pair? _e9513695146_)
                      (let ((_e9513995154_ (gx#syntax-e _e9513695146_)))
                        (let ((_hd9514095157_ (##car _e9513995154_))
                              (_tl9514195159_ (##cdr _e9513995154_)))
                          (let ((_hd95162_ _hd9514095157_))
                            (if (gx#stx-pair? _tl9514195159_)
                                (let ((_e9514295164_
                                       (gx#syntax-e _tl9514195159_)))
                                  (let ((_hd9514395167_ (##car _e9514295164_))
                                        (_tl9514495169_ (##cdr _e9514295164_)))
                                    (let ((_body95172_ _hd9514395167_))
                                      (if (gx#stx-null? _tl9514495169_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95162_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95172_)
                                                          '()))
                                              (_E9513895150_))
                                          (_E9513895150_)))))
                                (_E9513895150_)))))
                      (_E9513895150_)))))
          (_E9513795174_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95105_)
        (let* ((_e9510695113_ _stx95105_)
               (_E9510895117_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9510695113_)))
               (_E9510795131_
                (lambda ()
                  (if (gx#stx-pair? _e9510695113_)
                      (let ((_e9510995121_ (gx#syntax-e _e9510695113_)))
                        (let ((_hd9511095124_ (##car _e9510995121_))
                              (_tl9511195126_ (##cdr _e9510995121_)))
                          (let ((_clauses95129_ _tl9511195126_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95129_))
                                (_E9510895117_)))))
                      (_E9510895117_)))))
          (_E9510795131_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95040_ _form95041_)
        (let* ((_e9504295055_ _stx95040_)
               (_E9504495059_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9504295055_)))
               (_E9504395091_
                (lambda ()
                  (if (gx#stx-pair? _e9504295055_)
                      (let ((_e9504595063_ (gx#syntax-e _e9504295055_)))
                        (let ((_hd9504695066_ (##car _e9504595063_))
                              (_tl9504795068_ (##cdr _e9504595063_)))
                          (if (gx#stx-pair? _tl9504795068_)
                              (let ((_e9504895071_
                                     (gx#syntax-e _tl9504795068_)))
                                (let ((_hd9504995074_ (##car _e9504895071_))
                                      (_tl9505095076_ (##cdr _e9504895071_)))
                                  (let ((_hd95079_ _hd9504995074_))
                                    (if (gx#stx-pair? _tl9505095076_)
                                        (let ((_e9505195081_
                                               (gx#syntax-e _tl9505095076_)))
                                          (let ((_hd9505295084_
                                                 (##car _e9505195081_))
                                                (_tl9505395086_
                                                 (##cdr _e9505195081_)))
                                            (let ((_body95089_ _hd9505295084_))
                                              (if (gx#stx-null? _tl9505395086_)
                                                  (if '#t
                                                      (cons _form95041_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95079_)
                          (cons (gx#core-compile-top-syntax _body95089_) '())))
              (_E9504495059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9504495059_)))))
                                        (_E9504495059_)))))
                              (_E9504495059_))))
                      (_E9504495059_)))))
          (_E9504395091_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95098_)
        (let ((_form95100_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95098_ _form95100_))))
    (define gx#core-compile-top-let-values%
      (lambda _g95913_
        (let ((_g95912_ (##length _g95913_)))
          (cond ((##fx= _g95912_ 1)
                 (apply (lambda (_stx95098_)
                          (gx#core-compile-top-let-values%__0 _stx95098_))
                        _g95913_))
                ((##fx= _g95912_ 2)
                 (apply (lambda (_stx95102_ _form95103_)
                          (gx#core-compile-top-let-values%__%
                           _stx95102_
                           _form95103_))
                        _g95913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g95913_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95037_)
        (gx#core-compile-top-let-values%__% _stx95037_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95035_)
        (gx#core-compile-top-let-values%__% _stx95035_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx94994_)
        (let* ((_e9499595005_ _stx94994_)
               (_E9499795009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9499595005_)))
               (_E9499695031_
                (lambda ()
                  (if (gx#stx-pair? _e9499595005_)
                      (let ((_e9499895013_ (gx#syntax-e _e9499595005_)))
                        (let ((_hd9499995016_ (##car _e9499895013_))
                              (_tl9500095018_ (##cdr _e9499895013_)))
                          (if (gx#stx-pair? _tl9500095018_)
                              (let ((_e9500195021_
                                     (gx#syntax-e _tl9500095018_)))
                                (let ((_hd9500295024_ (##car _e9500195021_))
                                      (_tl9500395026_ (##cdr _e9500195021_)))
                                  (let ((_e95029_ _hd9500295024_))
                                    (if (gx#stx-null? _tl9500395026_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95029_)
                                                        '()))
                                            (_E9499795009_))
                                        (_E9499795009_)))))
                              (_E9499795009_))))
                      (_E9499795009_)))))
          (_E9499695031_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx94953_)
        (let* ((_e9495494964_ _stx94953_)
               (_E9495694968_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9495494964_)))
               (_E9495594990_
                (lambda ()
                  (if (gx#stx-pair? _e9495494964_)
                      (let ((_e9495794972_ (gx#syntax-e _e9495494964_)))
                        (let ((_hd9495894975_ (##car _e9495794972_))
                              (_tl9495994977_ (##cdr _e9495794972_)))
                          (if (gx#stx-pair? _tl9495994977_)
                              (let ((_e9496094980_
                                     (gx#syntax-e _tl9495994977_)))
                                (let ((_hd9496194983_ (##car _e9496094980_))
                                      (_tl9496294985_ (##cdr _e9496094980_)))
                                  (let ((_e94988_ _hd9496194983_))
                                    (if (gx#stx-null? _tl9496294985_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e94988_)
                                                        '()))
                                            (_E9495694968_))
                                        (_E9495694968_)))))
                              (_E9495694968_))))
                      (_E9495694968_)))))
          (_E9495594990_))))
    (define gx#core-compile-top-call%
      (lambda (_stx94910_)
        (let* ((_e9491194921_ _stx94910_)
               (_E9491394925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9491194921_)))
               (_E9491294949_
                (lambda ()
                  (if (gx#stx-pair? _e9491194921_)
                      (let ((_e9491494929_ (gx#syntax-e _e9491194921_)))
                        (let ((_hd9491594932_ (##car _e9491494929_))
                              (_tl9491694934_ (##cdr _e9491494929_)))
                          (if (gx#stx-pair? _tl9491694934_)
                              (let ((_e9491794937_
                                     (gx#syntax-e _tl9491694934_)))
                                (let ((_hd9491894940_ (##car _e9491794937_))
                                      (_tl9491994942_ (##cdr _e9491794937_)))
                                  (let* ((_rator94945_ _hd9491894940_)
                                         (_args94947_ _tl9491994942_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator94945_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args94947_)))
                                        (_E9491394925_)))))
                              (_E9491394925_))))
                      (_E9491394925_)))))
          (_E9491294949_))))
    (define gx#core-compile-top-if%
      (lambda (_stx94843_)
        (let* ((_e9484494860_ _stx94843_)
               (_E9484694864_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9484494860_)))
               (_E9484594906_
                (lambda ()
                  (if (gx#stx-pair? _e9484494860_)
                      (let ((_e9484794868_ (gx#syntax-e _e9484494860_)))
                        (let ((_hd9484894871_ (##car _e9484794868_))
                              (_tl9484994873_ (##cdr _e9484794868_)))
                          (if (gx#stx-pair? _tl9484994873_)
                              (let ((_e9485094876_
                                     (gx#syntax-e _tl9484994873_)))
                                (let ((_hd9485194879_ (##car _e9485094876_))
                                      (_tl9485294881_ (##cdr _e9485094876_)))
                                  (let ((_test94884_ _hd9485194879_))
                                    (if (gx#stx-pair? _tl9485294881_)
                                        (let ((_e9485394886_
                                               (gx#syntax-e _tl9485294881_)))
                                          (let ((_hd9485494889_
                                                 (##car _e9485394886_))
                                                (_tl9485594891_
                                                 (##cdr _e9485394886_)))
                                            (let ((_K94894_ _hd9485494889_))
                                              (if (gx#stx-pair? _tl9485594891_)
                                                  (let ((_e9485694896_
                                                         (gx#syntax-e
                                                          _tl9485594891_)))
                                                    (let ((_hd9485794899_
                                                           (##car _e9485694896_))
                                                          (_tl9485894901_
                                                           (##cdr _e9485694896_)))
                                                      (let ((_E94904_
                                                             _hd9485794899_))
                                                        (if (gx#stx-null?
                                                             _tl9485894901_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test94884_)
                                    (cons (gx#core-compile-top-syntax _K94894_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E94904_)
                                                '()))))
                        (_E9484694864_))
                    (_E9484694864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9484694864_)))))
                                        (_E9484694864_)))))
                              (_E9484694864_))))
                      (_E9484694864_)))))
          (_E9484594906_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx94802_)
        (let* ((_e9480394813_ _stx94802_)
               (_E9480594817_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9480394813_)))
               (_E9480494839_
                (lambda ()
                  (if (gx#stx-pair? _e9480394813_)
                      (let ((_e9480694821_ (gx#syntax-e _e9480394813_)))
                        (let ((_hd9480794824_ (##car _e9480694821_))
                              (_tl9480894826_ (##cdr _e9480694821_)))
                          (if (gx#stx-pair? _tl9480894826_)
                              (let ((_e9480994829_
                                     (gx#syntax-e _tl9480894826_)))
                                (let ((_hd9481094832_ (##car _e9480994829_))
                                      (_tl9481194834_ (##cdr _e9480994829_)))
                                  (let ((_id94837_ _hd9481094832_))
                                    (if (gx#stx-null? _tl9481194834_)
                                        (if (gx#identifier? _id94837_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id94837_)
                                                        '()))
                                            (_E9480594817_))
                                        (_E9480594817_)))))
                              (_E9480594817_))))
                      (_E9480594817_)))))
          (_E9480494839_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx94748_)
        (let* ((_e9474994762_ _stx94748_)
               (_E9475194766_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9474994762_)))
               (_E9475094798_
                (lambda ()
                  (if (gx#stx-pair? _e9474994762_)
                      (let ((_e9475294770_ (gx#syntax-e _e9474994762_)))
                        (let ((_hd9475394773_ (##car _e9475294770_))
                              (_tl9475494775_ (##cdr _e9475294770_)))
                          (if (gx#stx-pair? _tl9475494775_)
                              (let ((_e9475594778_
                                     (gx#syntax-e _tl9475494775_)))
                                (let ((_hd9475694781_ (##car _e9475594778_))
                                      (_tl9475794783_ (##cdr _e9475594778_)))
                                  (let ((_id94786_ _hd9475694781_))
                                    (if (gx#stx-pair? _tl9475794783_)
                                        (let ((_e9475894788_
                                               (gx#syntax-e _tl9475794783_)))
                                          (let ((_hd9475994791_
                                                 (##car _e9475894788_))
                                                (_tl9476094793_
                                                 (##cdr _e9475894788_)))
                                            (let ((_expr94796_ _hd9475994791_))
                                              (if (gx#stx-null? _tl9476094793_)
                                                  (if (gx#identifier?
                                                       _id94786_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id94786_)
                          (cons (gx#core-compile-top-syntax _expr94796_) '())))
              (_E9475194766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9475194766_)))))
                                        (_E9475194766_)))))
                              (_E9475194766_))))
                      (_E9475194766_)))))
          (_E9475094798_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id94743_)
        (let ((_$e94745_ (gx#resolve-identifier__0 _id94743_)))
          (if _$e94745_
              (##unchecked-structure-ref _$e94745_ '1 gx#binding::t '#f)
              _id94743_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd94741_)
        (if (gx#identifier? _hd94741_)
            (gx#core-compile-top-runtime-ref _hd94741_)
            '#f)))))
