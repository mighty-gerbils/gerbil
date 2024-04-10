(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712757955)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126846%_)
        (let* ((_%e126847126854%_ _%stx126846%_)
               (_%E126849126858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126847126854%_)))
               (_%E126848126872%_
                (lambda ()
                  (if (gx#stx-pair? _%e126847126854%_)
                      (let ((_%e126850126862%_
                             (gx#syntax-e _%e126847126854%_)))
                        (let ((_%hd126851126865%_ (##car _%e126850126862%_))
                              (_%tl126852126867%_ (##cdr _%e126850126862%_)))
                          (let ((_%form126870%_ _%hd126851126865%_))
                            (if '#t
                                (let* ((__self126875
                                        (gx#syntax-local-e__0 _%form126870%_))
                                       (__method126876
                                        (__method-ref
                                         __self126875
                                         'compile-top-syntax)))
                                  (if __method126876
                                      (__method126876
                                       __self126875
                                       _%stx126846%_)
                                      (begin
                                        (error '"Missing method"
                                               __self126875
                                               'compile-top-syntax)
                                        '#!void)))
                                (_%E126849126858%_)))))
                      (_%E126849126858%_)))))
          (_%E126848126872%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126794%_ _%stx126795%_)
        (let* ((_%self126798%_ _%self126794%_)
               (_%self126807126815%_ _%self126798%_)
               (_%E126809126819%_
                (lambda ()
                  (error '"No clause matching"
                         _%self126807126815%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K126810126832%_
                (lambda (_%K126822%_)
                  (let ((_%$e126824%_ (gx#stx-source _%stx126795%_)))
                    (if _%$e126824%_
                        ((lambda (_%g126826126828%_)
                           (gx#stx-wrap-source
                            (_%K126822%_ _%stx126795%_)
                            _%g126826126828%_))
                         _%$e126824%_)
                        (_%K126822%_ _%stx126795%_))))))
          (if '#t
              (let* ((_%e126811126835%_
                      (##unchecked-structure-ref
                       _%self126807126815%_
                       '1
                       '#f
                       '#f))
                     (_%e126812126838%_
                      (##unchecked-structure-ref
                       _%self126807126815%_
                       '2
                       '#f
                       '#f))
                     (_%e126813126841%_
                      (##unchecked-structure-ref
                       _%self126807126815%_
                       '3
                       '#f
                       '#f))
                     (_%K126844%_ _%e126813126841%_))
                (_%K126810126832%_ _%K126844%_))
              (_%E126809126819%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126668%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126668%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126638%_)
        (let* ((_%e126639126646%_ _%stx126638%_)
               (_%E126641126650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126639126646%_)))
               (_%E126640126664%_
                (lambda ()
                  (if (gx#stx-pair? _%e126639126646%_)
                      (let ((_%e126642126654%_
                             (gx#syntax-e _%e126639126646%_)))
                        (let ((_%hd126643126657%_ (##car _%e126642126654%_))
                              (_%tl126644126659%_ (##cdr _%e126642126654%_)))
                          (let ((_%body126662%_ _%tl126644126659%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126662%_))
                                (_%E126641126650%_)))))
                      (_%E126641126650%_)))))
          (_%E126640126664%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126607%_)
        (let* ((_%e126608126615%_ _%stx126607%_)
               (_%E126610126619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126608126615%_)))
               (_%E126609126634%_
                (lambda ()
                  (if (gx#stx-pair? _%e126608126615%_)
                      (let ((_%e126611126623%_
                             (gx#syntax-e _%e126608126615%_)))
                        (let ((_%hd126612126626%_ (##car _%e126611126623%_))
                              (_%tl126613126628%_ (##cdr _%e126611126623%_)))
                          (let ((_%body126631%_ _%tl126613126628%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126631%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126610126619%_)))))
                      (_%E126610126619%_)))))
          (_%E126609126634%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126577%_)
        (let* ((_%e126578126585%_ _%stx126577%_)
               (_%E126580126589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126578126585%_)))
               (_%E126579126603%_
                (lambda ()
                  (if (gx#stx-pair? _%e126578126585%_)
                      (let ((_%e126581126593%_
                             (gx#syntax-e _%e126578126585%_)))
                        (let ((_%hd126582126596%_ (##car _%e126581126593%_))
                              (_%tl126583126598%_ (##cdr _%e126581126593%_)))
                          (let ((_%body126601%_ _%tl126583126598%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126601%_)
                                (_%E126580126589%_)))))
                      (_%E126580126589%_)))))
          (_%E126579126603%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126523%_)
        (let* ((_%e126524126537%_ _%stx126523%_)
               (_%E126526126541%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126524126537%_)))
               (_%E126525126573%_
                (lambda ()
                  (if (gx#stx-pair? _%e126524126537%_)
                      (let ((_%e126527126545%_
                             (gx#syntax-e _%e126524126537%_)))
                        (let ((_%hd126528126548%_ (##car _%e126527126545%_))
                              (_%tl126529126550%_ (##cdr _%e126527126545%_)))
                          (if (gx#stx-pair? _%tl126529126550%_)
                              (let ((_%e126530126553%_
                                     (gx#syntax-e _%tl126529126550%_)))
                                (let ((_%hd126531126556%_
                                       (##car _%e126530126553%_))
                                      (_%tl126532126558%_
                                       (##cdr _%e126530126553%_)))
                                  (let ((_%ann126561%_ _%hd126531126556%_))
                                    (if (gx#stx-pair? _%tl126532126558%_)
                                        (let ((_%e126533126563%_
                                               (gx#syntax-e
                                                _%tl126532126558%_)))
                                          (let ((_%hd126534126566%_
                                                 (##car _%e126533126563%_))
                                                (_%tl126535126568%_
                                                 (##cdr _%e126533126563%_)))
                                            (let ((_%expr126571%_
                                                   _%hd126534126566%_))
                                              (if (gx#stx-null?
                                                   _%tl126535126568%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126571%_)
                                                      (_%E126526126541%_))
                                                  (_%E126526126541%_)))))
                                        (_%E126526126541%_)))))
                              (_%E126526126541%_))))
                      (_%E126526126541%_)))))
          (_%E126525126573%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126493%_)
        (let* ((_%e126494126501%_ _%stx126493%_)
               (_%E126496126505%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126494126501%_)))
               (_%E126495126519%_
                (lambda ()
                  (if (gx#stx-pair? _%e126494126501%_)
                      (let ((_%e126497126509%_
                             (gx#syntax-e _%e126494126501%_)))
                        (let ((_%hd126498126512%_ (##car _%e126497126509%_))
                              (_%tl126499126514%_ (##cdr _%e126497126509%_)))
                          (let ((_%body126517%_ _%tl126499126514%_))
                            (if '#t
                                (cons '%#import _%body126517%_)
                                (_%E126496126505%_)))))
                      (_%E126496126505%_)))))
          (_%E126495126519%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126450%_)
        (let* ((_%e126451126461%_ _%stx126450%_)
               (_%E126453126465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126451126461%_)))
               (_%E126452126489%_
                (lambda ()
                  (if (gx#stx-pair? _%e126451126461%_)
                      (let ((_%e126454126469%_
                             (gx#syntax-e _%e126451126461%_)))
                        (let ((_%hd126455126472%_ (##car _%e126454126469%_))
                              (_%tl126456126474%_ (##cdr _%e126454126469%_)))
                          (if (gx#stx-pair? _%tl126456126474%_)
                              (let ((_%e126457126477%_
                                     (gx#syntax-e _%tl126456126474%_)))
                                (let ((_%hd126458126480%_
                                       (##car _%e126457126477%_))
                                      (_%tl126459126482%_
                                       (##cdr _%e126457126477%_)))
                                  (let* ((_%hd126485%_ _%hd126458126480%_)
                                         (_%body126487%_ _%tl126459126482%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126485%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126487%_)))
                                        (_%E126453126465%_)))))
                              (_%E126453126465%_))))
                      (_%E126453126465%_)))))
          (_%E126452126489%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126420%_)
        (let* ((_%e126421126428%_ _%stx126420%_)
               (_%E126423126432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126421126428%_)))
               (_%E126422126446%_
                (lambda ()
                  (if (gx#stx-pair? _%e126421126428%_)
                      (let ((_%e126424126436%_
                             (gx#syntax-e _%e126421126428%_)))
                        (let ((_%hd126425126439%_ (##car _%e126424126436%_))
                              (_%tl126426126441%_ (##cdr _%e126424126436%_)))
                          (let ((_%body126444%_ _%tl126426126441%_))
                            (if '#t
                                (cons '%#export _%body126444%_)
                                (_%E126423126432%_)))))
                      (_%E126423126432%_)))))
          (_%E126422126446%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126390%_)
        (let* ((_%e126391126398%_ _%stx126390%_)
               (_%E126393126402%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126391126398%_)))
               (_%E126392126416%_
                (lambda ()
                  (if (gx#stx-pair? _%e126391126398%_)
                      (let ((_%e126394126406%_
                             (gx#syntax-e _%e126391126398%_)))
                        (let ((_%hd126395126409%_ (##car _%e126394126406%_))
                              (_%tl126396126411%_ (##cdr _%e126394126406%_)))
                          (let ((_%body126414%_ _%tl126396126411%_))
                            (if '#t
                                (cons '%#provide _%body126414%_)
                                (_%E126393126402%_)))))
                      (_%E126393126402%_)))))
          (_%E126392126416%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126360%_)
        (let* ((_%e126361126368%_ _%stx126360%_)
               (_%E126363126372%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126361126368%_)))
               (_%E126362126386%_
                (lambda ()
                  (if (gx#stx-pair? _%e126361126368%_)
                      (let ((_%e126364126376%_
                             (gx#syntax-e _%e126361126368%_)))
                        (let ((_%hd126365126379%_ (##car _%e126364126376%_))
                              (_%tl126366126381%_ (##cdr _%e126364126376%_)))
                          (let ((_%body126384%_ _%tl126366126381%_))
                            (if '#t
                                (cons '%#extern _%body126384%_)
                                (_%E126363126372%_)))))
                      (_%E126363126372%_)))))
          (_%E126362126386%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126306%_)
        (let* ((_%e126307126320%_ _%stx126306%_)
               (_%E126309126324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126307126320%_)))
               (_%E126308126356%_
                (lambda ()
                  (if (gx#stx-pair? _%e126307126320%_)
                      (let ((_%e126310126328%_
                             (gx#syntax-e _%e126307126320%_)))
                        (let ((_%hd126311126331%_ (##car _%e126310126328%_))
                              (_%tl126312126333%_ (##cdr _%e126310126328%_)))
                          (if (gx#stx-pair? _%tl126312126333%_)
                              (let ((_%e126313126336%_
                                     (gx#syntax-e _%tl126312126333%_)))
                                (let ((_%hd126314126339%_
                                       (##car _%e126313126336%_))
                                      (_%tl126315126341%_
                                       (##cdr _%e126313126336%_)))
                                  (let ((_%hd126344%_ _%hd126314126339%_))
                                    (if (gx#stx-pair? _%tl126315126341%_)
                                        (let ((_%e126316126346%_
                                               (gx#syntax-e
                                                _%tl126315126341%_)))
                                          (let ((_%hd126317126349%_
                                                 (##car _%e126316126346%_))
                                                (_%tl126318126351%_
                                                 (##cdr _%e126316126346%_)))
                                            (let ((_%expr126354%_
                                                   _%hd126317126349%_))
                                              (if (gx#stx-null?
                                                   _%tl126318126351%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126344%_)
                          (cons (gx#core-compile-top-syntax _%expr126354%_)
                                '())))
              (_%E126309126324%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126309126324%_)))))
                                        (_%E126309126324%_)))))
                              (_%E126309126324%_))))
                      (_%E126309126324%_)))))
          (_%E126308126356%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126251%_)
        (let* ((_%e126252126265%_ _%stx126251%_)
               (_%E126254126269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126252126265%_)))
               (_%E126253126302%_
                (lambda ()
                  (if (gx#stx-pair? _%e126252126265%_)
                      (let ((_%e126255126273%_
                             (gx#syntax-e _%e126252126265%_)))
                        (let ((_%hd126256126276%_ (##car _%e126255126273%_))
                              (_%tl126257126278%_ (##cdr _%e126255126273%_)))
                          (if (gx#stx-pair? _%tl126257126278%_)
                              (let ((_%e126258126281%_
                                     (gx#syntax-e _%tl126257126278%_)))
                                (let ((_%hd126259126284%_
                                       (##car _%e126258126281%_))
                                      (_%tl126260126286%_
                                       (##cdr _%e126258126281%_)))
                                  (let ((_%hd126289%_ _%hd126259126284%_))
                                    (if (gx#stx-pair? _%tl126260126286%_)
                                        (let ((_%e126261126291%_
                                               (gx#syntax-e
                                                _%tl126260126286%_)))
                                          (let ((_%hd126262126294%_
                                                 (##car _%e126261126291%_))
                                                (_%tl126263126296%_
                                                 (##cdr _%e126261126291%_)))
                                            (let ((_%expr126299%_
                                                   _%hd126262126294%_))
                                              (if (gx#stx-null?
                                                   _%tl126263126296%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126299%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126254126269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126254126269%_)))))
                                        (_%E126254126269%_)))))
                              (_%E126254126269%_))))
                      (_%E126254126269%_)))))
          (_%E126253126302%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126221%_)
        (let* ((_%e126222126229%_ _%stx126221%_)
               (_%E126224126233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126222126229%_)))
               (_%E126223126247%_
                (lambda ()
                  (if (gx#stx-pair? _%e126222126229%_)
                      (let ((_%e126225126237%_
                             (gx#syntax-e _%e126222126229%_)))
                        (let ((_%hd126226126240%_ (##car _%e126225126237%_))
                              (_%tl126227126242%_ (##cdr _%e126225126237%_)))
                          (let ((_%body126245%_ _%tl126227126242%_))
                            (if '#t
                                (cons '%#define-alias _%body126245%_)
                                (_%E126224126233%_)))))
                      (_%E126224126233%_)))))
          (_%E126223126247%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126191%_)
        (let* ((_%e126192126199%_ _%stx126191%_)
               (_%E126194126203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126192126199%_)))
               (_%E126193126217%_
                (lambda ()
                  (if (gx#stx-pair? _%e126192126199%_)
                      (let ((_%e126195126207%_
                             (gx#syntax-e _%e126192126199%_)))
                        (let ((_%hd126196126210%_ (##car _%e126195126207%_))
                              (_%tl126197126212%_ (##cdr _%e126195126207%_)))
                          (let ((_%body126215%_ _%tl126197126212%_))
                            (if '#t
                                (cons '%#define-runtime _%body126215%_)
                                (_%E126194126203%_)))))
                      (_%E126194126203%_)))))
          (_%E126193126217%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126161%_)
        (let* ((_%e126162126169%_ _%stx126161%_)
               (_%E126164126173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126162126169%_)))
               (_%E126163126187%_
                (lambda ()
                  (if (gx#stx-pair? _%e126162126169%_)
                      (let ((_%e126165126177%_
                             (gx#syntax-e _%e126162126169%_)))
                        (let ((_%hd126166126180%_ (##car _%e126165126177%_))
                              (_%tl126167126182%_ (##cdr _%e126165126177%_)))
                          (let ((_%decls126185%_ _%tl126167126182%_))
                            (if '#t
                                (cons '%#declare _%decls126185%_)
                                (_%E126164126173%_)))))
                      (_%E126164126173%_)))))
          (_%E126163126187%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126131%_)
        (let* ((_%e126132126139%_ _%stx126131%_)
               (_%E126134126143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126132126139%_)))
               (_%E126133126157%_
                (lambda ()
                  (if (gx#stx-pair? _%e126132126139%_)
                      (let ((_%e126135126147%_
                             (gx#syntax-e _%e126132126139%_)))
                        (let ((_%hd126136126150%_ (##car _%e126135126147%_))
                              (_%tl126137126152%_ (##cdr _%e126135126147%_)))
                          (let ((_%clause126155%_ _%tl126137126152%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126155%_))
                                (_%E126134126143%_)))))
                      (_%E126134126143%_)))))
          (_%E126133126157%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126088%_)
        (let* ((_%e126089126099%_ _%stx126088%_)
               (_%E126091126103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126089126099%_)))
               (_%E126090126127%_
                (lambda ()
                  (if (gx#stx-pair? _%e126089126099%_)
                      (let ((_%e126092126107%_
                             (gx#syntax-e _%e126089126099%_)))
                        (let ((_%hd126093126110%_ (##car _%e126092126107%_))
                              (_%tl126094126112%_ (##cdr _%e126092126107%_)))
                          (let ((_%hd126115%_ _%hd126093126110%_))
                            (if (gx#stx-pair? _%tl126094126112%_)
                                (let ((_%e126095126117%_
                                       (gx#syntax-e _%tl126094126112%_)))
                                  (let ((_%hd126096126120%_
                                         (##car _%e126095126117%_))
                                        (_%tl126097126122%_
                                         (##cdr _%e126095126117%_)))
                                    (let ((_%body126125%_ _%hd126096126120%_))
                                      (if (gx#stx-null? _%tl126097126122%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126115%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126125%_)
                                                          '()))
                                              (_%E126091126103%_))
                                          (_%E126091126103%_)))))
                                (_%E126091126103%_)))))
                      (_%E126091126103%_)))))
          (_%E126090126127%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126058%_)
        (let* ((_%e126059126066%_ _%stx126058%_)
               (_%E126061126070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126059126066%_)))
               (_%E126060126084%_
                (lambda ()
                  (if (gx#stx-pair? _%e126059126066%_)
                      (let ((_%e126062126074%_
                             (gx#syntax-e _%e126059126066%_)))
                        (let ((_%hd126063126077%_ (##car _%e126062126074%_))
                              (_%tl126064126079%_ (##cdr _%e126062126074%_)))
                          (let ((_%clauses126082%_ _%tl126064126079%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126082%_))
                                (_%E126061126070%_)))))
                      (_%E126061126070%_)))))
          (_%E126060126084%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125993%_ _%form125994%_)
        (let* ((_%e125995126008%_ _%stx125993%_)
               (_%E125997126012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125995126008%_)))
               (_%E125996126044%_
                (lambda ()
                  (if (gx#stx-pair? _%e125995126008%_)
                      (let ((_%e125998126016%_
                             (gx#syntax-e _%e125995126008%_)))
                        (let ((_%hd125999126019%_ (##car _%e125998126016%_))
                              (_%tl126000126021%_ (##cdr _%e125998126016%_)))
                          (if (gx#stx-pair? _%tl126000126021%_)
                              (let ((_%e126001126024%_
                                     (gx#syntax-e _%tl126000126021%_)))
                                (let ((_%hd126002126027%_
                                       (##car _%e126001126024%_))
                                      (_%tl126003126029%_
                                       (##cdr _%e126001126024%_)))
                                  (let ((_%hd126032%_ _%hd126002126027%_))
                                    (if (gx#stx-pair? _%tl126003126029%_)
                                        (let ((_%e126004126034%_
                                               (gx#syntax-e
                                                _%tl126003126029%_)))
                                          (let ((_%hd126005126037%_
                                                 (##car _%e126004126034%_))
                                                (_%tl126006126039%_
                                                 (##cdr _%e126004126034%_)))
                                            (let ((_%body126042%_
                                                   _%hd126005126037%_))
                                              (if (gx#stx-null?
                                                   _%tl126006126039%_)
                                                  (if '#t
                                                      (cons _%form125994%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126032%_)
                          (cons (gx#core-compile-top-syntax _%body126042%_)
                                '())))
              (_%E125997126012%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125997126012%_)))))
                                        (_%E125997126012%_)))))
                              (_%E125997126012%_))))
                      (_%E125997126012%_)))))
          (_%E125996126044%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126051%_)
        (let ((_%form126053%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126051%_ _%form126053%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126878_
        (let ((_g126877_ (##length _g126878_)))
          (cond ((##fx= _g126877_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g126878_))
                ((##fx= _g126877_ 2)
                 (apply gx#core-compile-top-let-values%__% _g126878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126878_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125990%_)
        (gx#core-compile-top-let-values%__% _%stx125990%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125988%_)
        (gx#core-compile-top-let-values%__% _%stx125988%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125947%_)
        (let* ((_%e125948125958%_ _%stx125947%_)
               (_%E125950125962%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125948125958%_)))
               (_%E125949125984%_
                (lambda ()
                  (if (gx#stx-pair? _%e125948125958%_)
                      (let ((_%e125951125966%_
                             (gx#syntax-e _%e125948125958%_)))
                        (let ((_%hd125952125969%_ (##car _%e125951125966%_))
                              (_%tl125953125971%_ (##cdr _%e125951125966%_)))
                          (if (gx#stx-pair? _%tl125953125971%_)
                              (let ((_%e125954125974%_
                                     (gx#syntax-e _%tl125953125971%_)))
                                (let ((_%hd125955125977%_
                                       (##car _%e125954125974%_))
                                      (_%tl125956125979%_
                                       (##cdr _%e125954125974%_)))
                                  (let ((_%e125982%_ _%hd125955125977%_))
                                    (if (gx#stx-null? _%tl125956125979%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125982%_)
                                                        '()))
                                            (_%E125950125962%_))
                                        (_%E125950125962%_)))))
                              (_%E125950125962%_))))
                      (_%E125950125962%_)))))
          (_%E125949125984%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125906%_)
        (let* ((_%e125907125917%_ _%stx125906%_)
               (_%E125909125921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125907125917%_)))
               (_%E125908125943%_
                (lambda ()
                  (if (gx#stx-pair? _%e125907125917%_)
                      (let ((_%e125910125925%_
                             (gx#syntax-e _%e125907125917%_)))
                        (let ((_%hd125911125928%_ (##car _%e125910125925%_))
                              (_%tl125912125930%_ (##cdr _%e125910125925%_)))
                          (if (gx#stx-pair? _%tl125912125930%_)
                              (let ((_%e125913125933%_
                                     (gx#syntax-e _%tl125912125930%_)))
                                (let ((_%hd125914125936%_
                                       (##car _%e125913125933%_))
                                      (_%tl125915125938%_
                                       (##cdr _%e125913125933%_)))
                                  (let ((_%e125941%_ _%hd125914125936%_))
                                    (if (gx#stx-null? _%tl125915125938%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125941%_)
                                                        '()))
                                            (_%E125909125921%_))
                                        (_%E125909125921%_)))))
                              (_%E125909125921%_))))
                      (_%E125909125921%_)))))
          (_%E125908125943%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125863%_)
        (let* ((_%e125864125874%_ _%stx125863%_)
               (_%E125866125878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125864125874%_)))
               (_%E125865125902%_
                (lambda ()
                  (if (gx#stx-pair? _%e125864125874%_)
                      (let ((_%e125867125882%_
                             (gx#syntax-e _%e125864125874%_)))
                        (let ((_%hd125868125885%_ (##car _%e125867125882%_))
                              (_%tl125869125887%_ (##cdr _%e125867125882%_)))
                          (if (gx#stx-pair? _%tl125869125887%_)
                              (let ((_%e125870125890%_
                                     (gx#syntax-e _%tl125869125887%_)))
                                (let ((_%hd125871125893%_
                                       (##car _%e125870125890%_))
                                      (_%tl125872125895%_
                                       (##cdr _%e125870125890%_)))
                                  (let* ((_%rator125898%_ _%hd125871125893%_)
                                         (_%args125900%_ _%tl125872125895%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125898%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125900%_)))
                                        (_%E125866125878%_)))))
                              (_%E125866125878%_))))
                      (_%E125866125878%_)))))
          (_%E125865125902%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125796%_)
        (let* ((_%e125797125813%_ _%stx125796%_)
               (_%E125799125817%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125797125813%_)))
               (_%E125798125859%_
                (lambda ()
                  (if (gx#stx-pair? _%e125797125813%_)
                      (let ((_%e125800125821%_
                             (gx#syntax-e _%e125797125813%_)))
                        (let ((_%hd125801125824%_ (##car _%e125800125821%_))
                              (_%tl125802125826%_ (##cdr _%e125800125821%_)))
                          (if (gx#stx-pair? _%tl125802125826%_)
                              (let ((_%e125803125829%_
                                     (gx#syntax-e _%tl125802125826%_)))
                                (let ((_%hd125804125832%_
                                       (##car _%e125803125829%_))
                                      (_%tl125805125834%_
                                       (##cdr _%e125803125829%_)))
                                  (let ((_%test125837%_ _%hd125804125832%_))
                                    (if (gx#stx-pair? _%tl125805125834%_)
                                        (let ((_%e125806125839%_
                                               (gx#syntax-e
                                                _%tl125805125834%_)))
                                          (let ((_%hd125807125842%_
                                                 (##car _%e125806125839%_))
                                                (_%tl125808125844%_
                                                 (##cdr _%e125806125839%_)))
                                            (let ((_%K125847%_
                                                   _%hd125807125842%_))
                                              (if (gx#stx-pair?
                                                   _%tl125808125844%_)
                                                  (let ((_%e125809125849%_
                                                         (gx#syntax-e
                                                          _%tl125808125844%_)))
                                                    (let ((_%hd125810125852%_
                                                           (##car _%e125809125849%_))
                                                          (_%tl125811125854%_
                                                           (##cdr _%e125809125849%_)))
                                                      (let ((_%E125857%_
                                                             _%hd125810125852%_))
                                                        (if (gx#stx-null?
                                                             _%tl125811125854%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125837%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125847%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125857%_)
                                                '()))))
                        (_%E125799125817%_))
                    (_%E125799125817%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125799125817%_)))))
                                        (_%E125799125817%_)))))
                              (_%E125799125817%_))))
                      (_%E125799125817%_)))))
          (_%E125798125859%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125755%_)
        (let* ((_%e125756125766%_ _%stx125755%_)
               (_%E125758125770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125756125766%_)))
               (_%E125757125792%_
                (lambda ()
                  (if (gx#stx-pair? _%e125756125766%_)
                      (let ((_%e125759125774%_
                             (gx#syntax-e _%e125756125766%_)))
                        (let ((_%hd125760125777%_ (##car _%e125759125774%_))
                              (_%tl125761125779%_ (##cdr _%e125759125774%_)))
                          (if (gx#stx-pair? _%tl125761125779%_)
                              (let ((_%e125762125782%_
                                     (gx#syntax-e _%tl125761125779%_)))
                                (let ((_%hd125763125785%_
                                       (##car _%e125762125782%_))
                                      (_%tl125764125787%_
                                       (##cdr _%e125762125782%_)))
                                  (let ((_%id125790%_ _%hd125763125785%_))
                                    (if (gx#stx-null? _%tl125764125787%_)
                                        (if (gx#identifier? _%id125790%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125790%_)
                                                        '()))
                                            (_%E125758125770%_))
                                        (_%E125758125770%_)))))
                              (_%E125758125770%_))))
                      (_%E125758125770%_)))))
          (_%E125757125792%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125701%_)
        (let* ((_%e125702125715%_ _%stx125701%_)
               (_%E125704125719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125702125715%_)))
               (_%E125703125751%_
                (lambda ()
                  (if (gx#stx-pair? _%e125702125715%_)
                      (let ((_%e125705125723%_
                             (gx#syntax-e _%e125702125715%_)))
                        (let ((_%hd125706125726%_ (##car _%e125705125723%_))
                              (_%tl125707125728%_ (##cdr _%e125705125723%_)))
                          (if (gx#stx-pair? _%tl125707125728%_)
                              (let ((_%e125708125731%_
                                     (gx#syntax-e _%tl125707125728%_)))
                                (let ((_%hd125709125734%_
                                       (##car _%e125708125731%_))
                                      (_%tl125710125736%_
                                       (##cdr _%e125708125731%_)))
                                  (let ((_%id125739%_ _%hd125709125734%_))
                                    (if (gx#stx-pair? _%tl125710125736%_)
                                        (let ((_%e125711125741%_
                                               (gx#syntax-e
                                                _%tl125710125736%_)))
                                          (let ((_%hd125712125744%_
                                                 (##car _%e125711125741%_))
                                                (_%tl125713125746%_
                                                 (##cdr _%e125711125741%_)))
                                            (let ((_%expr125749%_
                                                   _%hd125712125744%_))
                                              (if (gx#stx-null?
                                                   _%tl125713125746%_)
                                                  (if (gx#identifier?
                                                       _%id125739%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125739%_)
                          (cons (gx#core-compile-top-syntax _%expr125749%_)
                                '())))
              (_%E125704125719%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125704125719%_)))))
                                        (_%E125704125719%_)))))
                              (_%E125704125719%_))))
                      (_%E125704125719%_)))))
          (_%E125703125751%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125695%_)
        (let ((_%$e125697%_ (gx#resolve-identifier__0 _%id125695%_)))
          (if _%$e125697%_
              (##unchecked-structure-ref _%$e125697%_ '1 '#f '#f)
              _%id125695%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125693%_)
        (if (gx#identifier? _%hd125693%_)
            (gx#core-compile-top-runtime-ref _%hd125693%_)
            '#f)))))
