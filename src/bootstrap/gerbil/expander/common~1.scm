(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g172433_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172435_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172437_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172439_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172440_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172442_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172443_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172445_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172446_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172448_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172449_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g172451_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj172429
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '#f '12 '#f '#f))
        (let ((__tmp172432 |gx[1]#_g172433_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172432 '3 '#f '#f))
        (let ((__tmp172434 |gx[1]#_g172435_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172434 '13 '#f '#f))
        (let ((__tmp172436 |gx[1]#_g172437_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172436 '14 '#f '#f))
        (let ((__tmp172438
               (cons (cons 'e |gx[1]#_g172439_|)
                     (cons (cons 'source |gx[1]#_g172440_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172438 '15 '#f '#f))
        (let ((__tmp172441
               (cons (cons 'e |gx[1]#_g172442_|)
                     (cons (cons 'source |gx[1]#_g172443_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172441 '16 '#f '#f))
        (let ((__tmp172444
               (cons (cons 'e |gx[1]#_g172445_|)
                     (cons (cons 'source |gx[1]#_g172446_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172444 '17 '#f '#f))
        (let ((__tmp172447
               (cons (cons 'e |gx[1]#_g172448_|)
                     (cons (cons 'source |gx[1]#_g172449_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 __tmp172447 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj172429 '() '20 '#f '#f))
        __obj172429))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx171026%_)
        (let* ((_%g171030171044%_
                (lambda (_%g171031171040%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g171031171040%_)))
               (_%g171029171086%_
                (lambda (_%g171031171048%_)
                  (if (gx#stx-pair? _%g171031171048%_)
                      (let ((_%e171033171051%_
                             (gx#syntax-e _%g171031171048%_)))
                        (let ((_%hd171034171055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171033171051%_)))
                              (_%tl171035171058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171033171051%_))))
                          (if (gx#stx-pair? _%tl171035171058%_)
                              (let ((_%e171036171061%_
                                     (gx#syntax-e _%tl171035171058%_)))
                                (let ((_%hd171037171065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171036171061%_)))
                                      (_%tl171038171068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171036171061%_))))
                                  (if (gx#stx-null? _%tl171038171068%_)
                                      ((lambda (_%g171032171071%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g171032171071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g171032171071%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd171037171065%_)
                                      (_%g171030171044%_ _%g171031171048%_))))
                              (_%g171030171044%_ _%g171031171048%_))))
                      (_%g171030171044%_ _%g171031171048%_)))))
          (_%g171029171086%_ _%$stx171026%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx171090%_)
        (letrec ((_%generate171093%_
                  (lambda (_%tgt171242%_ _%kws171244%_ _%clauses171245%_)
                    (letrec ((_%generate-clause171247%_
                              (lambda (_%hd172180%_ _%E172182%_)
                                (let* ((_%__stx172332172333%_ _%hd172180%_)
                                       (_%g172186172213%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx172332172333%_))))
                                  (let ((_%__kont172335172336%_
                                         (lambda (_%g172188172309%_
                                                  _%g172189172311%_)
                                           (_%generate1171249%_
                                            _%hd172180%_
                                            _%g172189172311%_
                                            '#t
                                            _%g172188172309%_
                                            _%E172182%_)))
                                        (_%__kont172337172338%_
                                         (lambda (_%g172196172261%_
                                                  _%g172197172263%_
                                                  _%g172198172264%_)
                                           (_%generate1171249%_
                                            _%hd172180%_
                                            _%g172198172264%_
                                            _%g172197172263%_
                                            _%g172196172261%_
                                            _%E172182%_)))
                                        (_%__kont172339172340%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx171090%_
                                            _%hd172180%_))))
                                    (if (gx#stx-pair? _%__stx172332172333%_)
                                        (let ((_%e172190172289%_
                                               (gx#syntax-e
                                                _%__stx172332172333%_)))
                                          (let ((_%tl172192172296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172190172289%_)))
                                                (_%hd172191172293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172190172289%_))))
                                            (if (gx#stx-pair?
                                                 _%tl172192172296%_)
                                                (let ((_%e172193172299%_
                                                       (gx#syntax-e
                                                        _%tl172192172296%_)))
                                                  (let ((_%tl172195172306%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172193172299%_)))
                                                        (_%hd172194172303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172193172299%_))))
                                                    (if (gx#stx-null?
                                                         _%tl172195172306%_)
                                                        (_%__kont172335172336%_
                                                         _%hd172194172303%_
                                                         _%hd172191172293%_)
                                                        (if (gx#stx-pair?
                                                             _%tl172195172306%_)
                                                            (let ((_%e172205172251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl172195172306%_)))
                      (let ((_%tl172207172258%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172205172251%_)))
                            (_%hd172206172255%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172205172251%_))))
                        (if (gx#stx-null? _%tl172207172258%_)
                            (_%__kont172337172338%_
                             _%hd172206172255%_
                             _%hd172194172303%_
                             _%hd172191172293%_)
                            (_%__kont172339172340%_))))
                    (_%__kont172339172340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172339172340%_))))
                                        (_%__kont172339172340%_))))))
                             (_%generate1171249%_
                              (lambda (_%where171633%_
                                       _%hd171635%_
                                       _%fender171636%_
                                       _%body171637%_
                                       _%E171638%_)
                                (letrec ((_%recur171640%_
                                          (lambda (_%hd171643%_
                                                   _%tgt171645%_
                                                   _%K171646%_)
                                            (let* ((_%__stx172378172379%_
                                                    _%hd171643%_)
                                                   (_%g171649171661%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx172378172379%_))))
                                              (let ((_%__kont172381172382%_
                                                     (lambda (_%g171651171970%_
                                                              _%g171652171972%_)
                                                       (let* ((_%g171983171991%_
                                                               (lambda (_%g171984171987%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g171984171987%_)))
                      (_%g171982172172%_
                       (lambda (_%g171984171995%_)
                         ((lambda (_%g171985171998%_)
                            (let* ((_%g172010172018%_
                                    (lambda (_%g172011172014%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g172011172014%_)))
                                   (_%g172009172168%_
                                    (lambda (_%g172011172022%_)
                                      ((lambda (_%g172012172025%_)
                                         (let* ((_%g172038172046%_
                                                 (lambda (_%g172039172042%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g172039172042%_)))
                                                (_%g172037172164%_
                                                 (lambda (_%g172039172050%_)
                                                   ((lambda (_%g172040172053%_)
                                                      (let* ((_%g172066172074%_
                                                              (lambda (_%g172067172070%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g172067172070%_)))
                     (_%g172065172160%_
                      (lambda (_%g172067172078%_)
                        ((lambda (_%g172068172081%_)
                           (let* ((_%g172094172102%_
                                   (lambda (_%g172095172098%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g172095172098%_)))
                                  (_%g172093172156%_
                                   (lambda (_%g172095172106%_)
                                     ((lambda (_%g172096172109%_)
                                        (let* ((_%g172122172130%_
                                                (lambda (_%g172123172126%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g172123172126%_)))
                                               (_%g172121172152%_
                                                (lambda (_%g172123172134%_)
                                                  ((lambda (_%g172124172137%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g171985171998%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g172012172025%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g171985171998%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g172040172053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g172012172025%_ '()))
                                       '()))
                           (cons (cons _%g172068172081%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g172012172025%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g172096172109%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g172124172137%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g172123172134%_))))
                                          (_%g172121172152%_ _%E171638%_)))
                                      _%g172095172106%_))))
                             (_%g172093172156%_
                              (_%recur171640%_
                               _%g171652171972%_
                               _%g172040172053%_
                               (_%recur171640%_
                                _%g171651171970%_
                                _%g172068172081%_
                                _%K171646%_)))))
                         _%g172067172078%_))))
                (_%g172065172160%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g172039172050%_))))
                                           (_%g172037172164%_
                                            (gx#genident 'hd))))
                                       _%g172011172022%_))))
                              (_%g172009172168%_ (gx#genident 'e))))
                          _%g171984171995%_))))
                 (_%g171982172172%_ _%tgt171645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172383172384%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd171643%_)
                                                           (if (gx#underscore?
                                                                _%hd171643%_)
                                                               _%K171646%_
                                                               (if (let ((__tmp172450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g171675171677%_)
                                    (gx#bound-identifier=?
                                     _%g171675171677%_
                                     _%hd171643%_))))
                             (declare (not safe))
                             (__find __tmp172450 _%kws171244%_))
                           (let* ((_%g171683171698%_
                                   (lambda (_%g171684171694%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171684171694%_)))
                                  (_%g171682171751%_
                                   (lambda (_%g171684171702%_)
                                     (if (gx#stx-pair? _%g171684171702%_)
                                         (let ((_%e171687171705%_
                                                (gx#syntax-e
                                                 _%g171684171702%_)))
                                           (let ((_%hd171688171709%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171687171705%_)))
                                                 (_%tl171689171712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171687171705%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171689171712%_)
                                                 (let ((_%e171690171715%_
                                                        (gx#syntax-e
                                                         _%tl171689171712%_)))
                                                   (let ((_%hd171691171719%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171690171715%_)))
                                                         (_%tl171692171722%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171690171715%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171692171722%_)
                                                         ((lambda (_%g171685171725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171686171727%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g171686171727%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g171686171727%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g171685171725%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K171646%_ (cons _%E171638%_ '())))))
                  _%hd171691171719%_
                  _%hd171688171709%_)
                 (_%g171683171698%_ _%g171684171702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171683171698%_
                                                  _%g171684171702%_))))
                                         (_%g171683171698%_
                                          _%g171684171702%_)))))
                             (_%g171682171751%_
                              (list _%tgt171645%_ _%hd171643%_)))
                           (let* ((_%g171757171772%_
                                   (lambda (_%g171758171768%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171758171768%_)))
                                  (_%g171756171817%_
                                   (lambda (_%g171758171776%_)
                                     (if (gx#stx-pair? _%g171758171776%_)
                                         (let ((_%e171761171779%_
                                                (gx#syntax-e
                                                 _%g171758171776%_)))
                                           (let ((_%hd171762171783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171761171779%_)))
                                                 (_%tl171763171786%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171761171779%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171763171786%_)
                                                 (let ((_%e171764171789%_
                                                        (gx#syntax-e
                                                         _%tl171763171786%_)))
                                                   (let ((_%hd171765171793%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171764171789%_)))
                                                         (_%tl171766171796%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171764171789%_))))
                                                     (if (gx#stx-null?
                                                          _%tl171766171796%_)
                                                         ((lambda (_%g171759171799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g171760171801%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g171759171799%_
                                            (cons _%g171760171801%_ '()))
                                      '())
                                (cons _%K171646%_ '()))))
                  _%hd171765171793%_
                  _%hd171762171783%_)
                 (_%g171757171772%_ _%g171758171776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171757171772%_
                                                  _%g171758171776%_))))
                                         (_%g171757171772%_
                                          _%g171758171776%_)))))
                             (_%g171756171817%_
                              (list _%tgt171645%_ _%hd171643%_)))))
                   (if (gx#stx-null? _%hd171643%_)
                       (let* ((_%g171823171831%_
                               (lambda (_%g171824171827%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g171824171827%_)))
                              (_%g171822171850%_
                               (lambda (_%g171824171835%_)
                                 ((lambda (_%g171825171838%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g171825171838%_
                                                            '()))
                                                (cons _%K171646%_
                                                      (cons _%E171638%_
                                                            '())))))
                                  _%g171824171835%_))))
                         (_%g171822171850%_ _%tgt171645%_))
                       (if (gx#stx-datum? _%hd171643%_)
                           (let* ((_%g171856171875%_
                                   (lambda (_%g171857171871%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171857171871%_)))
                                  (_%g171855171934%_
                                   (lambda (_%g171857171879%_)
                                     (if (gx#stx-pair? _%g171857171879%_)
                                         (let ((_%e171861171882%_
                                                (gx#syntax-e
                                                 _%g171857171879%_)))
                                           (let ((_%hd171862171886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e171861171882%_)))
                                                 (_%tl171863171889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e171861171882%_))))
                                             (if (gx#stx-pair?
                                                  _%tl171863171889%_)
                                                 (let ((_%e171864171892%_
                                                        (gx#syntax-e
                                                         _%tl171863171889%_)))
                                                   (let ((_%hd171865171896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e171864171892%_)))
                                                         (_%tl171866171899%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e171864171892%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl171866171899%_)
                                                         (let ((_%e171867171902%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl171866171899%_)))
                   (let ((_%hd171868171906%_
                          (let ()
                            (declare (not safe))
                            (##car _%e171867171902%_)))
                         (_%tl171869171909%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e171867171902%_))))
                     (if (gx#stx-null? _%tl171869171909%_)
                         ((lambda (_%g171858171912%_
                                   _%g171859171914%_
                                   _%g171860171915%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g171858171912%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g171860171915%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g171859171914%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K171646%_
                                              (cons _%E171638%_ '())))))
                          _%hd171868171906%_
                          _%hd171865171896%_
                          _%hd171862171886%_)
                         (_%g171856171875%_ _%g171857171879%_))))
                 (_%g171856171875%_ _%g171857171879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g171856171875%_
                                                  _%g171857171879%_))))
                                         (_%g171856171875%_
                                          _%g171857171879%_)))))
                             (_%g171855171934%_
                              (list _%tgt171645%_
                                    _%hd171643%_
                                    (let ((_%e171938%_
                                           (gx#stx-e _%hd171643%_)))
                                      (if (or (keyword? _%e171938%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e171938%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e171938%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx171090%_
                            _%where171633%_
                            _%hd171643%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx172378172379%_)
                                                    (let ((_%e171653171960%_
                                                           (gx#syntax-e
                                                            _%__stx172378172379%_)))
                                                      (let ((_%tl171655171967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171653171960%_)))
                    (_%hd171654171964%_
                     (let () (declare (not safe)) (##car _%e171653171960%_))))
                (_%__kont172381172382%_
                 _%tl171655171967%_
                 _%hd171654171964%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172383172384%_)))))))
                                  (_%recur171640%_
                                   _%hd171635%_
                                   _%tgt171242%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender171636%_
                                               (cons _%body171637%_
                                                     (cons _%E171638%_
                                                           '()))))))))
                             (_%generate-clauses171250%_
                              (lambda (_%clauses171371%_)
                                (let _%lp171374%_ ((_%rest171377%_
                                                    _%clauses171371%_)
                                                   (_%E171379%_
                                                    (gx#genident 'E))
                                                   (_%r171380%_ '()))
                                  (let* ((_%__stx172414172415%_ _%rest171377%_)
                                         (_%g171383171395%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172414172415%_))))
                                    (let ((_%__kont172417172418%_
                                           (lambda (_%g171385171460%_
                                                    _%g171386171462%_)
                                             (let* ((_%__stx172394172395%_
                                                     _%g171386171462%_)
                                                    (_%g171474171485%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx172394172395%_))))
                                               (let ((_%__kont172397172398%_
                                                      (lambda (_%g171476171614%_)
                                                        (if (gx#stx-null?
                                                             _%g171385171460%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g171476171614%_)
                             (not (gx#stx-null? _%g171476171614%_)))
                        (cons (cons _%E171379%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g171476171614%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g171386171462%_))
                                          '()))
                              _%r171380%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx171090%_
                         _%g171386171462%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx171090%_
                     _%g171386171462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172399172400%_
                                                      (lambda ()
                                                        (let* ((_%g171496171504%_
                                                                (lambda (_%g171497171500%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171497171500%_)))
                       (_%g171495171593%_
                        (lambda (_%g171497171508%_)
                          ((lambda (_%g171498171511%_)
                             (let* ((_%g171527171535%_
                                     (lambda (_%g171528171531%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g171528171531%_)))
                                    (_%g171526171589%_
                                     (lambda (_%g171528171539%_)
                                       ((lambda (_%g171529171542%_)
                                          (let* ((_%g171555171563%_
                                                  (lambda (_%g171556171559%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g171556171559%_)))
                                                 (_%g171554171585%_
                                                  (lambda (_%g171556171567%_)
                                                    ((lambda (_%g171557171570%_)
                                                       (_%lp171374%_
                                                        _%g171385171460%_
                                                        _%g171498171511%_
                                                        (cons (cons _%E171379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g171557171570%_ '()))
                      _%r171380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g171556171567%_))))
                                            (_%g171554171585%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g171529171542%_
                                                                '())))
                                              (gx#stx-source
                                               _%g171386171462%_)))))
                                        _%g171528171539%_))))
                               (_%g171526171589%_
                                (_%generate-clause171247%_
                                 _%g171386171462%_
                                 (cons _%g171498171511%_ '())))))
                           _%g171497171508%_))))
                  (_%g171495171593%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx172394172395%_)
                                                     (let ((_%e171477171604%_
                                                            (gx#syntax-e
                                                             _%__stx172394172395%_)))
                                                       (let ((_%tl171479171611%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171477171604%_)))
                     (_%hd171478171608%_
                      (let () (declare (not safe)) (##car _%e171477171604%_))))
                 (if (gx#identifier? _%hd171478171608%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g172451_|
                          _%hd171478171608%_)
                         (_%__kont172397172398%_ _%tl171479171611%_)
                         (_%__kont172399172400%_))
                     (_%__kont172399172400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172399172400%_))))))
                                          (_%__kont172419172420%_
                                           (lambda ()
                                             (let* ((_%g171406171414%_
                                                     (lambda (_%g171407171410%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g171407171410%_)))
                                                    (_%g171405171439%_
                                                     (lambda (_%g171407171418%_)
                                                       ((lambda (_%g171408171421%_)
                                                          (cons (cons _%E171379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%g171408171421%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx171090%_))
                                    '()))
                        _%r171380%_))
                _%g171407171418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171405171439%_
                                                _%tgt171242%_)))))
                                      (if (gx#stx-pair? _%__stx172414172415%_)
                                          (let ((_%e171387171450%_
                                                 (gx#syntax-e
                                                  _%__stx172414172415%_)))
                                            (let ((_%tl171389171457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171387171450%_)))
                                                  (_%hd171388171454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171387171450%_))))
                                              (_%__kont172417172418%_
                                               _%tl171389171457%_
                                               _%hd171388171454%_)))
                                          (_%__kont172419172420%_))))))))
                      (let* ((_%bind171252%_
                              (_%generate-clauses171250%_ _%clauses171245%_))
                             (_%g171255171272%_
                              (lambda (_%g171256171268%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g171256171268%_)))
                             (_%g171254171367%_
                              (lambda (_%g171256171276%_)
                                (if (gx#stx-pair/null? _%g171256171276%_)
                                    (let ((_g172452_
                                           (gx#syntax-split-splice
                                            _%g171256171276%_
                                            '0)))
                                      (begin
                                        (let ((_g172453_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172452_)
                                                     (##values-length
                                                      _g172452_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172453_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172453_)))
                                        (let ((_%target171258171279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172452_ 0)))
                                              (_%tl171260171282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g172452_ 1))))
                                          (if (gx#stx-null? _%tl171260171282%_)
                                              (letrec ((_%loop171261171285%_
                                                        (lambda (_%hd171259171289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try171265171292%_)
                  (if (gx#stx-pair? _%hd171259171289%_)
                      (let ((_%e171262171294%_
                             (gx#syntax-e _%hd171259171289%_)))
                        (let ((_%lp-hd171263171298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171262171294%_)))
                              (_%lp-tl171264171301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171262171294%_))))
                          (_%loop171261171285%_
                           _%lp-tl171264171301%_
                           (cons _%lp-hd171263171298%_
                                 _%bind-try171265171292%_))))
                      (let ((_%bind-try171266171304%_
                             (reverse _%bind-try171265171292%_)))
                        ((lambda (_%g171257171307%_)
                           (let* ((_%g171325171333%_
                                   (lambda (_%g171326171329%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171326171329%_)))
                                  (_%g171324171363%_
                                   (lambda (_%g171326171337%_)
                                     ((lambda (_%g171327171340%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp172454
                                                           (lambda (_%g171354171357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g171355171360%_)
                     (cons _%g171354171357%_ _%g171355171360%_))))
              (declare (not safe))
              (foldr__0 __tmp172454 '() _%g171257171307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g171327171340%_
                                                                '())
                                                          '()))))
                                      _%g171326171337%_))))
                             (_%g171324171363%_ (car (last _%bind171252%_)))))
                         _%bind-try171266171304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171261171285%_
                                                 _%target171258171279%_
                                                 '()))
                                              (_%g171255171272%_
                                               _%g171256171276%_)))))
                                    (_%g171255171272%_ _%g171256171276%_)))))
                        (_%g171254171367%_ _%bind171252%_))))))
          (let* ((_%g171096171115%_
                  (lambda (_%g171097171111%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171097171111%_)))
                 (_%g171095171238%_
                  (lambda (_%g171097171119%_)
                    (if (gx#stx-pair? _%g171097171119%_)
                        (let ((_%e171101171122%_
                               (gx#syntax-e _%g171097171119%_)))
                          (let ((_%hd171102171126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171101171122%_)))
                                (_%tl171103171129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171101171122%_))))
                            (if (gx#stx-pair? _%tl171103171129%_)
                                (let ((_%e171104171132%_
                                       (gx#syntax-e _%tl171103171129%_)))
                                  (let ((_%hd171105171136%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171104171132%_)))
                                        (_%tl171106171139%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171104171132%_))))
                                    (if (gx#stx-pair? _%tl171106171139%_)
                                        (let ((_%e171107171142%_
                                               (gx#syntax-e
                                                _%tl171106171139%_)))
                                          (let ((_%hd171108171146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171107171142%_)))
                                                (_%tl171109171149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171107171142%_))))
                                            ((lambda (_%g171098171152%_
                                                      _%g171099171154%_
                                                      _%g171100171155%_)
                                               (if (and (gx#identifier-list?
                                                         _%g171099171154%_)
                                                        (gx#stx-list?
                                                         _%g171098171152%_))
                                                   (let* ((_%g171173171181%_
                                                           (lambda (_%g171174171177%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g171174171177%_)))
                                                          (_%g171172171234%_
                                                           (lambda (_%g171174171185%_)
                                                             ((lambda (_%g171175171188%_)
                                                                (let* ((_%g171200171208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g171201171204%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171201171204%_)))
                               (_%g171199171230%_
                                (lambda (_%g171201171212%_)
                                  ((lambda (_%g171202171215%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g171175171188%_
                                                             (cons _%g171100171155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g171202171215%_
                                                       '()))))
                                   _%g171201171212%_))))
                          (_%g171199171230%_
                           (_%generate171093%_
                            _%g171175171188%_
                            (gx#syntax->list _%g171099171154%_)
                            _%g171098171152%_))))
                      _%g171174171185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g171172171234%_
                                                      (gx#genident 'e)))
                                                   (_%g171096171115%_
                                                    _%g171097171119%_)))
                                             _%tl171109171149%_
                                             _%hd171108171146%_
                                             _%hd171105171136%_)))
                                        (_%g171096171115%_
                                         _%g171097171119%_))))
                                (_%g171096171115%_ _%g171097171119%_))))
                        (_%g171096171115%_ _%g171097171119%_)))))
            (_%g171095171238%_ _%stx171090%_)))))))
