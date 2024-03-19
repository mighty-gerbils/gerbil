(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1710833424)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx96180_)
        (let* ((_e9618196188_ _stx96180_)
               (_E9618396192_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9618196188_)))
               (_E9618296206_
                (lambda ()
                  (if (gx#stx-pair? _e9618196188_)
                      (let ((_e9618496196_ (gx#syntax-e _e9618196188_)))
                        (let ((_hd9618596199_ (##car _e9618496196_))
                              (_tl9618696201_ (##cdr _e9618496196_)))
                          (let ((_form96204_ _hd9618596199_))
                            (if '#t
                                (let* ((__self96209
                                        (gx#syntax-local-e__0 _form96204_))
                                       (__method96210
                                        (method-ref
                                         __self96209
                                         'compile-top-syntax)))
                                  (if __method96210
                                      (__method96210 __self96209 _stx96180_)
                                      (error '"Missing method"
                                             __self96209
                                             'compile-top-syntax)))
                                (_E9618396192_)))))
                      (_E9618396192_)))))
          (_E9618296206_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self96140_ _stx96141_)
        (let* ((_self9614296150_ _self96140_)
               (_E9614496154_
                (lambda () (error '"No clause matching" _self9614296150_)))
               (_K9614596166_
                (lambda (_K96157_)
                  (let ((_$e96159_ (gx#stx-source _stx96141_)))
                    (if _$e96159_
                        ((lambda (_g9616196163_)
                           (gx#stx-wrap-source
                            (_K96157_ _stx96141_)
                            _g9616196163_))
                         _$e96159_)
                        (_K96157_ _stx96141_))))))
          (if (##structure-instance-of? _self9614296150_ 'gx#core-expander::t)
              (let* ((_e9614696169_
                      (##unchecked-structure-ref
                       _self9614296150_
                       '1
                       gx#expander::t
                       '#f))
                     (_e9614796172_
                      (##unchecked-structure-ref
                       _self9614296150_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e9614896175_
                      (##unchecked-structure-ref
                       _self9614296150_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K96178_ _e9614896175_))
                (_K9614596166_ _K96178_))
              (_E9614496154_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx96014_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx96014_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx95984_)
        (let* ((_e9598595992_ _stx95984_)
               (_E9598795996_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9598595992_)))
               (_E9598696010_
                (lambda ()
                  (if (gx#stx-pair? _e9598595992_)
                      (let ((_e9598896000_ (gx#syntax-e _e9598595992_)))
                        (let ((_hd9598996003_ (##car _e9598896000_))
                              (_tl9599096005_ (##cdr _e9598896000_)))
                          (let ((_body96008_ _tl9599096005_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body96008_))
                                (_E9598795996_)))))
                      (_E9598795996_)))))
          (_E9598696010_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx95953_)
        (let* ((_e9595495961_ _stx95953_)
               (_E9595695965_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9595495961_)))
               (_E9595595980_
                (lambda ()
                  (if (gx#stx-pair? _e9595495961_)
                      (let ((_e9595795969_ (gx#syntax-e _e9595495961_)))
                        (let ((_hd9595895972_ (##car _e9595795969_))
                              (_tl9595995974_ (##cdr _e9595795969_)))
                          (let ((_body95977_ _tl9595995974_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body95977_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E9595695965_)))))
                      (_E9595695965_)))))
          (_E9595595980_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx95923_)
        (let* ((_e9592495931_ _stx95923_)
               (_E9592695935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9592495931_)))
               (_E9592595949_
                (lambda ()
                  (if (gx#stx-pair? _e9592495931_)
                      (let ((_e9592795939_ (gx#syntax-e _e9592495931_)))
                        (let ((_hd9592895942_ (##car _e9592795939_))
                              (_tl9592995944_ (##cdr _e9592795939_)))
                          (let ((_body95947_ _tl9592995944_))
                            (if '#t
                                (cons '%#begin-foreign _body95947_)
                                (_E9592695935_)))))
                      (_E9592695935_)))))
          (_E9592595949_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx95869_)
        (let* ((_e9587095883_ _stx95869_)
               (_E9587295887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9587095883_)))
               (_E9587195919_
                (lambda ()
                  (if (gx#stx-pair? _e9587095883_)
                      (let ((_e9587395891_ (gx#syntax-e _e9587095883_)))
                        (let ((_hd9587495894_ (##car _e9587395891_))
                              (_tl9587595896_ (##cdr _e9587395891_)))
                          (if (gx#stx-pair? _tl9587595896_)
                              (let ((_e9587695899_
                                     (gx#syntax-e _tl9587595896_)))
                                (let ((_hd9587795902_ (##car _e9587695899_))
                                      (_tl9587895904_ (##cdr _e9587695899_)))
                                  (let ((_ann95907_ _hd9587795902_))
                                    (if (gx#stx-pair? _tl9587895904_)
                                        (let ((_e9587995909_
                                               (gx#syntax-e _tl9587895904_)))
                                          (let ((_hd9588095912_
                                                 (##car _e9587995909_))
                                                (_tl9588195914_
                                                 (##cdr _e9587995909_)))
                                            (let ((_expr95917_ _hd9588095912_))
                                              (if (gx#stx-null? _tl9588195914_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr95917_)
                                                      (_E9587295887_))
                                                  (_E9587295887_)))))
                                        (_E9587295887_)))))
                              (_E9587295887_))))
                      (_E9587295887_)))))
          (_E9587195919_))))
    (define gx#core-compile-top-import%
      (lambda (_stx95839_)
        (let* ((_e9584095847_ _stx95839_)
               (_E9584295851_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9584095847_)))
               (_E9584195865_
                (lambda ()
                  (if (gx#stx-pair? _e9584095847_)
                      (let ((_e9584395855_ (gx#syntax-e _e9584095847_)))
                        (let ((_hd9584495858_ (##car _e9584395855_))
                              (_tl9584595860_ (##cdr _e9584395855_)))
                          (let ((_body95863_ _tl9584595860_))
                            (if '#t
                                (cons '%#import _body95863_)
                                (_E9584295851_)))))
                      (_E9584295851_)))))
          (_E9584195865_))))
    (define gx#core-compile-top-module%
      (lambda (_stx95796_)
        (let* ((_e9579795807_ _stx95796_)
               (_E9579995811_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9579795807_)))
               (_E9579895835_
                (lambda ()
                  (if (gx#stx-pair? _e9579795807_)
                      (let ((_e9580095815_ (gx#syntax-e _e9579795807_)))
                        (let ((_hd9580195818_ (##car _e9580095815_))
                              (_tl9580295820_ (##cdr _e9580095815_)))
                          (if (gx#stx-pair? _tl9580295820_)
                              (let ((_e9580395823_
                                     (gx#syntax-e _tl9580295820_)))
                                (let ((_hd9580495826_ (##car _e9580395823_))
                                      (_tl9580595828_ (##cdr _e9580395823_)))
                                  (let* ((_hd95831_ _hd9580495826_)
                                         (_body95833_ _tl9580595828_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd95831_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body95833_)))
                                        (_E9579995811_)))))
                              (_E9579995811_))))
                      (_E9579995811_)))))
          (_E9579895835_))))
    (define gx#core-compile-top-export%
      (lambda (_stx95766_)
        (let* ((_e9576795774_ _stx95766_)
               (_E9576995778_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9576795774_)))
               (_E9576895792_
                (lambda ()
                  (if (gx#stx-pair? _e9576795774_)
                      (let ((_e9577095782_ (gx#syntax-e _e9576795774_)))
                        (let ((_hd9577195785_ (##car _e9577095782_))
                              (_tl9577295787_ (##cdr _e9577095782_)))
                          (let ((_body95790_ _tl9577295787_))
                            (if '#t
                                (cons '%#export _body95790_)
                                (_E9576995778_)))))
                      (_E9576995778_)))))
          (_E9576895792_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx95736_)
        (let* ((_e9573795744_ _stx95736_)
               (_E9573995748_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9573795744_)))
               (_E9573895762_
                (lambda ()
                  (if (gx#stx-pair? _e9573795744_)
                      (let ((_e9574095752_ (gx#syntax-e _e9573795744_)))
                        (let ((_hd9574195755_ (##car _e9574095752_))
                              (_tl9574295757_ (##cdr _e9574095752_)))
                          (let ((_body95760_ _tl9574295757_))
                            (if '#t
                                (cons '%#provide _body95760_)
                                (_E9573995748_)))))
                      (_E9573995748_)))))
          (_E9573895762_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx95706_)
        (let* ((_e9570795714_ _stx95706_)
               (_E9570995718_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9570795714_)))
               (_E9570895732_
                (lambda ()
                  (if (gx#stx-pair? _e9570795714_)
                      (let ((_e9571095722_ (gx#syntax-e _e9570795714_)))
                        (let ((_hd9571195725_ (##car _e9571095722_))
                              (_tl9571295727_ (##cdr _e9571095722_)))
                          (let ((_body95730_ _tl9571295727_))
                            (if '#t
                                (cons '%#extern _body95730_)
                                (_E9570995718_)))))
                      (_E9570995718_)))))
          (_E9570895732_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx95652_)
        (let* ((_e9565395666_ _stx95652_)
               (_E9565595670_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9565395666_)))
               (_E9565495702_
                (lambda ()
                  (if (gx#stx-pair? _e9565395666_)
                      (let ((_e9565695674_ (gx#syntax-e _e9565395666_)))
                        (let ((_hd9565795677_ (##car _e9565695674_))
                              (_tl9565895679_ (##cdr _e9565695674_)))
                          (if (gx#stx-pair? _tl9565895679_)
                              (let ((_e9565995682_
                                     (gx#syntax-e _tl9565895679_)))
                                (let ((_hd9566095685_ (##car _e9565995682_))
                                      (_tl9566195687_ (##cdr _e9565995682_)))
                                  (let ((_hd95690_ _hd9566095685_))
                                    (if (gx#stx-pair? _tl9566195687_)
                                        (let ((_e9566295692_
                                               (gx#syntax-e _tl9566195687_)))
                                          (let ((_hd9566395695_
                                                 (##car _e9566295692_))
                                                (_tl9566495697_
                                                 (##cdr _e9566295692_)))
                                            (let ((_expr95700_ _hd9566395695_))
                                              (if (gx#stx-null? _tl9566495697_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd95690_)
                          (cons (gx#core-compile-top-syntax _expr95700_) '())))
              (_E9565595670_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9565595670_)))))
                                        (_E9565595670_)))))
                              (_E9565595670_))))
                      (_E9565595670_)))))
          (_E9565495702_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx95597_)
        (let* ((_e9559895611_ _stx95597_)
               (_E9560095615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9559895611_)))
               (_E9559995648_
                (lambda ()
                  (if (gx#stx-pair? _e9559895611_)
                      (let ((_e9560195619_ (gx#syntax-e _e9559895611_)))
                        (let ((_hd9560295622_ (##car _e9560195619_))
                              (_tl9560395624_ (##cdr _e9560195619_)))
                          (if (gx#stx-pair? _tl9560395624_)
                              (let ((_e9560495627_
                                     (gx#syntax-e _tl9560395624_)))
                                (let ((_hd9560595630_ (##car _e9560495627_))
                                      (_tl9560695632_ (##cdr _e9560495627_)))
                                  (let ((_hd95635_ _hd9560595630_))
                                    (if (gx#stx-pair? _tl9560695632_)
                                        (let ((_e9560795637_
                                               (gx#syntax-e _tl9560695632_)))
                                          (let ((_hd9560895640_
                                                 (##car _e9560795637_))
                                                (_tl9560995642_
                                                 (##cdr _e9560795637_)))
                                            (let ((_expr95645_ _hd9560895640_))
                                              (if (gx#stx-null? _tl9560995642_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd95635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr95645_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E9560095615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9560095615_)))))
                                        (_E9560095615_)))))
                              (_E9560095615_))))
                      (_E9560095615_)))))
          (_E9559995648_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx95567_)
        (let* ((_e9556895575_ _stx95567_)
               (_E9557095579_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9556895575_)))
               (_E9556995593_
                (lambda ()
                  (if (gx#stx-pair? _e9556895575_)
                      (let ((_e9557195583_ (gx#syntax-e _e9556895575_)))
                        (let ((_hd9557295586_ (##car _e9557195583_))
                              (_tl9557395588_ (##cdr _e9557195583_)))
                          (let ((_body95591_ _tl9557395588_))
                            (if '#t
                                (cons '%#define-alias _body95591_)
                                (_E9557095579_)))))
                      (_E9557095579_)))))
          (_E9556995593_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx95537_)
        (let* ((_e9553895545_ _stx95537_)
               (_E9554095549_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9553895545_)))
               (_E9553995563_
                (lambda ()
                  (if (gx#stx-pair? _e9553895545_)
                      (let ((_e9554195553_ (gx#syntax-e _e9553895545_)))
                        (let ((_hd9554295556_ (##car _e9554195553_))
                              (_tl9554395558_ (##cdr _e9554195553_)))
                          (let ((_body95561_ _tl9554395558_))
                            (if '#t
                                (cons '%#define-runtime _body95561_)
                                (_E9554095549_)))))
                      (_E9554095549_)))))
          (_E9553995563_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx95507_)
        (let* ((_e9550895515_ _stx95507_)
               (_E9551095519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9550895515_)))
               (_E9550995533_
                (lambda ()
                  (if (gx#stx-pair? _e9550895515_)
                      (let ((_e9551195523_ (gx#syntax-e _e9550895515_)))
                        (let ((_hd9551295526_ (##car _e9551195523_))
                              (_tl9551395528_ (##cdr _e9551195523_)))
                          (let ((_decls95531_ _tl9551395528_))
                            (if '#t
                                (cons '%#declare _decls95531_)
                                (_E9551095519_)))))
                      (_E9551095519_)))))
          (_E9550995533_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx95477_)
        (let* ((_e9547895485_ _stx95477_)
               (_E9548095489_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9547895485_)))
               (_E9547995503_
                (lambda ()
                  (if (gx#stx-pair? _e9547895485_)
                      (let ((_e9548195493_ (gx#syntax-e _e9547895485_)))
                        (let ((_hd9548295496_ (##car _e9548195493_))
                              (_tl9548395498_ (##cdr _e9548195493_)))
                          (let ((_clause95501_ _tl9548395498_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause95501_))
                                (_E9548095489_)))))
                      (_E9548095489_)))))
          (_E9547995503_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx95434_)
        (let* ((_e9543595445_ _stx95434_)
               (_E9543795449_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9543595445_)))
               (_E9543695473_
                (lambda ()
                  (if (gx#stx-pair? _e9543595445_)
                      (let ((_e9543895453_ (gx#syntax-e _e9543595445_)))
                        (let ((_hd9543995456_ (##car _e9543895453_))
                              (_tl9544095458_ (##cdr _e9543895453_)))
                          (let ((_hd95461_ _hd9543995456_))
                            (if (gx#stx-pair? _tl9544095458_)
                                (let ((_e9544195463_
                                       (gx#syntax-e _tl9544095458_)))
                                  (let ((_hd9544295466_ (##car _e9544195463_))
                                        (_tl9544395468_ (##cdr _e9544195463_)))
                                    (let ((_body95471_ _hd9544295466_))
                                      (if (gx#stx-null? _tl9544395468_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd95461_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body95471_)
                                                          '()))
                                              (_E9543795449_))
                                          (_E9543795449_)))))
                                (_E9543795449_)))))
                      (_E9543795449_)))))
          (_E9543695473_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx95404_)
        (let* ((_e9540595412_ _stx95404_)
               (_E9540795416_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9540595412_)))
               (_E9540695430_
                (lambda ()
                  (if (gx#stx-pair? _e9540595412_)
                      (let ((_e9540895420_ (gx#syntax-e _e9540595412_)))
                        (let ((_hd9540995423_ (##car _e9540895420_))
                              (_tl9541095425_ (##cdr _e9540895420_)))
                          (let ((_clauses95428_ _tl9541095425_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses95428_))
                                (_E9540795416_)))))
                      (_E9540795416_)))))
          (_E9540695430_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx95339_ _form95340_)
        (let* ((_e9534195354_ _stx95339_)
               (_E9534395358_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9534195354_)))
               (_E9534295390_
                (lambda ()
                  (if (gx#stx-pair? _e9534195354_)
                      (let ((_e9534495362_ (gx#syntax-e _e9534195354_)))
                        (let ((_hd9534595365_ (##car _e9534495362_))
                              (_tl9534695367_ (##cdr _e9534495362_)))
                          (if (gx#stx-pair? _tl9534695367_)
                              (let ((_e9534795370_
                                     (gx#syntax-e _tl9534695367_)))
                                (let ((_hd9534895373_ (##car _e9534795370_))
                                      (_tl9534995375_ (##cdr _e9534795370_)))
                                  (let ((_hd95378_ _hd9534895373_))
                                    (if (gx#stx-pair? _tl9534995375_)
                                        (let ((_e9535095380_
                                               (gx#syntax-e _tl9534995375_)))
                                          (let ((_hd9535195383_
                                                 (##car _e9535095380_))
                                                (_tl9535295385_
                                                 (##cdr _e9535095380_)))
                                            (let ((_body95388_ _hd9535195383_))
                                              (if (gx#stx-null? _tl9535295385_)
                                                  (if '#t
                                                      (cons _form95340_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd95378_)
                          (cons (gx#core-compile-top-syntax _body95388_) '())))
              (_E9534395358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9534395358_)))))
                                        (_E9534395358_)))))
                              (_E9534395358_))))
                      (_E9534395358_)))))
          (_E9534295390_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx95397_)
        (let ((_form95399_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx95397_ _form95399_))))
    (define gx#core-compile-top-let-values%
      (lambda _g96212_
        (let ((_g96211_ (##length _g96212_)))
          (cond ((##fx= _g96211_ 1)
                 (apply (lambda (_stx95397_)
                          (gx#core-compile-top-let-values%__0 _stx95397_))
                        _g96212_))
                ((##fx= _g96211_ 2)
                 (apply (lambda (_stx95401_ _form95402_)
                          (gx#core-compile-top-let-values%__%
                           _stx95401_
                           _form95402_))
                        _g96212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g96212_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx95336_)
        (gx#core-compile-top-let-values%__% _stx95336_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx95334_)
        (gx#core-compile-top-let-values%__% _stx95334_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx95293_)
        (let* ((_e9529495304_ _stx95293_)
               (_E9529695308_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9529495304_)))
               (_E9529595330_
                (lambda ()
                  (if (gx#stx-pair? _e9529495304_)
                      (let ((_e9529795312_ (gx#syntax-e _e9529495304_)))
                        (let ((_hd9529895315_ (##car _e9529795312_))
                              (_tl9529995317_ (##cdr _e9529795312_)))
                          (if (gx#stx-pair? _tl9529995317_)
                              (let ((_e9530095320_
                                     (gx#syntax-e _tl9529995317_)))
                                (let ((_hd9530195323_ (##car _e9530095320_))
                                      (_tl9530295325_ (##cdr _e9530095320_)))
                                  (let ((_e95328_ _hd9530195323_))
                                    (if (gx#stx-null? _tl9530295325_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e95328_)
                                                        '()))
                                            (_E9529695308_))
                                        (_E9529695308_)))))
                              (_E9529695308_))))
                      (_E9529695308_)))))
          (_E9529595330_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx95252_)
        (let* ((_e9525395263_ _stx95252_)
               (_E9525595267_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9525395263_)))
               (_E9525495289_
                (lambda ()
                  (if (gx#stx-pair? _e9525395263_)
                      (let ((_e9525695271_ (gx#syntax-e _e9525395263_)))
                        (let ((_hd9525795274_ (##car _e9525695271_))
                              (_tl9525895276_ (##cdr _e9525695271_)))
                          (if (gx#stx-pair? _tl9525895276_)
                              (let ((_e9525995279_
                                     (gx#syntax-e _tl9525895276_)))
                                (let ((_hd9526095282_ (##car _e9525995279_))
                                      (_tl9526195284_ (##cdr _e9525995279_)))
                                  (let ((_e95287_ _hd9526095282_))
                                    (if (gx#stx-null? _tl9526195284_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e95287_)
                                                        '()))
                                            (_E9525595267_))
                                        (_E9525595267_)))))
                              (_E9525595267_))))
                      (_E9525595267_)))))
          (_E9525495289_))))
    (define gx#core-compile-top-call%
      (lambda (_stx95209_)
        (let* ((_e9521095220_ _stx95209_)
               (_E9521295224_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9521095220_)))
               (_E9521195248_
                (lambda ()
                  (if (gx#stx-pair? _e9521095220_)
                      (let ((_e9521395228_ (gx#syntax-e _e9521095220_)))
                        (let ((_hd9521495231_ (##car _e9521395228_))
                              (_tl9521595233_ (##cdr _e9521395228_)))
                          (if (gx#stx-pair? _tl9521595233_)
                              (let ((_e9521695236_
                                     (gx#syntax-e _tl9521595233_)))
                                (let ((_hd9521795239_ (##car _e9521695236_))
                                      (_tl9521895241_ (##cdr _e9521695236_)))
                                  (let* ((_rator95244_ _hd9521795239_)
                                         (_args95246_ _tl9521895241_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator95244_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args95246_)))
                                        (_E9521295224_)))))
                              (_E9521295224_))))
                      (_E9521295224_)))))
          (_E9521195248_))))
    (define gx#core-compile-top-if%
      (lambda (_stx95142_)
        (let* ((_e9514395159_ _stx95142_)
               (_E9514595163_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9514395159_)))
               (_E9514495205_
                (lambda ()
                  (if (gx#stx-pair? _e9514395159_)
                      (let ((_e9514695167_ (gx#syntax-e _e9514395159_)))
                        (let ((_hd9514795170_ (##car _e9514695167_))
                              (_tl9514895172_ (##cdr _e9514695167_)))
                          (if (gx#stx-pair? _tl9514895172_)
                              (let ((_e9514995175_
                                     (gx#syntax-e _tl9514895172_)))
                                (let ((_hd9515095178_ (##car _e9514995175_))
                                      (_tl9515195180_ (##cdr _e9514995175_)))
                                  (let ((_test95183_ _hd9515095178_))
                                    (if (gx#stx-pair? _tl9515195180_)
                                        (let ((_e9515295185_
                                               (gx#syntax-e _tl9515195180_)))
                                          (let ((_hd9515395188_
                                                 (##car _e9515295185_))
                                                (_tl9515495190_
                                                 (##cdr _e9515295185_)))
                                            (let ((_K95193_ _hd9515395188_))
                                              (if (gx#stx-pair? _tl9515495190_)
                                                  (let ((_e9515595195_
                                                         (gx#syntax-e
                                                          _tl9515495190_)))
                                                    (let ((_hd9515695198_
                                                           (##car _e9515595195_))
                                                          (_tl9515795200_
                                                           (##cdr _e9515595195_)))
                                                      (let ((_E95203_
                                                             _hd9515695198_))
                                                        (if (gx#stx-null?
                                                             _tl9515795200_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test95183_)
                                    (cons (gx#core-compile-top-syntax _K95193_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E95203_)
                                                '()))))
                        (_E9514595163_))
                    (_E9514595163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9514595163_)))))
                                        (_E9514595163_)))))
                              (_E9514595163_))))
                      (_E9514595163_)))))
          (_E9514495205_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx95101_)
        (let* ((_e9510295112_ _stx95101_)
               (_E9510495116_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9510295112_)))
               (_E9510395138_
                (lambda ()
                  (if (gx#stx-pair? _e9510295112_)
                      (let ((_e9510595120_ (gx#syntax-e _e9510295112_)))
                        (let ((_hd9510695123_ (##car _e9510595120_))
                              (_tl9510795125_ (##cdr _e9510595120_)))
                          (if (gx#stx-pair? _tl9510795125_)
                              (let ((_e9510895128_
                                     (gx#syntax-e _tl9510795125_)))
                                (let ((_hd9510995131_ (##car _e9510895128_))
                                      (_tl9511095133_ (##cdr _e9510895128_)))
                                  (let ((_id95136_ _hd9510995131_))
                                    (if (gx#stx-null? _tl9511095133_)
                                        (if (gx#identifier? _id95136_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id95136_)
                                                        '()))
                                            (_E9510495116_))
                                        (_E9510495116_)))))
                              (_E9510495116_))))
                      (_E9510495116_)))))
          (_E9510395138_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx95047_)
        (let* ((_e9504895061_ _stx95047_)
               (_E9505095065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9504895061_)))
               (_E9504995097_
                (lambda ()
                  (if (gx#stx-pair? _e9504895061_)
                      (let ((_e9505195069_ (gx#syntax-e _e9504895061_)))
                        (let ((_hd9505295072_ (##car _e9505195069_))
                              (_tl9505395074_ (##cdr _e9505195069_)))
                          (if (gx#stx-pair? _tl9505395074_)
                              (let ((_e9505495077_
                                     (gx#syntax-e _tl9505395074_)))
                                (let ((_hd9505595080_ (##car _e9505495077_))
                                      (_tl9505695082_ (##cdr _e9505495077_)))
                                  (let ((_id95085_ _hd9505595080_))
                                    (if (gx#stx-pair? _tl9505695082_)
                                        (let ((_e9505795087_
                                               (gx#syntax-e _tl9505695082_)))
                                          (let ((_hd9505895090_
                                                 (##car _e9505795087_))
                                                (_tl9505995092_
                                                 (##cdr _e9505795087_)))
                                            (let ((_expr95095_ _hd9505895090_))
                                              (if (gx#stx-null? _tl9505995092_)
                                                  (if (gx#identifier?
                                                       _id95085_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id95085_)
                          (cons (gx#core-compile-top-syntax _expr95095_) '())))
              (_E9505095065_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9505095065_)))))
                                        (_E9505095065_)))))
                              (_E9505095065_))))
                      (_E9505095065_)))))
          (_E9504995097_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id95042_)
        (let ((_$e95044_ (gx#resolve-identifier__0 _id95042_)))
          (if _$e95044_
              (##unchecked-structure-ref _$e95044_ '1 gx#binding::t '#f)
              _id95042_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd95040_)
        (if (gx#identifier? _hd95040_)
            (gx#core-compile-top-runtime-ref _hd95040_)
            '#f)))))
