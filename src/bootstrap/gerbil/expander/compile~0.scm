(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712147678)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126548%_)
        (let* ((_%e126549126556%_ _%stx126548%_)
               (_%E126551126560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126549126556%_)))
               (_%E126550126574%_
                (lambda ()
                  (if (gx#stx-pair? _%e126549126556%_)
                      (let ((_%e126552126564%_
                             (gx#syntax-e _%e126549126556%_)))
                        (let ((_%hd126553126567%_ (##car _%e126552126564%_))
                              (_%tl126554126569%_ (##cdr _%e126552126564%_)))
                          (let ((_%form126572%_ _%hd126553126567%_))
                            (if '#t
                                (let* ((__self126577
                                        (gx#syntax-local-e__0 _%form126572%_))
                                       (__method126578
                                        (__method-ref
                                         __self126577
                                         'compile-top-syntax)))
                                  (if __method126578
                                      (__method126578
                                       __self126577
                                       _%stx126548%_)
                                      (error '"Missing method"
                                             __self126577
                                             'compile-top-syntax)))
                                (_%E126551126560%_)))))
                      (_%E126551126560%_)))))
          (_%E126550126574%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126496%_ _%stx126497%_)
        (let ((_%self126500%_ _%self126496%_))
          (let* ((_%self126509126517%_ _%self126500%_)
                 (_%E126511126521%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self126509126517%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K126512126534%_
                  (lambda (_%K126524%_)
                    (let ((_%$e126526%_ (gx#stx-source _%stx126497%_)))
                      (if _%$e126526%_
                          ((lambda (_%g126528126530%_)
                             (gx#stx-wrap-source
                              (_%K126524%_ _%stx126497%_)
                              _%g126528126530%_))
                           _%$e126526%_)
                          (let () (_%K126524%_ _%stx126497%_)))))))
            (if '#t
                (let* ((_%e126513126537%_
                        (##unchecked-structure-ref
                         _%self126509126517%_
                         '1
                         '#f
                         '#f))
                       (_%e126514126540%_
                        (##unchecked-structure-ref
                         _%self126509126517%_
                         '2
                         '#f
                         '#f))
                       (_%e126515126543%_
                        (##unchecked-structure-ref
                         _%self126509126517%_
                         '3
                         '#f
                         '#f))
                       (_%K126546%_ _%e126515126543%_))
                  (_%K126512126534%_ _%K126546%_))
                (_%E126511126521%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126370%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126370%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126340%_)
        (let* ((_%e126341126348%_ _%stx126340%_)
               (_%E126343126352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126341126348%_)))
               (_%E126342126366%_
                (lambda ()
                  (if (gx#stx-pair? _%e126341126348%_)
                      (let ((_%e126344126356%_
                             (gx#syntax-e _%e126341126348%_)))
                        (let ((_%hd126345126359%_ (##car _%e126344126356%_))
                              (_%tl126346126361%_ (##cdr _%e126344126356%_)))
                          (let ((_%body126364%_ _%tl126346126361%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126364%_))
                                (_%E126343126352%_)))))
                      (_%E126343126352%_)))))
          (_%E126342126366%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126309%_)
        (let* ((_%e126310126317%_ _%stx126309%_)
               (_%E126312126321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126310126317%_)))
               (_%E126311126336%_
                (lambda ()
                  (if (gx#stx-pair? _%e126310126317%_)
                      (let ((_%e126313126325%_
                             (gx#syntax-e _%e126310126317%_)))
                        (let ((_%hd126314126328%_ (##car _%e126313126325%_))
                              (_%tl126315126330%_ (##cdr _%e126313126325%_)))
                          (let ((_%body126333%_ _%tl126315126330%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126333%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126312126321%_)))))
                      (_%E126312126321%_)))))
          (_%E126311126336%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126279%_)
        (let* ((_%e126280126287%_ _%stx126279%_)
               (_%E126282126291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126280126287%_)))
               (_%E126281126305%_
                (lambda ()
                  (if (gx#stx-pair? _%e126280126287%_)
                      (let ((_%e126283126295%_
                             (gx#syntax-e _%e126280126287%_)))
                        (let ((_%hd126284126298%_ (##car _%e126283126295%_))
                              (_%tl126285126300%_ (##cdr _%e126283126295%_)))
                          (let ((_%body126303%_ _%tl126285126300%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126303%_)
                                (_%E126282126291%_)))))
                      (_%E126282126291%_)))))
          (_%E126281126305%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126225%_)
        (let* ((_%e126226126239%_ _%stx126225%_)
               (_%E126228126243%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126226126239%_)))
               (_%E126227126275%_
                (lambda ()
                  (if (gx#stx-pair? _%e126226126239%_)
                      (let ((_%e126229126247%_
                             (gx#syntax-e _%e126226126239%_)))
                        (let ((_%hd126230126250%_ (##car _%e126229126247%_))
                              (_%tl126231126252%_ (##cdr _%e126229126247%_)))
                          (if (gx#stx-pair? _%tl126231126252%_)
                              (let ((_%e126232126255%_
                                     (gx#syntax-e _%tl126231126252%_)))
                                (let ((_%hd126233126258%_
                                       (##car _%e126232126255%_))
                                      (_%tl126234126260%_
                                       (##cdr _%e126232126255%_)))
                                  (let ((_%ann126263%_ _%hd126233126258%_))
                                    (if (gx#stx-pair? _%tl126234126260%_)
                                        (let ((_%e126235126265%_
                                               (gx#syntax-e
                                                _%tl126234126260%_)))
                                          (let ((_%hd126236126268%_
                                                 (##car _%e126235126265%_))
                                                (_%tl126237126270%_
                                                 (##cdr _%e126235126265%_)))
                                            (let ((_%expr126273%_
                                                   _%hd126236126268%_))
                                              (if (gx#stx-null?
                                                   _%tl126237126270%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126273%_)
                                                      (_%E126228126243%_))
                                                  (_%E126228126243%_)))))
                                        (_%E126228126243%_)))))
                              (_%E126228126243%_))))
                      (_%E126228126243%_)))))
          (_%E126227126275%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126195%_)
        (let* ((_%e126196126203%_ _%stx126195%_)
               (_%E126198126207%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126196126203%_)))
               (_%E126197126221%_
                (lambda ()
                  (if (gx#stx-pair? _%e126196126203%_)
                      (let ((_%e126199126211%_
                             (gx#syntax-e _%e126196126203%_)))
                        (let ((_%hd126200126214%_ (##car _%e126199126211%_))
                              (_%tl126201126216%_ (##cdr _%e126199126211%_)))
                          (let ((_%body126219%_ _%tl126201126216%_))
                            (if '#t
                                (cons '%#import _%body126219%_)
                                (_%E126198126207%_)))))
                      (_%E126198126207%_)))))
          (_%E126197126221%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126152%_)
        (let* ((_%e126153126163%_ _%stx126152%_)
               (_%E126155126167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126153126163%_)))
               (_%E126154126191%_
                (lambda ()
                  (if (gx#stx-pair? _%e126153126163%_)
                      (let ((_%e126156126171%_
                             (gx#syntax-e _%e126153126163%_)))
                        (let ((_%hd126157126174%_ (##car _%e126156126171%_))
                              (_%tl126158126176%_ (##cdr _%e126156126171%_)))
                          (if (gx#stx-pair? _%tl126158126176%_)
                              (let ((_%e126159126179%_
                                     (gx#syntax-e _%tl126158126176%_)))
                                (let ((_%hd126160126182%_
                                       (##car _%e126159126179%_))
                                      (_%tl126161126184%_
                                       (##cdr _%e126159126179%_)))
                                  (let* ((_%hd126187%_ _%hd126160126182%_)
                                         (_%body126189%_ _%tl126161126184%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126187%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126189%_)))
                                        (_%E126155126167%_)))))
                              (_%E126155126167%_))))
                      (_%E126155126167%_)))))
          (_%E126154126191%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126122%_)
        (let* ((_%e126123126130%_ _%stx126122%_)
               (_%E126125126134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126123126130%_)))
               (_%E126124126148%_
                (lambda ()
                  (if (gx#stx-pair? _%e126123126130%_)
                      (let ((_%e126126126138%_
                             (gx#syntax-e _%e126123126130%_)))
                        (let ((_%hd126127126141%_ (##car _%e126126126138%_))
                              (_%tl126128126143%_ (##cdr _%e126126126138%_)))
                          (let ((_%body126146%_ _%tl126128126143%_))
                            (if '#t
                                (cons '%#export _%body126146%_)
                                (_%E126125126134%_)))))
                      (_%E126125126134%_)))))
          (_%E126124126148%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126092%_)
        (let* ((_%e126093126100%_ _%stx126092%_)
               (_%E126095126104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126093126100%_)))
               (_%E126094126118%_
                (lambda ()
                  (if (gx#stx-pair? _%e126093126100%_)
                      (let ((_%e126096126108%_
                             (gx#syntax-e _%e126093126100%_)))
                        (let ((_%hd126097126111%_ (##car _%e126096126108%_))
                              (_%tl126098126113%_ (##cdr _%e126096126108%_)))
                          (let ((_%body126116%_ _%tl126098126113%_))
                            (if '#t
                                (cons '%#provide _%body126116%_)
                                (_%E126095126104%_)))))
                      (_%E126095126104%_)))))
          (_%E126094126118%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126062%_)
        (let* ((_%e126063126070%_ _%stx126062%_)
               (_%E126065126074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126063126070%_)))
               (_%E126064126088%_
                (lambda ()
                  (if (gx#stx-pair? _%e126063126070%_)
                      (let ((_%e126066126078%_
                             (gx#syntax-e _%e126063126070%_)))
                        (let ((_%hd126067126081%_ (##car _%e126066126078%_))
                              (_%tl126068126083%_ (##cdr _%e126066126078%_)))
                          (let ((_%body126086%_ _%tl126068126083%_))
                            (if '#t
                                (cons '%#extern _%body126086%_)
                                (_%E126065126074%_)))))
                      (_%E126065126074%_)))))
          (_%E126064126088%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126008%_)
        (let* ((_%e126009126022%_ _%stx126008%_)
               (_%E126011126026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126009126022%_)))
               (_%E126010126058%_
                (lambda ()
                  (if (gx#stx-pair? _%e126009126022%_)
                      (let ((_%e126012126030%_
                             (gx#syntax-e _%e126009126022%_)))
                        (let ((_%hd126013126033%_ (##car _%e126012126030%_))
                              (_%tl126014126035%_ (##cdr _%e126012126030%_)))
                          (if (gx#stx-pair? _%tl126014126035%_)
                              (let ((_%e126015126038%_
                                     (gx#syntax-e _%tl126014126035%_)))
                                (let ((_%hd126016126041%_
                                       (##car _%e126015126038%_))
                                      (_%tl126017126043%_
                                       (##cdr _%e126015126038%_)))
                                  (let ((_%hd126046%_ _%hd126016126041%_))
                                    (if (gx#stx-pair? _%tl126017126043%_)
                                        (let ((_%e126018126048%_
                                               (gx#syntax-e
                                                _%tl126017126043%_)))
                                          (let ((_%hd126019126051%_
                                                 (##car _%e126018126048%_))
                                                (_%tl126020126053%_
                                                 (##cdr _%e126018126048%_)))
                                            (let ((_%expr126056%_
                                                   _%hd126019126051%_))
                                              (if (gx#stx-null?
                                                   _%tl126020126053%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126046%_)
                          (cons (gx#core-compile-top-syntax _%expr126056%_)
                                '())))
              (_%E126011126026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126011126026%_)))))
                                        (_%E126011126026%_)))))
                              (_%E126011126026%_))))
                      (_%E126011126026%_)))))
          (_%E126010126058%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125953%_)
        (let* ((_%e125954125967%_ _%stx125953%_)
               (_%E125956125971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125954125967%_)))
               (_%E125955126004%_
                (lambda ()
                  (if (gx#stx-pair? _%e125954125967%_)
                      (let ((_%e125957125975%_
                             (gx#syntax-e _%e125954125967%_)))
                        (let ((_%hd125958125978%_ (##car _%e125957125975%_))
                              (_%tl125959125980%_ (##cdr _%e125957125975%_)))
                          (if (gx#stx-pair? _%tl125959125980%_)
                              (let ((_%e125960125983%_
                                     (gx#syntax-e _%tl125959125980%_)))
                                (let ((_%hd125961125986%_
                                       (##car _%e125960125983%_))
                                      (_%tl125962125988%_
                                       (##cdr _%e125960125983%_)))
                                  (let ((_%hd125991%_ _%hd125961125986%_))
                                    (if (gx#stx-pair? _%tl125962125988%_)
                                        (let ((_%e125963125993%_
                                               (gx#syntax-e
                                                _%tl125962125988%_)))
                                          (let ((_%hd125964125996%_
                                                 (##car _%e125963125993%_))
                                                (_%tl125965125998%_
                                                 (##cdr _%e125963125993%_)))
                                            (let ((_%expr126001%_
                                                   _%hd125964125996%_))
                                              (if (gx#stx-null?
                                                   _%tl125965125998%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126001%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125956125971%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125956125971%_)))))
                                        (_%E125956125971%_)))))
                              (_%E125956125971%_))))
                      (_%E125956125971%_)))))
          (_%E125955126004%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125923%_)
        (let* ((_%e125924125931%_ _%stx125923%_)
               (_%E125926125935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125924125931%_)))
               (_%E125925125949%_
                (lambda ()
                  (if (gx#stx-pair? _%e125924125931%_)
                      (let ((_%e125927125939%_
                             (gx#syntax-e _%e125924125931%_)))
                        (let ((_%hd125928125942%_ (##car _%e125927125939%_))
                              (_%tl125929125944%_ (##cdr _%e125927125939%_)))
                          (let ((_%body125947%_ _%tl125929125944%_))
                            (if '#t
                                (cons '%#define-alias _%body125947%_)
                                (_%E125926125935%_)))))
                      (_%E125926125935%_)))))
          (_%E125925125949%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125893%_)
        (let* ((_%e125894125901%_ _%stx125893%_)
               (_%E125896125905%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125894125901%_)))
               (_%E125895125919%_
                (lambda ()
                  (if (gx#stx-pair? _%e125894125901%_)
                      (let ((_%e125897125909%_
                             (gx#syntax-e _%e125894125901%_)))
                        (let ((_%hd125898125912%_ (##car _%e125897125909%_))
                              (_%tl125899125914%_ (##cdr _%e125897125909%_)))
                          (let ((_%body125917%_ _%tl125899125914%_))
                            (if '#t
                                (cons '%#define-runtime _%body125917%_)
                                (_%E125896125905%_)))))
                      (_%E125896125905%_)))))
          (_%E125895125919%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125863%_)
        (let* ((_%e125864125871%_ _%stx125863%_)
               (_%E125866125875%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125864125871%_)))
               (_%E125865125889%_
                (lambda ()
                  (if (gx#stx-pair? _%e125864125871%_)
                      (let ((_%e125867125879%_
                             (gx#syntax-e _%e125864125871%_)))
                        (let ((_%hd125868125882%_ (##car _%e125867125879%_))
                              (_%tl125869125884%_ (##cdr _%e125867125879%_)))
                          (let ((_%decls125887%_ _%tl125869125884%_))
                            (if '#t
                                (cons '%#declare _%decls125887%_)
                                (_%E125866125875%_)))))
                      (_%E125866125875%_)))))
          (_%E125865125889%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125833%_)
        (let* ((_%e125834125841%_ _%stx125833%_)
               (_%E125836125845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125834125841%_)))
               (_%E125835125859%_
                (lambda ()
                  (if (gx#stx-pair? _%e125834125841%_)
                      (let ((_%e125837125849%_
                             (gx#syntax-e _%e125834125841%_)))
                        (let ((_%hd125838125852%_ (##car _%e125837125849%_))
                              (_%tl125839125854%_ (##cdr _%e125837125849%_)))
                          (let ((_%clause125857%_ _%tl125839125854%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125857%_))
                                (_%E125836125845%_)))))
                      (_%E125836125845%_)))))
          (_%E125835125859%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125790%_)
        (let* ((_%e125791125801%_ _%stx125790%_)
               (_%E125793125805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125791125801%_)))
               (_%E125792125829%_
                (lambda ()
                  (if (gx#stx-pair? _%e125791125801%_)
                      (let ((_%e125794125809%_
                             (gx#syntax-e _%e125791125801%_)))
                        (let ((_%hd125795125812%_ (##car _%e125794125809%_))
                              (_%tl125796125814%_ (##cdr _%e125794125809%_)))
                          (let ((_%hd125817%_ _%hd125795125812%_))
                            (if (gx#stx-pair? _%tl125796125814%_)
                                (let ((_%e125797125819%_
                                       (gx#syntax-e _%tl125796125814%_)))
                                  (let ((_%hd125798125822%_
                                         (##car _%e125797125819%_))
                                        (_%tl125799125824%_
                                         (##cdr _%e125797125819%_)))
                                    (let ((_%body125827%_ _%hd125798125822%_))
                                      (if (gx#stx-null? _%tl125799125824%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125817%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125827%_)
                                                          '()))
                                              (_%E125793125805%_))
                                          (_%E125793125805%_)))))
                                (_%E125793125805%_)))))
                      (_%E125793125805%_)))))
          (_%E125792125829%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125760%_)
        (let* ((_%e125761125768%_ _%stx125760%_)
               (_%E125763125772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125761125768%_)))
               (_%E125762125786%_
                (lambda ()
                  (if (gx#stx-pair? _%e125761125768%_)
                      (let ((_%e125764125776%_
                             (gx#syntax-e _%e125761125768%_)))
                        (let ((_%hd125765125779%_ (##car _%e125764125776%_))
                              (_%tl125766125781%_ (##cdr _%e125764125776%_)))
                          (let ((_%clauses125784%_ _%tl125766125781%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125784%_))
                                (_%E125763125772%_)))))
                      (_%E125763125772%_)))))
          (_%E125762125786%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125695%_ _%form125696%_)
        (let* ((_%e125697125710%_ _%stx125695%_)
               (_%E125699125714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125697125710%_)))
               (_%E125698125746%_
                (lambda ()
                  (if (gx#stx-pair? _%e125697125710%_)
                      (let ((_%e125700125718%_
                             (gx#syntax-e _%e125697125710%_)))
                        (let ((_%hd125701125721%_ (##car _%e125700125718%_))
                              (_%tl125702125723%_ (##cdr _%e125700125718%_)))
                          (if (gx#stx-pair? _%tl125702125723%_)
                              (let ((_%e125703125726%_
                                     (gx#syntax-e _%tl125702125723%_)))
                                (let ((_%hd125704125729%_
                                       (##car _%e125703125726%_))
                                      (_%tl125705125731%_
                                       (##cdr _%e125703125726%_)))
                                  (let ((_%hd125734%_ _%hd125704125729%_))
                                    (if (gx#stx-pair? _%tl125705125731%_)
                                        (let ((_%e125706125736%_
                                               (gx#syntax-e
                                                _%tl125705125731%_)))
                                          (let ((_%hd125707125739%_
                                                 (##car _%e125706125736%_))
                                                (_%tl125708125741%_
                                                 (##cdr _%e125706125736%_)))
                                            (let ((_%body125744%_
                                                   _%hd125707125739%_))
                                              (if (gx#stx-null?
                                                   _%tl125708125741%_)
                                                  (if '#t
                                                      (cons _%form125696%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125734%_)
                          (cons (gx#core-compile-top-syntax _%body125744%_)
                                '())))
              (_%E125699125714%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125699125714%_)))))
                                        (_%E125699125714%_)))))
                              (_%E125699125714%_))))
                      (_%E125699125714%_)))))
          (_%E125698125746%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125753%_)
        (let ((_%form125755%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125753%_ _%form125755%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126580_
        (let ((_g126579_ (##length _g126580_)))
          (cond ((##fx= _g126579_ 1)
                 (apply (lambda (_%stx125753%_)
                          (gx#core-compile-top-let-values%__0 _%stx125753%_))
                        _g126580_))
                ((##fx= _g126579_ 2)
                 (apply (lambda (_%stx125757%_ _%form125758%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx125757%_
                           _%form125758%_))
                        _g126580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126580_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125692%_)
        (gx#core-compile-top-let-values%__% _%stx125692%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125690%_)
        (gx#core-compile-top-let-values%__% _%stx125690%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125649%_)
        (let* ((_%e125650125660%_ _%stx125649%_)
               (_%E125652125664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125650125660%_)))
               (_%E125651125686%_
                (lambda ()
                  (if (gx#stx-pair? _%e125650125660%_)
                      (let ((_%e125653125668%_
                             (gx#syntax-e _%e125650125660%_)))
                        (let ((_%hd125654125671%_ (##car _%e125653125668%_))
                              (_%tl125655125673%_ (##cdr _%e125653125668%_)))
                          (if (gx#stx-pair? _%tl125655125673%_)
                              (let ((_%e125656125676%_
                                     (gx#syntax-e _%tl125655125673%_)))
                                (let ((_%hd125657125679%_
                                       (##car _%e125656125676%_))
                                      (_%tl125658125681%_
                                       (##cdr _%e125656125676%_)))
                                  (let ((_%e125684%_ _%hd125657125679%_))
                                    (if (gx#stx-null? _%tl125658125681%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125684%_)
                                                        '()))
                                            (_%E125652125664%_))
                                        (_%E125652125664%_)))))
                              (_%E125652125664%_))))
                      (_%E125652125664%_)))))
          (_%E125651125686%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125608%_)
        (let* ((_%e125609125619%_ _%stx125608%_)
               (_%E125611125623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125609125619%_)))
               (_%E125610125645%_
                (lambda ()
                  (if (gx#stx-pair? _%e125609125619%_)
                      (let ((_%e125612125627%_
                             (gx#syntax-e _%e125609125619%_)))
                        (let ((_%hd125613125630%_ (##car _%e125612125627%_))
                              (_%tl125614125632%_ (##cdr _%e125612125627%_)))
                          (if (gx#stx-pair? _%tl125614125632%_)
                              (let ((_%e125615125635%_
                                     (gx#syntax-e _%tl125614125632%_)))
                                (let ((_%hd125616125638%_
                                       (##car _%e125615125635%_))
                                      (_%tl125617125640%_
                                       (##cdr _%e125615125635%_)))
                                  (let ((_%e125643%_ _%hd125616125638%_))
                                    (if (gx#stx-null? _%tl125617125640%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125643%_)
                                                        '()))
                                            (_%E125611125623%_))
                                        (_%E125611125623%_)))))
                              (_%E125611125623%_))))
                      (_%E125611125623%_)))))
          (_%E125610125645%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125565%_)
        (let* ((_%e125566125576%_ _%stx125565%_)
               (_%E125568125580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125566125576%_)))
               (_%E125567125604%_
                (lambda ()
                  (if (gx#stx-pair? _%e125566125576%_)
                      (let ((_%e125569125584%_
                             (gx#syntax-e _%e125566125576%_)))
                        (let ((_%hd125570125587%_ (##car _%e125569125584%_))
                              (_%tl125571125589%_ (##cdr _%e125569125584%_)))
                          (if (gx#stx-pair? _%tl125571125589%_)
                              (let ((_%e125572125592%_
                                     (gx#syntax-e _%tl125571125589%_)))
                                (let ((_%hd125573125595%_
                                       (##car _%e125572125592%_))
                                      (_%tl125574125597%_
                                       (##cdr _%e125572125592%_)))
                                  (let* ((_%rator125600%_ _%hd125573125595%_)
                                         (_%args125602%_ _%tl125574125597%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125600%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125602%_)))
                                        (_%E125568125580%_)))))
                              (_%E125568125580%_))))
                      (_%E125568125580%_)))))
          (_%E125567125604%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125498%_)
        (let* ((_%e125499125515%_ _%stx125498%_)
               (_%E125501125519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125499125515%_)))
               (_%E125500125561%_
                (lambda ()
                  (if (gx#stx-pair? _%e125499125515%_)
                      (let ((_%e125502125523%_
                             (gx#syntax-e _%e125499125515%_)))
                        (let ((_%hd125503125526%_ (##car _%e125502125523%_))
                              (_%tl125504125528%_ (##cdr _%e125502125523%_)))
                          (if (gx#stx-pair? _%tl125504125528%_)
                              (let ((_%e125505125531%_
                                     (gx#syntax-e _%tl125504125528%_)))
                                (let ((_%hd125506125534%_
                                       (##car _%e125505125531%_))
                                      (_%tl125507125536%_
                                       (##cdr _%e125505125531%_)))
                                  (let ((_%test125539%_ _%hd125506125534%_))
                                    (if (gx#stx-pair? _%tl125507125536%_)
                                        (let ((_%e125508125541%_
                                               (gx#syntax-e
                                                _%tl125507125536%_)))
                                          (let ((_%hd125509125544%_
                                                 (##car _%e125508125541%_))
                                                (_%tl125510125546%_
                                                 (##cdr _%e125508125541%_)))
                                            (let ((_%K125549%_
                                                   _%hd125509125544%_))
                                              (if (gx#stx-pair?
                                                   _%tl125510125546%_)
                                                  (let ((_%e125511125551%_
                                                         (gx#syntax-e
                                                          _%tl125510125546%_)))
                                                    (let ((_%hd125512125554%_
                                                           (##car _%e125511125551%_))
                                                          (_%tl125513125556%_
                                                           (##cdr _%e125511125551%_)))
                                                      (let ((_%E125559%_
                                                             _%hd125512125554%_))
                                                        (if (gx#stx-null?
                                                             _%tl125513125556%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125539%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125549%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125559%_)
                                                '()))))
                        (_%E125501125519%_))
                    (_%E125501125519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125501125519%_)))))
                                        (_%E125501125519%_)))))
                              (_%E125501125519%_))))
                      (_%E125501125519%_)))))
          (_%E125500125561%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125457%_)
        (let* ((_%e125458125468%_ _%stx125457%_)
               (_%E125460125472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125458125468%_)))
               (_%E125459125494%_
                (lambda ()
                  (if (gx#stx-pair? _%e125458125468%_)
                      (let ((_%e125461125476%_
                             (gx#syntax-e _%e125458125468%_)))
                        (let ((_%hd125462125479%_ (##car _%e125461125476%_))
                              (_%tl125463125481%_ (##cdr _%e125461125476%_)))
                          (if (gx#stx-pair? _%tl125463125481%_)
                              (let ((_%e125464125484%_
                                     (gx#syntax-e _%tl125463125481%_)))
                                (let ((_%hd125465125487%_
                                       (##car _%e125464125484%_))
                                      (_%tl125466125489%_
                                       (##cdr _%e125464125484%_)))
                                  (let ((_%id125492%_ _%hd125465125487%_))
                                    (if (gx#stx-null? _%tl125466125489%_)
                                        (if (gx#identifier? _%id125492%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125492%_)
                                                        '()))
                                            (_%E125460125472%_))
                                        (_%E125460125472%_)))))
                              (_%E125460125472%_))))
                      (_%E125460125472%_)))))
          (_%E125459125494%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125403%_)
        (let* ((_%e125404125417%_ _%stx125403%_)
               (_%E125406125421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125404125417%_)))
               (_%E125405125453%_
                (lambda ()
                  (if (gx#stx-pair? _%e125404125417%_)
                      (let ((_%e125407125425%_
                             (gx#syntax-e _%e125404125417%_)))
                        (let ((_%hd125408125428%_ (##car _%e125407125425%_))
                              (_%tl125409125430%_ (##cdr _%e125407125425%_)))
                          (if (gx#stx-pair? _%tl125409125430%_)
                              (let ((_%e125410125433%_
                                     (gx#syntax-e _%tl125409125430%_)))
                                (let ((_%hd125411125436%_
                                       (##car _%e125410125433%_))
                                      (_%tl125412125438%_
                                       (##cdr _%e125410125433%_)))
                                  (let ((_%id125441%_ _%hd125411125436%_))
                                    (if (gx#stx-pair? _%tl125412125438%_)
                                        (let ((_%e125413125443%_
                                               (gx#syntax-e
                                                _%tl125412125438%_)))
                                          (let ((_%hd125414125446%_
                                                 (##car _%e125413125443%_))
                                                (_%tl125415125448%_
                                                 (##cdr _%e125413125443%_)))
                                            (let ((_%expr125451%_
                                                   _%hd125414125446%_))
                                              (if (gx#stx-null?
                                                   _%tl125415125448%_)
                                                  (if (gx#identifier?
                                                       _%id125441%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125441%_)
                          (cons (gx#core-compile-top-syntax _%expr125451%_)
                                '())))
              (_%E125406125421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125406125421%_)))))
                                        (_%E125406125421%_)))))
                              (_%E125406125421%_))))
                      (_%E125406125421%_)))))
          (_%E125405125453%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125397%_)
        (let ((_%$e125399%_ (gx#resolve-identifier__0 _%id125397%_)))
          (if _%$e125399%_
              (##unchecked-structure-ref _%$e125399%_ '1 '#f '#f)
              (let () _%id125397%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125395%_)
        (if (gx#identifier? _%hd125395%_)
            (gx#core-compile-top-runtime-ref _%hd125395%_)
            '#f)))))
