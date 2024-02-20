(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708451994)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx91436_)
        (let* ((_e9143791444_ _stx91436_)
               (_E9143991448_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9143791444_)))
               (_E9143891462_
                (lambda ()
                  (if (gx#stx-pair? _e9143791444_)
                      (let ((_e9144091452_ (gx#syntax-e _e9143791444_)))
                        (let ((_hd9144191455_ (##car _e9144091452_))
                              (_tl9144291457_ (##cdr _e9144091452_)))
                          (let ((_form91460_ _hd9144191455_))
                            (if '#t
                                (let* ((__self91465
                                        (gx#syntax-local-e__0 _form91460_))
                                       (__method91466
                                        (method-ref
                                         __self91465
                                         'compile-top-syntax)))
                                  (if __method91466
                                      (__method91466 __self91465 _stx91436_)
                                      (error '"Missing method"
                                             __self91465
                                             'compile-top-syntax)))
                                (_E9143991448_)))))
                      (_E9143991448_)))))
          (_E9143891462_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self91396_ _stx91397_)
        (let* ((_self9139891406_ _self91396_)
               (_E9140091410_
                (lambda () (error '"No clause matching" _self9139891406_)))
               (_K9140191422_
                (lambda (_K91413_)
                  (let ((_$e91415_ (gx#stx-source _stx91397_)))
                    (if _$e91415_
                        ((lambda (_g9141791419_)
                           (gx#stx-wrap-source
                            (_K91413_ _stx91397_)
                            _g9141791419_))
                         _$e91415_)
                        (_K91413_ _stx91397_))))))
          (if (##structure-instance-of? _self9139891406_ 'gx#core-expander::t)
              (let* ((_e9140291425_
                      (##unchecked-structure-ref
                       _self9139891406_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9140391428_
                      (##unchecked-structure-ref
                       _self9139891406_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9140491431_
                      (##unchecked-structure-ref
                       _self9139891406_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K91434_ _e9140491431_))
                (_K9140191422_ _K91434_))
              (_E9140091410_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx91270_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx91270_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx91240_)
        (let* ((_e9124191248_ _stx91240_)
               (_E9124391252_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9124191248_)))
               (_E9124291266_
                (lambda ()
                  (if (gx#stx-pair? _e9124191248_)
                      (let ((_e9124491256_ (gx#syntax-e _e9124191248_)))
                        (let ((_hd9124591259_ (##car _e9124491256_))
                              (_tl9124691261_ (##cdr _e9124491256_)))
                          (let ((_body91264_ _tl9124691261_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body91264_))
                                (_E9124391252_)))))
                      (_E9124391252_)))))
          (_E9124291266_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx91209_)
        (let* ((_e9121091217_ _stx91209_)
               (_E9121291221_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9121091217_)))
               (_E9121191236_
                (lambda ()
                  (if (gx#stx-pair? _e9121091217_)
                      (let ((_e9121391225_ (gx#syntax-e _e9121091217_)))
                        (let ((_hd9121491228_ (##car _e9121391225_))
                              (_tl9121591230_ (##cdr _e9121391225_)))
                          (let ((_body91233_ _tl9121591230_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body91233_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9121291221_)))))
                      (_E9121291221_)))))
          (_E9121191236_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx91179_)
        (let* ((_e9118091187_ _stx91179_)
               (_E9118291191_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9118091187_)))
               (_E9118191205_
                (lambda ()
                  (if (gx#stx-pair? _e9118091187_)
                      (let ((_e9118391195_ (gx#syntax-e _e9118091187_)))
                        (let ((_hd9118491198_ (##car _e9118391195_))
                              (_tl9118591200_ (##cdr _e9118391195_)))
                          (let ((_body91203_ _tl9118591200_))
                            (if '#t
                                (cons '%#begin-foreign _body91203_)
                                (_E9118291191_)))))
                      (_E9118291191_)))))
          (_E9118191205_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx91125_)
        (let* ((_e9112691139_ _stx91125_)
               (_E9112891143_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9112691139_)))
               (_E9112791175_
                (lambda ()
                  (if (gx#stx-pair? _e9112691139_)
                      (let ((_e9112991147_ (gx#syntax-e _e9112691139_)))
                        (let ((_hd9113091150_ (##car _e9112991147_))
                              (_tl9113191152_ (##cdr _e9112991147_)))
                          (if (gx#stx-pair? _tl9113191152_)
                              (let ((_e9113291155_
                                     (gx#syntax-e _tl9113191152_)))
                                (let ((_hd9113391158_ (##car _e9113291155_))
                                      (_tl9113491160_ (##cdr _e9113291155_)))
                                  (let ((_ann91163_ _hd9113391158_))
                                    (if (gx#stx-pair? _tl9113491160_)
                                        (let ((_e9113591165_
                                               (gx#syntax-e _tl9113491160_)))
                                          (let ((_hd9113691168_
                                                 (##car _e9113591165_))
                                                (_tl9113791170_
                                                 (##cdr _e9113591165_)))
                                            (let ((_expr91173_ _hd9113691168_))
                                              (if (gx#stx-null? _tl9113791170_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr91173_)
                                                      (_E9112891143_))
                                                  (_E9112891143_)))))
                                        (_E9112891143_)))))
                              (_E9112891143_))))
                      (_E9112891143_)))))
          (_E9112791175_))))
    (define gx#core-compile-top-import%
      (lambda (_stx91095_)
        (let* ((_e9109691103_ _stx91095_)
               (_E9109891107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9109691103_)))
               (_E9109791121_
                (lambda ()
                  (if (gx#stx-pair? _e9109691103_)
                      (let ((_e9109991111_ (gx#syntax-e _e9109691103_)))
                        (let ((_hd9110091114_ (##car _e9109991111_))
                              (_tl9110191116_ (##cdr _e9109991111_)))
                          (let ((_body91119_ _tl9110191116_))
                            (if '#t
                                (cons '%#import _body91119_)
                                (_E9109891107_)))))
                      (_E9109891107_)))))
          (_E9109791121_))))
    (define gx#core-compile-top-module%
      (lambda (_stx91052_)
        (let* ((_e9105391063_ _stx91052_)
               (_E9105591067_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9105391063_)))
               (_E9105491091_
                (lambda ()
                  (if (gx#stx-pair? _e9105391063_)
                      (let ((_e9105691071_ (gx#syntax-e _e9105391063_)))
                        (let ((_hd9105791074_ (##car _e9105691071_))
                              (_tl9105891076_ (##cdr _e9105691071_)))
                          (if (gx#stx-pair? _tl9105891076_)
                              (let ((_e9105991079_
                                     (gx#syntax-e _tl9105891076_)))
                                (let ((_hd9106091082_ (##car _e9105991079_))
                                      (_tl9106191084_ (##cdr _e9105991079_)))
                                  (let* ((_hd91087_ _hd9106091082_)
                                         (_body91089_ _tl9106191084_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd91087_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body91089_)))
                                        (_E9105591067_)))))
                              (_E9105591067_))))
                      (_E9105591067_)))))
          (_E9105491091_))))
    (define gx#core-compile-top-export%
      (lambda (_stx91022_)
        (let* ((_e9102391030_ _stx91022_)
               (_E9102591034_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9102391030_)))
               (_E9102491048_
                (lambda ()
                  (if (gx#stx-pair? _e9102391030_)
                      (let ((_e9102691038_ (gx#syntax-e _e9102391030_)))
                        (let ((_hd9102791041_ (##car _e9102691038_))
                              (_tl9102891043_ (##cdr _e9102691038_)))
                          (let ((_body91046_ _tl9102891043_))
                            (if '#t
                                (cons '%#export _body91046_)
                                (_E9102591034_)))))
                      (_E9102591034_)))))
          (_E9102491048_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx90992_)
        (let* ((_e9099391000_ _stx90992_)
               (_E9099591004_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9099391000_)))
               (_E9099491018_
                (lambda ()
                  (if (gx#stx-pair? _e9099391000_)
                      (let ((_e9099691008_ (gx#syntax-e _e9099391000_)))
                        (let ((_hd9099791011_ (##car _e9099691008_))
                              (_tl9099891013_ (##cdr _e9099691008_)))
                          (let ((_body91016_ _tl9099891013_))
                            (if '#t
                                (cons '%#provide _body91016_)
                                (_E9099591004_)))))
                      (_E9099591004_)))))
          (_E9099491018_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx90962_)
        (let* ((_e9096390970_ _stx90962_)
               (_E9096590974_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9096390970_)))
               (_E9096490988_
                (lambda ()
                  (if (gx#stx-pair? _e9096390970_)
                      (let ((_e9096690978_ (gx#syntax-e _e9096390970_)))
                        (let ((_hd9096790981_ (##car _e9096690978_))
                              (_tl9096890983_ (##cdr _e9096690978_)))
                          (let ((_body90986_ _tl9096890983_))
                            (if '#t
                                (cons '%#extern _body90986_)
                                (_E9096590974_)))))
                      (_E9096590974_)))))
          (_E9096490988_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx90908_)
        (let* ((_e9090990922_ _stx90908_)
               (_E9091190926_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9090990922_)))
               (_E9091090958_
                (lambda ()
                  (if (gx#stx-pair? _e9090990922_)
                      (let ((_e9091290930_ (gx#syntax-e _e9090990922_)))
                        (let ((_hd9091390933_ (##car _e9091290930_))
                              (_tl9091490935_ (##cdr _e9091290930_)))
                          (if (gx#stx-pair? _tl9091490935_)
                              (let ((_e9091590938_
                                     (gx#syntax-e _tl9091490935_)))
                                (let ((_hd9091690941_ (##car _e9091590938_))
                                      (_tl9091790943_ (##cdr _e9091590938_)))
                                  (let ((_hd90946_ _hd9091690941_))
                                    (if (gx#stx-pair? _tl9091790943_)
                                        (let ((_e9091890948_
                                               (gx#syntax-e _tl9091790943_)))
                                          (let ((_hd9091990951_
                                                 (##car _e9091890948_))
                                                (_tl9092090953_
                                                 (##cdr _e9091890948_)))
                                            (let ((_expr90956_ _hd9091990951_))
                                              (if (gx#stx-null? _tl9092090953_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd90946_)
                          (cons (gx#core-compile-top-syntax _expr90956_) '())))
              (_E9091190926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9091190926_)))))
                                        (_E9091190926_)))))
                              (_E9091190926_))))
                      (_E9091190926_)))))
          (_E9091090958_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx90853_)
        (let* ((_e9085490867_ _stx90853_)
               (_E9085690871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9085490867_)))
               (_E9085590904_
                (lambda ()
                  (if (gx#stx-pair? _e9085490867_)
                      (let ((_e9085790875_ (gx#syntax-e _e9085490867_)))
                        (let ((_hd9085890878_ (##car _e9085790875_))
                              (_tl9085990880_ (##cdr _e9085790875_)))
                          (if (gx#stx-pair? _tl9085990880_)
                              (let ((_e9086090883_
                                     (gx#syntax-e _tl9085990880_)))
                                (let ((_hd9086190886_ (##car _e9086090883_))
                                      (_tl9086290888_ (##cdr _e9086090883_)))
                                  (let ((_hd90891_ _hd9086190886_))
                                    (if (gx#stx-pair? _tl9086290888_)
                                        (let ((_e9086390893_
                                               (gx#syntax-e _tl9086290888_)))
                                          (let ((_hd9086490896_
                                                 (##car _e9086390893_))
                                                (_tl9086590898_
                                                 (##cdr _e9086390893_)))
                                            (let ((_expr90901_ _hd9086490896_))
                                              (if (gx#stx-null? _tl9086590898_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd90891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr90901_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9085690871_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9085690871_)))))
                                        (_E9085690871_)))))
                              (_E9085690871_))))
                      (_E9085690871_)))))
          (_E9085590904_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx90823_)
        (let* ((_e9082490831_ _stx90823_)
               (_E9082690835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9082490831_)))
               (_E9082590849_
                (lambda ()
                  (if (gx#stx-pair? _e9082490831_)
                      (let ((_e9082790839_ (gx#syntax-e _e9082490831_)))
                        (let ((_hd9082890842_ (##car _e9082790839_))
                              (_tl9082990844_ (##cdr _e9082790839_)))
                          (let ((_body90847_ _tl9082990844_))
                            (if '#t
                                (cons '%#define-alias _body90847_)
                                (_E9082690835_)))))
                      (_E9082690835_)))))
          (_E9082590849_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx90793_)
        (let* ((_e9079490801_ _stx90793_)
               (_E9079690805_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9079490801_)))
               (_E9079590819_
                (lambda ()
                  (if (gx#stx-pair? _e9079490801_)
                      (let ((_e9079790809_ (gx#syntax-e _e9079490801_)))
                        (let ((_hd9079890812_ (##car _e9079790809_))
                              (_tl9079990814_ (##cdr _e9079790809_)))
                          (let ((_body90817_ _tl9079990814_))
                            (if '#t
                                (cons '%#define-runtime _body90817_)
                                (_E9079690805_)))))
                      (_E9079690805_)))))
          (_E9079590819_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx90763_)
        (let* ((_e9076490771_ _stx90763_)
               (_E9076690775_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9076490771_)))
               (_E9076590789_
                (lambda ()
                  (if (gx#stx-pair? _e9076490771_)
                      (let ((_e9076790779_ (gx#syntax-e _e9076490771_)))
                        (let ((_hd9076890782_ (##car _e9076790779_))
                              (_tl9076990784_ (##cdr _e9076790779_)))
                          (let ((_decls90787_ _tl9076990784_))
                            (if '#t
                                (cons '%#declare _decls90787_)
                                (_E9076690775_)))))
                      (_E9076690775_)))))
          (_E9076590789_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx90733_)
        (let* ((_e9073490741_ _stx90733_)
               (_E9073690745_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9073490741_)))
               (_E9073590759_
                (lambda ()
                  (if (gx#stx-pair? _e9073490741_)
                      (let ((_e9073790749_ (gx#syntax-e _e9073490741_)))
                        (let ((_hd9073890752_ (##car _e9073790749_))
                              (_tl9073990754_ (##cdr _e9073790749_)))
                          (let ((_clause90757_ _tl9073990754_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause90757_))
                                (_E9073690745_)))))
                      (_E9073690745_)))))
          (_E9073590759_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx90690_)
        (let* ((_e9069190701_ _stx90690_)
               (_E9069390705_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9069190701_)))
               (_E9069290729_
                (lambda ()
                  (if (gx#stx-pair? _e9069190701_)
                      (let ((_e9069490709_ (gx#syntax-e _e9069190701_)))
                        (let ((_hd9069590712_ (##car _e9069490709_))
                              (_tl9069690714_ (##cdr _e9069490709_)))
                          (let ((_hd90717_ _hd9069590712_))
                            (if (gx#stx-pair? _tl9069690714_)
                                (let ((_e9069790719_
                                       (gx#syntax-e _tl9069690714_)))
                                  (let ((_hd9069890722_ (##car _e9069790719_))
                                        (_tl9069990724_ (##cdr _e9069790719_)))
                                    (let ((_body90727_ _hd9069890722_))
                                      (if (gx#stx-null? _tl9069990724_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd90717_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body90727_)
                                                          '()))
                                              (_E9069390705_))
                                          (_E9069390705_)))))
                                (_E9069390705_)))))
                      (_E9069390705_)))))
          (_E9069290729_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx90660_)
        (let* ((_e9066190668_ _stx90660_)
               (_E9066390672_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9066190668_)))
               (_E9066290686_
                (lambda ()
                  (if (gx#stx-pair? _e9066190668_)
                      (let ((_e9066490676_ (gx#syntax-e _e9066190668_)))
                        (let ((_hd9066590679_ (##car _e9066490676_))
                              (_tl9066690681_ (##cdr _e9066490676_)))
                          (let ((_clauses90684_ _tl9066690681_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses90684_))
                                (_E9066390672_)))))
                      (_E9066390672_)))))
          (_E9066290686_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx90595_ _form90596_)
        (let* ((_e9059790610_ _stx90595_)
               (_E9059990614_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9059790610_)))
               (_E9059890646_
                (lambda ()
                  (if (gx#stx-pair? _e9059790610_)
                      (let ((_e9060090618_ (gx#syntax-e _e9059790610_)))
                        (let ((_hd9060190621_ (##car _e9060090618_))
                              (_tl9060290623_ (##cdr _e9060090618_)))
                          (if (gx#stx-pair? _tl9060290623_)
                              (let ((_e9060390626_
                                     (gx#syntax-e _tl9060290623_)))
                                (let ((_hd9060490629_ (##car _e9060390626_))
                                      (_tl9060590631_ (##cdr _e9060390626_)))
                                  (let ((_hd90634_ _hd9060490629_))
                                    (if (gx#stx-pair? _tl9060590631_)
                                        (let ((_e9060690636_
                                               (gx#syntax-e _tl9060590631_)))
                                          (let ((_hd9060790639_
                                                 (##car _e9060690636_))
                                                (_tl9060890641_
                                                 (##cdr _e9060690636_)))
                                            (let ((_body90644_ _hd9060790639_))
                                              (if (gx#stx-null? _tl9060890641_)
                                                  (if '#t
                                                      (cons _form90596_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd90634_)
                          (cons (gx#core-compile-top-syntax _body90644_) '())))
              (_E9059990614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9059990614_)))))
                                        (_E9059990614_)))))
                              (_E9059990614_))))
                      (_E9059990614_)))))
          (_E9059890646_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx90653_)
        (let ((_form90655_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx90653_ _form90655_))))
    (define gx#core-compile-top-let-values%
      (lambda _g91468_
        (let ((_g91467_ (##length _g91468_)))
          (cond ((##fx= _g91467_ 1)
                 (apply (lambda (_stx90653_)
                          (gx#core-compile-top-let-values%__0 _stx90653_))
                        _g91468_))
                ((##fx= _g91467_ 2)
                 (apply (lambda (_stx90657_ _form90658_)
                          (gx#core-compile-top-let-values%__%
                           _stx90657_
                           _form90658_))
                        _g91468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g91468_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx90592_)
        (gx#core-compile-top-let-values%__% _stx90592_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx90590_)
        (gx#core-compile-top-let-values%__% _stx90590_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx90549_)
        (let* ((_e9055090560_ _stx90549_)
               (_E9055290564_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9055090560_)))
               (_E9055190586_
                (lambda ()
                  (if (gx#stx-pair? _e9055090560_)
                      (let ((_e9055390568_ (gx#syntax-e _e9055090560_)))
                        (let ((_hd9055490571_ (##car _e9055390568_))
                              (_tl9055590573_ (##cdr _e9055390568_)))
                          (if (gx#stx-pair? _tl9055590573_)
                              (let ((_e9055690576_
                                     (gx#syntax-e _tl9055590573_)))
                                (let ((_hd9055790579_ (##car _e9055690576_))
                                      (_tl9055890581_ (##cdr _e9055690576_)))
                                  (let ((_e90584_ _hd9055790579_))
                                    (if (gx#stx-null? _tl9055890581_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e90584_)
                                                        '()))
                                            (_E9055290564_))
                                        (_E9055290564_)))))
                              (_E9055290564_))))
                      (_E9055290564_)))))
          (_E9055190586_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx90508_)
        (let* ((_e9050990519_ _stx90508_)
               (_E9051190523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9050990519_)))
               (_E9051090545_
                (lambda ()
                  (if (gx#stx-pair? _e9050990519_)
                      (let ((_e9051290527_ (gx#syntax-e _e9050990519_)))
                        (let ((_hd9051390530_ (##car _e9051290527_))
                              (_tl9051490532_ (##cdr _e9051290527_)))
                          (if (gx#stx-pair? _tl9051490532_)
                              (let ((_e9051590535_
                                     (gx#syntax-e _tl9051490532_)))
                                (let ((_hd9051690538_ (##car _e9051590535_))
                                      (_tl9051790540_ (##cdr _e9051590535_)))
                                  (let ((_e90543_ _hd9051690538_))
                                    (if (gx#stx-null? _tl9051790540_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e90543_)
                                                        '()))
                                            (_E9051190523_))
                                        (_E9051190523_)))))
                              (_E9051190523_))))
                      (_E9051190523_)))))
          (_E9051090545_))))
    (define gx#core-compile-top-call%
      (lambda (_stx90465_)
        (let* ((_e9046690476_ _stx90465_)
               (_E9046890480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9046690476_)))
               (_E9046790504_
                (lambda ()
                  (if (gx#stx-pair? _e9046690476_)
                      (let ((_e9046990484_ (gx#syntax-e _e9046690476_)))
                        (let ((_hd9047090487_ (##car _e9046990484_))
                              (_tl9047190489_ (##cdr _e9046990484_)))
                          (if (gx#stx-pair? _tl9047190489_)
                              (let ((_e9047290492_
                                     (gx#syntax-e _tl9047190489_)))
                                (let ((_hd9047390495_ (##car _e9047290492_))
                                      (_tl9047490497_ (##cdr _e9047290492_)))
                                  (let* ((_rator90500_ _hd9047390495_)
                                         (_args90502_ _tl9047490497_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator90500_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args90502_)))
                                        (_E9046890480_)))))
                              (_E9046890480_))))
                      (_E9046890480_)))))
          (_E9046790504_))))
    (define gx#core-compile-top-if%
      (lambda (_stx90398_)
        (let* ((_e9039990415_ _stx90398_)
               (_E9040190419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9039990415_)))
               (_E9040090461_
                (lambda ()
                  (if (gx#stx-pair? _e9039990415_)
                      (let ((_e9040290423_ (gx#syntax-e _e9039990415_)))
                        (let ((_hd9040390426_ (##car _e9040290423_))
                              (_tl9040490428_ (##cdr _e9040290423_)))
                          (if (gx#stx-pair? _tl9040490428_)
                              (let ((_e9040590431_
                                     (gx#syntax-e _tl9040490428_)))
                                (let ((_hd9040690434_ (##car _e9040590431_))
                                      (_tl9040790436_ (##cdr _e9040590431_)))
                                  (let ((_test90439_ _hd9040690434_))
                                    (if (gx#stx-pair? _tl9040790436_)
                                        (let ((_e9040890441_
                                               (gx#syntax-e _tl9040790436_)))
                                          (let ((_hd9040990444_
                                                 (##car _e9040890441_))
                                                (_tl9041090446_
                                                 (##cdr _e9040890441_)))
                                            (let ((_K90449_ _hd9040990444_))
                                              (if (gx#stx-pair? _tl9041090446_)
                                                  (let ((_e9041190451_
                                                         (gx#syntax-e
                                                          _tl9041090446_)))
                                                    (let ((_hd9041290454_
                                                           (##car _e9041190451_))
                                                          (_tl9041390456_
                                                           (##cdr _e9041190451_)))
                                                      (let ((_E90459_
                                                             _hd9041290454_))
                                                        (if (gx#stx-null?
                                                             _tl9041390456_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test90439_)
                                    (cons (gx#core-compile-top-syntax _K90449_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E90459_)
                                                '()))))
                        (_E9040190419_))
                    (_E9040190419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9040190419_)))))
                                        (_E9040190419_)))))
                              (_E9040190419_))))
                      (_E9040190419_)))))
          (_E9040090461_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx90357_)
        (let* ((_e9035890368_ _stx90357_)
               (_E9036090372_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9035890368_)))
               (_E9035990394_
                (lambda ()
                  (if (gx#stx-pair? _e9035890368_)
                      (let ((_e9036190376_ (gx#syntax-e _e9035890368_)))
                        (let ((_hd9036290379_ (##car _e9036190376_))
                              (_tl9036390381_ (##cdr _e9036190376_)))
                          (if (gx#stx-pair? _tl9036390381_)
                              (let ((_e9036490384_
                                     (gx#syntax-e _tl9036390381_)))
                                (let ((_hd9036590387_ (##car _e9036490384_))
                                      (_tl9036690389_ (##cdr _e9036490384_)))
                                  (let ((_id90392_ _hd9036590387_))
                                    (if (gx#stx-null? _tl9036690389_)
                                        (if (gx#identifier? _id90392_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id90392_)
                                                        '()))
                                            (_E9036090372_))
                                        (_E9036090372_)))))
                              (_E9036090372_))))
                      (_E9036090372_)))))
          (_E9035990394_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx90303_)
        (let* ((_e9030490317_ _stx90303_)
               (_E9030690321_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9030490317_)))
               (_E9030590353_
                (lambda ()
                  (if (gx#stx-pair? _e9030490317_)
                      (let ((_e9030790325_ (gx#syntax-e _e9030490317_)))
                        (let ((_hd9030890328_ (##car _e9030790325_))
                              (_tl9030990330_ (##cdr _e9030790325_)))
                          (if (gx#stx-pair? _tl9030990330_)
                              (let ((_e9031090333_
                                     (gx#syntax-e _tl9030990330_)))
                                (let ((_hd9031190336_ (##car _e9031090333_))
                                      (_tl9031290338_ (##cdr _e9031090333_)))
                                  (let ((_id90341_ _hd9031190336_))
                                    (if (gx#stx-pair? _tl9031290338_)
                                        (let ((_e9031390343_
                                               (gx#syntax-e _tl9031290338_)))
                                          (let ((_hd9031490346_
                                                 (##car _e9031390343_))
                                                (_tl9031590348_
                                                 (##cdr _e9031390343_)))
                                            (let ((_expr90351_ _hd9031490346_))
                                              (if (gx#stx-null? _tl9031590348_)
                                                  (if (gx#identifier?
                                                       _id90341_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id90341_)
                          (cons (gx#core-compile-top-syntax _expr90351_) '())))
              (_E9030690321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9030690321_)))))
                                        (_E9030690321_)))))
                              (_E9030690321_))))
                      (_E9030690321_)))))
          (_E9030590353_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id90298_)
        (let ((_$e90300_ (gx#resolve-identifier__0 _id90298_)))
          (if _$e90300_
              (##unchecked-structure-ref _$e90300_ '1 gx#binding::t '#f)
              _id90298_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd90296_)
        (if (gx#identifier? _hd90296_)
            (gx#core-compile-top-runtime-ref _hd90296_)
            '#f)))))
