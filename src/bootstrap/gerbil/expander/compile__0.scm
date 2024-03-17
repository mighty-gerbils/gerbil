(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710699091)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx95809_)
        (let* ((_e9581095817_ _stx95809_)
               (_E9581295821_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9581095817_)))
               (_E9581195835_
                (lambda ()
                  (if (gx#stx-pair? _e9581095817_)
                      (let ((_e9581395825_ (gx#syntax-e _e9581095817_)))
                        (let ((_hd9581495828_ (##car _e9581395825_))
                              (_tl9581595830_ (##cdr _e9581395825_)))
                          (let ((_form95833_ _hd9581495828_))
                            (if '#t
                                (let* ((__self95838
                                        (gx#syntax-local-e__0 _form95833_))
                                       (__method95839
                                        (method-ref
                                         __self95838
                                         'compile-top-syntax)))
                                  (if __method95839
                                      (__method95839 __self95838 _stx95809_)
                                      (error '"Missing method"
                                             __self95838
                                             'compile-top-syntax)))
                                (_E9581295821_)))))
                      (_E9581295821_)))))
          (_E9581195835_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self95769_ _stx95770_)
        (let* ((_self9577195779_ _self95769_)
               (_E9577395783_
                (lambda () (error '"No clause matching" _self9577195779_)))
               (_K9577495795_
                (lambda (_K95786_)
                  (let ((_$e95788_ (gx#stx-source _stx95770_)))
                    (if _$e95788_
                        ((lambda (_g9579095792_)
                           (gx#stx-wrap-source
                            (_K95786_ _stx95770_)
                            _g9579095792_))
                         _$e95788_)
                        (_K95786_ _stx95770_))))))
          (if (##structure-instance-of? _self9577195779_ 'gx#core-expander::t)
              (let* ((_e9577595798_
                      (##unchecked-structure-ref
                       _self9577195779_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9577695801_
                      (##unchecked-structure-ref
                       _self9577195779_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9577795804_
                      (##unchecked-structure-ref
                       _self9577195779_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K95807_ _e9577795804_))
                (_K9577495795_ _K95807_))
              (_E9577395783_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx95643_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx95643_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95613_)
        (let* ((_e9561495621_ _stx95613_)
               (_E9561695625_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9561495621_)))
               (_E9561595639_
                (lambda ()
                  (if (gx#stx-pair? _e9561495621_)
                      (let ((_e9561795629_ (gx#syntax-e _e9561495621_)))
                        (let ((_hd9561895632_ (##car _e9561795629_))
                              (_tl9561995634_ (##cdr _e9561795629_)))
                          (let ((_body95637_ _tl9561995634_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95637_))
                                (_E9561695625_)))))
                      (_E9561695625_)))))
          (_E9561595639_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95582_)
        (let* ((_e9558395590_ _stx95582_)
               (_E9558595594_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9558395590_)))
               (_E9558495609_
                (lambda ()
                  (if (gx#stx-pair? _e9558395590_)
                      (let ((_e9558695598_ (gx#syntax-e _e9558395590_)))
                        (let ((_hd9558795601_ (##car _e9558695598_))
                              (_tl9558895603_ (##cdr _e9558695598_)))
                          (let ((_body95606_ _tl9558895603_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95606_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9558595594_)))))
                      (_E9558595594_)))))
          (_E9558495609_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95552_)
        (let* ((_e9555395560_ _stx95552_)
               (_E9555595564_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9555395560_)))
               (_E9555495578_
                (lambda ()
                  (if (gx#stx-pair? _e9555395560_)
                      (let ((_e9555695568_ (gx#syntax-e _e9555395560_)))
                        (let ((_hd9555795571_ (##car _e9555695568_))
                              (_tl9555895573_ (##cdr _e9555695568_)))
                          (let ((_body95576_ _tl9555895573_))
                            (if '#t
                                (cons '%#begin-foreign _body95576_)
                                (_E9555595564_)))))
                      (_E9555595564_)))))
          (_E9555495578_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95498_)
        (let* ((_e9549995512_ _stx95498_)
               (_E9550195516_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9549995512_)))
               (_E9550095548_
                (lambda ()
                  (if (gx#stx-pair? _e9549995512_)
                      (let ((_e9550295520_ (gx#syntax-e _e9549995512_)))
                        (let ((_hd9550395523_ (##car _e9550295520_))
                              (_tl9550495525_ (##cdr _e9550295520_)))
                          (if (gx#stx-pair? _tl9550495525_)
                              (let ((_e9550595528_
                                     (gx#syntax-e _tl9550495525_)))
                                (let ((_hd9550695531_ (##car _e9550595528_))
                                      (_tl9550795533_ (##cdr _e9550595528_)))
                                  (let ((_ann95536_ _hd9550695531_))
                                    (if (gx#stx-pair? _tl9550795533_)
                                        (let ((_e9550895538_
                                               (gx#syntax-e _tl9550795533_)))
                                          (let ((_hd9550995541_
                                                 (##car _e9550895538_))
                                                (_tl9551095543_
                                                 (##cdr _e9550895538_)))
                                            (let ((_expr95546_ _hd9550995541_))
                                              (if (gx#stx-null? _tl9551095543_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95546_)
                                                      (_E9550195516_))
                                                  (_E9550195516_)))))
                                        (_E9550195516_)))))
                              (_E9550195516_))))
                      (_E9550195516_)))))
          (_E9550095548_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95468_)
        (let* ((_e9546995476_ _stx95468_)
               (_E9547195480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9546995476_)))
               (_E9547095494_
                (lambda ()
                  (if (gx#stx-pair? _e9546995476_)
                      (let ((_e9547295484_ (gx#syntax-e _e9546995476_)))
                        (let ((_hd9547395487_ (##car _e9547295484_))
                              (_tl9547495489_ (##cdr _e9547295484_)))
                          (let ((_body95492_ _tl9547495489_))
                            (if '#t
                                (cons '%#import _body95492_)
                                (_E9547195480_)))))
                      (_E9547195480_)))))
          (_E9547095494_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95425_)
        (let* ((_e9542695436_ _stx95425_)
               (_E9542895440_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9542695436_)))
               (_E9542795464_
                (lambda ()
                  (if (gx#stx-pair? _e9542695436_)
                      (let ((_e9542995444_ (gx#syntax-e _e9542695436_)))
                        (let ((_hd9543095447_ (##car _e9542995444_))
                              (_tl9543195449_ (##cdr _e9542995444_)))
                          (if (gx#stx-pair? _tl9543195449_)
                              (let ((_e9543295452_
                                     (gx#syntax-e _tl9543195449_)))
                                (let ((_hd9543395455_ (##car _e9543295452_))
                                      (_tl9543495457_ (##cdr _e9543295452_)))
                                  (let* ((_hd95460_ _hd9543395455_)
                                         (_body95462_ _tl9543495457_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95460_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95462_)))
                                        (_E9542895440_)))))
                              (_E9542895440_))))
                      (_E9542895440_)))))
          (_E9542795464_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95395_)
        (let* ((_e9539695403_ _stx95395_)
               (_E9539895407_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9539695403_)))
               (_E9539795421_
                (lambda ()
                  (if (gx#stx-pair? _e9539695403_)
                      (let ((_e9539995411_ (gx#syntax-e _e9539695403_)))
                        (let ((_hd9540095414_ (##car _e9539995411_))
                              (_tl9540195416_ (##cdr _e9539995411_)))
                          (let ((_body95419_ _tl9540195416_))
                            (if '#t
                                (cons '%#export _body95419_)
                                (_E9539895407_)))))
                      (_E9539895407_)))))
          (_E9539795421_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95365_)
        (let* ((_e9536695373_ _stx95365_)
               (_E9536895377_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9536695373_)))
               (_E9536795391_
                (lambda ()
                  (if (gx#stx-pair? _e9536695373_)
                      (let ((_e9536995381_ (gx#syntax-e _e9536695373_)))
                        (let ((_hd9537095384_ (##car _e9536995381_))
                              (_tl9537195386_ (##cdr _e9536995381_)))
                          (let ((_body95389_ _tl9537195386_))
                            (if '#t
                                (cons '%#provide _body95389_)
                                (_E9536895377_)))))
                      (_E9536895377_)))))
          (_E9536795391_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95335_)
        (let* ((_e9533695343_ _stx95335_)
               (_E9533895347_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9533695343_)))
               (_E9533795361_
                (lambda ()
                  (if (gx#stx-pair? _e9533695343_)
                      (let ((_e9533995351_ (gx#syntax-e _e9533695343_)))
                        (let ((_hd9534095354_ (##car _e9533995351_))
                              (_tl9534195356_ (##cdr _e9533995351_)))
                          (let ((_body95359_ _tl9534195356_))
                            (if '#t
                                (cons '%#extern _body95359_)
                                (_E9533895347_)))))
                      (_E9533895347_)))))
          (_E9533795361_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95281_)
        (let* ((_e9528295295_ _stx95281_)
               (_E9528495299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9528295295_)))
               (_E9528395331_
                (lambda ()
                  (if (gx#stx-pair? _e9528295295_)
                      (let ((_e9528595303_ (gx#syntax-e _e9528295295_)))
                        (let ((_hd9528695306_ (##car _e9528595303_))
                              (_tl9528795308_ (##cdr _e9528595303_)))
                          (if (gx#stx-pair? _tl9528795308_)
                              (let ((_e9528895311_
                                     (gx#syntax-e _tl9528795308_)))
                                (let ((_hd9528995314_ (##car _e9528895311_))
                                      (_tl9529095316_ (##cdr _e9528895311_)))
                                  (let ((_hd95319_ _hd9528995314_))
                                    (if (gx#stx-pair? _tl9529095316_)
                                        (let ((_e9529195321_
                                               (gx#syntax-e _tl9529095316_)))
                                          (let ((_hd9529295324_
                                                 (##car _e9529195321_))
                                                (_tl9529395326_
                                                 (##cdr _e9529195321_)))
                                            (let ((_expr95329_ _hd9529295324_))
                                              (if (gx#stx-null? _tl9529395326_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95319_)
                          (cons (gx#core-compile-top-syntax _expr95329_) '())))
              (_E9528495299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9528495299_)))))
                                        (_E9528495299_)))))
                              (_E9528495299_))))
                      (_E9528495299_)))))
          (_E9528395331_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95226_)
        (let* ((_e9522795240_ _stx95226_)
               (_E9522995244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9522795240_)))
               (_E9522895277_
                (lambda ()
                  (if (gx#stx-pair? _e9522795240_)
                      (let ((_e9523095248_ (gx#syntax-e _e9522795240_)))
                        (let ((_hd9523195251_ (##car _e9523095248_))
                              (_tl9523295253_ (##cdr _e9523095248_)))
                          (if (gx#stx-pair? _tl9523295253_)
                              (let ((_e9523395256_
                                     (gx#syntax-e _tl9523295253_)))
                                (let ((_hd9523495259_ (##car _e9523395256_))
                                      (_tl9523595261_ (##cdr _e9523395256_)))
                                  (let ((_hd95264_ _hd9523495259_))
                                    (if (gx#stx-pair? _tl9523595261_)
                                        (let ((_e9523695266_
                                               (gx#syntax-e _tl9523595261_)))
                                          (let ((_hd9523795269_
                                                 (##car _e9523695266_))
                                                (_tl9523895271_
                                                 (##cdr _e9523695266_)))
                                            (let ((_expr95274_ _hd9523795269_))
                                              (if (gx#stx-null? _tl9523895271_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95274_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9522995244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9522995244_)))))
                                        (_E9522995244_)))))
                              (_E9522995244_))))
                      (_E9522995244_)))))
          (_E9522895277_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95196_)
        (let* ((_e9519795204_ _stx95196_)
               (_E9519995208_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9519795204_)))
               (_E9519895222_
                (lambda ()
                  (if (gx#stx-pair? _e9519795204_)
                      (let ((_e9520095212_ (gx#syntax-e _e9519795204_)))
                        (let ((_hd9520195215_ (##car _e9520095212_))
                              (_tl9520295217_ (##cdr _e9520095212_)))
                          (let ((_body95220_ _tl9520295217_))
                            (if '#t
                                (cons '%#define-alias _body95220_)
                                (_E9519995208_)))))
                      (_E9519995208_)))))
          (_E9519895222_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95166_)
        (let* ((_e9516795174_ _stx95166_)
               (_E9516995178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9516795174_)))
               (_E9516895192_
                (lambda ()
                  (if (gx#stx-pair? _e9516795174_)
                      (let ((_e9517095182_ (gx#syntax-e _e9516795174_)))
                        (let ((_hd9517195185_ (##car _e9517095182_))
                              (_tl9517295187_ (##cdr _e9517095182_)))
                          (let ((_body95190_ _tl9517295187_))
                            (if '#t
                                (cons '%#define-runtime _body95190_)
                                (_E9516995178_)))))
                      (_E9516995178_)))))
          (_E9516895192_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95136_)
        (let* ((_e9513795144_ _stx95136_)
               (_E9513995148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9513795144_)))
               (_E9513895162_
                (lambda ()
                  (if (gx#stx-pair? _e9513795144_)
                      (let ((_e9514095152_ (gx#syntax-e _e9513795144_)))
                        (let ((_hd9514195155_ (##car _e9514095152_))
                              (_tl9514295157_ (##cdr _e9514095152_)))
                          (let ((_decls95160_ _tl9514295157_))
                            (if '#t
                                (cons '%#declare _decls95160_)
                                (_E9513995148_)))))
                      (_E9513995148_)))))
          (_E9513895162_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95106_)
        (let* ((_e9510795114_ _stx95106_)
               (_E9510995118_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9510795114_)))
               (_E9510895132_
                (lambda ()
                  (if (gx#stx-pair? _e9510795114_)
                      (let ((_e9511095122_ (gx#syntax-e _e9510795114_)))
                        (let ((_hd9511195125_ (##car _e9511095122_))
                              (_tl9511295127_ (##cdr _e9511095122_)))
                          (let ((_clause95130_ _tl9511295127_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95130_))
                                (_E9510995118_)))))
                      (_E9510995118_)))))
          (_E9510895132_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95063_)
        (let* ((_e9506495074_ _stx95063_)
               (_E9506695078_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9506495074_)))
               (_E9506595102_
                (lambda ()
                  (if (gx#stx-pair? _e9506495074_)
                      (let ((_e9506795082_ (gx#syntax-e _e9506495074_)))
                        (let ((_hd9506895085_ (##car _e9506795082_))
                              (_tl9506995087_ (##cdr _e9506795082_)))
                          (let ((_hd95090_ _hd9506895085_))
                            (if (gx#stx-pair? _tl9506995087_)
                                (let ((_e9507095092_
                                       (gx#syntax-e _tl9506995087_)))
                                  (let ((_hd9507195095_ (##car _e9507095092_))
                                        (_tl9507295097_ (##cdr _e9507095092_)))
                                    (let ((_body95100_ _hd9507195095_))
                                      (if (gx#stx-null? _tl9507295097_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95090_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95100_)
                                                          '()))
                                              (_E9506695078_))
                                          (_E9506695078_)))))
                                (_E9506695078_)))))
                      (_E9506695078_)))))
          (_E9506595102_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95033_)
        (let* ((_e9503495041_ _stx95033_)
               (_E9503695045_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9503495041_)))
               (_E9503595059_
                (lambda ()
                  (if (gx#stx-pair? _e9503495041_)
                      (let ((_e9503795049_ (gx#syntax-e _e9503495041_)))
                        (let ((_hd9503895052_ (##car _e9503795049_))
                              (_tl9503995054_ (##cdr _e9503795049_)))
                          (let ((_clauses95057_ _tl9503995054_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95057_))
                                (_E9503695045_)))))
                      (_E9503695045_)))))
          (_E9503595059_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94968_ _form94969_)
        (let* ((_e9497094983_ _stx94968_)
               (_E9497294987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9497094983_)))
               (_E9497195019_
                (lambda ()
                  (if (gx#stx-pair? _e9497094983_)
                      (let ((_e9497394991_ (gx#syntax-e _e9497094983_)))
                        (let ((_hd9497494994_ (##car _e9497394991_))
                              (_tl9497594996_ (##cdr _e9497394991_)))
                          (if (gx#stx-pair? _tl9497594996_)
                              (let ((_e9497694999_
                                     (gx#syntax-e _tl9497594996_)))
                                (let ((_hd9497795002_ (##car _e9497694999_))
                                      (_tl9497895004_ (##cdr _e9497694999_)))
                                  (let ((_hd95007_ _hd9497795002_))
                                    (if (gx#stx-pair? _tl9497895004_)
                                        (let ((_e9497995009_
                                               (gx#syntax-e _tl9497895004_)))
                                          (let ((_hd9498095012_
                                                 (##car _e9497995009_))
                                                (_tl9498195014_
                                                 (##cdr _e9497995009_)))
                                            (let ((_body95017_ _hd9498095012_))
                                              (if (gx#stx-null? _tl9498195014_)
                                                  (if '#t
                                                      (cons _form94969_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95007_)
                          (cons (gx#core-compile-top-syntax _body95017_) '())))
              (_E9497294987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9497294987_)))))
                                        (_E9497294987_)))))
                              (_E9497294987_))))
                      (_E9497294987_)))))
          (_E9497195019_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95026_)
        (let ((_form95028_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95026_ _form95028_))))
    (define gx#core-compile-top-let-values%
      (lambda _g95841_
        (let ((_g95840_ (##length _g95841_)))
          (cond ((##fx= _g95840_ 1)
                 (apply (lambda (_stx95026_)
                          (gx#core-compile-top-let-values%__0 _stx95026_))
                        _g95841_))
                ((##fx= _g95840_ 2)
                 (apply (lambda (_stx95030_ _form95031_)
                          (gx#core-compile-top-let-values%__%
                           _stx95030_
                           _form95031_))
                        _g95841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g95841_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94965_)
        (gx#core-compile-top-let-values%__% _stx94965_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94963_)
        (gx#core-compile-top-let-values%__% _stx94963_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx94922_)
        (let* ((_e9492394933_ _stx94922_)
               (_E9492594937_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9492394933_)))
               (_E9492494959_
                (lambda ()
                  (if (gx#stx-pair? _e9492394933_)
                      (let ((_e9492694941_ (gx#syntax-e _e9492394933_)))
                        (let ((_hd9492794944_ (##car _e9492694941_))
                              (_tl9492894946_ (##cdr _e9492694941_)))
                          (if (gx#stx-pair? _tl9492894946_)
                              (let ((_e9492994949_
                                     (gx#syntax-e _tl9492894946_)))
                                (let ((_hd9493094952_ (##car _e9492994949_))
                                      (_tl9493194954_ (##cdr _e9492994949_)))
                                  (let ((_e94957_ _hd9493094952_))
                                    (if (gx#stx-null? _tl9493194954_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94957_)
                                                        '()))
                                            (_E9492594937_))
                                        (_E9492594937_)))))
                              (_E9492594937_))))
                      (_E9492594937_)))))
          (_E9492494959_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx94881_)
        (let* ((_e9488294892_ _stx94881_)
               (_E9488494896_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9488294892_)))
               (_E9488394918_
                (lambda ()
                  (if (gx#stx-pair? _e9488294892_)
                      (let ((_e9488594900_ (gx#syntax-e _e9488294892_)))
                        (let ((_hd9488694903_ (##car _e9488594900_))
                              (_tl9488794905_ (##cdr _e9488594900_)))
                          (if (gx#stx-pair? _tl9488794905_)
                              (let ((_e9488894908_
                                     (gx#syntax-e _tl9488794905_)))
                                (let ((_hd9488994911_ (##car _e9488894908_))
                                      (_tl9489094913_ (##cdr _e9488894908_)))
                                  (let ((_e94916_ _hd9488994911_))
                                    (if (gx#stx-null? _tl9489094913_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e94916_)
                                                        '()))
                                            (_E9488494896_))
                                        (_E9488494896_)))))
                              (_E9488494896_))))
                      (_E9488494896_)))))
          (_E9488394918_))))
    (define gx#core-compile-top-call%
      (lambda (_stx94838_)
        (let* ((_e9483994849_ _stx94838_)
               (_E9484194853_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9483994849_)))
               (_E9484094877_
                (lambda ()
                  (if (gx#stx-pair? _e9483994849_)
                      (let ((_e9484294857_ (gx#syntax-e _e9483994849_)))
                        (let ((_hd9484394860_ (##car _e9484294857_))
                              (_tl9484494862_ (##cdr _e9484294857_)))
                          (if (gx#stx-pair? _tl9484494862_)
                              (let ((_e9484594865_
                                     (gx#syntax-e _tl9484494862_)))
                                (let ((_hd9484694868_ (##car _e9484594865_))
                                      (_tl9484794870_ (##cdr _e9484594865_)))
                                  (let* ((_rator94873_ _hd9484694868_)
                                         (_args94875_ _tl9484794870_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator94873_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args94875_)))
                                        (_E9484194853_)))))
                              (_E9484194853_))))
                      (_E9484194853_)))))
          (_E9484094877_))))
    (define gx#core-compile-top-if%
      (lambda (_stx94771_)
        (let* ((_e9477294788_ _stx94771_)
               (_E9477494792_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9477294788_)))
               (_E9477394834_
                (lambda ()
                  (if (gx#stx-pair? _e9477294788_)
                      (let ((_e9477594796_ (gx#syntax-e _e9477294788_)))
                        (let ((_hd9477694799_ (##car _e9477594796_))
                              (_tl9477794801_ (##cdr _e9477594796_)))
                          (if (gx#stx-pair? _tl9477794801_)
                              (let ((_e9477894804_
                                     (gx#syntax-e _tl9477794801_)))
                                (let ((_hd9477994807_ (##car _e9477894804_))
                                      (_tl9478094809_ (##cdr _e9477894804_)))
                                  (let ((_test94812_ _hd9477994807_))
                                    (if (gx#stx-pair? _tl9478094809_)
                                        (let ((_e9478194814_
                                               (gx#syntax-e _tl9478094809_)))
                                          (let ((_hd9478294817_
                                                 (##car _e9478194814_))
                                                (_tl9478394819_
                                                 (##cdr _e9478194814_)))
                                            (let ((_K94822_ _hd9478294817_))
                                              (if (gx#stx-pair? _tl9478394819_)
                                                  (let ((_e9478494824_
                                                         (gx#syntax-e
                                                          _tl9478394819_)))
                                                    (let ((_hd9478594827_
                                                           (##car _e9478494824_))
                                                          (_tl9478694829_
                                                           (##cdr _e9478494824_)))
                                                      (let ((_E94832_
                                                             _hd9478594827_))
                                                        (if (gx#stx-null?
                                                             _tl9478694829_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test94812_)
                                    (cons (gx#core-compile-top-syntax _K94822_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E94832_)
                                                '()))))
                        (_E9477494792_))
                    (_E9477494792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9477494792_)))))
                                        (_E9477494792_)))))
                              (_E9477494792_))))
                      (_E9477494792_)))))
          (_E9477394834_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx94730_)
        (let* ((_e9473194741_ _stx94730_)
               (_E9473394745_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9473194741_)))
               (_E9473294767_
                (lambda ()
                  (if (gx#stx-pair? _e9473194741_)
                      (let ((_e9473494749_ (gx#syntax-e _e9473194741_)))
                        (let ((_hd9473594752_ (##car _e9473494749_))
                              (_tl9473694754_ (##cdr _e9473494749_)))
                          (if (gx#stx-pair? _tl9473694754_)
                              (let ((_e9473794757_
                                     (gx#syntax-e _tl9473694754_)))
                                (let ((_hd9473894760_ (##car _e9473794757_))
                                      (_tl9473994762_ (##cdr _e9473794757_)))
                                  (let ((_id94765_ _hd9473894760_))
                                    (if (gx#stx-null? _tl9473994762_)
                                        (if (gx#identifier? _id94765_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id94765_)
                                                        '()))
                                            (_E9473394745_))
                                        (_E9473394745_)))))
                              (_E9473394745_))))
                      (_E9473394745_)))))
          (_E9473294767_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx94676_)
        (let* ((_e9467794690_ _stx94676_)
               (_E9467994694_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9467794690_)))
               (_E9467894726_
                (lambda ()
                  (if (gx#stx-pair? _e9467794690_)
                      (let ((_e9468094698_ (gx#syntax-e _e9467794690_)))
                        (let ((_hd9468194701_ (##car _e9468094698_))
                              (_tl9468294703_ (##cdr _e9468094698_)))
                          (if (gx#stx-pair? _tl9468294703_)
                              (let ((_e9468394706_
                                     (gx#syntax-e _tl9468294703_)))
                                (let ((_hd9468494709_ (##car _e9468394706_))
                                      (_tl9468594711_ (##cdr _e9468394706_)))
                                  (let ((_id94714_ _hd9468494709_))
                                    (if (gx#stx-pair? _tl9468594711_)
                                        (let ((_e9468694716_
                                               (gx#syntax-e _tl9468594711_)))
                                          (let ((_hd9468794719_
                                                 (##car _e9468694716_))
                                                (_tl9468894721_
                                                 (##cdr _e9468694716_)))
                                            (let ((_expr94724_ _hd9468794719_))
                                              (if (gx#stx-null? _tl9468894721_)
                                                  (if (gx#identifier?
                                                       _id94714_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id94714_)
                          (cons (gx#core-compile-top-syntax _expr94724_) '())))
              (_E9467994694_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9467994694_)))))
                                        (_E9467994694_)))))
                              (_E9467994694_))))
                      (_E9467994694_)))))
          (_E9467894726_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id94671_)
        (let ((_$e94673_ (gx#resolve-identifier__0 _id94671_)))
          (if _$e94673_
              (##unchecked-structure-ref _$e94673_ '1 gx#binding::t '#f)
              _id94671_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd94669_)
        (if (gx#identifier? _hd94669_)
            (gx#core-compile-top-runtime-ref _hd94669_)
            '#f)))))
