(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712084996)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126414%_)
        (let* ((_%e126415126422%_ _%stx126414%_)
               (_%E126417126426%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126415126422%_)))
               (_%E126416126440%_
                (lambda ()
                  (if (gx#stx-pair? _%e126415126422%_)
                      (let ((_%e126418126430%_
                             (gx#syntax-e _%e126415126422%_)))
                        (let ((_%hd126419126433%_ (##car _%e126418126430%_))
                              (_%tl126420126435%_ (##cdr _%e126418126430%_)))
                          (let ((_%form126438%_ _%hd126419126433%_))
                            (if '#t
                                (let* ((__self126443
                                        (gx#syntax-local-e__0 _%form126438%_))
                                       (__method126444
                                        (__method-ref
                                         __self126443
                                         'compile-top-syntax)))
                                  (if __method126444
                                      (__method126444
                                       __self126443
                                       _%stx126414%_)
                                      (error '"Missing method"
                                             __self126443
                                             'compile-top-syntax)))
                                (_%E126417126426%_)))))
                      (_%E126417126426%_)))))
          (_%E126416126440%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126362%_ _%stx126363%_)
        (let ()
          (let ((_%self126366%_ _%self126362%_))
            (let ()
              (let* ((_%self126375126383%_ _%self126366%_)
                     (_%E126377126387%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self126375126383%_
                               '((core-expander _ _ K)))
                        '#!void))
                     (_%K126378126400%_
                      (lambda (_%K126390%_)
                        (let ((_%$e126392%_ (gx#stx-source _%stx126363%_)))
                          (if _%$e126392%_
                              ((lambda (_%g126394126396%_)
                                 (gx#stx-wrap-source
                                  (_%K126390%_ _%stx126363%_)
                                  _%g126394126396%_))
                               _%$e126392%_)
                              (let () (_%K126390%_ _%stx126363%_)))))))
                (if '#t
                    (let* ((_%e126379126403%_
                            (##unchecked-structure-ref
                             _%self126375126383%_
                             '1
                             '#f
                             '#f))
                           (_%e126380126406%_
                            (##unchecked-structure-ref
                             _%self126375126383%_
                             '2
                             '#f
                             '#f))
                           (_%e126381126409%_
                            (##unchecked-structure-ref
                             _%self126375126383%_
                             '3
                             '#f
                             '#f))
                           (_%K126412%_ _%e126381126409%_))
                      (_%K126378126400%_ _%K126412%_))
                    (_%E126377126387%_))))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126236%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126236%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126206%_)
        (let* ((_%e126207126214%_ _%stx126206%_)
               (_%E126209126218%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126207126214%_)))
               (_%E126208126232%_
                (lambda ()
                  (if (gx#stx-pair? _%e126207126214%_)
                      (let ((_%e126210126222%_
                             (gx#syntax-e _%e126207126214%_)))
                        (let ((_%hd126211126225%_ (##car _%e126210126222%_))
                              (_%tl126212126227%_ (##cdr _%e126210126222%_)))
                          (let ((_%body126230%_ _%tl126212126227%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126230%_))
                                (_%E126209126218%_)))))
                      (_%E126209126218%_)))))
          (_%E126208126232%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126175%_)
        (let* ((_%e126176126183%_ _%stx126175%_)
               (_%E126178126187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126176126183%_)))
               (_%E126177126202%_
                (lambda ()
                  (if (gx#stx-pair? _%e126176126183%_)
                      (let ((_%e126179126191%_
                             (gx#syntax-e _%e126176126183%_)))
                        (let ((_%hd126180126194%_ (##car _%e126179126191%_))
                              (_%tl126181126196%_ (##cdr _%e126179126191%_)))
                          (let ((_%body126199%_ _%tl126181126196%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126199%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126178126187%_)))))
                      (_%E126178126187%_)))))
          (_%E126177126202%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126145%_)
        (let* ((_%e126146126153%_ _%stx126145%_)
               (_%E126148126157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126146126153%_)))
               (_%E126147126171%_
                (lambda ()
                  (if (gx#stx-pair? _%e126146126153%_)
                      (let ((_%e126149126161%_
                             (gx#syntax-e _%e126146126153%_)))
                        (let ((_%hd126150126164%_ (##car _%e126149126161%_))
                              (_%tl126151126166%_ (##cdr _%e126149126161%_)))
                          (let ((_%body126169%_ _%tl126151126166%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126169%_)
                                (_%E126148126157%_)))))
                      (_%E126148126157%_)))))
          (_%E126147126171%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126091%_)
        (let* ((_%e126092126105%_ _%stx126091%_)
               (_%E126094126109%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126092126105%_)))
               (_%E126093126141%_
                (lambda ()
                  (if (gx#stx-pair? _%e126092126105%_)
                      (let ((_%e126095126113%_
                             (gx#syntax-e _%e126092126105%_)))
                        (let ((_%hd126096126116%_ (##car _%e126095126113%_))
                              (_%tl126097126118%_ (##cdr _%e126095126113%_)))
                          (if (gx#stx-pair? _%tl126097126118%_)
                              (let ((_%e126098126121%_
                                     (gx#syntax-e _%tl126097126118%_)))
                                (let ((_%hd126099126124%_
                                       (##car _%e126098126121%_))
                                      (_%tl126100126126%_
                                       (##cdr _%e126098126121%_)))
                                  (let ((_%ann126129%_ _%hd126099126124%_))
                                    (if (gx#stx-pair? _%tl126100126126%_)
                                        (let ((_%e126101126131%_
                                               (gx#syntax-e
                                                _%tl126100126126%_)))
                                          (let ((_%hd126102126134%_
                                                 (##car _%e126101126131%_))
                                                (_%tl126103126136%_
                                                 (##cdr _%e126101126131%_)))
                                            (let ((_%expr126139%_
                                                   _%hd126102126134%_))
                                              (if (gx#stx-null?
                                                   _%tl126103126136%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126139%_)
                                                      (_%E126094126109%_))
                                                  (_%E126094126109%_)))))
                                        (_%E126094126109%_)))))
                              (_%E126094126109%_))))
                      (_%E126094126109%_)))))
          (_%E126093126141%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126061%_)
        (let* ((_%e126062126069%_ _%stx126061%_)
               (_%E126064126073%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126062126069%_)))
               (_%E126063126087%_
                (lambda ()
                  (if (gx#stx-pair? _%e126062126069%_)
                      (let ((_%e126065126077%_
                             (gx#syntax-e _%e126062126069%_)))
                        (let ((_%hd126066126080%_ (##car _%e126065126077%_))
                              (_%tl126067126082%_ (##cdr _%e126065126077%_)))
                          (let ((_%body126085%_ _%tl126067126082%_))
                            (if '#t
                                (cons '%#import _%body126085%_)
                                (_%E126064126073%_)))))
                      (_%E126064126073%_)))))
          (_%E126063126087%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126018%_)
        (let* ((_%e126019126029%_ _%stx126018%_)
               (_%E126021126033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126019126029%_)))
               (_%E126020126057%_
                (lambda ()
                  (if (gx#stx-pair? _%e126019126029%_)
                      (let ((_%e126022126037%_
                             (gx#syntax-e _%e126019126029%_)))
                        (let ((_%hd126023126040%_ (##car _%e126022126037%_))
                              (_%tl126024126042%_ (##cdr _%e126022126037%_)))
                          (if (gx#stx-pair? _%tl126024126042%_)
                              (let ((_%e126025126045%_
                                     (gx#syntax-e _%tl126024126042%_)))
                                (let ((_%hd126026126048%_
                                       (##car _%e126025126045%_))
                                      (_%tl126027126050%_
                                       (##cdr _%e126025126045%_)))
                                  (let* ((_%hd126053%_ _%hd126026126048%_)
                                         (_%body126055%_ _%tl126027126050%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126053%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126055%_)))
                                        (_%E126021126033%_)))))
                              (_%E126021126033%_))))
                      (_%E126021126033%_)))))
          (_%E126020126057%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx125988%_)
        (let* ((_%e125989125996%_ _%stx125988%_)
               (_%E125991126000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125989125996%_)))
               (_%E125990126014%_
                (lambda ()
                  (if (gx#stx-pair? _%e125989125996%_)
                      (let ((_%e125992126004%_
                             (gx#syntax-e _%e125989125996%_)))
                        (let ((_%hd125993126007%_ (##car _%e125992126004%_))
                              (_%tl125994126009%_ (##cdr _%e125992126004%_)))
                          (let ((_%body126012%_ _%tl125994126009%_))
                            (if '#t
                                (cons '%#export _%body126012%_)
                                (_%E125991126000%_)))))
                      (_%E125991126000%_)))))
          (_%E125990126014%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx125958%_)
        (let* ((_%e125959125966%_ _%stx125958%_)
               (_%E125961125970%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125959125966%_)))
               (_%E125960125984%_
                (lambda ()
                  (if (gx#stx-pair? _%e125959125966%_)
                      (let ((_%e125962125974%_
                             (gx#syntax-e _%e125959125966%_)))
                        (let ((_%hd125963125977%_ (##car _%e125962125974%_))
                              (_%tl125964125979%_ (##cdr _%e125962125974%_)))
                          (let ((_%body125982%_ _%tl125964125979%_))
                            (if '#t
                                (cons '%#provide _%body125982%_)
                                (_%E125961125970%_)))))
                      (_%E125961125970%_)))))
          (_%E125960125984%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx125928%_)
        (let* ((_%e125929125936%_ _%stx125928%_)
               (_%E125931125940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125929125936%_)))
               (_%E125930125954%_
                (lambda ()
                  (if (gx#stx-pair? _%e125929125936%_)
                      (let ((_%e125932125944%_
                             (gx#syntax-e _%e125929125936%_)))
                        (let ((_%hd125933125947%_ (##car _%e125932125944%_))
                              (_%tl125934125949%_ (##cdr _%e125932125944%_)))
                          (let ((_%body125952%_ _%tl125934125949%_))
                            (if '#t
                                (cons '%#extern _%body125952%_)
                                (_%E125931125940%_)))))
                      (_%E125931125940%_)))))
          (_%E125930125954%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx125874%_)
        (let* ((_%e125875125888%_ _%stx125874%_)
               (_%E125877125892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125875125888%_)))
               (_%E125876125924%_
                (lambda ()
                  (if (gx#stx-pair? _%e125875125888%_)
                      (let ((_%e125878125896%_
                             (gx#syntax-e _%e125875125888%_)))
                        (let ((_%hd125879125899%_ (##car _%e125878125896%_))
                              (_%tl125880125901%_ (##cdr _%e125878125896%_)))
                          (if (gx#stx-pair? _%tl125880125901%_)
                              (let ((_%e125881125904%_
                                     (gx#syntax-e _%tl125880125901%_)))
                                (let ((_%hd125882125907%_
                                       (##car _%e125881125904%_))
                                      (_%tl125883125909%_
                                       (##cdr _%e125881125904%_)))
                                  (let ((_%hd125912%_ _%hd125882125907%_))
                                    (if (gx#stx-pair? _%tl125883125909%_)
                                        (let ((_%e125884125914%_
                                               (gx#syntax-e
                                                _%tl125883125909%_)))
                                          (let ((_%hd125885125917%_
                                                 (##car _%e125884125914%_))
                                                (_%tl125886125919%_
                                                 (##cdr _%e125884125914%_)))
                                            (let ((_%expr125922%_
                                                   _%hd125885125917%_))
                                              (if (gx#stx-null?
                                                   _%tl125886125919%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd125912%_)
                          (cons (gx#core-compile-top-syntax _%expr125922%_)
                                '())))
              (_%E125877125892%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125877125892%_)))))
                                        (_%E125877125892%_)))))
                              (_%E125877125892%_))))
                      (_%E125877125892%_)))))
          (_%E125876125924%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125819%_)
        (let* ((_%e125820125833%_ _%stx125819%_)
               (_%E125822125837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125820125833%_)))
               (_%E125821125870%_
                (lambda ()
                  (if (gx#stx-pair? _%e125820125833%_)
                      (let ((_%e125823125841%_
                             (gx#syntax-e _%e125820125833%_)))
                        (let ((_%hd125824125844%_ (##car _%e125823125841%_))
                              (_%tl125825125846%_ (##cdr _%e125823125841%_)))
                          (if (gx#stx-pair? _%tl125825125846%_)
                              (let ((_%e125826125849%_
                                     (gx#syntax-e _%tl125825125846%_)))
                                (let ((_%hd125827125852%_
                                       (##car _%e125826125849%_))
                                      (_%tl125828125854%_
                                       (##cdr _%e125826125849%_)))
                                  (let ((_%hd125857%_ _%hd125827125852%_))
                                    (if (gx#stx-pair? _%tl125828125854%_)
                                        (let ((_%e125829125859%_
                                               (gx#syntax-e
                                                _%tl125828125854%_)))
                                          (let ((_%hd125830125862%_
                                                 (##car _%e125829125859%_))
                                                (_%tl125831125864%_
                                                 (##cdr _%e125829125859%_)))
                                            (let ((_%expr125867%_
                                                   _%hd125830125862%_))
                                              (if (gx#stx-null?
                                                   _%tl125831125864%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr125867%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125822125837%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125822125837%_)))))
                                        (_%E125822125837%_)))))
                              (_%E125822125837%_))))
                      (_%E125822125837%_)))))
          (_%E125821125870%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125789%_)
        (let* ((_%e125790125797%_ _%stx125789%_)
               (_%E125792125801%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125790125797%_)))
               (_%E125791125815%_
                (lambda ()
                  (if (gx#stx-pair? _%e125790125797%_)
                      (let ((_%e125793125805%_
                             (gx#syntax-e _%e125790125797%_)))
                        (let ((_%hd125794125808%_ (##car _%e125793125805%_))
                              (_%tl125795125810%_ (##cdr _%e125793125805%_)))
                          (let ((_%body125813%_ _%tl125795125810%_))
                            (if '#t
                                (cons '%#define-alias _%body125813%_)
                                (_%E125792125801%_)))))
                      (_%E125792125801%_)))))
          (_%E125791125815%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125759%_)
        (let* ((_%e125760125767%_ _%stx125759%_)
               (_%E125762125771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125760125767%_)))
               (_%E125761125785%_
                (lambda ()
                  (if (gx#stx-pair? _%e125760125767%_)
                      (let ((_%e125763125775%_
                             (gx#syntax-e _%e125760125767%_)))
                        (let ((_%hd125764125778%_ (##car _%e125763125775%_))
                              (_%tl125765125780%_ (##cdr _%e125763125775%_)))
                          (let ((_%body125783%_ _%tl125765125780%_))
                            (if '#t
                                (cons '%#define-runtime _%body125783%_)
                                (_%E125762125771%_)))))
                      (_%E125762125771%_)))))
          (_%E125761125785%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125729%_)
        (let* ((_%e125730125737%_ _%stx125729%_)
               (_%E125732125741%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125730125737%_)))
               (_%E125731125755%_
                (lambda ()
                  (if (gx#stx-pair? _%e125730125737%_)
                      (let ((_%e125733125745%_
                             (gx#syntax-e _%e125730125737%_)))
                        (let ((_%hd125734125748%_ (##car _%e125733125745%_))
                              (_%tl125735125750%_ (##cdr _%e125733125745%_)))
                          (let ((_%decls125753%_ _%tl125735125750%_))
                            (if '#t
                                (cons '%#declare _%decls125753%_)
                                (_%E125732125741%_)))))
                      (_%E125732125741%_)))))
          (_%E125731125755%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125699%_)
        (let* ((_%e125700125707%_ _%stx125699%_)
               (_%E125702125711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125700125707%_)))
               (_%E125701125725%_
                (lambda ()
                  (if (gx#stx-pair? _%e125700125707%_)
                      (let ((_%e125703125715%_
                             (gx#syntax-e _%e125700125707%_)))
                        (let ((_%hd125704125718%_ (##car _%e125703125715%_))
                              (_%tl125705125720%_ (##cdr _%e125703125715%_)))
                          (let ((_%clause125723%_ _%tl125705125720%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125723%_))
                                (_%E125702125711%_)))))
                      (_%E125702125711%_)))))
          (_%E125701125725%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125656%_)
        (let* ((_%e125657125667%_ _%stx125656%_)
               (_%E125659125671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125657125667%_)))
               (_%E125658125695%_
                (lambda ()
                  (if (gx#stx-pair? _%e125657125667%_)
                      (let ((_%e125660125675%_
                             (gx#syntax-e _%e125657125667%_)))
                        (let ((_%hd125661125678%_ (##car _%e125660125675%_))
                              (_%tl125662125680%_ (##cdr _%e125660125675%_)))
                          (let ((_%hd125683%_ _%hd125661125678%_))
                            (if (gx#stx-pair? _%tl125662125680%_)
                                (let ((_%e125663125685%_
                                       (gx#syntax-e _%tl125662125680%_)))
                                  (let ((_%hd125664125688%_
                                         (##car _%e125663125685%_))
                                        (_%tl125665125690%_
                                         (##cdr _%e125663125685%_)))
                                    (let ((_%body125693%_ _%hd125664125688%_))
                                      (if (gx#stx-null? _%tl125665125690%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125683%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125693%_)
                                                          '()))
                                              (_%E125659125671%_))
                                          (_%E125659125671%_)))))
                                (_%E125659125671%_)))))
                      (_%E125659125671%_)))))
          (_%E125658125695%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125626%_)
        (let* ((_%e125627125634%_ _%stx125626%_)
               (_%E125629125638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125627125634%_)))
               (_%E125628125652%_
                (lambda ()
                  (if (gx#stx-pair? _%e125627125634%_)
                      (let ((_%e125630125642%_
                             (gx#syntax-e _%e125627125634%_)))
                        (let ((_%hd125631125645%_ (##car _%e125630125642%_))
                              (_%tl125632125647%_ (##cdr _%e125630125642%_)))
                          (let ((_%clauses125650%_ _%tl125632125647%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125650%_))
                                (_%E125629125638%_)))))
                      (_%E125629125638%_)))))
          (_%E125628125652%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125561%_ _%form125562%_)
        (let* ((_%e125563125576%_ _%stx125561%_)
               (_%E125565125580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125563125576%_)))
               (_%E125564125612%_
                (lambda ()
                  (if (gx#stx-pair? _%e125563125576%_)
                      (let ((_%e125566125584%_
                             (gx#syntax-e _%e125563125576%_)))
                        (let ((_%hd125567125587%_ (##car _%e125566125584%_))
                              (_%tl125568125589%_ (##cdr _%e125566125584%_)))
                          (if (gx#stx-pair? _%tl125568125589%_)
                              (let ((_%e125569125592%_
                                     (gx#syntax-e _%tl125568125589%_)))
                                (let ((_%hd125570125595%_
                                       (##car _%e125569125592%_))
                                      (_%tl125571125597%_
                                       (##cdr _%e125569125592%_)))
                                  (let ((_%hd125600%_ _%hd125570125595%_))
                                    (if (gx#stx-pair? _%tl125571125597%_)
                                        (let ((_%e125572125602%_
                                               (gx#syntax-e
                                                _%tl125571125597%_)))
                                          (let ((_%hd125573125605%_
                                                 (##car _%e125572125602%_))
                                                (_%tl125574125607%_
                                                 (##cdr _%e125572125602%_)))
                                            (let ((_%body125610%_
                                                   _%hd125573125605%_))
                                              (if (gx#stx-null?
                                                   _%tl125574125607%_)
                                                  (if '#t
                                                      (cons _%form125562%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125600%_)
                          (cons (gx#core-compile-top-syntax _%body125610%_)
                                '())))
              (_%E125565125580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125565125580%_)))))
                                        (_%E125565125580%_)))))
                              (_%E125565125580%_))))
                      (_%E125565125580%_)))))
          (_%E125564125612%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125619%_)
        (let ((_%form125621%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125619%_ _%form125621%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126446_
        (let ((_g126445_ (##length _g126446_)))
          (cond ((##fx= _g126445_ 1)
                 (apply (lambda (_%stx125619%_)
                          (gx#core-compile-top-let-values%__0 _%stx125619%_))
                        _g126446_))
                ((##fx= _g126445_ 2)
                 (apply (lambda (_%stx125623%_ _%form125624%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx125623%_
                           _%form125624%_))
                        _g126446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126446_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125558%_)
        (gx#core-compile-top-let-values%__% _%stx125558%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125556%_)
        (gx#core-compile-top-let-values%__% _%stx125556%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125515%_)
        (let* ((_%e125516125526%_ _%stx125515%_)
               (_%E125518125530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125516125526%_)))
               (_%E125517125552%_
                (lambda ()
                  (if (gx#stx-pair? _%e125516125526%_)
                      (let ((_%e125519125534%_
                             (gx#syntax-e _%e125516125526%_)))
                        (let ((_%hd125520125537%_ (##car _%e125519125534%_))
                              (_%tl125521125539%_ (##cdr _%e125519125534%_)))
                          (if (gx#stx-pair? _%tl125521125539%_)
                              (let ((_%e125522125542%_
                                     (gx#syntax-e _%tl125521125539%_)))
                                (let ((_%hd125523125545%_
                                       (##car _%e125522125542%_))
                                      (_%tl125524125547%_
                                       (##cdr _%e125522125542%_)))
                                  (let ((_%e125550%_ _%hd125523125545%_))
                                    (if (gx#stx-null? _%tl125524125547%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125550%_)
                                                        '()))
                                            (_%E125518125530%_))
                                        (_%E125518125530%_)))))
                              (_%E125518125530%_))))
                      (_%E125518125530%_)))))
          (_%E125517125552%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125474%_)
        (let* ((_%e125475125485%_ _%stx125474%_)
               (_%E125477125489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125475125485%_)))
               (_%E125476125511%_
                (lambda ()
                  (if (gx#stx-pair? _%e125475125485%_)
                      (let ((_%e125478125493%_
                             (gx#syntax-e _%e125475125485%_)))
                        (let ((_%hd125479125496%_ (##car _%e125478125493%_))
                              (_%tl125480125498%_ (##cdr _%e125478125493%_)))
                          (if (gx#stx-pair? _%tl125480125498%_)
                              (let ((_%e125481125501%_
                                     (gx#syntax-e _%tl125480125498%_)))
                                (let ((_%hd125482125504%_
                                       (##car _%e125481125501%_))
                                      (_%tl125483125506%_
                                       (##cdr _%e125481125501%_)))
                                  (let ((_%e125509%_ _%hd125482125504%_))
                                    (if (gx#stx-null? _%tl125483125506%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125509%_)
                                                        '()))
                                            (_%E125477125489%_))
                                        (_%E125477125489%_)))))
                              (_%E125477125489%_))))
                      (_%E125477125489%_)))))
          (_%E125476125511%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125431%_)
        (let* ((_%e125432125442%_ _%stx125431%_)
               (_%E125434125446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125432125442%_)))
               (_%E125433125470%_
                (lambda ()
                  (if (gx#stx-pair? _%e125432125442%_)
                      (let ((_%e125435125450%_
                             (gx#syntax-e _%e125432125442%_)))
                        (let ((_%hd125436125453%_ (##car _%e125435125450%_))
                              (_%tl125437125455%_ (##cdr _%e125435125450%_)))
                          (if (gx#stx-pair? _%tl125437125455%_)
                              (let ((_%e125438125458%_
                                     (gx#syntax-e _%tl125437125455%_)))
                                (let ((_%hd125439125461%_
                                       (##car _%e125438125458%_))
                                      (_%tl125440125463%_
                                       (##cdr _%e125438125458%_)))
                                  (let* ((_%rator125466%_ _%hd125439125461%_)
                                         (_%args125468%_ _%tl125440125463%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125466%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125468%_)))
                                        (_%E125434125446%_)))))
                              (_%E125434125446%_))))
                      (_%E125434125446%_)))))
          (_%E125433125470%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125364%_)
        (let* ((_%e125365125381%_ _%stx125364%_)
               (_%E125367125385%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125365125381%_)))
               (_%E125366125427%_
                (lambda ()
                  (if (gx#stx-pair? _%e125365125381%_)
                      (let ((_%e125368125389%_
                             (gx#syntax-e _%e125365125381%_)))
                        (let ((_%hd125369125392%_ (##car _%e125368125389%_))
                              (_%tl125370125394%_ (##cdr _%e125368125389%_)))
                          (if (gx#stx-pair? _%tl125370125394%_)
                              (let ((_%e125371125397%_
                                     (gx#syntax-e _%tl125370125394%_)))
                                (let ((_%hd125372125400%_
                                       (##car _%e125371125397%_))
                                      (_%tl125373125402%_
                                       (##cdr _%e125371125397%_)))
                                  (let ((_%test125405%_ _%hd125372125400%_))
                                    (if (gx#stx-pair? _%tl125373125402%_)
                                        (let ((_%e125374125407%_
                                               (gx#syntax-e
                                                _%tl125373125402%_)))
                                          (let ((_%hd125375125410%_
                                                 (##car _%e125374125407%_))
                                                (_%tl125376125412%_
                                                 (##cdr _%e125374125407%_)))
                                            (let ((_%K125415%_
                                                   _%hd125375125410%_))
                                              (if (gx#stx-pair?
                                                   _%tl125376125412%_)
                                                  (let ((_%e125377125417%_
                                                         (gx#syntax-e
                                                          _%tl125376125412%_)))
                                                    (let ((_%hd125378125420%_
                                                           (##car _%e125377125417%_))
                                                          (_%tl125379125422%_
                                                           (##cdr _%e125377125417%_)))
                                                      (let ((_%E125425%_
                                                             _%hd125378125420%_))
                                                        (if (gx#stx-null?
                                                             _%tl125379125422%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125405%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125415%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125425%_)
                                                '()))))
                        (_%E125367125385%_))
                    (_%E125367125385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125367125385%_)))))
                                        (_%E125367125385%_)))))
                              (_%E125367125385%_))))
                      (_%E125367125385%_)))))
          (_%E125366125427%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125323%_)
        (let* ((_%e125324125334%_ _%stx125323%_)
               (_%E125326125338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125324125334%_)))
               (_%E125325125360%_
                (lambda ()
                  (if (gx#stx-pair? _%e125324125334%_)
                      (let ((_%e125327125342%_
                             (gx#syntax-e _%e125324125334%_)))
                        (let ((_%hd125328125345%_ (##car _%e125327125342%_))
                              (_%tl125329125347%_ (##cdr _%e125327125342%_)))
                          (if (gx#stx-pair? _%tl125329125347%_)
                              (let ((_%e125330125350%_
                                     (gx#syntax-e _%tl125329125347%_)))
                                (let ((_%hd125331125353%_
                                       (##car _%e125330125350%_))
                                      (_%tl125332125355%_
                                       (##cdr _%e125330125350%_)))
                                  (let ((_%id125358%_ _%hd125331125353%_))
                                    (if (gx#stx-null? _%tl125332125355%_)
                                        (if (gx#identifier? _%id125358%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125358%_)
                                                        '()))
                                            (_%E125326125338%_))
                                        (_%E125326125338%_)))))
                              (_%E125326125338%_))))
                      (_%E125326125338%_)))))
          (_%E125325125360%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125269%_)
        (let* ((_%e125270125283%_ _%stx125269%_)
               (_%E125272125287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125270125283%_)))
               (_%E125271125319%_
                (lambda ()
                  (if (gx#stx-pair? _%e125270125283%_)
                      (let ((_%e125273125291%_
                             (gx#syntax-e _%e125270125283%_)))
                        (let ((_%hd125274125294%_ (##car _%e125273125291%_))
                              (_%tl125275125296%_ (##cdr _%e125273125291%_)))
                          (if (gx#stx-pair? _%tl125275125296%_)
                              (let ((_%e125276125299%_
                                     (gx#syntax-e _%tl125275125296%_)))
                                (let ((_%hd125277125302%_
                                       (##car _%e125276125299%_))
                                      (_%tl125278125304%_
                                       (##cdr _%e125276125299%_)))
                                  (let ((_%id125307%_ _%hd125277125302%_))
                                    (if (gx#stx-pair? _%tl125278125304%_)
                                        (let ((_%e125279125309%_
                                               (gx#syntax-e
                                                _%tl125278125304%_)))
                                          (let ((_%hd125280125312%_
                                                 (##car _%e125279125309%_))
                                                (_%tl125281125314%_
                                                 (##cdr _%e125279125309%_)))
                                            (let ((_%expr125317%_
                                                   _%hd125280125312%_))
                                              (if (gx#stx-null?
                                                   _%tl125281125314%_)
                                                  (if (gx#identifier?
                                                       _%id125307%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125307%_)
                          (cons (gx#core-compile-top-syntax _%expr125317%_)
                                '())))
              (_%E125272125287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125272125287%_)))))
                                        (_%E125272125287%_)))))
                              (_%E125272125287%_))))
                      (_%E125272125287%_)))))
          (_%E125271125319%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125263%_)
        (let ((_%$e125265%_ (gx#resolve-identifier__0 _%id125263%_)))
          (if _%$e125265%_
              (##unchecked-structure-ref _%$e125265%_ '1 '#f '#f)
              (let () _%id125263%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125261%_)
        (if (gx#identifier? _%hd125261%_)
            (gx#core-compile-top-runtime-ref _%hd125261%_)
            '#f)))))
