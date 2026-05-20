(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g173811_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173813_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173815_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173817_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173818_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173820_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173821_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173823_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173824_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173826_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173827_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g173829_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj173807
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '#f '13 '#f '#f))
        (let ((__tmp173810 |gx[1]#_g173811_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173810 '4 '#f '#f))
        (let ((__tmp173812 |gx[1]#_g173813_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173812 '14 '#f '#f))
        (let ((__tmp173814 |gx[1]#_g173815_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173814 '15 '#f '#f))
        (let ((__tmp173816
               (cons (cons 'e |gx[1]#_g173817_|)
                     (cons (cons 'source |gx[1]#_g173818_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173816 '16 '#f '#f))
        (let ((__tmp173819
               (cons (cons 'e |gx[1]#_g173820_|)
                     (cons (cons 'source |gx[1]#_g173821_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173819 '17 '#f '#f))
        (let ((__tmp173822
               (cons (cons 'e |gx[1]#_g173823_|)
                     (cons (cons 'source |gx[1]#_g173824_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173822 '18 '#f '#f))
        (let ((__tmp173825
               (cons (cons 'e |gx[1]#_g173826_|)
                     (cons (cons 'source |gx[1]#_g173827_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 __tmp173825 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj173807 '() '21 '#f '#f))
        __obj173807))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx172404%_)
        (let* ((_%g172408172422%_
                (lambda (_%g172409172418%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g172409172418%_)))
               (_%g172407172464%_
                (lambda (_%g172409172426%_)
                  (if (gx#stx-pair? _%g172409172426%_)
                      (let ((_%e172411172429%_
                             (gx#syntax-e _%g172409172426%_)))
                        (let ((_%hd172412172433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172411172429%_)))
                              (_%tl172413172436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172411172429%_))))
                          (if (gx#stx-pair? _%tl172413172436%_)
                              (let ((_%e172414172439%_
                                     (gx#syntax-e _%tl172413172436%_)))
                                (let ((_%hd172415172443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172414172439%_)))
                                      (_%tl172416172446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172414172439%_))))
                                  (if (gx#stx-null? _%tl172416172446%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%hd172415172443%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd172415172443%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g172408172422%_ _%g172409172426%_))))
                              (_%g172408172422%_ _%g172409172426%_))))
                      (_%g172408172422%_ _%g172409172426%_)))))
          (_%g172407172464%_ _%$stx172404%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx172468%_)
        (letrec ((_%generate172471%_
                  (lambda (_%tgt172620%_ _%kws172622%_ _%clauses172623%_)
                    (letrec ((_%generate-clause172625%_
                              (lambda (_%hd173558%_ _%E173560%_)
                                (let* ((_%__stx173710173711%_ _%hd173558%_)
                                       (_%g173564173591%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx173710173711%_))))
                                  (let ((_%__kont173713173714%_
                                         (lambda (_%g173566173687%_
                                                  _%g173567173689%_)
                                           (_%generate1172627%_
                                            _%hd173558%_
                                            _%g173567173689%_
                                            '#t
                                            _%g173566173687%_
                                            _%E173560%_)))
                                        (_%__kont173715173716%_
                                         (lambda (_%g173574173639%_
                                                  _%g173575173641%_
                                                  _%g173576173642%_)
                                           (_%generate1172627%_
                                            _%hd173558%_
                                            _%g173576173642%_
                                            _%g173575173641%_
                                            _%g173574173639%_
                                            _%E173560%_)))
                                        (_%__kont173717173718%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx172468%_
                                            _%hd173558%_))))
                                    (if (gx#stx-pair? _%__stx173710173711%_)
                                        (let ((_%e173568173667%_
                                               (gx#syntax-e
                                                _%__stx173710173711%_)))
                                          (let ((_%tl173570173674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173568173667%_)))
                                                (_%hd173569173671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173568173667%_))))
                                            (if (gx#stx-pair?
                                                 _%tl173570173674%_)
                                                (let ((_%e173571173677%_
                                                       (gx#syntax-e
                                                        _%tl173570173674%_)))
                                                  (let ((_%tl173573173684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173571173677%_)))
                                                        (_%hd173572173681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173571173677%_))))
                                                    (if (gx#stx-null?
                                                         _%tl173573173684%_)
                                                        (_%__kont173713173714%_
                                                         _%hd173572173681%_
                                                         _%hd173569173671%_)
                                                        (if (gx#stx-pair?
                                                             _%tl173573173684%_)
                                                            (let ((_%e173583173629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl173573173684%_)))
                      (let ((_%tl173585173636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173583173629%_)))
                            (_%hd173584173633%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173583173629%_))))
                        (if (gx#stx-null? _%tl173585173636%_)
                            (_%__kont173715173716%_
                             _%hd173584173633%_
                             _%hd173572173681%_
                             _%hd173569173671%_)
                            (_%__kont173717173718%_))))
                    (_%__kont173717173718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont173717173718%_))))
                                        (_%__kont173717173718%_))))))
                             (_%generate1172627%_
                              (lambda (_%where173011%_
                                       _%hd173013%_
                                       _%fender173014%_
                                       _%body173015%_
                                       _%E173016%_)
                                (letrec ((_%recur173018%_
                                          (lambda (_%hd173021%_
                                                   _%tgt173023%_
                                                   _%K173024%_)
                                            (let* ((_%__stx173756173757%_
                                                    _%hd173021%_)
                                                   (_%g173027173039%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx173756173757%_))))
                                              (let ((_%__kont173759173760%_
                                                     (lambda (_%g173029173348%_
                                                              _%g173030173350%_)
                                                       (let* ((_%g173361173369%_
                                                               (lambda (_%g173362173365%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g173362173365%_)))
                      (_%g173360173550%_
                       (lambda (_%g173362173373%_)
                         (let* ((_%g173388173396%_
                                 (lambda (_%g173389173392%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g173389173392%_)))
                                (_%g173387173546%_
                                 (lambda (_%g173389173400%_)
                                   (let* ((_%g173416173424%_
                                           (lambda (_%g173417173420%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g173417173420%_)))
                                          (_%g173415173542%_
                                           (lambda (_%g173417173428%_)
                                             (let* ((_%g173444173452%_
                                                     (lambda (_%g173445173448%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g173445173448%_)))
                                                    (_%g173443173538%_
                                                     (lambda (_%g173445173456%_)
                                                       (let* ((_%g173472173480%_
                                                               (lambda (_%g173473173476%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g173473173476%_)))
                      (_%g173471173534%_
                       (lambda (_%g173473173484%_)
                         (let* ((_%g173500173508%_
                                 (lambda (_%g173501173504%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g173501173504%_)))
                                (_%g173499173530%_
                                 (lambda (_%g173501173512%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%g173362173373%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%g173389173400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%g173362173373%_ '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g173417173428%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%g173389173400%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g173445173456%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%g173389173400%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%g173473173484%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g173501173512%_
                                                           '())))))))
                           (_%g173499173530%_ _%E173016%_)))))
                 (_%g173471173534%_
                  (_%recur173018%_
                   _%g173030173350%_
                   _%g173417173428%_
                   (_%recur173018%_
                    _%g173029173348%_
                    _%g173445173456%_
                    _%K173024%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173443173538%_
                                                (gx#genident 'tl))))))
                                     (_%g173415173542%_ (gx#genident 'hd))))))
                           (_%g173387173546%_ (gx#genident 'e))))))
                 (_%g173360173550%_ _%tgt173023%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173761173762%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd173021%_)
                                                           (if (gx#underscore?
                                                                _%hd173021%_)
                                                               _%K173024%_
                                                               (if (let ((__tmp173828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g173053173055%_)
                                    (gx#bound-identifier=?
                                     _%g173053173055%_
                                     _%hd173021%_))))
                             (declare (not safe))
                             (__find __tmp173828 _%kws172622%_))
                           (let* ((_%g173061173076%_
                                   (lambda (_%g173062173072%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173062173072%_)))
                                  (_%g173060173129%_
                                   (lambda (_%g173062173080%_)
                                     (if (gx#stx-pair? _%g173062173080%_)
                                         (let ((_%e173065173083%_
                                                (gx#syntax-e
                                                 _%g173062173080%_)))
                                           (let ((_%hd173066173087%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173065173083%_)))
                                                 (_%tl173067173090%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173065173083%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173067173090%_)
                                                 (let ((_%e173068173093%_
                                                        (gx#syntax-e
                                                         _%tl173067173090%_)))
                                                   (let ((_%hd173069173097%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173068173093%_)))
                                                         (_%tl173070173100%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173068173093%_))))
                                                     (if (gx#stx-null?
                                                          _%tl173070173100%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%hd173066173087%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%hd173066173087%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%hd173069173097%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K173024%_ (cons _%E173016%_ '()))))
                 (_%g173061173076%_ _%g173062173080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173061173076%_
                                                  _%g173062173080%_))))
                                         (_%g173061173076%_
                                          _%g173062173080%_)))))
                             (_%g173060173129%_
                              (list _%tgt173023%_ _%hd173021%_)))
                           (let* ((_%g173135173150%_
                                   (lambda (_%g173136173146%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173136173146%_)))
                                  (_%g173134173195%_
                                   (lambda (_%g173136173154%_)
                                     (if (gx#stx-pair? _%g173136173154%_)
                                         (let ((_%e173139173157%_
                                                (gx#syntax-e
                                                 _%g173136173154%_)))
                                           (let ((_%hd173140173161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173139173157%_)))
                                                 (_%tl173141173164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173139173157%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173141173164%_)
                                                 (let ((_%e173142173167%_
                                                        (gx#syntax-e
                                                         _%tl173141173164%_)))
                                                   (let ((_%hd173143173171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173142173167%_)))
                                                         (_%tl173144173174%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173142173167%_))))
                                                     (if (gx#stx-null?
                                                          _%tl173144173174%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%hd173143173171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%hd173140173161%_ '()))
                                   '())
                             (cons _%K173024%_ '())))
                 (_%g173135173150%_ _%g173136173154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173135173150%_
                                                  _%g173136173154%_))))
                                         (_%g173135173150%_
                                          _%g173136173154%_)))))
                             (_%g173134173195%_
                              (list _%tgt173023%_ _%hd173021%_)))))
                   (if (gx#stx-null? _%hd173021%_)
                       (let* ((_%g173201173209%_
                               (lambda (_%g173202173205%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g173202173205%_)))
                              (_%g173200173228%_
                               (lambda (_%g173202173213%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%g173202173213%_
                                                         '()))
                                             (cons _%K173024%_
                                                   (cons _%E173016%_ '())))))))
                         (_%g173200173228%_ _%tgt173023%_))
                       (if (gx#stx-datum? _%hd173021%_)
                           (let* ((_%g173234173253%_
                                   (lambda (_%g173235173249%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g173235173249%_)))
                                  (_%g173233173312%_
                                   (lambda (_%g173235173257%_)
                                     (if (gx#stx-pair? _%g173235173257%_)
                                         (let ((_%e173239173260%_
                                                (gx#syntax-e
                                                 _%g173235173257%_)))
                                           (let ((_%hd173240173264%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173239173260%_)))
                                                 (_%tl173241173267%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173239173260%_))))
                                             (if (gx#stx-pair?
                                                  _%tl173241173267%_)
                                                 (let ((_%e173242173270%_
                                                        (gx#syntax-e
                                                         _%tl173241173267%_)))
                                                   (let ((_%hd173243173274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e173242173270%_)))
                                                         (_%tl173244173277%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e173242173270%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl173244173277%_)
                                                         (let ((_%e173245173280%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl173244173277%_)))
                   (let ((_%hd173246173284%_
                          (let ()
                            (declare (not safe))
                            (##car _%e173245173280%_)))
                         (_%tl173247173287%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e173245173280%_))))
                     (if (gx#stx-null? _%tl173247173287%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%hd173246173284%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%hd173240173264%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%hd173243173274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K173024%_
                                           (cons _%E173016%_ '()))))
                         (_%g173234173253%_ _%g173235173257%_))))
                 (_%g173234173253%_ _%g173235173257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g173234173253%_
                                                  _%g173235173257%_))))
                                         (_%g173234173253%_
                                          _%g173235173257%_)))))
                             (_%g173233173312%_
                              (list _%tgt173023%_
                                    _%hd173021%_
                                    (let ((_%e173316%_
                                           (gx#stx-e _%hd173021%_)))
                                      (if (or (keyword? _%e173316%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e173316%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e173316%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx172468%_
                            _%where173011%_
                            _%hd173021%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx173756173757%_)
                                                    (let ((_%e173031173338%_
                                                           (gx#syntax-e
                                                            _%__stx173756173757%_)))
                                                      (let ((_%tl173033173345%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173031173338%_)))
                    (_%hd173032173342%_
                     (let () (declare (not safe)) (##car _%e173031173338%_))))
                (_%__kont173759173760%_
                 _%tl173033173345%_
                 _%hd173032173342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173761173762%_)))))))
                                  (_%recur173018%_
                                   _%hd173013%_
                                   _%tgt172620%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender173014%_
                                               (cons _%body173015%_
                                                     (cons _%E173016%_
                                                           '()))))))))
                             (_%generate-clauses172628%_
                              (lambda (_%clauses172749%_)
                                (let _%lp172752%_ ((_%rest172755%_
                                                    _%clauses172749%_)
                                                   (_%E172757%_
                                                    (gx#genident 'E))
                                                   (_%r172758%_ '()))
                                  (let* ((_%__stx173792173793%_ _%rest172755%_)
                                         (_%g172761172773%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx173792173793%_))))
                                    (let ((_%__kont173795173796%_
                                           (lambda (_%g172763172838%_
                                                    _%g172764172840%_)
                                             (let* ((_%__stx173772173773%_
                                                     _%g172764172840%_)
                                                    (_%g172852172863%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx173772173773%_))))
                                               (let ((_%__kont173775173776%_
                                                      (lambda (_%g172854172992%_)
                                                        (if (gx#stx-null?
                                                             _%g172763172838%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g172854172992%_)
                             (not (gx#stx-null? _%g172854172992%_)))
                        (cons (cons _%E172757%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g172854172992%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g172764172840%_))
                                          '()))
                              _%r172758%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx172468%_
                         _%g172764172840%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx172468%_
                     _%g172764172840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173777173778%_
                                                      (lambda ()
                                                        (let* ((_%g172874172882%_
                                                                (lambda (_%g172875172878%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172875172878%_)))
                       (_%g172873172971%_
                        (lambda (_%g172875172886%_)
                          (let* ((_%g172905172913%_
                                  (lambda (_%g172906172909%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g172906172909%_)))
                                 (_%g172904172967%_
                                  (lambda (_%g172906172917%_)
                                    (let* ((_%g172933172941%_
                                            (lambda (_%g172934172937%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g172934172937%_)))
                                           (_%g172932172963%_
                                            (lambda (_%g172934172945%_)
                                              (_%lp172752%_
                                               _%g172763172838%_
                                               _%g172875172886%_
                                               (cons (cons _%E172757%_
                                                           (cons _%g172934172945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r172758%_)))))
                                      (_%g172932172963%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%g172906172917%_
                                                          '())))
                                        (gx#stx-source _%g172764172840%_)))))))
                            (_%g172904172967%_
                             (_%generate-clause172625%_
                              _%g172764172840%_
                              (cons _%g172875172886%_ '())))))))
                  (_%g172873172971%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx173772173773%_)
                                                     (let ((_%e172855172982%_
                                                            (gx#syntax-e
                                                             _%__stx173772173773%_)))
                                                       (let ((_%tl172857172989%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172855172982%_)))
                     (_%hd172856172986%_
                      (let () (declare (not safe)) (##car _%e172855172982%_))))
                 (if (gx#identifier? _%hd172856172986%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g173829_|
                          _%hd172856172986%_)
                         (_%__kont173775173776%_ _%tl172857172989%_)
                         (_%__kont173777173778%_))
                     (_%__kont173777173778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont173777173778%_))))))
                                          (_%__kont173797173798%_
                                           (lambda ()
                                             (let* ((_%g172784172792%_
                                                     (lambda (_%g172785172788%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g172785172788%_)))
                                                    (_%g172783172817%_
                                                     (lambda (_%g172785172796%_)
                                                       (cons (cons _%E172757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g172785172796%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx172468%_))
                                 '()))
                     _%r172758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172783172817%_
                                                _%tgt172620%_)))))
                                      (if (gx#stx-pair? _%__stx173792173793%_)
                                          (let ((_%e172765172828%_
                                                 (gx#syntax-e
                                                  _%__stx173792173793%_)))
                                            (let ((_%tl172767172835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172765172828%_)))
                                                  (_%hd172766172832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172765172828%_))))
                                              (_%__kont173795173796%_
                                               _%tl172767172835%_
                                               _%hd172766172832%_)))
                                          (_%__kont173797173798%_))))))))
                      (let* ((_%bind172630%_
                              (_%generate-clauses172628%_ _%clauses172623%_))
                             (_%g172633172650%_
                              (lambda (_%g172634172646%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g172634172646%_)))
                             (_%g172632172745%_
                              (lambda (_%g172634172654%_)
                                (if (gx#stx-pair/null? _%g172634172654%_)
                                    (let ((_g173830_
                                           (gx#syntax-split-splice
                                            _%g172634172654%_
                                            '0)))
                                      (begin
                                        (let ((_g173831_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173830_)
                                                     (##values-length
                                                      _g173830_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173831_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173831_)))
                                        (let ((_%target172636172657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173830_ 0)))
                                              (_%tl172638172660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g173830_ 1))))
                                          (if (gx#stx-null? _%tl172638172660%_)
                                              (letrec ((_%loop172639172663%_
                                                        (lambda (_%hd172637172667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try172643172670%_)
                  (if (gx#stx-pair? _%hd172637172667%_)
                      (let ((_%e172640172672%_
                             (gx#syntax-e _%hd172637172667%_)))
                        (let ((_%lp-hd172641172676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172640172672%_)))
                              (_%lp-tl172642172679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172640172672%_))))
                          (_%loop172639172663%_
                           _%lp-tl172642172679%_
                           (cons _%lp-hd172641172676%_
                                 _%bind-try172643172670%_))))
                      (let* ((_%bind-try172644172682%_
                              (reverse _%bind-try172643172670%_))
                             (_%g172703172711%_
                              (lambda (_%g172704172707%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g172704172707%_)))
                             (_%g172702172741%_
                              (lambda (_%g172704172715%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp173832
                                                   (lambda (_%g172732172735%_
                                                            _%g172733172738%_)
                                                     (cons _%g172732172735%_
                                                           _%g172733172738%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp173832
                                               '()
                                               _%bind-try172644172682%_))
                                            (cons (cons _%g172704172715%_ '())
                                                  '()))))))
                        (_%g172702172741%_ (car (last _%bind172630%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172639172663%_
                                                 _%target172636172657%_
                                                 '()))
                                              (_%g172633172650%_
                                               _%g172634172654%_)))))
                                    (_%g172633172650%_ _%g172634172654%_)))))
                        (_%g172632172745%_ _%bind172630%_))))))
          (let* ((_%g172474172493%_
                  (lambda (_%g172475172489%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172475172489%_)))
                 (_%g172473172616%_
                  (lambda (_%g172475172497%_)
                    (if (gx#stx-pair? _%g172475172497%_)
                        (let ((_%e172479172500%_
                               (gx#syntax-e _%g172475172497%_)))
                          (let ((_%hd172480172504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172479172500%_)))
                                (_%tl172481172507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172479172500%_))))
                            (if (gx#stx-pair? _%tl172481172507%_)
                                (let ((_%e172482172510%_
                                       (gx#syntax-e _%tl172481172507%_)))
                                  (let ((_%hd172483172514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172482172510%_)))
                                        (_%tl172484172517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172482172510%_))))
                                    (if (gx#stx-pair? _%tl172484172517%_)
                                        (let ((_%e172485172520%_
                                               (gx#syntax-e
                                                _%tl172484172517%_)))
                                          (let ((_%hd172486172524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172485172520%_)))
                                                (_%tl172487172527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172485172520%_))))
                                            (if (and (gx#identifier-list?
                                                      _%hd172486172524%_)
                                                     (gx#stx-list?
                                                      _%tl172487172527%_))
                                                (let* ((_%g172551172559%_
                                                        (lambda (_%g172552172555%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g172552172555%_)))
                                                       (_%g172550172612%_
                                                        (lambda (_%g172552172563%_)
                                                          (let* ((_%g172578172586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g172579172582%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g172579172582%_)))
                         (_%g172577172608%_
                          (lambda (_%g172579172590%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%g172552172563%_
                                                    (cons _%hd172483172514%_
                                                          '()))
                                              '())
                                        (cons _%g172579172590%_ '()))))))
                    (_%g172577172608%_
                     (_%generate172471%_
                      _%g172552172563%_
                      (gx#syntax->list _%hd172486172524%_)
                      _%tl172487172527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g172550172612%_
                                                   (gx#genident 'e)))
                                                (_%g172474172493%_
                                                 _%g172475172497%_))))
                                        (_%g172474172493%_
                                         _%g172475172497%_))))
                                (_%g172474172493%_ _%g172475172497%_))))
                        (_%g172474172493%_ _%g172475172497%_)))))
            (_%g172473172616%_ _%stx172468%_)))))))
