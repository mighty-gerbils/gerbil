(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712093476)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126609%_)
        (let* ((_%e126610126617%_ _%stx126609%_)
               (_%E126612126621%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126610126617%_)))
               (_%E126611126635%_
                (lambda ()
                  (if (gx#stx-pair? _%e126610126617%_)
                      (let ((_%e126613126625%_
                             (gx#syntax-e _%e126610126617%_)))
                        (let ((_%hd126614126628%_ (##car _%e126613126625%_))
                              (_%tl126615126630%_ (##cdr _%e126613126625%_)))
                          (let ((_%form126633%_ _%hd126614126628%_))
                            (if '#t
                                (let* ((__self126638
                                        (gx#syntax-local-e__0 _%form126633%_))
                                       (__method126639
                                        (__method-ref
                                         __self126638
                                         'compile-top-syntax)))
                                  (if __method126639
                                      (__method126639
                                       __self126638
                                       _%stx126609%_)
                                      (error '"Missing method"
                                             __self126638
                                             'compile-top-syntax)))
                                (_%E126612126621%_)))))
                      (_%E126612126621%_)))))
          (_%E126611126635%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126557%_ _%stx126558%_)
        (let ()
          (let ((_%self126561%_ _%self126557%_))
            (let ()
              (let* ((_%self126570126578%_ _%self126561%_)
                     (_%E126572126582%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self126570126578%_
                               '((core-expander _ _ K)))
                        '#!void))
                     (_%K126573126595%_
                      (lambda (_%K126585%_)
                        (let ((_%$e126587%_ (gx#stx-source _%stx126558%_)))
                          (if _%$e126587%_
                              ((lambda (_%g126589126591%_)
                                 (gx#stx-wrap-source
                                  (_%K126585%_ _%stx126558%_)
                                  _%g126589126591%_))
                               _%$e126587%_)
                              (let () (_%K126585%_ _%stx126558%_)))))))
                (if '#t
                    (let* ((_%e126574126598%_
                            (##unchecked-structure-ref
                             _%self126570126578%_
                             '1
                             '#f
                             '#f))
                           (_%e126575126601%_
                            (##unchecked-structure-ref
                             _%self126570126578%_
                             '2
                             '#f
                             '#f))
                           (_%e126576126604%_
                            (##unchecked-structure-ref
                             _%self126570126578%_
                             '3
                             '#f
                             '#f))
                           (_%K126607%_ _%e126576126604%_))
                      (_%K126573126595%_ _%K126607%_))
                    (_%E126572126582%_))))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126431%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126431%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126401%_)
        (let* ((_%e126402126409%_ _%stx126401%_)
               (_%E126404126413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126402126409%_)))
               (_%E126403126427%_
                (lambda ()
                  (if (gx#stx-pair? _%e126402126409%_)
                      (let ((_%e126405126417%_
                             (gx#syntax-e _%e126402126409%_)))
                        (let ((_%hd126406126420%_ (##car _%e126405126417%_))
                              (_%tl126407126422%_ (##cdr _%e126405126417%_)))
                          (let ((_%body126425%_ _%tl126407126422%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126425%_))
                                (_%E126404126413%_)))))
                      (_%E126404126413%_)))))
          (_%E126403126427%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126370%_)
        (let* ((_%e126371126378%_ _%stx126370%_)
               (_%E126373126382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126371126378%_)))
               (_%E126372126397%_
                (lambda ()
                  (if (gx#stx-pair? _%e126371126378%_)
                      (let ((_%e126374126386%_
                             (gx#syntax-e _%e126371126378%_)))
                        (let ((_%hd126375126389%_ (##car _%e126374126386%_))
                              (_%tl126376126391%_ (##cdr _%e126374126386%_)))
                          (let ((_%body126394%_ _%tl126376126391%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126394%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126373126382%_)))))
                      (_%E126373126382%_)))))
          (_%E126372126397%_))))
    (define gx#core-compile-top-begin-foreign%
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
                                (cons '%#begin-foreign _%body126364%_)
                                (_%E126343126352%_)))))
                      (_%E126343126352%_)))))
          (_%E126342126366%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126286%_)
        (let* ((_%e126287126300%_ _%stx126286%_)
               (_%E126289126304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126287126300%_)))
               (_%E126288126336%_
                (lambda ()
                  (if (gx#stx-pair? _%e126287126300%_)
                      (let ((_%e126290126308%_
                             (gx#syntax-e _%e126287126300%_)))
                        (let ((_%hd126291126311%_ (##car _%e126290126308%_))
                              (_%tl126292126313%_ (##cdr _%e126290126308%_)))
                          (if (gx#stx-pair? _%tl126292126313%_)
                              (let ((_%e126293126316%_
                                     (gx#syntax-e _%tl126292126313%_)))
                                (let ((_%hd126294126319%_
                                       (##car _%e126293126316%_))
                                      (_%tl126295126321%_
                                       (##cdr _%e126293126316%_)))
                                  (let ((_%ann126324%_ _%hd126294126319%_))
                                    (if (gx#stx-pair? _%tl126295126321%_)
                                        (let ((_%e126296126326%_
                                               (gx#syntax-e
                                                _%tl126295126321%_)))
                                          (let ((_%hd126297126329%_
                                                 (##car _%e126296126326%_))
                                                (_%tl126298126331%_
                                                 (##cdr _%e126296126326%_)))
                                            (let ((_%expr126334%_
                                                   _%hd126297126329%_))
                                              (if (gx#stx-null?
                                                   _%tl126298126331%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126334%_)
                                                      (_%E126289126304%_))
                                                  (_%E126289126304%_)))))
                                        (_%E126289126304%_)))))
                              (_%E126289126304%_))))
                      (_%E126289126304%_)))))
          (_%E126288126336%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126256%_)
        (let* ((_%e126257126264%_ _%stx126256%_)
               (_%E126259126268%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126257126264%_)))
               (_%E126258126282%_
                (lambda ()
                  (if (gx#stx-pair? _%e126257126264%_)
                      (let ((_%e126260126272%_
                             (gx#syntax-e _%e126257126264%_)))
                        (let ((_%hd126261126275%_ (##car _%e126260126272%_))
                              (_%tl126262126277%_ (##cdr _%e126260126272%_)))
                          (let ((_%body126280%_ _%tl126262126277%_))
                            (if '#t
                                (cons '%#import _%body126280%_)
                                (_%E126259126268%_)))))
                      (_%E126259126268%_)))))
          (_%E126258126282%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126213%_)
        (let* ((_%e126214126224%_ _%stx126213%_)
               (_%E126216126228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126214126224%_)))
               (_%E126215126252%_
                (lambda ()
                  (if (gx#stx-pair? _%e126214126224%_)
                      (let ((_%e126217126232%_
                             (gx#syntax-e _%e126214126224%_)))
                        (let ((_%hd126218126235%_ (##car _%e126217126232%_))
                              (_%tl126219126237%_ (##cdr _%e126217126232%_)))
                          (if (gx#stx-pair? _%tl126219126237%_)
                              (let ((_%e126220126240%_
                                     (gx#syntax-e _%tl126219126237%_)))
                                (let ((_%hd126221126243%_
                                       (##car _%e126220126240%_))
                                      (_%tl126222126245%_
                                       (##cdr _%e126220126240%_)))
                                  (let* ((_%hd126248%_ _%hd126221126243%_)
                                         (_%body126250%_ _%tl126222126245%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126248%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126250%_)))
                                        (_%E126216126228%_)))))
                              (_%E126216126228%_))))
                      (_%E126216126228%_)))))
          (_%E126215126252%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126183%_)
        (let* ((_%e126184126191%_ _%stx126183%_)
               (_%E126186126195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126184126191%_)))
               (_%E126185126209%_
                (lambda ()
                  (if (gx#stx-pair? _%e126184126191%_)
                      (let ((_%e126187126199%_
                             (gx#syntax-e _%e126184126191%_)))
                        (let ((_%hd126188126202%_ (##car _%e126187126199%_))
                              (_%tl126189126204%_ (##cdr _%e126187126199%_)))
                          (let ((_%body126207%_ _%tl126189126204%_))
                            (if '#t
                                (cons '%#export _%body126207%_)
                                (_%E126186126195%_)))))
                      (_%E126186126195%_)))))
          (_%E126185126209%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126153%_)
        (let* ((_%e126154126161%_ _%stx126153%_)
               (_%E126156126165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126154126161%_)))
               (_%E126155126179%_
                (lambda ()
                  (if (gx#stx-pair? _%e126154126161%_)
                      (let ((_%e126157126169%_
                             (gx#syntax-e _%e126154126161%_)))
                        (let ((_%hd126158126172%_ (##car _%e126157126169%_))
                              (_%tl126159126174%_ (##cdr _%e126157126169%_)))
                          (let ((_%body126177%_ _%tl126159126174%_))
                            (if '#t
                                (cons '%#provide _%body126177%_)
                                (_%E126156126165%_)))))
                      (_%E126156126165%_)))))
          (_%E126155126179%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126123%_)
        (let* ((_%e126124126131%_ _%stx126123%_)
               (_%E126126126135%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126124126131%_)))
               (_%E126125126149%_
                (lambda ()
                  (if (gx#stx-pair? _%e126124126131%_)
                      (let ((_%e126127126139%_
                             (gx#syntax-e _%e126124126131%_)))
                        (let ((_%hd126128126142%_ (##car _%e126127126139%_))
                              (_%tl126129126144%_ (##cdr _%e126127126139%_)))
                          (let ((_%body126147%_ _%tl126129126144%_))
                            (if '#t
                                (cons '%#extern _%body126147%_)
                                (_%E126126126135%_)))))
                      (_%E126126126135%_)))))
          (_%E126125126149%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126069%_)
        (let* ((_%e126070126083%_ _%stx126069%_)
               (_%E126072126087%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126070126083%_)))
               (_%E126071126119%_
                (lambda ()
                  (if (gx#stx-pair? _%e126070126083%_)
                      (let ((_%e126073126091%_
                             (gx#syntax-e _%e126070126083%_)))
                        (let ((_%hd126074126094%_ (##car _%e126073126091%_))
                              (_%tl126075126096%_ (##cdr _%e126073126091%_)))
                          (if (gx#stx-pair? _%tl126075126096%_)
                              (let ((_%e126076126099%_
                                     (gx#syntax-e _%tl126075126096%_)))
                                (let ((_%hd126077126102%_
                                       (##car _%e126076126099%_))
                                      (_%tl126078126104%_
                                       (##cdr _%e126076126099%_)))
                                  (let ((_%hd126107%_ _%hd126077126102%_))
                                    (if (gx#stx-pair? _%tl126078126104%_)
                                        (let ((_%e126079126109%_
                                               (gx#syntax-e
                                                _%tl126078126104%_)))
                                          (let ((_%hd126080126112%_
                                                 (##car _%e126079126109%_))
                                                (_%tl126081126114%_
                                                 (##cdr _%e126079126109%_)))
                                            (let ((_%expr126117%_
                                                   _%hd126080126112%_))
                                              (if (gx#stx-null?
                                                   _%tl126081126114%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126107%_)
                          (cons (gx#core-compile-top-syntax _%expr126117%_)
                                '())))
              (_%E126072126087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126072126087%_)))))
                                        (_%E126072126087%_)))))
                              (_%E126072126087%_))))
                      (_%E126072126087%_)))))
          (_%E126071126119%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126014%_)
        (let* ((_%e126015126028%_ _%stx126014%_)
               (_%E126017126032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126015126028%_)))
               (_%E126016126065%_
                (lambda ()
                  (if (gx#stx-pair? _%e126015126028%_)
                      (let ((_%e126018126036%_
                             (gx#syntax-e _%e126015126028%_)))
                        (let ((_%hd126019126039%_ (##car _%e126018126036%_))
                              (_%tl126020126041%_ (##cdr _%e126018126036%_)))
                          (if (gx#stx-pair? _%tl126020126041%_)
                              (let ((_%e126021126044%_
                                     (gx#syntax-e _%tl126020126041%_)))
                                (let ((_%hd126022126047%_
                                       (##car _%e126021126044%_))
                                      (_%tl126023126049%_
                                       (##cdr _%e126021126044%_)))
                                  (let ((_%hd126052%_ _%hd126022126047%_))
                                    (if (gx#stx-pair? _%tl126023126049%_)
                                        (let ((_%e126024126054%_
                                               (gx#syntax-e
                                                _%tl126023126049%_)))
                                          (let ((_%hd126025126057%_
                                                 (##car _%e126024126054%_))
                                                (_%tl126026126059%_
                                                 (##cdr _%e126024126054%_)))
                                            (let ((_%expr126062%_
                                                   _%hd126025126057%_))
                                              (if (gx#stx-null?
                                                   _%tl126026126059%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126062%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126017126032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126017126032%_)))))
                                        (_%E126017126032%_)))))
                              (_%E126017126032%_))))
                      (_%E126017126032%_)))))
          (_%E126016126065%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125984%_)
        (let* ((_%e125985125992%_ _%stx125984%_)
               (_%E125987125996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125985125992%_)))
               (_%E125986126010%_
                (lambda ()
                  (if (gx#stx-pair? _%e125985125992%_)
                      (let ((_%e125988126000%_
                             (gx#syntax-e _%e125985125992%_)))
                        (let ((_%hd125989126003%_ (##car _%e125988126000%_))
                              (_%tl125990126005%_ (##cdr _%e125988126000%_)))
                          (let ((_%body126008%_ _%tl125990126005%_))
                            (if '#t
                                (cons '%#define-alias _%body126008%_)
                                (_%E125987125996%_)))))
                      (_%E125987125996%_)))))
          (_%E125986126010%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125954%_)
        (let* ((_%e125955125962%_ _%stx125954%_)
               (_%E125957125966%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125955125962%_)))
               (_%E125956125980%_
                (lambda ()
                  (if (gx#stx-pair? _%e125955125962%_)
                      (let ((_%e125958125970%_
                             (gx#syntax-e _%e125955125962%_)))
                        (let ((_%hd125959125973%_ (##car _%e125958125970%_))
                              (_%tl125960125975%_ (##cdr _%e125958125970%_)))
                          (let ((_%body125978%_ _%tl125960125975%_))
                            (if '#t
                                (cons '%#define-runtime _%body125978%_)
                                (_%E125957125966%_)))))
                      (_%E125957125966%_)))))
          (_%E125956125980%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125924%_)
        (let* ((_%e125925125932%_ _%stx125924%_)
               (_%E125927125936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125925125932%_)))
               (_%E125926125950%_
                (lambda ()
                  (if (gx#stx-pair? _%e125925125932%_)
                      (let ((_%e125928125940%_
                             (gx#syntax-e _%e125925125932%_)))
                        (let ((_%hd125929125943%_ (##car _%e125928125940%_))
                              (_%tl125930125945%_ (##cdr _%e125928125940%_)))
                          (let ((_%decls125948%_ _%tl125930125945%_))
                            (if '#t
                                (cons '%#declare _%decls125948%_)
                                (_%E125927125936%_)))))
                      (_%E125927125936%_)))))
          (_%E125926125950%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125894%_)
        (let* ((_%e125895125902%_ _%stx125894%_)
               (_%E125897125906%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125895125902%_)))
               (_%E125896125920%_
                (lambda ()
                  (if (gx#stx-pair? _%e125895125902%_)
                      (let ((_%e125898125910%_
                             (gx#syntax-e _%e125895125902%_)))
                        (let ((_%hd125899125913%_ (##car _%e125898125910%_))
                              (_%tl125900125915%_ (##cdr _%e125898125910%_)))
                          (let ((_%clause125918%_ _%tl125900125915%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125918%_))
                                (_%E125897125906%_)))))
                      (_%E125897125906%_)))))
          (_%E125896125920%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125851%_)
        (let* ((_%e125852125862%_ _%stx125851%_)
               (_%E125854125866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125852125862%_)))
               (_%E125853125890%_
                (lambda ()
                  (if (gx#stx-pair? _%e125852125862%_)
                      (let ((_%e125855125870%_
                             (gx#syntax-e _%e125852125862%_)))
                        (let ((_%hd125856125873%_ (##car _%e125855125870%_))
                              (_%tl125857125875%_ (##cdr _%e125855125870%_)))
                          (let ((_%hd125878%_ _%hd125856125873%_))
                            (if (gx#stx-pair? _%tl125857125875%_)
                                (let ((_%e125858125880%_
                                       (gx#syntax-e _%tl125857125875%_)))
                                  (let ((_%hd125859125883%_
                                         (##car _%e125858125880%_))
                                        (_%tl125860125885%_
                                         (##cdr _%e125858125880%_)))
                                    (let ((_%body125888%_ _%hd125859125883%_))
                                      (if (gx#stx-null? _%tl125860125885%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125878%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125888%_)
                                                          '()))
                                              (_%E125854125866%_))
                                          (_%E125854125866%_)))))
                                (_%E125854125866%_)))))
                      (_%E125854125866%_)))))
          (_%E125853125890%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125821%_)
        (let* ((_%e125822125829%_ _%stx125821%_)
               (_%E125824125833%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125822125829%_)))
               (_%E125823125847%_
                (lambda ()
                  (if (gx#stx-pair? _%e125822125829%_)
                      (let ((_%e125825125837%_
                             (gx#syntax-e _%e125822125829%_)))
                        (let ((_%hd125826125840%_ (##car _%e125825125837%_))
                              (_%tl125827125842%_ (##cdr _%e125825125837%_)))
                          (let ((_%clauses125845%_ _%tl125827125842%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125845%_))
                                (_%E125824125833%_)))))
                      (_%E125824125833%_)))))
          (_%E125823125847%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125756%_ _%form125757%_)
        (let* ((_%e125758125771%_ _%stx125756%_)
               (_%E125760125775%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125758125771%_)))
               (_%E125759125807%_
                (lambda ()
                  (if (gx#stx-pair? _%e125758125771%_)
                      (let ((_%e125761125779%_
                             (gx#syntax-e _%e125758125771%_)))
                        (let ((_%hd125762125782%_ (##car _%e125761125779%_))
                              (_%tl125763125784%_ (##cdr _%e125761125779%_)))
                          (if (gx#stx-pair? _%tl125763125784%_)
                              (let ((_%e125764125787%_
                                     (gx#syntax-e _%tl125763125784%_)))
                                (let ((_%hd125765125790%_
                                       (##car _%e125764125787%_))
                                      (_%tl125766125792%_
                                       (##cdr _%e125764125787%_)))
                                  (let ((_%hd125795%_ _%hd125765125790%_))
                                    (if (gx#stx-pair? _%tl125766125792%_)
                                        (let ((_%e125767125797%_
                                               (gx#syntax-e
                                                _%tl125766125792%_)))
                                          (let ((_%hd125768125800%_
                                                 (##car _%e125767125797%_))
                                                (_%tl125769125802%_
                                                 (##cdr _%e125767125797%_)))
                                            (let ((_%body125805%_
                                                   _%hd125768125800%_))
                                              (if (gx#stx-null?
                                                   _%tl125769125802%_)
                                                  (if '#t
                                                      (cons _%form125757%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125795%_)
                          (cons (gx#core-compile-top-syntax _%body125805%_)
                                '())))
              (_%E125760125775%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125760125775%_)))))
                                        (_%E125760125775%_)))))
                              (_%E125760125775%_))))
                      (_%E125760125775%_)))))
          (_%E125759125807%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125814%_)
        (let ((_%form125816%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125814%_ _%form125816%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126641_
        (let ((_g126640_ (##length _g126641_)))
          (cond ((##fx= _g126640_ 1)
                 (apply (lambda (_%stx125814%_)
                          (gx#core-compile-top-let-values%__0 _%stx125814%_))
                        _g126641_))
                ((##fx= _g126640_ 2)
                 (apply (lambda (_%stx125818%_ _%form125819%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx125818%_
                           _%form125819%_))
                        _g126641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126641_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125753%_)
        (gx#core-compile-top-let-values%__% _%stx125753%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125751%_)
        (gx#core-compile-top-let-values%__% _%stx125751%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125710%_)
        (let* ((_%e125711125721%_ _%stx125710%_)
               (_%E125713125725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125711125721%_)))
               (_%E125712125747%_
                (lambda ()
                  (if (gx#stx-pair? _%e125711125721%_)
                      (let ((_%e125714125729%_
                             (gx#syntax-e _%e125711125721%_)))
                        (let ((_%hd125715125732%_ (##car _%e125714125729%_))
                              (_%tl125716125734%_ (##cdr _%e125714125729%_)))
                          (if (gx#stx-pair? _%tl125716125734%_)
                              (let ((_%e125717125737%_
                                     (gx#syntax-e _%tl125716125734%_)))
                                (let ((_%hd125718125740%_
                                       (##car _%e125717125737%_))
                                      (_%tl125719125742%_
                                       (##cdr _%e125717125737%_)))
                                  (let ((_%e125745%_ _%hd125718125740%_))
                                    (if (gx#stx-null? _%tl125719125742%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125745%_)
                                                        '()))
                                            (_%E125713125725%_))
                                        (_%E125713125725%_)))))
                              (_%E125713125725%_))))
                      (_%E125713125725%_)))))
          (_%E125712125747%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125669%_)
        (let* ((_%e125670125680%_ _%stx125669%_)
               (_%E125672125684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125670125680%_)))
               (_%E125671125706%_
                (lambda ()
                  (if (gx#stx-pair? _%e125670125680%_)
                      (let ((_%e125673125688%_
                             (gx#syntax-e _%e125670125680%_)))
                        (let ((_%hd125674125691%_ (##car _%e125673125688%_))
                              (_%tl125675125693%_ (##cdr _%e125673125688%_)))
                          (if (gx#stx-pair? _%tl125675125693%_)
                              (let ((_%e125676125696%_
                                     (gx#syntax-e _%tl125675125693%_)))
                                (let ((_%hd125677125699%_
                                       (##car _%e125676125696%_))
                                      (_%tl125678125701%_
                                       (##cdr _%e125676125696%_)))
                                  (let ((_%e125704%_ _%hd125677125699%_))
                                    (if (gx#stx-null? _%tl125678125701%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125704%_)
                                                        '()))
                                            (_%E125672125684%_))
                                        (_%E125672125684%_)))))
                              (_%E125672125684%_))))
                      (_%E125672125684%_)))))
          (_%E125671125706%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125626%_)
        (let* ((_%e125627125637%_ _%stx125626%_)
               (_%E125629125641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125627125637%_)))
               (_%E125628125665%_
                (lambda ()
                  (if (gx#stx-pair? _%e125627125637%_)
                      (let ((_%e125630125645%_
                             (gx#syntax-e _%e125627125637%_)))
                        (let ((_%hd125631125648%_ (##car _%e125630125645%_))
                              (_%tl125632125650%_ (##cdr _%e125630125645%_)))
                          (if (gx#stx-pair? _%tl125632125650%_)
                              (let ((_%e125633125653%_
                                     (gx#syntax-e _%tl125632125650%_)))
                                (let ((_%hd125634125656%_
                                       (##car _%e125633125653%_))
                                      (_%tl125635125658%_
                                       (##cdr _%e125633125653%_)))
                                  (let* ((_%rator125661%_ _%hd125634125656%_)
                                         (_%args125663%_ _%tl125635125658%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125661%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125663%_)))
                                        (_%E125629125641%_)))))
                              (_%E125629125641%_))))
                      (_%E125629125641%_)))))
          (_%E125628125665%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125559%_)
        (let* ((_%e125560125576%_ _%stx125559%_)
               (_%E125562125580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125560125576%_)))
               (_%E125561125622%_
                (lambda ()
                  (if (gx#stx-pair? _%e125560125576%_)
                      (let ((_%e125563125584%_
                             (gx#syntax-e _%e125560125576%_)))
                        (let ((_%hd125564125587%_ (##car _%e125563125584%_))
                              (_%tl125565125589%_ (##cdr _%e125563125584%_)))
                          (if (gx#stx-pair? _%tl125565125589%_)
                              (let ((_%e125566125592%_
                                     (gx#syntax-e _%tl125565125589%_)))
                                (let ((_%hd125567125595%_
                                       (##car _%e125566125592%_))
                                      (_%tl125568125597%_
                                       (##cdr _%e125566125592%_)))
                                  (let ((_%test125600%_ _%hd125567125595%_))
                                    (if (gx#stx-pair? _%tl125568125597%_)
                                        (let ((_%e125569125602%_
                                               (gx#syntax-e
                                                _%tl125568125597%_)))
                                          (let ((_%hd125570125605%_
                                                 (##car _%e125569125602%_))
                                                (_%tl125571125607%_
                                                 (##cdr _%e125569125602%_)))
                                            (let ((_%K125610%_
                                                   _%hd125570125605%_))
                                              (if (gx#stx-pair?
                                                   _%tl125571125607%_)
                                                  (let ((_%e125572125612%_
                                                         (gx#syntax-e
                                                          _%tl125571125607%_)))
                                                    (let ((_%hd125573125615%_
                                                           (##car _%e125572125612%_))
                                                          (_%tl125574125617%_
                                                           (##cdr _%e125572125612%_)))
                                                      (let ((_%E125620%_
                                                             _%hd125573125615%_))
                                                        (if (gx#stx-null?
                                                             _%tl125574125617%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125600%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125610%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125620%_)
                                                '()))))
                        (_%E125562125580%_))
                    (_%E125562125580%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125562125580%_)))))
                                        (_%E125562125580%_)))))
                              (_%E125562125580%_))))
                      (_%E125562125580%_)))))
          (_%E125561125622%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125518%_)
        (let* ((_%e125519125529%_ _%stx125518%_)
               (_%E125521125533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125519125529%_)))
               (_%E125520125555%_
                (lambda ()
                  (if (gx#stx-pair? _%e125519125529%_)
                      (let ((_%e125522125537%_
                             (gx#syntax-e _%e125519125529%_)))
                        (let ((_%hd125523125540%_ (##car _%e125522125537%_))
                              (_%tl125524125542%_ (##cdr _%e125522125537%_)))
                          (if (gx#stx-pair? _%tl125524125542%_)
                              (let ((_%e125525125545%_
                                     (gx#syntax-e _%tl125524125542%_)))
                                (let ((_%hd125526125548%_
                                       (##car _%e125525125545%_))
                                      (_%tl125527125550%_
                                       (##cdr _%e125525125545%_)))
                                  (let ((_%id125553%_ _%hd125526125548%_))
                                    (if (gx#stx-null? _%tl125527125550%_)
                                        (if (gx#identifier? _%id125553%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125553%_)
                                                        '()))
                                            (_%E125521125533%_))
                                        (_%E125521125533%_)))))
                              (_%E125521125533%_))))
                      (_%E125521125533%_)))))
          (_%E125520125555%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125464%_)
        (let* ((_%e125465125478%_ _%stx125464%_)
               (_%E125467125482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125465125478%_)))
               (_%E125466125514%_
                (lambda ()
                  (if (gx#stx-pair? _%e125465125478%_)
                      (let ((_%e125468125486%_
                             (gx#syntax-e _%e125465125478%_)))
                        (let ((_%hd125469125489%_ (##car _%e125468125486%_))
                              (_%tl125470125491%_ (##cdr _%e125468125486%_)))
                          (if (gx#stx-pair? _%tl125470125491%_)
                              (let ((_%e125471125494%_
                                     (gx#syntax-e _%tl125470125491%_)))
                                (let ((_%hd125472125497%_
                                       (##car _%e125471125494%_))
                                      (_%tl125473125499%_
                                       (##cdr _%e125471125494%_)))
                                  (let ((_%id125502%_ _%hd125472125497%_))
                                    (if (gx#stx-pair? _%tl125473125499%_)
                                        (let ((_%e125474125504%_
                                               (gx#syntax-e
                                                _%tl125473125499%_)))
                                          (let ((_%hd125475125507%_
                                                 (##car _%e125474125504%_))
                                                (_%tl125476125509%_
                                                 (##cdr _%e125474125504%_)))
                                            (let ((_%expr125512%_
                                                   _%hd125475125507%_))
                                              (if (gx#stx-null?
                                                   _%tl125476125509%_)
                                                  (if (gx#identifier?
                                                       _%id125502%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125502%_)
                          (cons (gx#core-compile-top-syntax _%expr125512%_)
                                '())))
              (_%E125467125482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125467125482%_)))))
                                        (_%E125467125482%_)))))
                              (_%E125467125482%_))))
                      (_%E125467125482%_)))))
          (_%E125466125514%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125458%_)
        (let ((_%$e125460%_ (gx#resolve-identifier__0 _%id125458%_)))
          (if _%$e125460%_
              (##unchecked-structure-ref _%$e125460%_ '1 '#f '#f)
              (let () _%id125458%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125456%_)
        (if (gx#identifier? _%hd125456%_)
            (gx#core-compile-top-runtime-ref _%hd125456%_)
            '#f)))))
