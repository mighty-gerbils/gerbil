(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1708337965)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_stx178772_)
        (let* ((_e178773178780_ _stx178772_)
               (_E178775178784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178773178780_)))
               (_E178774178798_
                (lambda ()
                  (if (gx#stx-pair? _e178773178780_)
                      (let ((_e178776178788_ (gx#syntax-e _e178773178780_)))
                        (let ((_hd178777178791_ (##car _e178776178788_))
                              (_tl178778178793_ (##cdr _e178776178788_)))
                          (let ((_form178796_ _hd178777178791_))
                            (if '#t
                                (let* ((__self182787
                                        (gx#syntax-local-e__0 _form178796_))
                                       (__method182788
                                        (method-ref
                                         __self182787
                                         'compile-top-syntax)))
                                  (if __method182788
                                      (__method182788 __self182787 _stx178772_)
                                      (error '"Missing method"
                                             __self182787
                                             'compile-top-syntax)))
                                (_E178775178784_)))))
                      (_E178775178784_)))))
          (_E178774178798_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_self178732_ _stx178733_)
        (let* ((_self178734178742_ _self178732_)
               (_E178736178746_
                (lambda () (error '"No clause matching" _self178734178742_)))
               (_K178737178758_
                (lambda (_K178749_)
                  (let ((_$e178751_ (gx#stx-source _stx178733_)))
                    (if _$e178751_
                        ((lambda (_g178753178755_)
                           (gx#stx-wrap-source
                            (_K178749_ _stx178733_)
                            _g178753178755_))
                         _$e178751_)
                        (_K178749_ _stx178733_))))))
          (if (##structure-instance-of?
               _self178734178742_
               'gx#core-expander::t)
              (let* ((_e178738178761_
                      (##unchecked-structure-ref
                       _self178734178742_
                       '1
                       gx#expander::t
                       '#f))
                     (_e178739178764_
                      (##unchecked-structure-ref
                       _self178734178742_
                       '2
                       gx#core-expander::t
                       '#f))
                     (_e178740178767_
                      (##unchecked-structure-ref
                       _self178734178742_
                       '3
                       gx#core-expander::t
                       '#f))
                     (_K178770_ _e178740178767_))
                (_K178737178758_ _K178770_))
              (_E178736178746_)))))
    (bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_stx178606_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _stx178606_)))
    (define gx#core-compile-top-begin%
      (lambda (_stx178576_)
        (let* ((_e178577178584_ _stx178576_)
               (_E178579178588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178577178584_)))
               (_E178578178602_
                (lambda ()
                  (if (gx#stx-pair? _e178577178584_)
                      (let ((_e178580178592_ (gx#syntax-e _e178577178584_)))
                        (let ((_hd178581178595_ (##car _e178580178592_))
                              (_tl178582178597_ (##cdr _e178580178592_)))
                          (let ((_body178600_ _tl178582178597_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _body178600_))
                                (_E178579178588_)))))
                      (_E178579178588_)))))
          (_E178578178602_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_stx178545_)
        (let* ((_e178546178553_ _stx178545_)
               (_E178548178557_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178546178553_)))
               (_E178547178572_
                (lambda ()
                  (if (gx#stx-pair? _e178546178553_)
                      (let ((_e178549178561_ (gx#syntax-e _e178546178553_)))
                        (let ((_hd178550178564_ (##car _e178549178561_))
                              (_tl178551178566_ (##cdr _e178549178561_)))
                          (let ((_body178569_ _tl178551178566_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _body178569_))
                                       gx#current-expander-phi
                                       (fx+ (gx#current-expander-phi) '1)))
                                (_E178548178557_)))))
                      (_E178548178557_)))))
          (_E178547178572_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_stx178515_)
        (let* ((_e178516178523_ _stx178515_)
               (_E178518178527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178516178523_)))
               (_E178517178541_
                (lambda ()
                  (if (gx#stx-pair? _e178516178523_)
                      (let ((_e178519178531_ (gx#syntax-e _e178516178523_)))
                        (let ((_hd178520178534_ (##car _e178519178531_))
                              (_tl178521178536_ (##cdr _e178519178531_)))
                          (let ((_body178539_ _tl178521178536_))
                            (if '#t
                                (cons '%#begin-foreign _body178539_)
                                (_E178518178527_)))))
                      (_E178518178527_)))))
          (_E178517178541_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_stx178461_)
        (let* ((_e178462178475_ _stx178461_)
               (_E178464178479_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178462178475_)))
               (_E178463178511_
                (lambda ()
                  (if (gx#stx-pair? _e178462178475_)
                      (let ((_e178465178483_ (gx#syntax-e _e178462178475_)))
                        (let ((_hd178466178486_ (##car _e178465178483_))
                              (_tl178467178488_ (##cdr _e178465178483_)))
                          (if (gx#stx-pair? _tl178467178488_)
                              (let ((_e178468178491_
                                     (gx#syntax-e _tl178467178488_)))
                                (let ((_hd178469178494_
                                       (##car _e178468178491_))
                                      (_tl178470178496_
                                       (##cdr _e178468178491_)))
                                  (let ((_ann178499_ _hd178469178494_))
                                    (if (gx#stx-pair? _tl178470178496_)
                                        (let ((_e178471178501_
                                               (gx#syntax-e _tl178470178496_)))
                                          (let ((_hd178472178504_
                                                 (##car _e178471178501_))
                                                (_tl178473178506_
                                                 (##cdr _e178471178501_)))
                                            (let ((_expr178509_
                                                   _hd178472178504_))
                                              (if (gx#stx-null?
                                                   _tl178473178506_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _expr178509_)
                                                      (_E178464178479_))
                                                  (_E178464178479_)))))
                                        (_E178464178479_)))))
                              (_E178464178479_))))
                      (_E178464178479_)))))
          (_E178463178511_))))
    (define gx#core-compile-top-import%
      (lambda (_stx178431_)
        (let* ((_e178432178439_ _stx178431_)
               (_E178434178443_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178432178439_)))
               (_E178433178457_
                (lambda ()
                  (if (gx#stx-pair? _e178432178439_)
                      (let ((_e178435178447_ (gx#syntax-e _e178432178439_)))
                        (let ((_hd178436178450_ (##car _e178435178447_))
                              (_tl178437178452_ (##cdr _e178435178447_)))
                          (let ((_body178455_ _tl178437178452_))
                            (if '#t
                                (cons '%#import _body178455_)
                                (_E178434178443_)))))
                      (_E178434178443_)))))
          (_E178433178457_))))
    (define gx#core-compile-top-module%
      (lambda (_stx178388_)
        (let* ((_e178389178399_ _stx178388_)
               (_E178391178403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178389178399_)))
               (_E178390178427_
                (lambda ()
                  (if (gx#stx-pair? _e178389178399_)
                      (let ((_e178392178407_ (gx#syntax-e _e178389178399_)))
                        (let ((_hd178393178410_ (##car _e178392178407_))
                              (_tl178394178412_ (##cdr _e178392178407_)))
                          (if (gx#stx-pair? _tl178394178412_)
                              (let ((_e178395178415_
                                     (gx#syntax-e _tl178394178412_)))
                                (let ((_hd178396178418_
                                       (##car _e178395178415_))
                                      (_tl178397178420_
                                       (##cdr _e178395178415_)))
                                  (let* ((_hd178423_ _hd178396178418_)
                                         (_body178425_ _tl178397178420_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _hd178423_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _body178425_)))
                                        (_E178391178403_)))))
                              (_E178391178403_))))
                      (_E178391178403_)))))
          (_E178390178427_))))
    (define gx#core-compile-top-export%
      (lambda (_stx178358_)
        (let* ((_e178359178366_ _stx178358_)
               (_E178361178370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178359178366_)))
               (_E178360178384_
                (lambda ()
                  (if (gx#stx-pair? _e178359178366_)
                      (let ((_e178362178374_ (gx#syntax-e _e178359178366_)))
                        (let ((_hd178363178377_ (##car _e178362178374_))
                              (_tl178364178379_ (##cdr _e178362178374_)))
                          (let ((_body178382_ _tl178364178379_))
                            (if '#t
                                (cons '%#export _body178382_)
                                (_E178361178370_)))))
                      (_E178361178370_)))))
          (_E178360178384_))))
    (define gx#core-compile-top-provide%
      (lambda (_stx178328_)
        (let* ((_e178329178336_ _stx178328_)
               (_E178331178340_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178329178336_)))
               (_E178330178354_
                (lambda ()
                  (if (gx#stx-pair? _e178329178336_)
                      (let ((_e178332178344_ (gx#syntax-e _e178329178336_)))
                        (let ((_hd178333178347_ (##car _e178332178344_))
                              (_tl178334178349_ (##cdr _e178332178344_)))
                          (let ((_body178352_ _tl178334178349_))
                            (if '#t
                                (cons '%#provide _body178352_)
                                (_E178331178340_)))))
                      (_E178331178340_)))))
          (_E178330178354_))))
    (define gx#core-compile-top-extern%
      (lambda (_stx178298_)
        (let* ((_e178299178306_ _stx178298_)
               (_E178301178310_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178299178306_)))
               (_E178300178324_
                (lambda ()
                  (if (gx#stx-pair? _e178299178306_)
                      (let ((_e178302178314_ (gx#syntax-e _e178299178306_)))
                        (let ((_hd178303178317_ (##car _e178302178314_))
                              (_tl178304178319_ (##cdr _e178302178314_)))
                          (let ((_body178322_ _tl178304178319_))
                            (if '#t
                                (cons '%#extern _body178322_)
                                (_E178301178310_)))))
                      (_E178301178310_)))))
          (_E178300178324_))))
    (define gx#core-compile-top-define-values%
      (lambda (_stx178244_)
        (let* ((_e178245178258_ _stx178244_)
               (_E178247178262_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178245178258_)))
               (_E178246178294_
                (lambda ()
                  (if (gx#stx-pair? _e178245178258_)
                      (let ((_e178248178266_ (gx#syntax-e _e178245178258_)))
                        (let ((_hd178249178269_ (##car _e178248178266_))
                              (_tl178250178271_ (##cdr _e178248178266_)))
                          (if (gx#stx-pair? _tl178250178271_)
                              (let ((_e178251178274_
                                     (gx#syntax-e _tl178250178271_)))
                                (let ((_hd178252178277_
                                       (##car _e178251178274_))
                                      (_tl178253178279_
                                       (##cdr _e178251178274_)))
                                  (let ((_hd178282_ _hd178252178277_))
                                    (if (gx#stx-pair? _tl178253178279_)
                                        (let ((_e178254178284_
                                               (gx#syntax-e _tl178253178279_)))
                                          (let ((_hd178255178287_
                                                 (##car _e178254178284_))
                                                (_tl178256178289_
                                                 (##cdr _e178254178284_)))
                                            (let ((_expr178292_
                                                   _hd178255178287_))
                                              (if (gx#stx-null?
                                                   _tl178256178289_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _hd178282_)
                          (cons (gx#core-compile-top-syntax _expr178292_)
                                '())))
              (_E178247178262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178247178262_)))))
                                        (_E178247178262_)))))
                              (_E178247178262_))))
                      (_E178247178262_)))))
          (_E178246178294_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_stx178189_)
        (let* ((_e178190178203_ _stx178189_)
               (_E178192178207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178190178203_)))
               (_E178191178240_
                (lambda ()
                  (if (gx#stx-pair? _e178190178203_)
                      (let ((_e178193178211_ (gx#syntax-e _e178190178203_)))
                        (let ((_hd178194178214_ (##car _e178193178211_))
                              (_tl178195178216_ (##cdr _e178193178211_)))
                          (if (gx#stx-pair? _tl178195178216_)
                              (let ((_e178196178219_
                                     (gx#syntax-e _tl178195178216_)))
                                (let ((_hd178197178222_
                                       (##car _e178196178219_))
                                      (_tl178198178224_
                                       (##cdr _e178196178219_)))
                                  (let ((_hd178227_ _hd178197178222_))
                                    (if (gx#stx-pair? _tl178198178224_)
                                        (let ((_e178199178229_
                                               (gx#syntax-e _tl178198178224_)))
                                          (let ((_hd178200178232_
                                                 (##car _e178199178229_))
                                                (_tl178201178234_
                                                 (##cdr _e178199178229_)))
                                            (let ((_expr178237_
                                                   _hd178200178232_))
                                              (if (gx#stx-null?
                                                   _tl178201178234_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _hd178227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _expr178237_))
                                 gx#current-expander-phi
                                 (fx+ (gx#current-expander-phi) '1))
                                '())))
              (_E178192178207_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E178192178207_)))))
                                        (_E178192178207_)))))
                              (_E178192178207_))))
                      (_E178192178207_)))))
          (_E178191178240_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_stx178159_)
        (let* ((_e178160178167_ _stx178159_)
               (_E178162178171_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178160178167_)))
               (_E178161178185_
                (lambda ()
                  (if (gx#stx-pair? _e178160178167_)
                      (let ((_e178163178175_ (gx#syntax-e _e178160178167_)))
                        (let ((_hd178164178178_ (##car _e178163178175_))
                              (_tl178165178180_ (##cdr _e178163178175_)))
                          (let ((_body178183_ _tl178165178180_))
                            (if '#t
                                (cons '%#define-alias _body178183_)
                                (_E178162178171_)))))
                      (_E178162178171_)))))
          (_E178161178185_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_stx178129_)
        (let* ((_e178130178137_ _stx178129_)
               (_E178132178141_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178130178137_)))
               (_E178131178155_
                (lambda ()
                  (if (gx#stx-pair? _e178130178137_)
                      (let ((_e178133178145_ (gx#syntax-e _e178130178137_)))
                        (let ((_hd178134178148_ (##car _e178133178145_))
                              (_tl178135178150_ (##cdr _e178133178145_)))
                          (let ((_body178153_ _tl178135178150_))
                            (if '#t
                                (cons '%#define-runtime _body178153_)
                                (_E178132178141_)))))
                      (_E178132178141_)))))
          (_E178131178155_))))
    (define gx#core-compile-top-declare%
      (lambda (_stx178099_)
        (let* ((_e178100178107_ _stx178099_)
               (_E178102178111_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178100178107_)))
               (_E178101178125_
                (lambda ()
                  (if (gx#stx-pair? _e178100178107_)
                      (let ((_e178103178115_ (gx#syntax-e _e178100178107_)))
                        (let ((_hd178104178118_ (##car _e178103178115_))
                              (_tl178105178120_ (##cdr _e178103178115_)))
                          (let ((_decls178123_ _tl178105178120_))
                            (if '#t
                                (cons '%#declare _decls178123_)
                                (_E178102178111_)))))
                      (_E178102178111_)))))
          (_E178101178125_))))
    (define gx#core-compile-top-lambda%
      (lambda (_stx178069_)
        (let* ((_e178070178077_ _stx178069_)
               (_E178072178081_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178070178077_)))
               (_E178071178095_
                (lambda ()
                  (if (gx#stx-pair? _e178070178077_)
                      (let ((_e178073178085_ (gx#syntax-e _e178070178077_)))
                        (let ((_hd178074178088_ (##car _e178073178085_))
                              (_tl178075178090_ (##cdr _e178073178085_)))
                          (let ((_clause178093_ _tl178075178090_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _clause178093_))
                                (_E178072178081_)))))
                      (_E178072178081_)))))
          (_E178071178095_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_stx178026_)
        (let* ((_e178027178037_ _stx178026_)
               (_E178029178041_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e178027178037_)))
               (_E178028178065_
                (lambda ()
                  (if (gx#stx-pair? _e178027178037_)
                      (let ((_e178030178045_ (gx#syntax-e _e178027178037_)))
                        (let ((_hd178031178048_ (##car _e178030178045_))
                              (_tl178032178050_ (##cdr _e178030178045_)))
                          (let ((_hd178053_ _hd178031178048_))
                            (if (gx#stx-pair? _tl178032178050_)
                                (let ((_e178033178055_
                                       (gx#syntax-e _tl178032178050_)))
                                  (let ((_hd178034178058_
                                         (##car _e178033178055_))
                                        (_tl178035178060_
                                         (##cdr _e178033178055_)))
                                    (let ((_body178063_ _hd178034178058_))
                                      (if (gx#stx-null? _tl178035178060_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _hd178053_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _body178063_)
                                                          '()))
                                              (_E178029178041_))
                                          (_E178029178041_)))))
                                (_E178029178041_)))))
                      (_E178029178041_)))))
          (_E178028178065_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_stx177996_)
        (let* ((_e177997178004_ _stx177996_)
               (_E177999178008_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177997178004_)))
               (_E177998178022_
                (lambda ()
                  (if (gx#stx-pair? _e177997178004_)
                      (let ((_e178000178012_ (gx#syntax-e _e177997178004_)))
                        (let ((_hd178001178015_ (##car _e178000178012_))
                              (_tl178002178017_ (##cdr _e178000178012_)))
                          (let ((_clauses178020_ _tl178002178017_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _clauses178020_))
                                (_E177999178008_)))))
                      (_E177999178008_)))))
          (_E177998178022_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_stx177931_ _form177932_)
        (let* ((_e177933177946_ _stx177931_)
               (_E177935177950_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177933177946_)))
               (_E177934177982_
                (lambda ()
                  (if (gx#stx-pair? _e177933177946_)
                      (let ((_e177936177954_ (gx#syntax-e _e177933177946_)))
                        (let ((_hd177937177957_ (##car _e177936177954_))
                              (_tl177938177959_ (##cdr _e177936177954_)))
                          (if (gx#stx-pair? _tl177938177959_)
                              (let ((_e177939177962_
                                     (gx#syntax-e _tl177938177959_)))
                                (let ((_hd177940177965_
                                       (##car _e177939177962_))
                                      (_tl177941177967_
                                       (##cdr _e177939177962_)))
                                  (let ((_hd177970_ _hd177940177965_))
                                    (if (gx#stx-pair? _tl177941177967_)
                                        (let ((_e177942177972_
                                               (gx#syntax-e _tl177941177967_)))
                                          (let ((_hd177943177975_
                                                 (##car _e177942177972_))
                                                (_tl177944177977_
                                                 (##cdr _e177942177972_)))
                                            (let ((_body177980_
                                                   _hd177943177975_))
                                              (if (gx#stx-null?
                                                   _tl177944177977_)
                                                  (if '#t
                                                      (cons _form177932_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _hd177970_)
                          (cons (gx#core-compile-top-syntax _body177980_)
                                '())))
              (_E177935177950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E177935177950_)))))
                                        (_E177935177950_)))))
                              (_E177935177950_))))
                      (_E177935177950_)))))
          (_E177934177982_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_stx177989_)
        (let ((_form177991_ '%#let-values))
          (gx#core-compile-top-let-values%__% _stx177989_ _form177991_))))
    (define gx#core-compile-top-let-values%
      (lambda _g182790_
        (let ((_g182789_ (##length _g182790_)))
          (cond ((##fx= _g182789_ 1)
                 (apply (lambda (_stx177989_)
                          (gx#core-compile-top-let-values%__0 _stx177989_))
                        _g182790_))
                ((##fx= _g182789_ 2)
                 (apply (lambda (_stx177993_ _form177994_)
                          (gx#core-compile-top-let-values%__%
                           _stx177993_
                           _form177994_))
                        _g182790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g182790_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_stx177928_)
        (gx#core-compile-top-let-values%__% _stx177928_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_stx177926_)
        (gx#core-compile-top-let-values%__% _stx177926_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_stx177885_)
        (let* ((_e177886177896_ _stx177885_)
               (_E177888177900_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177886177896_)))
               (_E177887177922_
                (lambda ()
                  (if (gx#stx-pair? _e177886177896_)
                      (let ((_e177889177904_ (gx#syntax-e _e177886177896_)))
                        (let ((_hd177890177907_ (##car _e177889177904_))
                              (_tl177891177909_ (##cdr _e177889177904_)))
                          (if (gx#stx-pair? _tl177891177909_)
                              (let ((_e177892177912_
                                     (gx#syntax-e _tl177891177909_)))
                                (let ((_hd177893177915_
                                       (##car _e177892177912_))
                                      (_tl177894177917_
                                       (##cdr _e177892177912_)))
                                  (let ((_e177920_ _hd177893177915_))
                                    (if (gx#stx-null? _tl177894177917_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _e177920_)
                                                        '()))
                                            (_E177888177900_))
                                        (_E177888177900_)))))
                              (_E177888177900_))))
                      (_E177888177900_)))))
          (_E177887177922_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_stx177844_)
        (let* ((_e177845177855_ _stx177844_)
               (_E177847177859_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177845177855_)))
               (_E177846177881_
                (lambda ()
                  (if (gx#stx-pair? _e177845177855_)
                      (let ((_e177848177863_ (gx#syntax-e _e177845177855_)))
                        (let ((_hd177849177866_ (##car _e177848177863_))
                              (_tl177850177868_ (##cdr _e177848177863_)))
                          (if (gx#stx-pair? _tl177850177868_)
                              (let ((_e177851177871_
                                     (gx#syntax-e _tl177850177868_)))
                                (let ((_hd177852177874_
                                       (##car _e177851177871_))
                                      (_tl177853177876_
                                       (##cdr _e177851177871_)))
                                  (let ((_e177879_ _hd177852177874_))
                                    (if (gx#stx-null? _tl177853177876_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _e177879_)
                                                        '()))
                                            (_E177847177859_))
                                        (_E177847177859_)))))
                              (_E177847177859_))))
                      (_E177847177859_)))))
          (_E177846177881_))))
    (define gx#core-compile-top-call%
      (lambda (_stx177801_)
        (let* ((_e177802177812_ _stx177801_)
               (_E177804177816_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177802177812_)))
               (_E177803177840_
                (lambda ()
                  (if (gx#stx-pair? _e177802177812_)
                      (let ((_e177805177820_ (gx#syntax-e _e177802177812_)))
                        (let ((_hd177806177823_ (##car _e177805177820_))
                              (_tl177807177825_ (##cdr _e177805177820_)))
                          (if (gx#stx-pair? _tl177807177825_)
                              (let ((_e177808177828_
                                     (gx#syntax-e _tl177807177825_)))
                                (let ((_hd177809177831_
                                       (##car _e177808177828_))
                                      (_tl177810177833_
                                       (##cdr _e177808177828_)))
                                  (let* ((_rator177836_ _hd177809177831_)
                                         (_args177838_ _tl177810177833_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _rator177836_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _args177838_)))
                                        (_E177804177816_)))))
                              (_E177804177816_))))
                      (_E177804177816_)))))
          (_E177803177840_))))
    (define gx#core-compile-top-if%
      (lambda (_stx177734_)
        (let* ((_e177735177751_ _stx177734_)
               (_E177737177755_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177735177751_)))
               (_E177736177797_
                (lambda ()
                  (if (gx#stx-pair? _e177735177751_)
                      (let ((_e177738177759_ (gx#syntax-e _e177735177751_)))
                        (let ((_hd177739177762_ (##car _e177738177759_))
                              (_tl177740177764_ (##cdr _e177738177759_)))
                          (if (gx#stx-pair? _tl177740177764_)
                              (let ((_e177741177767_
                                     (gx#syntax-e _tl177740177764_)))
                                (let ((_hd177742177770_
                                       (##car _e177741177767_))
                                      (_tl177743177772_
                                       (##cdr _e177741177767_)))
                                  (let ((_test177775_ _hd177742177770_))
                                    (if (gx#stx-pair? _tl177743177772_)
                                        (let ((_e177744177777_
                                               (gx#syntax-e _tl177743177772_)))
                                          (let ((_hd177745177780_
                                                 (##car _e177744177777_))
                                                (_tl177746177782_
                                                 (##cdr _e177744177777_)))
                                            (let ((_K177785_ _hd177745177780_))
                                              (if (gx#stx-pair?
                                                   _tl177746177782_)
                                                  (let ((_e177747177787_
                                                         (gx#syntax-e
                                                          _tl177746177782_)))
                                                    (let ((_hd177748177790_
                                                           (##car _e177747177787_))
                                                          (_tl177749177792_
                                                           (##cdr _e177747177787_)))
                                                      (let ((_E177795_
                                                             _hd177748177790_))
                                                        (if (gx#stx-null?
                                                             _tl177749177792_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _test177775_)
                                    (cons (gx#core-compile-top-syntax
                                           _K177785_)
                                          (cons (gx#core-compile-top-syntax
                                                 _E177795_)
                                                '()))))
                        (_E177737177755_))
                    (_E177737177755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E177737177755_)))))
                                        (_E177737177755_)))))
                              (_E177737177755_))))
                      (_E177737177755_)))))
          (_E177736177797_))))
    (define gx#core-compile-top-ref%
      (lambda (_stx177693_)
        (let* ((_e177694177704_ _stx177693_)
               (_E177696177708_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177694177704_)))
               (_E177695177730_
                (lambda ()
                  (if (gx#stx-pair? _e177694177704_)
                      (let ((_e177697177712_ (gx#syntax-e _e177694177704_)))
                        (let ((_hd177698177715_ (##car _e177697177712_))
                              (_tl177699177717_ (##cdr _e177697177712_)))
                          (if (gx#stx-pair? _tl177699177717_)
                              (let ((_e177700177720_
                                     (gx#syntax-e _tl177699177717_)))
                                (let ((_hd177701177723_
                                       (##car _e177700177720_))
                                      (_tl177702177725_
                                       (##cdr _e177700177720_)))
                                  (let ((_id177728_ _hd177701177723_))
                                    (if (gx#stx-null? _tl177702177725_)
                                        (if (gx#identifier? _id177728_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _id177728_)
                                                        '()))
                                            (_E177696177708_))
                                        (_E177696177708_)))))
                              (_E177696177708_))))
                      (_E177696177708_)))))
          (_E177695177730_))))
    (define gx#core-compile-top-setq%
      (lambda (_stx177639_)
        (let* ((_e177640177653_ _stx177639_)
               (_E177642177657_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e177640177653_)))
               (_E177641177689_
                (lambda ()
                  (if (gx#stx-pair? _e177640177653_)
                      (let ((_e177643177661_ (gx#syntax-e _e177640177653_)))
                        (let ((_hd177644177664_ (##car _e177643177661_))
                              (_tl177645177666_ (##cdr _e177643177661_)))
                          (if (gx#stx-pair? _tl177645177666_)
                              (let ((_e177646177669_
                                     (gx#syntax-e _tl177645177666_)))
                                (let ((_hd177647177672_
                                       (##car _e177646177669_))
                                      (_tl177648177674_
                                       (##cdr _e177646177669_)))
                                  (let ((_id177677_ _hd177647177672_))
                                    (if (gx#stx-pair? _tl177648177674_)
                                        (let ((_e177649177679_
                                               (gx#syntax-e _tl177648177674_)))
                                          (let ((_hd177650177682_
                                                 (##car _e177649177679_))
                                                (_tl177651177684_
                                                 (##cdr _e177649177679_)))
                                            (let ((_expr177687_
                                                   _hd177650177682_))
                                              (if (gx#stx-null?
                                                   _tl177651177684_)
                                                  (if (gx#identifier?
                                                       _id177677_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _id177677_)
                          (cons (gx#core-compile-top-syntax _expr177687_)
                                '())))
              (_E177642177657_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E177642177657_)))))
                                        (_E177642177657_)))))
                              (_E177642177657_))))
                      (_E177642177657_)))))
          (_E177641177689_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_id177634_)
        (let ((_$e177636_ (gx#resolve-identifier__0 _id177634_)))
          (if _$e177636_
              (##unchecked-structure-ref _$e177636_ '1 gx#binding::t '#f)
              _id177634_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_hd177632_)
        (if (gx#identifier? _hd177632_)
            (gx#core-compile-top-runtime-ref _hd177632_)
            '#f)))))
