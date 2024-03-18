(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710715075)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx95799_)
        (let* ((_e9580095807_ _stx95799_)
               (_E9580295811_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9580095807_)))
               (_E9580195825_
                (lambda ()
                  (if (gx#stx-pair? _e9580095807_)
                      (let ((_e9580395815_ (gx#syntax-e _e9580095807_)))
                        (let ((_hd9580495818_ (##car _e9580395815_))
                              (_tl9580595820_ (##cdr _e9580395815_)))
                          (let ((_form95823_ _hd9580495818_))
                            (if '#t
                                (let* ((__self95828
                                        (gx#syntax-local-e__0 _form95823_))
                                       (__method95829
                                        (method-ref
                                         __self95828
                                         'compile-top-syntax)))
                                  (if __method95829
                                      (__method95829 __self95828 _stx95799_)
                                      (error '"Missing method"
                                             __self95828
                                             'compile-top-syntax)))
                                (_E9580295811_)))))
                      (_E9580295811_)))))
          (_E9580195825_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self95759_ _stx95760_)
        (let* ((_self9576195769_ _self95759_)
               (_E9576395773_
                (lambda () (error '"No clause matching" _self9576195769_)))
               (_K9576495785_
                (lambda (_K95776_)
                  (let ((_$e95778_ (gx#stx-source _stx95760_)))
                    (if _$e95778_
                        ((lambda (_g9578095782_)
                           (gx#stx-wrap-source
                            (_K95776_ _stx95760_)
                            _g9578095782_))
                         _$e95778_)
                        (_K95776_ _stx95760_))))))
          (if (##structure-instance-of? _self9576195769_ 'gx#core-expander::t)
              (let* ((_e9576595788_
                      (##unchecked-structure-ref
                       _self9576195769_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9576695791_
                      (##unchecked-structure-ref
                       _self9576195769_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9576795794_
                      (##unchecked-structure-ref
                       _self9576195769_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K95797_ _e9576795794_))
                (_K9576495785_ _K95797_))
              (_E9576395773_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx95633_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx95633_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95603_)
        (let* ((_e9560495611_ _stx95603_)
               (_E9560695615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9560495611_)))
               (_E9560595629_
                (lambda ()
                  (if (gx#stx-pair? _e9560495611_)
                      (let ((_e9560795619_ (gx#syntax-e _e9560495611_)))
                        (let ((_hd9560895622_ (##car _e9560795619_))
                              (_tl9560995624_ (##cdr _e9560795619_)))
                          (let ((_body95627_ _tl9560995624_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body95627_))
                                (_E9560695615_)))))
                      (_E9560695615_)))))
          (_E9560595629_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95572_)
        (let* ((_e9557395580_ _stx95572_)
               (_E9557595584_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9557395580_)))
               (_E9557495599_
                (lambda ()
                  (if (gx#stx-pair? _e9557395580_)
                      (let ((_e9557695588_ (gx#syntax-e _e9557395580_)))
                        (let ((_hd9557795591_ (##car _e9557695588_))
                              (_tl9557895593_ (##cdr _e9557695588_)))
                          (let ((_body95596_ _tl9557895593_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95596_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9557595584_)))))
                      (_E9557595584_)))))
          (_E9557495599_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95542_)
        (let* ((_e9554395550_ _stx95542_)
               (_E9554595554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9554395550_)))
               (_E9554495568_
                (lambda ()
                  (if (gx#stx-pair? _e9554395550_)
                      (let ((_e9554695558_ (gx#syntax-e _e9554395550_)))
                        (let ((_hd9554795561_ (##car _e9554695558_))
                              (_tl9554895563_ (##cdr _e9554695558_)))
                          (let ((_body95566_ _tl9554895563_))
                            (if '#t
                                (cons '%#begin-foreign _body95566_)
                                (_E9554595554_)))))
                      (_E9554595554_)))))
          (_E9554495568_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95488_)
        (let* ((_e9548995502_ _stx95488_)
               (_E9549195506_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9548995502_)))
               (_E9549095538_
                (lambda ()
                  (if (gx#stx-pair? _e9548995502_)
                      (let ((_e9549295510_ (gx#syntax-e _e9548995502_)))
                        (let ((_hd9549395513_ (##car _e9549295510_))
                              (_tl9549495515_ (##cdr _e9549295510_)))
                          (if (gx#stx-pair? _tl9549495515_)
                              (let ((_e9549595518_
                                     (gx#syntax-e _tl9549495515_)))
                                (let ((_hd9549695521_ (##car _e9549595518_))
                                      (_tl9549795523_ (##cdr _e9549595518_)))
                                  (let ((_ann95526_ _hd9549695521_))
                                    (if (gx#stx-pair? _tl9549795523_)
                                        (let ((_e9549895528_
                                               (gx#syntax-e _tl9549795523_)))
                                          (let ((_hd9549995531_
                                                 (##car _e9549895528_))
                                                (_tl9550095533_
                                                 (##cdr _e9549895528_)))
                                            (let ((_expr95536_ _hd9549995531_))
                                              (if (gx#stx-null? _tl9550095533_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95536_)
                                                      (_E9549195506_))
                                                  (_E9549195506_)))))
                                        (_E9549195506_)))))
                              (_E9549195506_))))
                      (_E9549195506_)))))
          (_E9549095538_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95458_)
        (let* ((_e9545995466_ _stx95458_)
               (_E9546195470_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9545995466_)))
               (_E9546095484_
                (lambda ()
                  (if (gx#stx-pair? _e9545995466_)
                      (let ((_e9546295474_ (gx#syntax-e _e9545995466_)))
                        (let ((_hd9546395477_ (##car _e9546295474_))
                              (_tl9546495479_ (##cdr _e9546295474_)))
                          (let ((_body95482_ _tl9546495479_))
                            (if '#t
                                (cons '%#import _body95482_)
                                (_E9546195470_)))))
                      (_E9546195470_)))))
          (_E9546095484_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95415_)
        (let* ((_e9541695426_ _stx95415_)
               (_E9541895430_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9541695426_)))
               (_E9541795454_
                (lambda ()
                  (if (gx#stx-pair? _e9541695426_)
                      (let ((_e9541995434_ (gx#syntax-e _e9541695426_)))
                        (let ((_hd9542095437_ (##car _e9541995434_))
                              (_tl9542195439_ (##cdr _e9541995434_)))
                          (if (gx#stx-pair? _tl9542195439_)
                              (let ((_e9542295442_
                                     (gx#syntax-e _tl9542195439_)))
                                (let ((_hd9542395445_ (##car _e9542295442_))
                                      (_tl9542495447_ (##cdr _e9542295442_)))
                                  (let* ((_hd95450_ _hd9542395445_)
                                         (_body95452_ _tl9542495447_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95450_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95452_)))
                                        (_E9541895430_)))))
                              (_E9541895430_))))
                      (_E9541895430_)))))
          (_E9541795454_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95385_)
        (let* ((_e9538695393_ _stx95385_)
               (_E9538895397_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9538695393_)))
               (_E9538795411_
                (lambda ()
                  (if (gx#stx-pair? _e9538695393_)
                      (let ((_e9538995401_ (gx#syntax-e _e9538695393_)))
                        (let ((_hd9539095404_ (##car _e9538995401_))
                              (_tl9539195406_ (##cdr _e9538995401_)))
                          (let ((_body95409_ _tl9539195406_))
                            (if '#t
                                (cons '%#export _body95409_)
                                (_E9538895397_)))))
                      (_E9538895397_)))))
          (_E9538795411_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95355_)
        (let* ((_e9535695363_ _stx95355_)
               (_E9535895367_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9535695363_)))
               (_E9535795381_
                (lambda ()
                  (if (gx#stx-pair? _e9535695363_)
                      (let ((_e9535995371_ (gx#syntax-e _e9535695363_)))
                        (let ((_hd9536095374_ (##car _e9535995371_))
                              (_tl9536195376_ (##cdr _e9535995371_)))
                          (let ((_body95379_ _tl9536195376_))
                            (if '#t
                                (cons '%#provide _body95379_)
                                (_E9535895367_)))))
                      (_E9535895367_)))))
          (_E9535795381_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95325_)
        (let* ((_e9532695333_ _stx95325_)
               (_E9532895337_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9532695333_)))
               (_E9532795351_
                (lambda ()
                  (if (gx#stx-pair? _e9532695333_)
                      (let ((_e9532995341_ (gx#syntax-e _e9532695333_)))
                        (let ((_hd9533095344_ (##car _e9532995341_))
                              (_tl9533195346_ (##cdr _e9532995341_)))
                          (let ((_body95349_ _tl9533195346_))
                            (if '#t
                                (cons '%#extern _body95349_)
                                (_E9532895337_)))))
                      (_E9532895337_)))))
          (_E9532795351_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95271_)
        (let* ((_e9527295285_ _stx95271_)
               (_E9527495289_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9527295285_)))
               (_E9527395321_
                (lambda ()
                  (if (gx#stx-pair? _e9527295285_)
                      (let ((_e9527595293_ (gx#syntax-e _e9527295285_)))
                        (let ((_hd9527695296_ (##car _e9527595293_))
                              (_tl9527795298_ (##cdr _e9527595293_)))
                          (if (gx#stx-pair? _tl9527795298_)
                              (let ((_e9527895301_
                                     (gx#syntax-e _tl9527795298_)))
                                (let ((_hd9527995304_ (##car _e9527895301_))
                                      (_tl9528095306_ (##cdr _e9527895301_)))
                                  (let ((_hd95309_ _hd9527995304_))
                                    (if (gx#stx-pair? _tl9528095306_)
                                        (let ((_e9528195311_
                                               (gx#syntax-e _tl9528095306_)))
                                          (let ((_hd9528295314_
                                                 (##car _e9528195311_))
                                                (_tl9528395316_
                                                 (##cdr _e9528195311_)))
                                            (let ((_expr95319_ _hd9528295314_))
                                              (if (gx#stx-null? _tl9528395316_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95309_)
                          (cons (gx#core-compile-top-syntax _expr95319_) '())))
              (_E9527495289_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9527495289_)))))
                                        (_E9527495289_)))))
                              (_E9527495289_))))
                      (_E9527495289_)))))
          (_E9527395321_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95216_)
        (let* ((_e9521795230_ _stx95216_)
               (_E9521995234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9521795230_)))
               (_E9521895267_
                (lambda ()
                  (if (gx#stx-pair? _e9521795230_)
                      (let ((_e9522095238_ (gx#syntax-e _e9521795230_)))
                        (let ((_hd9522195241_ (##car _e9522095238_))
                              (_tl9522295243_ (##cdr _e9522095238_)))
                          (if (gx#stx-pair? _tl9522295243_)
                              (let ((_e9522395246_
                                     (gx#syntax-e _tl9522295243_)))
                                (let ((_hd9522495249_ (##car _e9522395246_))
                                      (_tl9522595251_ (##cdr _e9522395246_)))
                                  (let ((_hd95254_ _hd9522495249_))
                                    (if (gx#stx-pair? _tl9522595251_)
                                        (let ((_e9522695256_
                                               (gx#syntax-e _tl9522595251_)))
                                          (let ((_hd9522795259_
                                                 (##car _e9522695256_))
                                                (_tl9522895261_
                                                 (##cdr _e9522695256_)))
                                            (let ((_expr95264_ _hd9522795259_))
                                              (if (gx#stx-null? _tl9522895261_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95264_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9521995234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9521995234_)))))
                                        (_E9521995234_)))))
                              (_E9521995234_))))
                      (_E9521995234_)))))
          (_E9521895267_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95186_)
        (let* ((_e9518795194_ _stx95186_)
               (_E9518995198_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9518795194_)))
               (_E9518895212_
                (lambda ()
                  (if (gx#stx-pair? _e9518795194_)
                      (let ((_e9519095202_ (gx#syntax-e _e9518795194_)))
                        (let ((_hd9519195205_ (##car _e9519095202_))
                              (_tl9519295207_ (##cdr _e9519095202_)))
                          (let ((_body95210_ _tl9519295207_))
                            (if '#t
                                (cons '%#define-alias _body95210_)
                                (_E9518995198_)))))
                      (_E9518995198_)))))
          (_E9518895212_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95156_)
        (let* ((_e9515795164_ _stx95156_)
               (_E9515995168_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9515795164_)))
               (_E9515895182_
                (lambda ()
                  (if (gx#stx-pair? _e9515795164_)
                      (let ((_e9516095172_ (gx#syntax-e _e9515795164_)))
                        (let ((_hd9516195175_ (##car _e9516095172_))
                              (_tl9516295177_ (##cdr _e9516095172_)))
                          (let ((_body95180_ _tl9516295177_))
                            (if '#t
                                (cons '%#define-runtime _body95180_)
                                (_E9515995168_)))))
                      (_E9515995168_)))))
          (_E9515895182_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95126_)
        (let* ((_e9512795134_ _stx95126_)
               (_E9512995138_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9512795134_)))
               (_E9512895152_
                (lambda ()
                  (if (gx#stx-pair? _e9512795134_)
                      (let ((_e9513095142_ (gx#syntax-e _e9512795134_)))
                        (let ((_hd9513195145_ (##car _e9513095142_))
                              (_tl9513295147_ (##cdr _e9513095142_)))
                          (let ((_decls95150_ _tl9513295147_))
                            (if '#t
                                (cons '%#declare _decls95150_)
                                (_E9512995138_)))))
                      (_E9512995138_)))))
          (_E9512895152_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95096_)
        (let* ((_e9509795104_ _stx95096_)
               (_E9509995108_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9509795104_)))
               (_E9509895122_
                (lambda ()
                  (if (gx#stx-pair? _e9509795104_)
                      (let ((_e9510095112_ (gx#syntax-e _e9509795104_)))
                        (let ((_hd9510195115_ (##car _e9510095112_))
                              (_tl9510295117_ (##cdr _e9510095112_)))
                          (let ((_clause95120_ _tl9510295117_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95120_))
                                (_E9509995108_)))))
                      (_E9509995108_)))))
          (_E9509895122_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95053_)
        (let* ((_e9505495064_ _stx95053_)
               (_E9505695068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9505495064_)))
               (_E9505595092_
                (lambda ()
                  (if (gx#stx-pair? _e9505495064_)
                      (let ((_e9505795072_ (gx#syntax-e _e9505495064_)))
                        (let ((_hd9505895075_ (##car _e9505795072_))
                              (_tl9505995077_ (##cdr _e9505795072_)))
                          (let ((_hd95080_ _hd9505895075_))
                            (if (gx#stx-pair? _tl9505995077_)
                                (let ((_e9506095082_
                                       (gx#syntax-e _tl9505995077_)))
                                  (let ((_hd9506195085_ (##car _e9506095082_))
                                        (_tl9506295087_ (##cdr _e9506095082_)))
                                    (let ((_body95090_ _hd9506195085_))
                                      (if (gx#stx-null? _tl9506295087_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95080_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95090_)
                                                          '()))
                                              (_E9505695068_))
                                          (_E9505695068_)))))
                                (_E9505695068_)))))
                      (_E9505695068_)))))
          (_E9505595092_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95023_)
        (let* ((_e9502495031_ _stx95023_)
               (_E9502695035_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9502495031_)))
               (_E9502595049_
                (lambda ()
                  (if (gx#stx-pair? _e9502495031_)
                      (let ((_e9502795039_ (gx#syntax-e _e9502495031_)))
                        (let ((_hd9502895042_ (##car _e9502795039_))
                              (_tl9502995044_ (##cdr _e9502795039_)))
                          (let ((_clauses95047_ _tl9502995044_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95047_))
                                (_E9502695035_)))))
                      (_E9502695035_)))))
          (_E9502595049_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx94958_ _form94959_)
        (let* ((_e9496094973_ _stx94958_)
               (_E9496294977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9496094973_)))
               (_E9496195009_
                (lambda ()
                  (if (gx#stx-pair? _e9496094973_)
                      (let ((_e9496394981_ (gx#syntax-e _e9496094973_)))
                        (let ((_hd9496494984_ (##car _e9496394981_))
                              (_tl9496594986_ (##cdr _e9496394981_)))
                          (if (gx#stx-pair? _tl9496594986_)
                              (let ((_e9496694989_
                                     (gx#syntax-e _tl9496594986_)))
                                (let ((_hd9496794992_ (##car _e9496694989_))
                                      (_tl9496894994_ (##cdr _e9496694989_)))
                                  (let ((_hd94997_ _hd9496794992_))
                                    (if (gx#stx-pair? _tl9496894994_)
                                        (let ((_e9496994999_
                                               (gx#syntax-e _tl9496894994_)))
                                          (let ((_hd9497095002_
                                                 (##car _e9496994999_))
                                                (_tl9497195004_
                                                 (##cdr _e9496994999_)))
                                            (let ((_body95007_ _hd9497095002_))
                                              (if (gx#stx-null? _tl9497195004_)
                                                  (if '#t
                                                      (cons _form94959_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd94997_)
                          (cons (gx#core-compile-top-syntax _body95007_) '())))
              (_E9496294977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9496294977_)))))
                                        (_E9496294977_)))))
                              (_E9496294977_))))
                      (_E9496294977_)))))
          (_E9496195009_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95016_)
        (let ((_form95018_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95016_ _form95018_))))
    (define gx#core-compile-top-let-values%
      (lambda _g95831_
        (let ((_g95830_ (##length _g95831_)))
          (cond ((##fx= _g95830_ 1)
                 (apply (lambda (_stx95016_)
                          (gx#core-compile-top-let-values%__0 _stx95016_))
                        _g95831_))
                ((##fx= _g95830_ 2)
                 (apply (lambda (_stx95020_ _form95021_)
                          (gx#core-compile-top-let-values%__%
                           _stx95020_
                           _form95021_))
                        _g95831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g95831_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx94955_)
        (gx#core-compile-top-let-values%__% _stx94955_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx94953_)
        (gx#core-compile-top-let-values%__% _stx94953_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx94912_)
        (let* ((_e9491394923_ _stx94912_)
               (_E9491594927_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9491394923_)))
               (_E9491494949_
                (lambda ()
                  (if (gx#stx-pair? _e9491394923_)
                      (let ((_e9491694931_ (gx#syntax-e _e9491394923_)))
                        (let ((_hd9491794934_ (##car _e9491694931_))
                              (_tl9491894936_ (##cdr _e9491694931_)))
                          (if (gx#stx-pair? _tl9491894936_)
                              (let ((_e9491994939_
                                     (gx#syntax-e _tl9491894936_)))
                                (let ((_hd9492094942_ (##car _e9491994939_))
                                      (_tl9492194944_ (##cdr _e9491994939_)))
                                  (let ((_e94947_ _hd9492094942_))
                                    (if (gx#stx-null? _tl9492194944_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e94947_)
                                                        '()))
                                            (_E9491594927_))
                                        (_E9491594927_)))))
                              (_E9491594927_))))
                      (_E9491594927_)))))
          (_E9491494949_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx94871_)
        (let* ((_e9487294882_ _stx94871_)
               (_E9487494886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9487294882_)))
               (_E9487394908_
                (lambda ()
                  (if (gx#stx-pair? _e9487294882_)
                      (let ((_e9487594890_ (gx#syntax-e _e9487294882_)))
                        (let ((_hd9487694893_ (##car _e9487594890_))
                              (_tl9487794895_ (##cdr _e9487594890_)))
                          (if (gx#stx-pair? _tl9487794895_)
                              (let ((_e9487894898_
                                     (gx#syntax-e _tl9487794895_)))
                                (let ((_hd9487994901_ (##car _e9487894898_))
                                      (_tl9488094903_ (##cdr _e9487894898_)))
                                  (let ((_e94906_ _hd9487994901_))
                                    (if (gx#stx-null? _tl9488094903_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e94906_)
                                                        '()))
                                            (_E9487494886_))
                                        (_E9487494886_)))))
                              (_E9487494886_))))
                      (_E9487494886_)))))
          (_E9487394908_))))
    (define gx#core-compile-top-call%
      (lambda (_stx94828_)
        (let* ((_e9482994839_ _stx94828_)
               (_E9483194843_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9482994839_)))
               (_E9483094867_
                (lambda ()
                  (if (gx#stx-pair? _e9482994839_)
                      (let ((_e9483294847_ (gx#syntax-e _e9482994839_)))
                        (let ((_hd9483394850_ (##car _e9483294847_))
                              (_tl9483494852_ (##cdr _e9483294847_)))
                          (if (gx#stx-pair? _tl9483494852_)
                              (let ((_e9483594855_
                                     (gx#syntax-e _tl9483494852_)))
                                (let ((_hd9483694858_ (##car _e9483594855_))
                                      (_tl9483794860_ (##cdr _e9483594855_)))
                                  (let* ((_rator94863_ _hd9483694858_)
                                         (_args94865_ _tl9483794860_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator94863_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args94865_)))
                                        (_E9483194843_)))))
                              (_E9483194843_))))
                      (_E9483194843_)))))
          (_E9483094867_))))
    (define gx#core-compile-top-if%
      (lambda (_stx94761_)
        (let* ((_e9476294778_ _stx94761_)
               (_E9476494782_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9476294778_)))
               (_E9476394824_
                (lambda ()
                  (if (gx#stx-pair? _e9476294778_)
                      (let ((_e9476594786_ (gx#syntax-e _e9476294778_)))
                        (let ((_hd9476694789_ (##car _e9476594786_))
                              (_tl9476794791_ (##cdr _e9476594786_)))
                          (if (gx#stx-pair? _tl9476794791_)
                              (let ((_e9476894794_
                                     (gx#syntax-e _tl9476794791_)))
                                (let ((_hd9476994797_ (##car _e9476894794_))
                                      (_tl9477094799_ (##cdr _e9476894794_)))
                                  (let ((_test94802_ _hd9476994797_))
                                    (if (gx#stx-pair? _tl9477094799_)
                                        (let ((_e9477194804_
                                               (gx#syntax-e _tl9477094799_)))
                                          (let ((_hd9477294807_
                                                 (##car _e9477194804_))
                                                (_tl9477394809_
                                                 (##cdr _e9477194804_)))
                                            (let ((_K94812_ _hd9477294807_))
                                              (if (gx#stx-pair? _tl9477394809_)
                                                  (let ((_e9477494814_
                                                         (gx#syntax-e
                                                          _tl9477394809_)))
                                                    (let ((_hd9477594817_
                                                           (##car _e9477494814_))
                                                          (_tl9477694819_
                                                           (##cdr _e9477494814_)))
                                                      (let ((_E94822_
                                                             _hd9477594817_))
                                                        (if (gx#stx-null?
                                                             _tl9477694819_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test94802_)
                                    (cons (gx#core-compile-top-syntax _K94812_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E94822_)
                                                '()))))
                        (_E9476494782_))
                    (_E9476494782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9476494782_)))))
                                        (_E9476494782_)))))
                              (_E9476494782_))))
                      (_E9476494782_)))))
          (_E9476394824_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx94720_)
        (let* ((_e9472194731_ _stx94720_)
               (_E9472394735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9472194731_)))
               (_E9472294757_
                (lambda ()
                  (if (gx#stx-pair? _e9472194731_)
                      (let ((_e9472494739_ (gx#syntax-e _e9472194731_)))
                        (let ((_hd9472594742_ (##car _e9472494739_))
                              (_tl9472694744_ (##cdr _e9472494739_)))
                          (if (gx#stx-pair? _tl9472694744_)
                              (let ((_e9472794747_
                                     (gx#syntax-e _tl9472694744_)))
                                (let ((_hd9472894750_ (##car _e9472794747_))
                                      (_tl9472994752_ (##cdr _e9472794747_)))
                                  (let ((_id94755_ _hd9472894750_))
                                    (if (gx#stx-null? _tl9472994752_)
                                        (if (gx#identifier? _id94755_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id94755_)
                                                        '()))
                                            (_E9472394735_))
                                        (_E9472394735_)))))
                              (_E9472394735_))))
                      (_E9472394735_)))))
          (_E9472294757_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx94666_)
        (let* ((_e9466794680_ _stx94666_)
               (_E9466994684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9466794680_)))
               (_E9466894716_
                (lambda ()
                  (if (gx#stx-pair? _e9466794680_)
                      (let ((_e9467094688_ (gx#syntax-e _e9466794680_)))
                        (let ((_hd9467194691_ (##car _e9467094688_))
                              (_tl9467294693_ (##cdr _e9467094688_)))
                          (if (gx#stx-pair? _tl9467294693_)
                              (let ((_e9467394696_
                                     (gx#syntax-e _tl9467294693_)))
                                (let ((_hd9467494699_ (##car _e9467394696_))
                                      (_tl9467594701_ (##cdr _e9467394696_)))
                                  (let ((_id94704_ _hd9467494699_))
                                    (if (gx#stx-pair? _tl9467594701_)
                                        (let ((_e9467694706_
                                               (gx#syntax-e _tl9467594701_)))
                                          (let ((_hd9467794709_
                                                 (##car _e9467694706_))
                                                (_tl9467894711_
                                                 (##cdr _e9467694706_)))
                                            (let ((_expr94714_ _hd9467794709_))
                                              (if (gx#stx-null? _tl9467894711_)
                                                  (if (gx#identifier?
                                                       _id94704_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id94704_)
                          (cons (gx#core-compile-top-syntax _expr94714_) '())))
              (_E9466994684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9466994684_)))))
                                        (_E9466994684_)))))
                              (_E9466994684_))))
                      (_E9466994684_)))))
          (_E9466894716_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id94661_)
        (let ((_$e94663_ (gx#resolve-identifier__0 _id94661_)))
          (if _$e94663_
              (##unchecked-structure-ref _$e94663_ '1 gx#binding::t '#f)
              _id94661_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd94659_)
        (if (gx#identifier? _hd94659_)
            (gx#core-compile-top-runtime-ref _hd94659_)
            '#f)))))
