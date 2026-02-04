(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g139217_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139219_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139221_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139223_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139224_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139226_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139227_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139229_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139230_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139232_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139233_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g139235_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj139213
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '#f '12 '#f '#f))
        (let ((__tmp139216 |gx[1]#_g139217_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139216 '3 '#f '#f))
        (let ((__tmp139218 |gx[1]#_g139219_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139218 '13 '#f '#f))
        (let ((__tmp139220 |gx[1]#_g139221_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139220 '14 '#f '#f))
        (let ((__tmp139222
               (cons (cons 'e |gx[1]#_g139223_|)
                     (cons (cons 'source |gx[1]#_g139224_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139222 '15 '#f '#f))
        (let ((__tmp139225
               (cons (cons 'e |gx[1]#_g139226_|)
                     (cons (cons 'source |gx[1]#_g139227_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139225 '16 '#f '#f))
        (let ((__tmp139228
               (cons (cons 'e |gx[1]#_g139229_|)
                     (cons (cons 'source |gx[1]#_g139230_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139228 '17 '#f '#f))
        (let ((__tmp139231
               (cons (cons 'e |gx[1]#_g139232_|)
                     (cons (cons 'source |gx[1]#_g139233_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 __tmp139231 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj139213 '() '20 '#f '#f))
        __obj139213))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx137810%_)
        (let* ((_%g137814137828%_
                (lambda (_%g137815137824%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g137815137824%_)))
               (_%g137813137870%_
                (lambda (_%g137815137832%_)
                  (if (gx#stx-pair? _%g137815137832%_)
                      (let ((_%e137817137835%_
                             (gx#syntax-e _%g137815137832%_)))
                        (let ((_%hd137818137839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137817137835%_)))
                              (_%tl137819137842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137817137835%_))))
                          (if (gx#stx-pair? _%tl137819137842%_)
                              (let ((_%e137820137845%_
                                     (gx#syntax-e _%tl137819137842%_)))
                                (let ((_%hd137821137849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137820137845%_)))
                                      (_%tl137822137852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137820137845%_))))
                                  (if (gx#stx-null? _%tl137822137852%_)
                                      ((lambda (_%g137816137855%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g137816137855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g137816137855%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd137821137849%_)
                                      (_%g137814137828%_ _%g137815137832%_))))
                              (_%g137814137828%_ _%g137815137832%_))))
                      (_%g137814137828%_ _%g137815137832%_)))))
          (_%g137813137870%_ _%$stx137810%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx137874%_)
        (letrec ((_%generate137877%_
                  (lambda (_%tgt138026%_ _%kws138028%_ _%clauses138029%_)
                    (letrec ((_%generate-clause138031%_
                              (lambda (_%hd138964%_ _%E138966%_)
                                (let* ((_%__stx139116139117%_ _%hd138964%_)
                                       (_%g138970138997%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx139116139117%_))))
                                  (let ((_%__kont139119139120%_
                                         (lambda (_%g138972139093%_
                                                  _%g138973139095%_)
                                           (_%generate1138033%_
                                            _%hd138964%_
                                            _%g138973139095%_
                                            '#t
                                            _%g138972139093%_
                                            _%E138966%_)))
                                        (_%__kont139121139122%_
                                         (lambda (_%g138980139045%_
                                                  _%g138981139047%_
                                                  _%g138982139048%_)
                                           (_%generate1138033%_
                                            _%hd138964%_
                                            _%g138982139048%_
                                            _%g138981139047%_
                                            _%g138980139045%_
                                            _%E138966%_)))
                                        (_%__kont139123139124%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx137874%_
                                            _%hd138964%_))))
                                    (if (gx#stx-pair? _%__stx139116139117%_)
                                        (let ((_%e138974139073%_
                                               (gx#syntax-e
                                                _%__stx139116139117%_)))
                                          (let ((_%tl138976139080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138974139073%_)))
                                                (_%hd138975139077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138974139073%_))))
                                            (if (gx#stx-pair?
                                                 _%tl138976139080%_)
                                                (let ((_%e138977139083%_
                                                       (gx#syntax-e
                                                        _%tl138976139080%_)))
                                                  (let ((_%tl138979139090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138977139083%_)))
                                                        (_%hd138978139087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138977139083%_))))
                                                    (if (gx#stx-null?
                                                         _%tl138979139090%_)
                                                        (_%__kont139119139120%_
                                                         _%hd138978139087%_
                                                         _%hd138975139077%_)
                                                        (if (gx#stx-pair?
                                                             _%tl138979139090%_)
                                                            (let ((_%e138989139035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl138979139090%_)))
                      (let ((_%tl138991139042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e138989139035%_)))
                            (_%hd138990139039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e138989139035%_))))
                        (if (gx#stx-null? _%tl138991139042%_)
                            (_%__kont139121139122%_
                             _%hd138990139039%_
                             _%hd138978139087%_
                             _%hd138975139077%_)
                            (_%__kont139123139124%_))))
                    (_%__kont139123139124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont139123139124%_))))
                                        (_%__kont139123139124%_))))))
                             (_%generate1138033%_
                              (lambda (_%where138417%_
                                       _%hd138419%_
                                       _%fender138420%_
                                       _%body138421%_
                                       _%E138422%_)
                                (letrec ((_%recur138424%_
                                          (lambda (_%hd138427%_
                                                   _%tgt138429%_
                                                   _%K138430%_)
                                            (let* ((_%__stx139162139163%_
                                                    _%hd138427%_)
                                                   (_%g138433138445%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx139162139163%_))))
                                              (let ((_%__kont139165139166%_
                                                     (lambda (_%g138435138754%_
                                                              _%g138436138756%_)
                                                       (let* ((_%g138767138775%_
                                                               (lambda (_%g138768138771%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g138768138771%_)))
                      (_%g138766138956%_
                       (lambda (_%g138768138779%_)
                         ((lambda (_%g138769138782%_)
                            (let* ((_%g138794138802%_
                                    (lambda (_%g138795138798%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g138795138798%_)))
                                   (_%g138793138952%_
                                    (lambda (_%g138795138806%_)
                                      ((lambda (_%g138796138809%_)
                                         (let* ((_%g138822138830%_
                                                 (lambda (_%g138823138826%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g138823138826%_)))
                                                (_%g138821138948%_
                                                 (lambda (_%g138823138834%_)
                                                   ((lambda (_%g138824138837%_)
                                                      (let* ((_%g138850138858%_
                                                              (lambda (_%g138851138854%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g138851138854%_)))
                     (_%g138849138944%_
                      (lambda (_%g138851138862%_)
                        ((lambda (_%g138852138865%_)
                           (let* ((_%g138878138886%_
                                   (lambda (_%g138879138882%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g138879138882%_)))
                                  (_%g138877138940%_
                                   (lambda (_%g138879138890%_)
                                     ((lambda (_%g138880138893%_)
                                        (let* ((_%g138906138914%_
                                                (lambda (_%g138907138910%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g138907138910%_)))
                                               (_%g138905138936%_
                                                (lambda (_%g138907138918%_)
                                                  ((lambda (_%g138908138921%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g138769138782%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g138796138809%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g138769138782%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g138824138837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g138796138809%_ '()))
                                       '()))
                           (cons (cons _%g138852138865%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g138796138809%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g138880138893%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g138908138921%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g138907138918%_))))
                                          (_%g138905138936%_ _%E138422%_)))
                                      _%g138879138890%_))))
                             (_%g138877138940%_
                              (_%recur138424%_
                               _%g138436138756%_
                               _%g138824138837%_
                               (_%recur138424%_
                                _%g138435138754%_
                                _%g138852138865%_
                                _%K138430%_)))))
                         _%g138851138862%_))))
                (_%g138849138944%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g138823138834%_))))
                                           (_%g138821138948%_
                                            (gx#genident 'hd))))
                                       _%g138795138806%_))))
                              (_%g138793138952%_ (gx#genident 'e))))
                          _%g138768138779%_))))
                 (_%g138766138956%_ _%tgt138429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont139167139168%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd138427%_)
                                                           (if (gx#underscore?
                                                                _%hd138427%_)
                                                               _%K138430%_
                                                               (if (let ((__tmp139234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g138459138461%_)
                                    (gx#bound-identifier=?
                                     _%g138459138461%_
                                     _%hd138427%_))))
                             (declare (not safe))
                             (__find __tmp139234 _%kws138028%_))
                           (let* ((_%g138467138482%_
                                   (lambda (_%g138468138478%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g138468138478%_)))
                                  (_%g138466138535%_
                                   (lambda (_%g138468138486%_)
                                     (if (gx#stx-pair? _%g138468138486%_)
                                         (let ((_%e138471138489%_
                                                (gx#syntax-e
                                                 _%g138468138486%_)))
                                           (let ((_%hd138472138493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138471138489%_)))
                                                 (_%tl138473138496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138471138489%_))))
                                             (if (gx#stx-pair?
                                                  _%tl138473138496%_)
                                                 (let ((_%e138474138499%_
                                                        (gx#syntax-e
                                                         _%tl138473138496%_)))
                                                   (let ((_%hd138475138503%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138474138499%_)))
                                                         (_%tl138476138506%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138474138499%_))))
                                                     (if (gx#stx-null?
                                                          _%tl138476138506%_)
                                                         ((lambda (_%g138469138509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g138470138511%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g138470138511%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g138470138511%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g138469138509%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K138430%_ (cons _%E138422%_ '())))))
                  _%hd138475138503%_
                  _%hd138472138493%_)
                 (_%g138467138482%_ _%g138468138486%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g138467138482%_
                                                  _%g138468138486%_))))
                                         (_%g138467138482%_
                                          _%g138468138486%_)))))
                             (_%g138466138535%_
                              (list _%tgt138429%_ _%hd138427%_)))
                           (let* ((_%g138541138556%_
                                   (lambda (_%g138542138552%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g138542138552%_)))
                                  (_%g138540138601%_
                                   (lambda (_%g138542138560%_)
                                     (if (gx#stx-pair? _%g138542138560%_)
                                         (let ((_%e138545138563%_
                                                (gx#syntax-e
                                                 _%g138542138560%_)))
                                           (let ((_%hd138546138567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138545138563%_)))
                                                 (_%tl138547138570%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138545138563%_))))
                                             (if (gx#stx-pair?
                                                  _%tl138547138570%_)
                                                 (let ((_%e138548138573%_
                                                        (gx#syntax-e
                                                         _%tl138547138570%_)))
                                                   (let ((_%hd138549138577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138548138573%_)))
                                                         (_%tl138550138580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138548138573%_))))
                                                     (if (gx#stx-null?
                                                          _%tl138550138580%_)
                                                         ((lambda (_%g138543138583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g138544138585%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g138543138583%_
                                            (cons _%g138544138585%_ '()))
                                      '())
                                (cons _%K138430%_ '()))))
                  _%hd138549138577%_
                  _%hd138546138567%_)
                 (_%g138541138556%_ _%g138542138560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g138541138556%_
                                                  _%g138542138560%_))))
                                         (_%g138541138556%_
                                          _%g138542138560%_)))))
                             (_%g138540138601%_
                              (list _%tgt138429%_ _%hd138427%_)))))
                   (if (gx#stx-null? _%hd138427%_)
                       (let* ((_%g138607138615%_
                               (lambda (_%g138608138611%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g138608138611%_)))
                              (_%g138606138634%_
                               (lambda (_%g138608138619%_)
                                 ((lambda (_%g138609138622%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g138609138622%_
                                                            '()))
                                                (cons _%K138430%_
                                                      (cons _%E138422%_
                                                            '())))))
                                  _%g138608138619%_))))
                         (_%g138606138634%_ _%tgt138429%_))
                       (if (gx#stx-datum? _%hd138427%_)
                           (let* ((_%g138640138659%_
                                   (lambda (_%g138641138655%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g138641138655%_)))
                                  (_%g138639138718%_
                                   (lambda (_%g138641138663%_)
                                     (if (gx#stx-pair? _%g138641138663%_)
                                         (let ((_%e138645138666%_
                                                (gx#syntax-e
                                                 _%g138641138663%_)))
                                           (let ((_%hd138646138670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138645138666%_)))
                                                 (_%tl138647138673%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138645138666%_))))
                                             (if (gx#stx-pair?
                                                  _%tl138647138673%_)
                                                 (let ((_%e138648138676%_
                                                        (gx#syntax-e
                                                         _%tl138647138673%_)))
                                                   (let ((_%hd138649138680%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138648138676%_)))
                                                         (_%tl138650138683%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138648138676%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl138650138683%_)
                                                         (let ((_%e138651138686%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl138650138683%_)))
                   (let ((_%hd138652138690%_
                          (let ()
                            (declare (not safe))
                            (##car _%e138651138686%_)))
                         (_%tl138653138693%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e138651138686%_))))
                     (if (gx#stx-null? _%tl138653138693%_)
                         ((lambda (_%g138642138696%_
                                   _%g138643138698%_
                                   _%g138644138699%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g138642138696%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g138644138699%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g138643138698%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K138430%_
                                              (cons _%E138422%_ '())))))
                          _%hd138652138690%_
                          _%hd138649138680%_
                          _%hd138646138670%_)
                         (_%g138640138659%_ _%g138641138663%_))))
                 (_%g138640138659%_ _%g138641138663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g138640138659%_
                                                  _%g138641138663%_))))
                                         (_%g138640138659%_
                                          _%g138641138663%_)))))
                             (_%g138639138718%_
                              (list _%tgt138429%_
                                    _%hd138427%_
                                    (let ((_%e138722%_
                                           (gx#stx-e _%hd138427%_)))
                                      (if (or (keyword? _%e138722%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e138722%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e138722%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx137874%_
                            _%where138417%_
                            _%hd138427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx139162139163%_)
                                                    (let ((_%e138437138744%_
                                                           (gx#syntax-e
                                                            _%__stx139162139163%_)))
                                                      (let ((_%tl138439138751%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138437138744%_)))
                    (_%hd138438138748%_
                     (let () (declare (not safe)) (##car _%e138437138744%_))))
                (_%__kont139165139166%_
                 _%tl138439138751%_
                 _%hd138438138748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont139167139168%_)))))))
                                  (_%recur138424%_
                                   _%hd138419%_
                                   _%tgt138026%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender138420%_
                                               (cons _%body138421%_
                                                     (cons _%E138422%_
                                                           '()))))))))
                             (_%generate-clauses138034%_
                              (lambda (_%clauses138155%_)
                                (let _%lp138158%_ ((_%rest138161%_
                                                    _%clauses138155%_)
                                                   (_%E138163%_
                                                    (gx#genident 'E))
                                                   (_%r138164%_ '()))
                                  (let* ((_%__stx139198139199%_ _%rest138161%_)
                                         (_%g138167138179%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx139198139199%_))))
                                    (let ((_%__kont139201139202%_
                                           (lambda (_%g138169138244%_
                                                    _%g138170138246%_)
                                             (let* ((_%__stx139178139179%_
                                                     _%g138170138246%_)
                                                    (_%g138258138269%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx139178139179%_))))
                                               (let ((_%__kont139181139182%_
                                                      (lambda (_%g138260138398%_)
                                                        (if (gx#stx-null?
                                                             _%g138169138244%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138260138398%_)
                             (not (gx#stx-null? _%g138260138398%_)))
                        (cons (cons _%E138163%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g138260138398%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g138170138246%_))
                                          '()))
                              _%r138164%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx137874%_
                         _%g138170138246%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx137874%_
                     _%g138170138246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont139183139184%_
                                                      (lambda ()
                                                        (let* ((_%g138280138288%_
                                                                (lambda (_%g138281138284%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g138281138284%_)))
                       (_%g138279138377%_
                        (lambda (_%g138281138292%_)
                          ((lambda (_%g138282138295%_)
                             (let* ((_%g138311138319%_
                                     (lambda (_%g138312138315%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g138312138315%_)))
                                    (_%g138310138373%_
                                     (lambda (_%g138312138323%_)
                                       ((lambda (_%g138313138326%_)
                                          (let* ((_%g138339138347%_
                                                  (lambda (_%g138340138343%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g138340138343%_)))
                                                 (_%g138338138369%_
                                                  (lambda (_%g138340138351%_)
                                                    ((lambda (_%g138341138354%_)
                                                       (_%lp138158%_
                                                        _%g138169138244%_
                                                        _%g138282138295%_
                                                        (cons (cons _%E138163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g138341138354%_ '()))
                      _%r138164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g138340138351%_))))
                                            (_%g138338138369%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g138313138326%_
                                                                '())))
                                              (gx#stx-source
                                               _%g138170138246%_)))))
                                        _%g138312138323%_))))
                               (_%g138310138373%_
                                (_%generate-clause138031%_
                                 _%g138170138246%_
                                 (cons _%g138282138295%_ '())))))
                           _%g138281138292%_))))
                  (_%g138279138377%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx139178139179%_)
                                                     (let ((_%e138261138388%_
                                                            (gx#syntax-e
                                                             _%__stx139178139179%_)))
                                                       (let ((_%tl138263138395%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138261138388%_)))
                     (_%hd138262138392%_
                      (let () (declare (not safe)) (##car _%e138261138388%_))))
                 (if (gx#identifier? _%hd138262138392%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g139235_|
                          _%hd138262138392%_)
                         (_%__kont139181139182%_ _%tl138263138395%_)
                         (_%__kont139183139184%_))
                     (_%__kont139183139184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont139183139184%_))))))
                                          (_%__kont139203139204%_
                                           (lambda ()
                                             (let* ((_%g138190138198%_
                                                     (lambda (_%g138191138194%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g138191138194%_)))
                                                    (_%g138189138223%_
                                                     (lambda (_%g138191138202%_)
                                                       ((lambda (_%g138192138205%_)
                                                          (cons (cons _%E138163%_
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
                                 (cons _%g138192138205%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx137874%_))
                                    '()))
                        _%r138164%_))
                _%g138191138202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g138189138223%_
                                                _%tgt138026%_)))))
                                      (if (gx#stx-pair? _%__stx139198139199%_)
                                          (let ((_%e138171138234%_
                                                 (gx#syntax-e
                                                  _%__stx139198139199%_)))
                                            (let ((_%tl138173138241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e138171138234%_)))
                                                  (_%hd138172138238%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e138171138234%_))))
                                              (_%__kont139201139202%_
                                               _%tl138173138241%_
                                               _%hd138172138238%_)))
                                          (_%__kont139203139204%_))))))))
                      (let* ((_%bind138036%_
                              (_%generate-clauses138034%_ _%clauses138029%_))
                             (_%g138039138056%_
                              (lambda (_%g138040138052%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g138040138052%_)))
                             (_%g138038138151%_
                              (lambda (_%g138040138060%_)
                                (if (gx#stx-pair/null? _%g138040138060%_)
                                    (let ((_g139236_
                                           (gx#syntax-split-splice
                                            _%g138040138060%_
                                            '0)))
                                      (begin
                                        (let ((_g139237_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g139236_)
                                                     (##values-length
                                                      _g139236_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g139237_ 2)))
                                              (error "Context expects 2 values"
                                                     _g139237_)))
                                        (let ((_%target138042138063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g139236_ 0)))
                                              (_%tl138044138066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g139236_ 1))))
                                          (if (gx#stx-null? _%tl138044138066%_)
                                              (letrec ((_%loop138045138069%_
                                                        (lambda (_%hd138043138073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try138049138076%_)
                  (if (gx#stx-pair? _%hd138043138073%_)
                      (let ((_%e138046138078%_
                             (gx#syntax-e _%hd138043138073%_)))
                        (let ((_%lp-hd138047138082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138046138078%_)))
                              (_%lp-tl138048138085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138046138078%_))))
                          (_%loop138045138069%_
                           _%lp-tl138048138085%_
                           (cons _%lp-hd138047138082%_
                                 _%bind-try138049138076%_))))
                      (let ((_%bind-try138050138088%_
                             (reverse _%bind-try138049138076%_)))
                        ((lambda (_%g138041138091%_)
                           (let* ((_%g138109138117%_
                                   (lambda (_%g138110138113%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g138110138113%_)))
                                  (_%g138108138147%_
                                   (lambda (_%g138110138121%_)
                                     ((lambda (_%g138111138124%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp139238
                                                           (lambda (_%g138138138141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138139138144%_)
                     (cons _%g138138138141%_ _%g138139138144%_))))
              (declare (not safe))
              (__foldr1 __tmp139238 '() _%g138041138091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g138111138124%_
                                                                '())
                                                          '()))))
                                      _%g138110138121%_))))
                             (_%g138108138147%_ (car (last _%bind138036%_)))))
                         _%bind-try138050138088%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop138045138069%_
                                                 _%target138042138063%_
                                                 '()))
                                              (_%g138039138056%_
                                               _%g138040138060%_)))))
                                    (_%g138039138056%_ _%g138040138060%_)))))
                        (_%g138038138151%_ _%bind138036%_))))))
          (let* ((_%g137880137899%_
                  (lambda (_%g137881137895%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137881137895%_)))
                 (_%g137879138022%_
                  (lambda (_%g137881137903%_)
                    (if (gx#stx-pair? _%g137881137903%_)
                        (let ((_%e137885137906%_
                               (gx#syntax-e _%g137881137903%_)))
                          (let ((_%hd137886137910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137885137906%_)))
                                (_%tl137887137913%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137885137906%_))))
                            (if (gx#stx-pair? _%tl137887137913%_)
                                (let ((_%e137888137916%_
                                       (gx#syntax-e _%tl137887137913%_)))
                                  (let ((_%hd137889137920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137888137916%_)))
                                        (_%tl137890137923%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137888137916%_))))
                                    (if (gx#stx-pair? _%tl137890137923%_)
                                        (let ((_%e137891137926%_
                                               (gx#syntax-e
                                                _%tl137890137923%_)))
                                          (let ((_%hd137892137930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137891137926%_)))
                                                (_%tl137893137933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137891137926%_))))
                                            ((lambda (_%g137882137936%_
                                                      _%g137883137938%_
                                                      _%g137884137939%_)
                                               (if (and (gx#identifier-list?
                                                         _%g137883137938%_)
                                                        (gx#stx-list?
                                                         _%g137882137936%_))
                                                   (let* ((_%g137957137965%_
                                                           (lambda (_%g137958137961%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g137958137961%_)))
                                                          (_%g137956138018%_
                                                           (lambda (_%g137958137969%_)
                                                             ((lambda (_%g137959137972%_)
                                                                (let* ((_%g137984137992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g137985137988%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g137985137988%_)))
                               (_%g137983138014%_
                                (lambda (_%g137985137996%_)
                                  ((lambda (_%g137986137999%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g137959137972%_
                                                             (cons _%g137884137939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g137986137999%_
                                                       '()))))
                                   _%g137985137996%_))))
                          (_%g137983138014%_
                           (_%generate137877%_
                            _%g137959137972%_
                            (gx#syntax->list _%g137883137938%_)
                            _%g137882137936%_))))
                      _%g137958137969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137956138018%_
                                                      (gx#genident 'e)))
                                                   (_%g137880137899%_
                                                    _%g137881137903%_)))
                                             _%tl137893137933%_
                                             _%hd137892137930%_
                                             _%hd137889137920%_)))
                                        (_%g137880137899%_
                                         _%g137881137903%_))))
                                (_%g137880137899%_ _%g137881137903%_))))
                        (_%g137880137899%_ _%g137881137903%_)))))
            (_%g137879138022%_ _%stx137874%_)))))))
